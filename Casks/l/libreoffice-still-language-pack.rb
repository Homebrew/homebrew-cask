cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.8.5"

  on_arm do
    language "af" do
      sha256 "709185ecc998e09cfc88784de8f913502a61cd263db768f9391468cb7782cd41"
      "af"
    end
    language "am" do
      sha256 "30de71a78f4e0efa1b6861defb147da02ff0770e348f7afa5672fa341410ae97"
      "am"
    end
    language "ar" do
      sha256 "daccfe5c5fc96780d4b12c388ed78bf5facec54705d9a3a548db1beade22e450"
      "ar"
    end
    language "as" do
      sha256 "3ff1f720b12d1bd33a7f738a1fb81185147a38f34065f99357419085cfedbcac"
      "as"
    end
    language "be" do
      sha256 "0c494539662740793fcb1c2c9ebf994c785478deca5c2dee271596e2574e5a73"
      "be"
    end
    language "bg" do
      sha256 "b7ef3c3fc16874e67a7ebcc5fb82a2d766c9f51e2a507b6ff74e8cad34be6b86"
      "bg"
    end
    language "bn-IN" do
      sha256 "4505907b950f82cf11cdbf12eb1aaa91879c60f5c678b5eeb8c038e617a0f1b2"
      "bn-IN"
    end
    language "bn" do
      sha256 "f1765fbe5ee836a8625dae394f73bbd7fbaaaaa7216a22c0e67b2c1b72bb566d"
      "bn"
    end
    language "bo" do
      sha256 "36b6d1076864de255d37c9b75d2d162ad74600afa59bc12d751af70ae2e398ac"
      "bo"
    end
    language "br" do
      sha256 "ec5433497537481da62ebc0b27d344407c449bed326b458f9595a96d60a14d0b"
      "br"
    end
    language "bs" do
      sha256 "49b08b362501a8785c8620125a1f2bb3f08e4258556dc35359d51507a8d3f970"
      "bs"
    end
    language "ca" do
      sha256 "5ae885f57595c2a34e703726b2401e2ec4eaf5db6c7be0bbb60915a736027174"
      "ca"
    end
    language "cs" do
      sha256 "5e142ba23ca5fdcdec2babf4d7e4a79d8a168258c761191c763b636d9de62b9d"
      "cs"
    end
    language "cy" do
      sha256 "571cb174e6a04546674d9b0617bd19dcfc8dd552b0e5e92bca4a4cfc9c270ff8"
      "cy"
    end
    language "da" do
      sha256 "e4c0589205c690ba2966c8a1539f7bbd20465beecad778ec96a0f7770a329a78"
      "da"
    end
    language "de" do
      sha256 "e0cb79cbfffc2c1706f4f11f9eb219d68acccebf82f7f638f6e2821774f80a2d"
      "de"
    end
    language "dz" do
      sha256 "0c83cc8e1680260dd4c1adf1c3c867fb20f28c279405daa0a0a147a8d60eef40"
      "dz"
    end
    language "el" do
      sha256 "224a821684524497034872aeef23ce2b910f53f02cefd464dea311683c1419e9"
      "el"
    end
    language "en-GB", default: true do
      sha256 "32644b320e4606db325b090a7a6ebde24a1f318a1f8d0ff509d28afca6180785"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "f74d889ee350cf24b9c43a7ec1276561506987e06623b126e3350273ee7ba8f7"
      "en-ZA"
    end
    language "eo" do
      sha256 "ece63e1c8cbfff41716b949ee5de4ccdd41d2c0aa8a589a52ad444047af403ec"
      "eo"
    end
    language "es" do
      sha256 "32c3aec7fd8da7e618abb4897362b351f4d78cae51b2781377b820f6f3a34df3"
      "es"
    end
    language "et" do
      sha256 "be81f235c0450713bcebe722364be3d1d290de837584d249b1161597d972fcd1"
      "et"
    end
    language "eu" do
      sha256 "dc349b7472955ec0fedef33a58b4db23952e4848af42a631a9008b3cc4ebacca"
      "eu"
    end
    language "fa" do
      sha256 "0a619e340f49e1472d47435bde78c4aed6d041797334469c66ae3d2f9c3a225e"
      "fa"
    end
    language "fi" do
      sha256 "8e7b89207eda71235dd5fdf55b3b4c6092d9e919fe52aecbe531422d8c3bc5f1"
      "fi"
    end
    language "fr" do
      sha256 "6b91a176bdc344ce5ffedaa14ed2cd76d9182def34f644b4769464b609a0ec7f"
      "fr"
    end
    language "fy" do
      sha256 "8eb390e607556b194a2d2545194cdcfa17ae741f908fe435fdec7b65eab475b7"
      "fy"
    end
    language "ga" do
      sha256 "483125c56b0b451526d1f2b76a7d403f1a5745a372a16d41e8423bf9c4a93945"
      "ga"
    end
    language "gd" do
      sha256 "320ccd07e72759e19b5c1f2980f61e5407666ebe2e6fd6c71d7d570641b0cbc1"
      "gd"
    end
    language "gl" do
      sha256 "9ac9f2169c2cc5e104c30ddcd99c624470b69646b707d7b7e27eb054c41bdfef"
      "gl"
    end
    language "gu" do
      sha256 "c5c9d342d41f77216cda145a41a658f6f391d52699ffeb312a9e1be1075082a1"
      "gu"
    end
    language "he" do
      sha256 "c118fb94bb0ad9a77b78d28cc2dabe02bbe3cf20082024656d002567fdf219d7"
      "he"
    end
    language "hi" do
      sha256 "afd1e310f6008a70bbfbc2cd52b255d3b0e908efe17e3035a14ab7941de96c4d"
      "hi"
    end
    language "hr" do
      sha256 "a3a6d28ee5453e9272e78dd6f4ebacc8182be5665357604fe412b9cb65ba3e67"
      "hr"
    end
    language "hu" do
      sha256 "744a48dc699612696cbf3b78c252fbd0fe5816b5b068eb4ff73f886107f0d635"
      "hu"
    end
    language "id" do
      sha256 "a8b9f3fcb4d23fbc43a58dc2c1f8c1f730639cdc7ae0221664ec6e6912856c69"
      "id"
    end
    language "is" do
      sha256 "0d156f09c6746b4618e185a690bed9be8ac7237a80bf5681941a4714a2fe7bf0"
      "is"
    end
    language "it" do
      sha256 "1e02f7660afce2869e89d51952857f83dd62f2b3de95a77fccb7f60d041ce43e"
      "it"
    end
    language "ja" do
      sha256 "70b186ff7f12d034b14ce571c8be937458515602cefb9170272a52c26f4a3f39"
      "ja"
    end
    language "ka" do
      sha256 "b42852d91fd39ab5d8119bf2547b285fe1feac54582a82f6305e42097b1bbcb5"
      "ka"
    end
    language "kk" do
      sha256 "b34839eb6da55bc73e3c88c6f9a137c37171f5c374ee25c703add6b40dce14e8"
      "kk"
    end
    language "km" do
      sha256 "a4e491fc99912118b700ac6481174ba061b16c0dc849901036a8cf6e6c2ff842"
      "km"
    end
    language "kn" do
      sha256 "a838b323522c3e7cbaae082ddcf4b26d2227ea8dc5937c483056ecf8839bf34e"
      "kn"
    end
    language "ko" do
      sha256 "d05d7275de812bec7c7ebbd1a060e9669941cef5a09b6c7094ad9bda5e8a3fb7"
      "ko"
    end
    language "ks" do
      sha256 "0bcf99eb6bb67786d6599f7de1a45ec59660ced95b43c26a421ca730d182264a"
      "ks"
    end
    language "lb" do
      sha256 "bab2808be1a5713b359177d6b6abb98d4b7e8921d79fd49e08e7bcc0b2e5cca0"
      "lb"
    end
    language "lo" do
      sha256 "35a99cc59b9f1f19e33b7efc53008aa889120586919a6203cd64006cf8f7db0e"
      "lo"
    end
    language "lt" do
      sha256 "087ce47a4416fd1600172103cf7a6450d741bcc3dea96de17ef5ec411329448a"
      "lt"
    end
    language "lv" do
      sha256 "da9b68e57bfa0dd2b0c249267cdab9d6db082bb27390e65efc6b502494b04c8c"
      "lv"
    end
    language "mk" do
      sha256 "0ef4eba3a4b5a7b5107aed7e0422f99aea8b4e3f75499fe80a883304c83ad353"
      "mk"
    end
    language "ml" do
      sha256 "f391f1d855b978efdc659ec428195ab03a1f2390dfe1e262b62f4e1a12b31ad9"
      "ml"
    end
    language "mn" do
      sha256 "14be35a95147b8127b835b105895c846320eff26b529b7311fba0547a8671272"
      "mn"
    end
    language "mr" do
      sha256 "1bf387310427e071314598cb7292301358cd718cdcc0752000b4044cb6336ab2"
      "mr"
    end
    language "my" do
      sha256 "dd5848a85fe0317a22644359a9e17a79ad62fc8bb777739342e337431b856737"
      "my"
    end
    language "nb" do
      sha256 "db4f9825e3a2ae5556c768457c8b208e0d1d1a01ab22a0baa9280536f13c7f55"
      "nb"
    end
    language "ne" do
      sha256 "9d4cdef7a5a4f8538ad0349346e9b80d4de1d4208da0cd4e03847e8aae9a2a96"
      "ne"
    end
    language "nl" do
      sha256 "bf7bd2a30b5c5d50de814606dcc9f28302d1f5d9d0497de3f2516f4ccac539e7"
      "nl"
    end
    language "nn" do
      sha256 "e7ed3d0aee74e16e52a83e8630b399fe8412341077b022e447bac0c132277a77"
      "nn"
    end
    language "nr" do
      sha256 "3a355555a91f35fc9501f47b81510dd93a0831deac69dc296a1bbe55afc3ab11"
      "nr"
    end
    language "oc" do
      sha256 "575a1d58e174eaa2463e9dcadea7b746a69271685c883b43d57c8a6aefe5b343"
      "oc"
    end
    language "om" do
      sha256 "35b13700287ebc2178c4bbf2beb7b2d7037a79c4c4e1eb05e5c8ff43d9ec3b79"
      "om"
    end
    language "or" do
      sha256 "e1bd853fec49800c4c6aaec3eb2fc3872ad1782433706fe15f3418c51c5fe071"
      "or"
    end
    language "pa-IN" do
      sha256 "e2dbee7cd0d8786f67ab31b7668d937ac708a173ffbfd2ab97968263dcf880ec"
      "pa-IN"
    end
    language "pl" do
      sha256 "71ba990bc6997a6492a263181a231c4ef830a0f52a79599743747f6d6cd16177"
      "pl"
    end
    language "pt-BR" do
      sha256 "e416873de898218d2256bba1298f7405c0680cf19f65a41cadf560ddaa79af63"
      "pt-BR"
    end
    language "pt" do
      sha256 "f1d008cd1cce1a89db094d7df704e3eac11e3311ccc78a78ce4278b904a53bda"
      "pt"
    end
    language "ro" do
      sha256 "d193239ee4ba58e1b5073537616f601166ef015beabd94a95463cebf7183b3d0"
      "ro"
    end
    language "ru" do
      sha256 "df8fda5a32f5bf555139d543e97ca710bf90e543343d5ca6905cd6b200963bec"
      "ru"
    end
    language "rw" do
      sha256 "d505d4a70c10462bb560b394a081006a403efbed424a38f25d1dc150f859b2e1"
      "rw"
    end
    language "sa-IN" do
      sha256 "f572bef0fb23f57b7d29348b92dbb6e1ab464c1a091c5d00d111b4eb71644bbf"
      "sa-IN"
    end
    language "sd" do
      sha256 "d565ba67b76d53f35e92073c797f686dc7524178e2e9f2b26828c61d707df39d"
      "sd"
    end
    language "si" do
      sha256 "bab53ea5be05280684a81b1f4d8c89c93b9b304285224a108bc8658b36e741ed"
      "si"
    end
    language "sk" do
      sha256 "53f447d0aee3921d8d6de230f43b3b8c2c0d959cad03061478b2553270325069"
      "sk"
    end
    language "sl" do
      sha256 "d429e146f03fdc67f5f4ddea3d2a7030dee4f27bf4e76dcd557c4cca545fdde4"
      "sl"
    end
    language "sq" do
      sha256 "129c833ae506de02726d564406863e1417b2478752ef8dd3201c6b3d24674d77"
      "sq"
    end
    language "sr" do
      sha256 "dc2da2ab0fbf97961f2c3445028b0475d25a29e3c30cd2c0e0fad2b9080ec9db"
      "sr"
    end
    language "ss" do
      sha256 "8b97577399e8dacb60cb898e33e6f51f7d3bbd4e88203748d58e5374c46b8e2b"
      "ss"
    end
    language "st" do
      sha256 "0ab1b46e492191d07f6bc3cddbdcd4951caae84c7a2abffc171613c5e81bede5"
      "st"
    end
    language "sv" do
      sha256 "a900db5b87bec5c501404b408a11bf3bbd2e6d9b498f4f544cc5fd91eab51fde"
      "sv"
    end
    language "sw-TZ" do
      sha256 "2a643e51615845b05f96e7ad31156e965e0f481f08a697318a62b55488cab88c"
      "sw-TZ"
    end
    language "ta" do
      sha256 "ea401263df8a939e5bc876e4cb393609b06320c516dd5a4ffc2dd0a163b57c76"
      "ta"
    end
    language "te" do
      sha256 "5405b21750f572035cdc66b89d3b09363ed05764ef41f2e30b31596eb8b5b589"
      "te"
    end
    language "tg" do
      sha256 "0c7c53ab6c8adb7999b6eb31c326afa2a6c29cc7c9a468707e22ebd420e82065"
      "tg"
    end
    language "th" do
      sha256 "6a9dc517b4d7bfe8a09c2deea6f47827484dc7fbc7fecff8211ea756b0e6bb65"
      "th"
    end
    language "tn" do
      sha256 "c36ac1b04b50354623a187fd02ffc655ada1161f4e311ecb31d2a0fce0a81827"
      "tn"
    end
    language "tr" do
      sha256 "478c388d2e014fc3dd3a7c91243664438feacdcfaacabfde42d641297b5a4287"
      "tr"
    end
    language "ts" do
      sha256 "a1e10ebf6a9daf6156d6dba35bd47f1e4fe43d380d2988a2a2152153c9a17316"
      "ts"
    end
    language "tt" do
      sha256 "ea50b8b492ce1847b697919da7484429463837a73910c61740680d4efd74f15c"
      "tt"
    end
    language "ug" do
      sha256 "90bb01e6fc48a694d1689c0f78fb2c75fa3891cc15b5287ee04e8e60c27b0172"
      "ug"
    end
    language "uk" do
      sha256 "8ecf63d39142f7dc0532634ef80eb19312fe0889df4b9fa71e753ed06668157a"
      "uk"
    end
    language "uz" do
      sha256 "b101c6ba83ab31b7a43d30e65b7835d2ec74d5d24be7c5489ded188045999ae4"
      "uz"
    end
    language "ve" do
      sha256 "6333ba8b4347cf0c55c0f41a96b95380b92a77a2f4eb2a80088590176286cf9c"
      "ve"
    end
    language "vi" do
      sha256 "375f936f36e19a681a784899f703a4b8799bdee47ff7c2fd15ce0875b9184f47"
      "vi"
    end
    language "xh" do
      sha256 "ad84e1de8e38bc9f2b4a3785f3d12d3a7c51e4edcd8abfe7ee0a8fb1411c8d03"
      "xh"
    end
    language "zh-CN" do
      sha256 "59512490f035137c77abddb040ae067beedfe79a7cc30b55dbce1c2f936f6549"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "d459fa0e0db066eeda81b4867c3fa24e447fa9b44aa1945e183f3e676dc40098"
      "zh-TW"
    end
    language "zu" do
      sha256 "20ac4209258d52a0de724c0db04fed9d84cc380a581c668222fa0cada2b75bc2"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "9258cead2fe59ad747a23f8efc700a021d2d6bb3f153e8ac59399a098dd97acd"
      "af"
    end
    language "am" do
      sha256 "6ec6a68b66417fd2a84253e9b0e8b194392d8f053211a03ad9b5ce8914b1bd11"
      "am"
    end
    language "ar" do
      sha256 "7c2dbd8890550e4b8c3d54e3e85dc165da4bb2603acd80c65ca1c5159127dc9c"
      "ar"
    end
    language "as" do
      sha256 "112f9ae4189ad4eacc13ea5c1750b7a81adeeb034bf5e9fce1a70a3da47bc592"
      "as"
    end
    language "be" do
      sha256 "b1fbeffcf811d5b2202c92c7e4d780e75f78622b98f1b22df7ead80900402b79"
      "be"
    end
    language "bg" do
      sha256 "4147118d617a0832d2a5568a0ba3174891e54f73645da0edd0906e029dc87d6e"
      "bg"
    end
    language "bn-IN" do
      sha256 "e37f03ed42cc0abf5a8da6235be94203727705089756f724c27363dc789ead0a"
      "bn-IN"
    end
    language "bn" do
      sha256 "874013ce27b17a1bafb502c3fc078df55440ccab436988b9fe51bd0af5924ec0"
      "bn"
    end
    language "bo" do
      sha256 "599e7a88aea1f198ab6aeaf25ace9514303630a75216938812b30faf05f28545"
      "bo"
    end
    language "br" do
      sha256 "e51a80ab2c3215a0dca6dcab9b6c2716917fd40e482b759f7cd7011a56d32bda"
      "br"
    end
    language "bs" do
      sha256 "f20add33bb9a6d33da6e6b5bfe75bdc15f8d5447e317b34eb33181999644d3a5"
      "bs"
    end
    language "ca" do
      sha256 "2fd36fe35d6331c014e3ead4eb266dcbcd6a559c513490e066e01aa0e6bb562e"
      "ca"
    end
    language "cs" do
      sha256 "f38d55b8c89081b388afeaa9a8950e7279e05d017dd01d87d1c5cb14830363fd"
      "cs"
    end
    language "cy" do
      sha256 "932af9de418f7f761af44c14974dbffd994d0267ad1f25c2e60126ae82b55941"
      "cy"
    end
    language "da" do
      sha256 "33c6043577eece096c76e1cb2481873db6398a8f4c03b91b09b7267e6ec7f4b4"
      "da"
    end
    language "de" do
      sha256 "72caef1aca2d3c10147e9d224a654ff33450024f16be2166c1c06aae7b8b9be8"
      "de"
    end
    language "dz" do
      sha256 "7ed76d2301fd10f44e3aa5d66c867d62c1807fe21c99b717fafcad132c52ce28"
      "dz"
    end
    language "el" do
      sha256 "02a25bdc3995ec6c21777d11959d06c03e8d6bedc532d90b7c72b31e1ecfd499"
      "el"
    end
    language "en-GB", default: true do
      sha256 "a9767327a509d8709fc7eaab50b1b7bf7e2ee7505357b85f0876534e67dec295"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "3ccfb6788b314cbc6bda4c168c0e3176dce5d757c54d65e1879258ad03b84f8f"
      "en-ZA"
    end
    language "eo" do
      sha256 "2dc9141c59db709f0bd9a67b5a9ab3c75d615c9aea3f6381bc41794b79250698"
      "eo"
    end
    language "es" do
      sha256 "2478898f242a21848be0f82619e4526ca60ca45629bc9abda9f3942a48663ee8"
      "es"
    end
    language "et" do
      sha256 "62c860c3c102894becf612ddb45bd22b52c88e763b90dc8cd927d59d6e5feb1e"
      "et"
    end
    language "eu" do
      sha256 "f7fbb320ed2f8e2f691b2c74995870d9201c0bda2baf29d19567dbdac36f84d0"
      "eu"
    end
    language "fa" do
      sha256 "d50f65837936757be27a2f68e130384eaed36877508bb359914e414a8b47da54"
      "fa"
    end
    language "fi" do
      sha256 "f4d22e6e5ad0cb830a5fb1cb1a82c8cfb174254749909734de094fe869f74f65"
      "fi"
    end
    language "fr" do
      sha256 "f45f6aabc1f809bf98e4e5305f6cf505cb2ccefd9ebb3750659ee8521398417a"
      "fr"
    end
    language "fy" do
      sha256 "5f965e3afc95dacc5e09b592ac413b86d72110964a63bdc2b8d60fc7ef5db93e"
      "fy"
    end
    language "ga" do
      sha256 "d3583716625e3e3fb90188bde8e3705cd9eca215ba8c8b132c2c678ea507c313"
      "ga"
    end
    language "gd" do
      sha256 "a82296487fbd03eb3996f0fc63d4b39e055be0b5c67830d2332a4beb67f96553"
      "gd"
    end
    language "gl" do
      sha256 "1ad2bc9cf645d88570102d1b3a2da338e2d85e34e9a3546b2dbcf8b72b3f5219"
      "gl"
    end
    language "gu" do
      sha256 "0d70be91c300968689db33421818c433ec127837046fdfea754bee36f68ae78f"
      "gu"
    end
    language "he" do
      sha256 "7e3e93b682ec9f601e0bbf4ebb1d94aef713583021c1582061f8e96687f86262"
      "he"
    end
    language "hi" do
      sha256 "7578f6fc50d5b987af369c8dc04cd89bac547af3331e1d5dc92d3ac90a9c0415"
      "hi"
    end
    language "hr" do
      sha256 "2f370ec28322a3a53f9d3cd59e039aac7dd705b9d64fe072dc296aa9258616cc"
      "hr"
    end
    language "hu" do
      sha256 "99516a597b9a3f2cabcc323c970041cc227c6ef52d285456ae4eb8c968de061a"
      "hu"
    end
    language "id" do
      sha256 "ffd757831f5acfc8bd57b9ae2dbee75bf5199b9108802823319186c72c4ec678"
      "id"
    end
    language "is" do
      sha256 "4be32f89989a1aced62c59bd4667fdf7fdd5f39b889da91a5040ae25ad412e0a"
      "is"
    end
    language "it" do
      sha256 "7c654303de0e85195c267952c2199dfba5a73e4bcb880bdca14651b9f7c78407"
      "it"
    end
    language "ja" do
      sha256 "2ab8f5eb31847cc8599b91935a7d1042cc0a3d8cdd1a961874a672de5ecd0986"
      "ja"
    end
    language "ka" do
      sha256 "849296ced71a4fc282089368e1dc00104ddeb34a99c36d14574695bab9fc7abb"
      "ka"
    end
    language "kk" do
      sha256 "0fda5416b1ef71dddda54c38a30c40407c23fe8a02f38621132ceef72d8c2d45"
      "kk"
    end
    language "km" do
      sha256 "df7d90a1725a6d53a299c1d95359cfd8af892bb8dbc0a9ba37150fac4f6430fa"
      "km"
    end
    language "kn" do
      sha256 "fdca8821c15490af66b725f1e8f3031bf735612f9a5a1d45cfbe7510fa49cee8"
      "kn"
    end
    language "ko" do
      sha256 "eb3b79999a66755140ee8dd70c187524a2dc09d160f161c414f57c60ddfce696"
      "ko"
    end
    language "ks" do
      sha256 "3739689bc379a34e6af572e05273b0c1a93cc630a44ff7b4b7c3879f67672dae"
      "ks"
    end
    language "lb" do
      sha256 "7e8e1c4d95da559958cea27d37ec0dba2d0807574f17d509090bb3fcc557d60b"
      "lb"
    end
    language "lo" do
      sha256 "03aaa809a2c27052982f21230f18c04b4d3bcc24e7ed6ed45a3d32fbbff14087"
      "lo"
    end
    language "lt" do
      sha256 "6da2d64a4f5d0642ccb68c2a90d146a3f983437b65f666784819e11a3b1e431d"
      "lt"
    end
    language "lv" do
      sha256 "cbdc68d36841fbf1afa2b9ef6117976e9398c93d389693d03cd7286d1037cb18"
      "lv"
    end
    language "mk" do
      sha256 "d149859cda8f9122ff6223933081ed2a0b9b46788516bf97e557e30a77127091"
      "mk"
    end
    language "ml" do
      sha256 "dcedbf523baf3de78702ab3f1c63604e7bb8df01969bcffd3de412ac1fb4a9e5"
      "ml"
    end
    language "mn" do
      sha256 "90b6a63f74dc4b48303e8ec72442f387339994233b4ea64b8a97fca0d9ddebba"
      "mn"
    end
    language "mr" do
      sha256 "749d4da738226bf553dd2d4222c6e9c81662de992fbfbd23c6c96d54bd5d07ab"
      "mr"
    end
    language "my" do
      sha256 "85fa6b854d4034291d091869681767f3e010e62da8c3d40afd54824a05cff03f"
      "my"
    end
    language "nb" do
      sha256 "b078356ecafef2c064a10aab6695e5606f80f1bcd03befd58bfd496f97f4693b"
      "nb"
    end
    language "ne" do
      sha256 "95535768416acea87c96a43001cd8b76902b4313cb42c2ebf33b33d4dd384b70"
      "ne"
    end
    language "nl" do
      sha256 "5b5575df16e251f5b9b5d90c0ab6722694312aaa0bf59676b6c3cc451f80d8de"
      "nl"
    end
    language "nn" do
      sha256 "f5a021ab0f787fbea421ab7d76b6f389eb8df93642685b94bbac9568b9720777"
      "nn"
    end
    language "nr" do
      sha256 "b783be74854cb4ed7302cfe149d3617b00407143d11a011406a3543e181b947b"
      "nr"
    end
    language "oc" do
      sha256 "58e1c755630fc0bec3339c84ed3ac8640db8c5b9909ad065e5da636d8872d64a"
      "oc"
    end
    language "om" do
      sha256 "dddcc9e8b0066125e2ce552a5a94f79b3db6d4b4b3c16f86477c12965aa86a6d"
      "om"
    end
    language "or" do
      sha256 "979918c79caa23ec69cbc9f1189b0a24467973b3ef628a073f65a6090c376621"
      "or"
    end
    language "pa-IN" do
      sha256 "2f2ca5e8bab98276f1c776ee3782d525fd46ed6e0f88d8dc3518702c86f63e80"
      "pa-IN"
    end
    language "pl" do
      sha256 "dda3c4252d3a1a2422100729ab8d6fd3f5492e1d131f40ca29049b223db03ffe"
      "pl"
    end
    language "pt-BR" do
      sha256 "6af8adbd364ffa20e73e89088d0b94f9000170fc2fd74f58c3ff66b20a47efe4"
      "pt-BR"
    end
    language "pt" do
      sha256 "28479899835fc74b52d6f143123d4bf3a4bf8e425b74a69f95c0abaa69d621be"
      "pt"
    end
    language "ro" do
      sha256 "c5c7909da933f24b78b7336f36eae6c850142b97bc0c36221a72d68946096ed9"
      "ro"
    end
    language "ru" do
      sha256 "ecf4c688a16f4d5c741ab4a7418228170803b06cf54f49659f2d21b8212aac7d"
      "ru"
    end
    language "rw" do
      sha256 "45a86d915d93c2324e28d36c343a7a300353da233afa7246f8912d87698ee4a1"
      "rw"
    end
    language "sa-IN" do
      sha256 "47f5bda87eec0bece67d20051af0399ef48f723af599326e0ef18b0125c7f131"
      "sa-IN"
    end
    language "sd" do
      sha256 "964bc1187b14e9b6a4e8721c535bf8e2e56fd735c18fb1ba3ce301c783223b8e"
      "sd"
    end
    language "si" do
      sha256 "5818b8e74d962cdec21d2cf2e444a74b9aac09d017abb154c0c859a82ed73b3b"
      "si"
    end
    language "sk" do
      sha256 "57871edb6959858a4787b0645c48146efd145381ada83eca96e5213def06807d"
      "sk"
    end
    language "sl" do
      sha256 "f9b0997f0dff8520f34d09e9c99cc2f1b521254d959528188488eb59d975bd47"
      "sl"
    end
    language "sq" do
      sha256 "c52b0c342189017902676433328d78ce41326b6b3a0c6427c98c395a1e9afdfb"
      "sq"
    end
    language "sr" do
      sha256 "af5aae8ba909d8e80c81dbc0a74dfa6fb016714f546cde028bb3cde6612e500d"
      "sr"
    end
    language "ss" do
      sha256 "326693d7f6fe9333f41ba9b02ce6764bffc9e24f66c3d169b2e1a94b0cf8f508"
      "ss"
    end
    language "st" do
      sha256 "0692e30c2ffc470f37a2f579a38fb825aaf49ada6e19de407ec7f7bc6dc059d9"
      "st"
    end
    language "sv" do
      sha256 "3a0d3c648db9bf8575797df06ae2620100dd97bbfabbf34c7d7b197cac1d4045"
      "sv"
    end
    language "sw-TZ" do
      sha256 "9f4f35624c523854fcf7f1318b2e71c6dbe722dc4ec678d1392f01fe12de7c8f"
      "sw-TZ"
    end
    language "ta" do
      sha256 "3df8c52a5a688184ae0c82dea6c046bed94a707e893f45a5acc6cb87e3cbe2f7"
      "ta"
    end
    language "te" do
      sha256 "7260777995676db6a6e9ce6ec23858e4420b5bd6b7c5e95fce344e3acba01c95"
      "te"
    end
    language "tg" do
      sha256 "b8c4e62c1b97be87265e9f9d9348026f01fa9e165ab386eb6b255d82d7c99214"
      "tg"
    end
    language "th" do
      sha256 "0f1616c27b157fbbe3ebe3dd5c30914d8116adcfa818b0c1142c5108944bc557"
      "th"
    end
    language "tn" do
      sha256 "a7b57c29db35e4ccb8222d3ce29187f626afc9e0fc503a4160d0b53a51da6e4f"
      "tn"
    end
    language "tr" do
      sha256 "bfa287525458725cae38493829c0e4c8fec2b621ffc342bc34f9dff88cac61eb"
      "tr"
    end
    language "ts" do
      sha256 "01e159cdc5f65b5d083c2e1645868b5c8608dcfc7183554d39b1ad3f23e5c52f"
      "ts"
    end
    language "tt" do
      sha256 "be6c96c3c18cc0af7ec3530a715805cb36019c3a0de6d5f957cdb3e4a0627236"
      "tt"
    end
    language "ug" do
      sha256 "6f7724d0accc5e2c7f72540d443d69bb5f169b9dd2226dc9ba28f9e058525b1d"
      "ug"
    end
    language "uk" do
      sha256 "06de9cdb6cf8f74467c1396c0d75f5748f0289c5007faf802d0119484b915b28"
      "uk"
    end
    language "uz" do
      sha256 "1eb54b3f5b131f49552969827dd496b686b652a53dd70b2071d3127c3839ef88"
      "uz"
    end
    language "ve" do
      sha256 "86943cbe23fd99d280429e94d99ca505d775e907dcd8f2bcaf5bfe057e782558"
      "ve"
    end
    language "vi" do
      sha256 "8b0b6d359a1f9825e763891642f32b6c9e0a62d7852905d4e3c4c0d3c613e757"
      "vi"
    end
    language "xh" do
      sha256 "632ba39c1392c5f996451ef3f079845e9c0c65eafe0a9217aa202fb1a9cf21f2"
      "xh"
    end
    language "zh-CN" do
      sha256 "027e07c449085e7c780136924467b6cde4a794b194a49386ba8d0fc5f195796e"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "119e6ea466484503be4a98922869f77fb5a583f9512b28666a7bd324ecc947e7"
      "zh-TW"
    end
    language "zu" do
      sha256 "6c71b5be297214e3914da4f24666ef032c16b0b17add7485ab0a2118130387df"
      "zu"
    end
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    cask "libreoffice-still"
  end

  depends_on cask: "libreoffice-still"
  depends_on macos: ">= :mojave"

  # Start the silent install
  installer script: {
    executable: "#{staged_path}/SilentInstall.sh",
    sudo:       true,
  }

  preflight do
    File.write "#{staged_path}/SilentInstall.sh", <<~EOS
      #!/bin/bash
      pathOfApp=$(mdfind "kMDItemContentType == 'com.apple.application-bundle' && kMDItemFSName == 'LibreOffice.app'")
      if [[ $(mdls --raw --name kMDItemFSName --name kMDItemVersion $pathOfApp | xargs -0) == "LibreOffice.app #{version}"* ]]
      then
        #Test if the .app have quarantine attribute, or if they are already launched once.
        if [[ $(xattr -l $pathOfApp) != *'com.apple.quarantine'* || $(xattr -p com.apple.quarantine $pathOfApp) != '0181;'* ]]
        then
          echo "Silent installation has started, you didn't need to use the .app"
          echo "Add language pack support for $pathOfApp"
          /usr/bin/tar -C $pathOfApp -xjf "#{staged_path}/LibreOffice Language Pack.app/Contents/Resources/tarball.tar.bz2" && touch $pathOfApp
        else
          echo "You need to run $pathOfApp once before you can silently install language pack"
          echo "or you can also reinstall libreoffice with --no-quarantine parameters"
        fi
      else
        echo 'Silent installation cannot match the prerequisite'
        echo "To complete the installation of Cask #{token}, you must also run the installer at:"
        echo "#{staged_path}/LibreOffice Language Pack.app"
      fi
    EOS
    # Make the script executable
    system_command "/bin/chmod",
                   args: ["u+x", "#{staged_path}/SilentInstall.sh"]
  end

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: ["#{staged_path}/#{token}", "#{staged_path}/SilentInstall.sh"]

  # No zap stanza required

  caveats <<~EOS
    #{token} cannot be upgraded, use brew reinstall --cask #{token} instead
  EOS
end
