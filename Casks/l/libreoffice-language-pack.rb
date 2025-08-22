cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.8.0"

  language "af" do
    sha256 arm:   "bd0942f51101b788ae40da01134d13df4afe94c8c9201a4a10d0e641e086fef6",
           intel: "e8d4b972b8d0267bde6c7f6bbdf1986bba8664ca01911064b92e322fd32a8a26"
    "af"
  end
  language "am" do
    sha256 arm:   "c500d1201e63ea09c63015ea2bde9228ab44739dfeecf1c410d0a1136f16e810",
           intel: "c8bd96bf5a3c591c7ec0603d8fd52ccc317bb71e800848809f84c6f3ca0b9907"
    "am"
  end
  language "ar" do
    sha256 arm:   "105bec7b0ef30705888e66161b90759d2868de4cac3da48be99bd47eb92b795d",
           intel: "59eb15caab5a4f9c8872cfe8f509bbb93dd1392b154e4a8929a87170f5dfd618"
    "ar"
  end
  language "as" do
    sha256 arm:   "b30dba9b04573b99db3adb30c98baf611983062913d665f8242e9cb0db54a90d",
           intel: "117f2b3c237bbff1a72bfbe42786666822ec312cfd8444ea8800b0b16ae37308"
    "as"
  end
  language "be" do
    sha256 arm:   "16735adf148d0f27d11f5ecbc7d2367a2b586f5ad21faf1586d630e367e05435",
           intel: "8115dc04f1bef0dcc649e70cff9fd7ba760968ebce4b54b81661f57a4c3b1209"
    "be"
  end
  language "bg" do
    sha256 arm:   "cbc90d0926c37dbaae07b5f79706f15ca28365b9bc12ec3788539d78238911ff",
           intel: "3b4f63838844cb31837e99f7210aff88287b0a5b34711e8760c3916417f15c68"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "946b9795019b409efeb0c679a617fd6535d117b938bfa9bffb4bec4cec045a05",
           intel: "46a0d501a0aabdd2ca84fa52f1cf1792d6185922292a4d9f05a398608795bb9c"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "41ee0c498b76cb7f8e5d48833f61cd3acf086e0990aabe80d22ffdb156e9fa04",
           intel: "f6df7fd73a19818c4ab009ff6b8d397e84918802c8a4c09a7d977457517ca356"
    "bn"
  end
  language "bo" do
    sha256 arm:   "b416b968c7ea7a860861cddd453f887be69624f9d9ae14a21260c266fdfe6047",
           intel: "2cfa2bda6621d299a62740bd1959c94aa76df1b3f5cb7926b677315757858064"
    "bo"
  end
  language "br" do
    sha256 arm:   "f8224968d5fe795aae1d213b2cecad80e3b5bf0127be3451ab24d1c40f71ffac",
           intel: "08c1fbce0b36fca8ef144a2f20632b6114909b1134521a7d866ae459ba8aec2d"
    "br"
  end
  language "bs" do
    sha256 arm:   "daf142a90a579856c9d6cc74babeef076548bfaf342f75c47b028692b4b015eb",
           intel: "6cae536c87d7fe3ea7083acdcd6916f781703566be18ec33fdf5b6e31045d9f7"
    "bs"
  end
  language "ca" do
    sha256 arm:   "4f0b2df3d9e6655f3334ae9e164db177efbbe60aefd95fae0bbf0be5bbff63b3",
           intel: "bcaa41ac1414fc8abdbf7e71d1436f90c694da9a7512d9a5c521980786f0cc15"
    "ca"
  end
  language "cs" do
    sha256 arm:   "53421dcf46454f55ed937845e98b3cb9f8a70598280b2235b2823f62191f5450",
           intel: "c51f048c94939780dc021ba18157795893b1768f98ca7c79858838fe51138a3b"
    "cs"
  end
  language "cy" do
    sha256 arm:   "1d1d3b9da12ccc09274e37e9148070d53869ff97f01c06caace233b1e572aeb0",
           intel: "6d73a78f6fd9abad2702c82d4ceb690bfea42425063ded15b0b8c6fc2607d863"
    "cy"
  end
  language "da" do
    sha256 arm:   "ca69d7f456192fcc7d1077c227b4f35f53ead10be40a507504ff3f1f4f203077",
           intel: "29e074236e491983883d7815bf8c78a509b49b633ce6afb8cb70444f7b5ea6e0"
    "da"
  end
  language "de" do
    sha256 arm:   "639a0030a72e4a6fda98593fdacbe6f2c621308592138ad454267925e75dc0b7",
           intel: "d87b7402ca758e61da7276242993e0a61f431c8b257f70cb5e7baf76682466bb"
    "de"
  end
  language "dz" do
    sha256 arm:   "4f7a7c2de9b01906f72f8f2da4fb3e71e05d3a2bb4dff38bcf897aaaf44fc7d8",
           intel: "5fe2ccb70c2cc341d39b5c44811823352480ff8f31fa2a1cfcee252c0ccc6855"
    "dz"
  end
  language "el" do
    sha256 arm:   "e27c57c2b5018d4899fa035bbbabe5203ed0d8b2adae77b3716783bb7768c620",
           intel: "4d1d31d69004c71bb9615c397756d87efbbea426815c8dfb88fc63f467498a0a"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "169f65c000fc36b04ea8f127b7158153e500f2f1f8fab5ec3d6fbc923b093692",
           intel: "8b113377fe400b018f7a66a5f175a90cdd5d39ac624a8c4799bd4a84728dad79"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "42e7faea75f7c01d56997162b8286a697de0ba798a6c0ab4d5911a2018df2e21",
           intel: "be6a2023142fcbc5eddebb718900adf9916049c8458abb4c953c6ff074279e98"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "a6b608608481dbdcc684393b00b32325a97e1235694021632b12a8e7b61b1782",
           intel: "a7752177dc304cb02a59aeb683bb569fa5519b7aeb27b5fd386fbc4dd0b0797a"
    "eo"
  end
  language "es" do
    sha256 arm:   "bab9576a17527e4428683700abde5f3dc56dd011a8c3eb606b049fcb4fd28622",
           intel: "418361ef79742fc2b2005b27954a6c57fcc30cae1eaa003d0b708d6c34331d94"
    "es"
  end
  language "et" do
    sha256 arm:   "82a5e64e01c69446cca159f4311781827051d86d991f1b820a7d4bf24dcd3477",
           intel: "835af8a2c54b6ce8df2fef39d3937aa1cd2224e2671ecbcf0e6aa41ddd24f0f3"
    "et"
  end
  language "eu" do
    sha256 arm:   "ec8e969d042136078b28503ecce737856f529e92bd197e23d92b9a1f3341a511",
           intel: "09c799bf77bc85692a5f2c63bdd8d1af984b908860e44d4cfa589edbbaa070e3"
    "eu"
  end
  language "fa" do
    sha256 arm:   "8b5d11bf2a25b2513e55e73c88392ea58382bcbb2b2ffda5911aa1145ff8a647",
           intel: "36731dce19654716f407fc712807db8780e638a3346dbd043efae15017c2a675"
    "fa"
  end
  language "fi" do
    sha256 arm:   "c94473f064c9fc1e26203a3d03c84a9141181908cf8b26f4a22754a40c53b880",
           intel: "dbb4913dcb93a16cf880c32bdaf016c13a61dd62cac4ca7cb6fca1ac39de3799"
    "fi"
  end
  language "fr" do
    sha256 arm:   "dd1da51dd0740dcd3b9f2703717b60d867ecf1138c1bcfc075f22cb936efb097",
           intel: "c0581355540f3f5594d275dddbd3298dcbc1ee36d6746f61a496df8943874ab5"
    "fr"
  end
  language "fy" do
    sha256 arm:   "ad9e70023e9a99608855253eedc1d849c8b89be989248e0f4c0970928d20299f",
           intel: "ed9b11c177c105f3ffec252e1ecd78287a8d78c74874b446773a3260d724e6a4"
    "fy"
  end
  language "ga" do
    sha256 arm:   "b2403d9932e44fc939aae0bffe76a2b7d45dc13476bb5e767ca1c9527af3d6d2",
           intel: "bf150a7bd6d8cb738067f24758abb0285bd39c10fd9080e1282089eda2ccdd5c"
    "ga"
  end
  language "gd" do
    sha256 arm:   "8ae31d93398ed28966040f6633e43efdd48c9972a22fd75af02da3de0237bc6b",
           intel: "7721b33ef584e670cb99dbc71e48b86f341803f1ca2eccb063989970c1635e5f"
    "gd"
  end
  language "gl" do
    sha256 arm:   "bd58322ba2edc083c8c5a39f149432c1de4019202e00406c5d171fb9f26356e6",
           intel: "0ceccd21dfb7496ae8b7eb4a9e85c89bad3d4e412730bfe3ef07659ecfd231b2"
    "gl"
  end
  language "gu" do
    sha256 arm:   "d9f389e4ffbf8471c4d61f0c977f5be6326bf74e9923fdc8081d3b0932b8c873",
           intel: "01bad54d9ef0dd57f16c18cce1aac0d58a09daea79a2b0c9fc63113c4b694422"
    "gu"
  end
  language "he" do
    sha256 arm:   "f8f1f74d5813aa719b45eac3e74797e16e819cc57e09cc66ba866c369495e05e",
           intel: "34b963fcbd29cf2baf4e9cc83e3113695b2639970bd4179c85e5c1ea2d1a2000"
    "he"
  end
  language "hi" do
    sha256 arm:   "628e72ee31a9e0674de5683ebdf55cbe1936802d71c6083274ec4faa0e71a7f3",
           intel: "470270a9d7a54631dd3b7191b8167761b7e86b4fc205891989ea8a7c985c0321"
    "hi"
  end
  language "hr" do
    sha256 arm:   "c52acb54f28d201f09d57525ecd3c13a1ad32a97839266882c96659532ed525e",
           intel: "4f99e77a2f48b78a7438a52212034d69836feee5a3aef70781c043f37efe7514"
    "hr"
  end
  language "hu" do
    sha256 arm:   "6764fedb5774f0119a7537329eb50ada2de20b1097f870edd6c75c787eb20338",
           intel: "daf6644a5cc7d60c1576d0a1ef87e4ea769e3545062b06f30730c94a8543d683"
    "hu"
  end
  language "id" do
    sha256 arm:   "2b809e3429bc0ff2ded91479de5d9aef6b632868b36eb35307b29c6ba085eb13",
           intel: "09dc1a2b21be388667828f820b8de2deca60288688f39978d9a2ab3ff45f9992"
    "id"
  end
  language "is" do
    sha256 arm:   "696b3a1ccb15dfd895e68662af296ba40a8407f958629836b3134a36f219cf42",
           intel: "7568062b13e9e746868c9fd89c44f7ae5f24737d0df2afc9ac1c4c72adfa402c"
    "is"
  end
  language "it" do
    sha256 arm:   "4b0f438c95d8b959f79452b307df5848704a1f37c7e4042edec62181c652e4e6",
           intel: "188fc2f7c4abc6e87c0d635ac472d1f991554b553c74429a167e960fb41049b3"
    "it"
  end
  language "ja" do
    sha256 arm:   "d5c23cf429c16e5acd56ea9d35d42b8b81629687aae92699859a959b48ce906a",
           intel: "dfcb4a53271c48721dbc1bf93fda7e7841084d694d46a49a4ef8f37df4380a6f"
    "ja"
  end
  language "ka" do
    sha256 arm:   "dc39de2ae1838743657e0c801941bef1cbb4ebc3eb7f4e233b580e7948e59c1f",
           intel: "e93467cc3a0f3c95892123d53518a262563baba806a4f1d2d92553e3a9e57488"
    "ka"
  end
  language "kk" do
    sha256 arm:   "3e1d72a9e3d1680df4753fdbd30dcdc80a266fda5f08c60a59835e14d915fac7",
           intel: "79bd32014bb413500f32d01c9d99b4d0610f8cb1852e710b419963b51568df21"
    "kk"
  end
  language "km" do
    sha256 arm:   "315fe9aa5f12188907e9d6b9fa88795916159bfbb226c3f13668f0ad877b6505",
           intel: "c6b5628c1844cb6b0cfe25868c862118ab685f95c1b2616cbc13d03af88349c6"
    "km"
  end
  language "kn" do
    sha256 arm:   "204a80561a6c18215f1f4938022eaa11bab40eee23c3d8c61c49bfd255735784",
           intel: "f2a4e3e8bf99580a3b14016797df5259bdb9aaa4603fe652d2f9f069f47a3030"
    "kn"
  end
  language "ko" do
    sha256 arm:   "bddd8208cc350ad7fc488c764f0fd72ad9db46f05ba1583712907b47746ea727",
           intel: "e280ab80351a782d484f16603f6ba5659516969e7ea007d76d384e6b522de373"
    "ko"
  end
  language "ks" do
    sha256 arm:   "90174df256650b3e6f03ca3dd46c81b5c6ee7c7a2debed2085f99d516c1b968d",
           intel: "891e18e2e7081d9d0d098dc1248697cb5d5cd45cebfebe1bbfa40fdcd8142f32"
    "ks"
  end
  language "lb" do
    sha256 arm:   "404c15f31587389608b1d06ef0f5f1538fc51fb56ea25ed3b354995f439d695b",
           intel: "0929808c8ee05bb6db4ef2ed5d8db555db20afdb6f2510ae6804e5438f1b1c8a"
    "lb"
  end
  language "lo" do
    sha256 arm:   "b43010f225aef95dda8c962a3c9562358d188a07f0e040dbfc9423876c382c9c",
           intel: "774bc34e22c8186b0743fe1d2ee415558b5f59b0738a6117f4e73cd0aece9546"
    "lo"
  end
  language "lt" do
    sha256 arm:   "9f48295c74a4c9cdbec9bfdacd7664a0d10583d216390871b0b518c8f6607ea8",
           intel: "3034e1a450de2e89b513e74b85fa7bfdd4272035b271b4e6d91532d7a4b1dd25"
    "lt"
  end
  language "lv" do
    sha256 arm:   "97af60d4b4fbd276a23e85ca58bc5fbd96a9a0103b1af9694b0f4182feeff24e",
           intel: "a67948c3dcea59d332079044bf09b0d88ba07f20976296288801371e3a466114"
    "lv"
  end
  language "mk" do
    sha256 arm:   "291eebc1f5b6f09d4313fe534dac098f1f1f4a199b01a352792b00509df7b00f",
           intel: "2591346b85b3cb926c24e4e771c15634c4062e816abf0df53dabee68d31b6952"
    "mk"
  end
  language "ml" do
    sha256 arm:   "35e3c9172686d7b0051e8351accd629365cbbd4e57f50d4a5c1c1e04a7ef7013",
           intel: "feeb2d5325bed33a0cc0e005925cf4f4b59bc22abf3620296b869d7d3538d4f2"
    "ml"
  end
  language "mn" do
    sha256 arm:   "66bfe18585d2a6221b6f058b65e7232ccce9a3ba3bd6c60418118ef2ccf3a72f",
           intel: "e3ffb2e016e7ed2b57dbbe8b90b61df597fbd3813f2aac8b3f411cf9c6c775d6"
    "mn"
  end
  language "mr" do
    sha256 arm:   "cae9ced3dde486eb9fa0d06809e81477c4e70ccb9597ceed851fe3e5b816158e",
           intel: "5edbf0a0600be3a277142854bc8bbcc2442dce5bb94440f5df01c0572116e203"
    "mr"
  end
  language "my" do
    sha256 arm:   "e3ba1b77760ad7343662d3d059cfb6de6c20abcca79689da00084edc52ce5d12",
           intel: "9d3e05407ec6e86c31ac2aef8cf5374a639bad6b9cbb502f41f46db08275bba5"
    "my"
  end
  language "nb" do
    sha256 arm:   "727e89d4c822e74e855f78a16a529988cd9dacd674b62fcde8ba187eec7678f1",
           intel: "797ff160bfa3b4e3778dd22a431e70a5fd05572f89dc02d885650c0fcf5b5f88"
    "nb"
  end
  language "ne" do
    sha256 arm:   "eb1fc19dcc35e34b736963a84a130476086abf245c9c17e1c1088683badc96bd",
           intel: "ce4b48b89f922457f4b59fc1b4f72f1d9e1563db3f51f3872cef76c61bd568de"
    "ne"
  end
  language "nl" do
    sha256 arm:   "a5e1819d59ae012ddb837356301854e20036f8af5b868466a6f8e07eaae0774b",
           intel: "4ef0742a8f536d0f22e073aa3135eeb1aceee1b8094efe53e0bb21fa00ba6609"
    "nl"
  end
  language "nn" do
    sha256 arm:   "ea1a724e6c7c8b364311b433c4aff1dfc9e9a8fe0f2c3a08adfa9ac8f897a54f",
           intel: "875b921529e41bd6ee52edf31639d2d5abc7862aa1adcecfdf34159713bedd75"
    "nn"
  end
  language "nr" do
    sha256 arm:   "96bfeb7fa25e1f34cb0567f78a7f224df27c246e9ae249091dc6fd42fad64ebb",
           intel: "abe4f5d73297cb850cdb1b015dd0fea2dda389e0cf276b51030c02d9283627b8"
    "nr"
  end
  language "oc" do
    sha256 arm:   "9029f7b60596c52dafdf9c4f6226cae989b056035d1c00f52cf7e125af999d9d",
           intel: "bf7618e2e7c2a2a2138fa9e9c5c0baf80ddc9db8d89d5d5cf186f101ad60a217"
    "oc"
  end
  language "om" do
    sha256 arm:   "990b42afbd61e73628d2ed259d0e0db0367647a355a2c2a02b75890368b1ad70",
           intel: "38d16f16839e4917b01ec9a3a1847ded1bd5463dc2ad318dbf9aa46470cd799a"
    "om"
  end
  language "or" do
    sha256 arm:   "e3827b6cf3d46e2e39646e1df6f5e1db354fc28756da59aa473ac9e03f54193f",
           intel: "4943f2ff2fef9d1a172d2c88a0dd3890e59939ff1c5ab87c551acbc1fec38983"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "43228458758ba2bdf2ce28fc77fc07ceafcc8caec8772ca839fcdf39de3f9723",
           intel: "9615fbabb8cf3d447efe39bf42379341f723fb191b8418ca3d7ccf822b00ecd3"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "76007bc6dceda0596b4fbefc9102551e6a10de9fe2775b599fd7351deba006bb",
           intel: "056f0f091fb70422bae415baa8ed7e21332c399816d41b7f265d52eddfb9a8f5"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "64a2db03e8f8afbb8799d9c5db9a22d5f61fc14c1bcd7d0c19847d649ac0cd13",
           intel: "206433a9d2ffacdd7bc6e4f26598dd9375dd303e1d1b3b58fc78b3e73d36dcbd"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "e1ae5928bd9f19ed38d68d2a48741b4824981fad3dfbb0c557a9dfcedba28528",
           intel: "697ae20b0317baec7e7fa54a900f734aeeb0b3cd768d5d6115c16f79cb0cb195"
    "pt"
  end
  language "ro" do
    sha256 arm:   "4f375d672010a6c34eb395f6ebf155e972fda00faa2b67a08d3512627c6e3608",
           intel: "48b83659d27ffb129c4aa58b2dddf811f2e275fbedea7df2e6c70282e49e1b93"
    "ro"
  end
  language "ru" do
    sha256 arm:   "c49b1fbd6d8016464f975e9e18a7dc2d4cbdafbd0effc9acb0b90d1538a4aa02",
           intel: "ffab577c8e824142e78136bda6f2c6e16d3b7aa76b26cc7d6f95d318c0d14dd7"
    "ru"
  end
  language "rw" do
    sha256 arm:   "c7bdbbe72c15e2618147b93b85556acd54c784776a35431596800eed54cbe2d5",
           intel: "b777b0f3ae5646b9f0fe7ba25aab82d2389f3cd1eb42c8f74f971fb2c00596ea"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "d5b2ae1894b80f56643e64c054c5b5080a909128be9f71edefd33250118f886b",
           intel: "16c9b2ce528b38b3234597d265651ce69aefb3e89412ee2c943a994e718a2e14"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "8ceb68c4bc06969aef5ab5509d0e1bc6c8d142c85620a9a34b85f5613775851e",
           intel: "37698b3d83af34b59b3c773a1f107a1fb456ceba398560ba1a120192686da79d"
    "sd"
  end
  language "si" do
    sha256 arm:   "8c7029ef046d0c34361ce020da0429a45cce81c5a8c29eaf64946e39e015934f",
           intel: "41a2e630605814da0c414d97e48f4fc7bedaf157f6bc2d3997f044897e8948b6"
    "si"
  end
  language "sk" do
    sha256 arm:   "1c12186630bb45c57c9f78fcf2813cb921f4b6e5ee17aedbb2780c0b2e935f53",
           intel: "3f71127942e2ce76944050bdacdbfe4bce00e8c0f04619c410bf80926aaa9d67"
    "sk"
  end
  language "sl" do
    sha256 arm:   "9021facc060b4b99d6ad3bf315af479f40dd571d363ae166a7d8266905158a17",
           intel: "1898677444229abada43c924c551d9499ce1c7ba528ca55dd01484928a5a1dc3"
    "sl"
  end
  language "sq" do
    sha256 arm:   "5650abd670603b3255c921e0a704c80692cc0ac83fab2ce2f5a044df8599511e",
           intel: "ede0cd6d7e9a3e262916ffd7887f35409a97d2da044576f10c40deea7418ff38"
    "sq"
  end
  language "sr" do
    sha256 arm:   "fb8d9a4e966d65f55eae428144fd573c24357d2386fc4e01991ebbab17bdebe0",
           intel: "525c7379d65245e23e8d6bc25adb2c07fe3ebd04467dbe48cfdb6c41964a87b7"
    "sr"
  end
  language "ss" do
    sha256 arm:   "e363fd09c6afa088fed408b3d198074d3ae7a1535dcacba93cccc202ea6dd7d8",
           intel: "b0e9e3132f011c3fce8a1e07dd7c1e85efd224efb00d07848b0fa5e28d8f11fd"
    "ss"
  end
  language "st" do
    sha256 arm:   "b91a135a46d31e28c8465dcdda58f415fd411390a730bc04151947dc7bcea7a4",
           intel: "118d6c6e2301be9ef8a096cf6a047f67a87f474228ebb5f410131a9647cde65d"
    "st"
  end
  language "sv" do
    sha256 arm:   "9fdb0bf3a6a7679f0d907b2491b8e9964e16bd38dcb5f0f6bc53305d7a96a132",
           intel: "405ba293d1158b31a8606a6a6c4cd8ad38749844ebc8e6f9831e19a7d57b2a78"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "e058f5adb600978b1ff60cc2c5b92194e1e906ab2de7ed81fdd7525f5899584c",
           intel: "1ed0b485d65784f73df078d2c800151b059d4ebb9676d3c7f253797f6f84728f"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "cfa7ec61c09d2f54d58def1a3ea24f729b1721d1cd22f13a4d6cf4c6f0fb821b",
           intel: "6275e5a66dc87162bbc824b52eefee66e2ee3b54206c0367910ed9e7fcdb233f"
    "ta"
  end
  language "te" do
    sha256 arm:   "b4a1e3006abc178657f4862a43620f79fee8d34d7716e84bd31b78d31396469a",
           intel: "2eb4a34cffe8c3f25d43e0edb26f09093d02956d0f9088104931bcef356e3ab7"
    "te"
  end
  language "tg" do
    sha256 arm:   "7d03b7ad5dd4e1bea194d14f1c65e88013a3a2b3779bfb0583ed65c21e1488d8",
           intel: "63008b4f08e3839ddbfed2d5d946c82f832920cd942c61a188d67fc96cf6b199"
    "tg"
  end
  language "th" do
    sha256 arm:   "8a8008eccb929dffc63169f4ed4aed1b87cad3802833ddf55c5bc1f8a561f241",
           intel: "5c48f85042a7d5e5b4909a7a930bc3378becaa5bc3f98106400a125bcc9167ee"
    "th"
  end
  language "tn" do
    sha256 arm:   "97f2ff8e9ca1c95f086ac39e77e19927e7c23e3394fb63144584824fdbd98196",
           intel: "c513758880758f263cc3bd96e51d34d9b73aafe8c9e999da549c4493b7480f3b"
    "tn"
  end
  language "tr" do
    sha256 arm:   "b4d01bb6f60cc9570d3adee939d60e70249ff7ea18cc83e517bcb0f4376853ae",
           intel: "624eac5f7da0a9893d2fa86acfd903d8e180dceb521d94335d5d0684dfd2cb62"
    "tr"
  end
  language "ts" do
    sha256 arm:   "76e7184c5c1f1a4d0478b17209889a9cb4274e2f829a8dd15afc14d031c36e7f",
           intel: "33afcf81c6246bb977fd1a733a4981c08bac20d2bd82021ac8bd65384a588fcd"
    "ts"
  end
  language "tt" do
    sha256 arm:   "80a7e17d2773259ce9e603e8943b0c1cc539af503bbfd92bdbf155a8c09eae25",
           intel: "3429bd6982712a2c2f7b9cf78774d95bcce94ea577608342843412828e782455"
    "tt"
  end
  language "ug" do
    sha256 arm:   "3ed3e5e1320651dab3ca4ac285b36938d5b5092bc36e7e16549867e8d890c7c1",
           intel: "0fecdf18ae349a0e61084499a1083e87ca272323c29bb32c6480405df760c6e5"
    "ug"
  end
  language "uk" do
    sha256 arm:   "01b56d215a0d106954f0c32dc8f7f9c60dec87f642649c95b31f214e21077973",
           intel: "a1e4cd2b97051c5583e069f02777d40016158b183148d3dbd95dd7b934301d0e"
    "uk"
  end
  language "uz" do
    sha256 arm:   "af834e82f5a583dfff52202e1008b0b05abd145de84113873404e6d1af4a534f",
           intel: "6fcf66649952a5f5a52417322916cf792bd599dd02a53fbf05c41f62f8034586"
    "uz"
  end
  language "ve" do
    sha256 arm:   "897e74eeb6ae566ad9d98d856c0b038af854b91fd8453189a43be9753226f4e2",
           intel: "1f8d0ef11dfca1666837ded7e1738fcfe41f6e81e75a33a3d083110a044a8775"
    "ve"
  end
  language "vi" do
    sha256 arm:   "a256624d99eb41add2c3a3636b4213a4dc86ae59e1f26a9423b091537fd1ae3b",
           intel: "6fd600445271f957db241440c9043dccd45cba21553ccc8009e60d460dc95891"
    "vi"
  end
  language "xh" do
    sha256 arm:   "e59e45ebe850aacf141c60fe27f3c94becf9e8aa39bf16219ba7ac263a7f24e7",
           intel: "137d58cfdb033c8b58b05406a535c60ae0474fcd79abb4e33d9ed43071639ed4"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "36f53a683c1f99e8c8cc10a613595e1c8f8125af318b25e61b00f36735b3a21d",
           intel: "3e154ffe7243792da273f8828685b61571e14aa400aec4325db8fbf092739a62"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "6f96535de3a1e57d008a56838d750ac08469baeb16f22a14f838f57bcd0034e8",
           intel: "ffd634cec3a4f1fcf4d93d7c1a2e2cce92c4f672d4ea2525877b4943bd50b933"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "c9d6c4fa214f1670b2576e87359e9773ad382a94c8019899102b525db6adf4c0",
           intel: "63d0c2c83c515d31047ebce628982368b38eb955b811679e061fbeb33b001244"
    "zu"
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    cask "libreoffice"
  end

  depends_on cask: "libreoffice"
  depends_on macos: ">= :mojave"

  # Start the silent install
  installer script: {
    executable: "#{staged_path}/SilentInstall.sh",
    sudo:       true,
  }

  preflight do
    File.write "#{staged_path}/SilentInstall.sh", <<~EOS
      #!/bin/bash
      pathOfApp=$(mdfind "kMDItemContentType == 'com.apple.application-bundle' && kMDItemFSName == 'LibreOffice.app'" -onlyin '#{appdir}')
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
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
