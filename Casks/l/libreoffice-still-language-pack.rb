cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.8.4"

  language "af" do
    sha256 arm:   "b66587706bd8d270e80f435b564bde3141c80794486a3dc95dda263407897268",
           intel: "15fd6ece0b5a4a59e7b0701452bf042a1b9d426eb8870401496ce0aeac8ffb28"
    "af"
  end
  language "am" do
    sha256 arm:   "0bf324ece40105a3ac838075f9d287977e56d45b07c757a693b4fdbfb35474a7",
           intel: "ad0ec1566890863b409748686296fcd593030c26ddbd0a0e523a00845dc6243a"
    "am"
  end
  language "ar" do
    sha256 arm:   "b16c49496cb728da64f2ef78f97ecee428e1dc118f1c8f3820c20db6d5b21e06",
           intel: "eab22b2db65abb9741ac58c6fac9813af4e25d26adde942a3828f107a472c67b"
    "ar"
  end
  language "as" do
    sha256 arm:   "d601b40b689b20023834a1524deabc2cc4272dbbee1e7366b4c92110ed420fb0",
           intel: "452659d1b4fa570deea4e6b25e63b35948f575e68f2b90135f7c7b15cec617bc"
    "as"
  end
  language "be" do
    sha256 arm:   "2c66dc15b2c4a00b7bc405562bca1254e1d2d60ff592ad778959d11fde6fb1c9",
           intel: "650e953764f9621dc33e8ed00924c6e1a6c68c51495c45218c3980cf9e13fa52"
    "be"
  end
  language "bg" do
    sha256 arm:   "15e8d97f6c24f026276f4168f94b55577caf2296385601ff804ab5f370e1e576",
           intel: "8ac52e20e54e3ac6e4f1434652c0dbbc2f8ece6dd840a0f6d41958fc42bf73bf"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "85604a87753e9722fd9afbc656eeadfe0e2a33b11e4f974d4cc5ba9a34efb3d5",
           intel: "b9cfc4046092804c4d9a15b5d904e22645789c26171ec6fc4d71b32510b4ca9a"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "71a57463327e99f48d075ca52189402ebaad580e90cefae781169c0ea2f1b402",
           intel: "8855de528482ba54c2908c1a0e5f1d5b4469cfda756949ee65c78a2fae2ed270"
    "bn"
  end
  language "bo" do
    sha256 arm:   "8ab60cdd023724127883ccad16d58b352985d022edc15baf8698cf0a06822d5c",
           intel: "66405672b6fb48a512b50fa75e16a35f478e3dc0ae427845f7cfde23d8be136d"
    "bo"
  end
  language "br" do
    sha256 arm:   "3b24ec04aa12fc8ae73a112d38c687394d932a93f19b629e8e5960e4a93cdfe6",
           intel: "2ae8d7297e4cbdd34d69981f300c82bee89bf33e22f6e2548a8bc15e9c385cb4"
    "br"
  end
  language "bs" do
    sha256 arm:   "aa4ef7e904f6735e822f25a1f58f0d172ad9bd92e2c0ffcb76cd23802490da38",
           intel: "9f31dd157301816d01a9aa31a529610eccf5e603dfe5e5e55037fef7fa70e52b"
    "bs"
  end
  language "ca" do
    sha256 arm:   "c7a357d91f8fa92a97e1effb45333b2d603421d7712308b041a7269005f8e20d",
           intel: "63f6c036ea5468558c82497c2136c0309d6d6878ca900f7f0405d4f84542eaef"
    "ca"
  end
  language "cs" do
    sha256 arm:   "7ec81d1ed605af473064fa4264be340cb2fa5b9d1dc3004c9875249ff1069ec4",
           intel: "64f3f8c05610b300ed901d9a9133fff911a8dbd81c5dd9fb9bec49aed8e27112"
    "cs"
  end
  language "cy" do
    sha256 arm:   "2f3a9f538f41e4803ae0082e81d229988fc4afe846c909ffaf1c50870e777f14",
           intel: "3ab2df8ba75348645e34c3d6c6d8d32f313becea40e2a72d529e67bc9dca97c1"
    "cy"
  end
  language "da" do
    sha256 arm:   "b9d2ea75a28cd2dd7153463adbfe043afaa74ce7bc4640dc7433f1b7f037fe17",
           intel: "33fe3e847e43879b3d404a7179c17e256fe59c7f924469809177c8d94f477132"
    "da"
  end
  language "de" do
    sha256 arm:   "f510f8b5f2cfcfbf4d567c7fd9e1caea125d9e31436e3713688e684e2684a572",
           intel: "f2978669114787e552a1e349e8f23fa97e95ce017f5b075b613fa328217e794e"
    "de"
  end
  language "dz" do
    sha256 arm:   "f12d8a454e8b0bcbbd2f6ced0d50b34e0ecb41a1534d106e0f5f5aa7f3789c60",
           intel: "2484d2b00e997c71c5e62e623bc5e960b6c98d7845413e4d03b8b46c3b38162d"
    "dz"
  end
  language "el" do
    sha256 arm:   "583d76107002d1cc50a8ef313242989061fb5c3f545cdf3b68d8888ef77ee112",
           intel: "9084353a0711dce91747e8c680c6622410f3ee5bbaf5069d6f808d9754ab5485"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "0e5b8bb01390175f8632df58634672e001ebfc38856d1530ae575870a41d65bb",
           intel: "8e2ff25acfadc54674802d18b48f2b181a07581f36d65e18de786e5fea8415e1"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "092e33718b0ae09474c07d319e453cf6758ea4d8ab23ffee13fb4bef1404debf",
           intel: "bfd6cd24225d4e3450891fd14e078d4e78d4a09dac5b5091a5a1d704e7eff0a3"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "c74cbbc99890a834e9234c59586fcd8e94c5b4f2f30ff7509d1eb987320dd278",
           intel: "3d31762496aad5afbf37db3f2f7733795826659f751b4dbbf0af6e026599873c"
    "eo"
  end
  language "es" do
    sha256 arm:   "68203fa337dd39f58cf24fe0fa6ab819cba91640893bae5e2a722c2925e1234b",
           intel: "00dc036ce95a0330364ef45ffbebb4ded472544dbf6e817884f3f6f0ebf87679"
    "es"
  end
  language "et" do
    sha256 arm:   "922baef7df10d88b7b1f0d8bb7b4cf408a98ab93a42f41fcaa99e3f0da17bb2c",
           intel: "30b7b09bd9b4ae308f99b6354d5d03cb11210b86c4d059c7fef75317fd23c7f0"
    "et"
  end
  language "eu" do
    sha256 arm:   "7b46d9f1b5d07ab59210fa23c7fe2e710820498ad6765b89ddc2e821e0c40fcb",
           intel: "72244c0eeb215a96423c674bc57204eec260e206504c9a057ae38b9169ba76f0"
    "eu"
  end
  language "fa" do
    sha256 arm:   "2d0b953271c1fd4921c99a76a972223908538888bb2c5df866fcf07514fdcdb9",
           intel: "46054a23347e36c64e5d87f3f584e87772003e3a37aff7673306e53c4a204b0d"
    "fa"
  end
  language "fi" do
    sha256 arm:   "c62bc1b6edac1fca753675d50b74dc8a70534d75ac623ee95efca7dc7cea042f",
           intel: "e4680a52dd6ccb45db1556ad151e037f14d307de28c3cc6d816b32b17a755799"
    "fi"
  end
  language "fr" do
    sha256 arm:   "f0e8aacd6d4998d96cea2c64641a92b276fbecaf550afb804bf4bc1a2b27c7c1",
           intel: "9933c33fa6a7eda510b5d5dfa9859f68b6c9eeafe5e57316b14c448802e05a96"
    "fr"
  end
  language "fy" do
    sha256 arm:   "946ccdcb9326d5c91aead9894a8a81cc4a50d92b39fe02994297220d0f38a08f",
           intel: "ad36ba27a4262d23a5163f337ad396c8013e7697eec9a3747e2a5627c0cf4d62"
    "fy"
  end
  language "ga" do
    sha256 arm:   "e90c6a8e67ba9f76a38ab1a45055bd82ec4693b7ace1beb6b788a1d742de62e8",
           intel: "cff5c1e4965d101181b9d8892def4a790ea2f0d9ee29714faa21c7a4d87eeb94"
    "ga"
  end
  language "gd" do
    sha256 arm:   "d2d137a7a3ea4dace3bbf5ec09159ae6fded574acc4a265a70a42b484c8b057e",
           intel: "3ed74a02f505a189ec2343dc75b28f3d96ff237a3fe592ecdf0fad89b4a050dd"
    "gd"
  end
  language "gl" do
    sha256 arm:   "ae492b34dfd729cd9caccdf075e433491246a91ca4d33af907d225bc2c2b2e12",
           intel: "3aa102d510a65ee42d74c6a5a1782dfdb4db4246ff050fe34eaa8963e20bad8e"
    "gl"
  end
  language "gu" do
    sha256 arm:   "3c75510d3ca843fa7f8a34dfaeca71823a99a786f3b059d1b5a5950fb4cbfcc1",
           intel: "8043fde0bee6466a3fbc9016af5d4df66b8ffd1af79287e52740b104bd773011"
    "gu"
  end
  language "he" do
    sha256 arm:   "2aff332213cb584badc868258649ce14995021b4965849c2c3b966909ea82787",
           intel: "01d4eb24483599097e0ab4ad5fed05f7167235f1cf5b8098369d7c60142e526c"
    "he"
  end
  language "hi" do
    sha256 arm:   "9b8227ab92ea21816ac1af49f688f548c3078b5079cfe866718fa08deaa9c3bd",
           intel: "e0490c698beb102c818934691ab91f85525394d8d6873e622dd46335903c4bad"
    "hi"
  end
  language "hr" do
    sha256 arm:   "cc45c8673d7d1cce233ab430e1551abc635fd0ee59580bb750481b3d41b33206",
           intel: "25815159fc4243ff05e0e86f6fd621f4568db3a4dc057d91b20baee8ff001119"
    "hr"
  end
  language "hu" do
    sha256 arm:   "e656fb56b5045a665c87159bec65c92654186699d2ba909b9602c6eae3ba004e",
           intel: "b324d33d61b19de880cc82722235e5b01eeb48a0615dc42c58ad9c9d5b0dd030"
    "hu"
  end
  language "id" do
    sha256 arm:   "e42e5cd965e9da20ad313555790799c48231e641cc6ca4eaa1643fa75726ad9b",
           intel: "1996576750475c10d636e78b9e43c9c49ca72ff4d648f4eff323afa62c0a7141"
    "id"
  end
  language "is" do
    sha256 arm:   "74b4303497eeab49c13122902378f9212704441ca115a5e3a71e68bb06faa399",
           intel: "8a7ede5ba0fcf8ca8cc9fa77358e67f808476a2ee3452e0a196f295ca5174c12"
    "is"
  end
  language "it" do
    sha256 arm:   "10f849b068659e52ea616b6a2466269ab19e97e611b41dedc601017ae27d3997",
           intel: "fec27e1fa4489d746630c39d4687259d0f1d6cfa620a827af1955982e1fb741d"
    "it"
  end
  language "ja" do
    sha256 arm:   "6fb646ffdae1e9b1bf0a24682911e1b86ff27c26eb257c8513c3a186a00e7d89",
           intel: "949d8561c6347d4114e020ccadd597393d9c9ddefb155d6a48bab0c6db172266"
    "ja"
  end
  language "ka" do
    sha256 arm:   "0ea565cc8185ea89b5918b162312aedd05af763a13da7512dac6171e527852e6",
           intel: "0760f3185b802b2d3da500f293a68f3a6d09d7806225241bf8027264e07e08f3"
    "ka"
  end
  language "kk" do
    sha256 arm:   "d970ae9306371d3d6d4670ecbe684d451158c81bbb93a89f78630ce9841388a8",
           intel: "9f68d4ab5699e3f630060a57038ea2a5740c67de92027d9a0ba92c9de48d78fd"
    "kk"
  end
  language "km" do
    sha256 arm:   "6cfc1ace327c7f086009b78afda0e2219acabdb68f26243f5b7fe77a8922dba6",
           intel: "7eecc32712cb3db9fbc926838cbfcb4e2bb776f235cc2ccc5d71deb2f51c31d2"
    "km"
  end
  language "kn" do
    sha256 arm:   "837b94f1f47bede6527b1c5e493079f001c097f9b7e8e356d863e21798f36035",
           intel: "24c2c8fb3f3be7071fd9ee197503aa5d2daac35aafd918229d0ead9009c3cb48"
    "kn"
  end
  language "ko" do
    sha256 arm:   "a6c35a251b3b3d8589f4fd75aba8c429f21d3ec93d43167062115d2a697a6ecf",
           intel: "bfc611b14c0ee93366c1f087d7371844da5aac47f20f4a2798667342657b632c"
    "ko"
  end
  language "ks" do
    sha256 arm:   "9dc6bac01cae4f7a6b2769bbfc3cf885b4ec9d65580f7fe734187272730ed31a",
           intel: "336c764f7d39ccce978fff1d4688f547c061c4da3c06c732637ea9f08614c23b"
    "ks"
  end
  language "lb" do
    sha256 arm:   "d32131b6fbce90a64bd2dc905b0870fa25fd96f0a98e5e515cf7efda167ce2c5",
           intel: "0fb56867bed3d27d1aef7b7070a9fb8e6ae89b6254f329d2c9791eb715f5c6d8"
    "lb"
  end
  language "lo" do
    sha256 arm:   "1a819a9e9d520986bac1ba50349a1c3e6106d2d7669ec3855122c9f975f45014",
           intel: "321dfd93b1f87aafcfec2fa851980c34f315d686aaa515651e269e20cf399db9"
    "lo"
  end
  language "lt" do
    sha256 arm:   "164bbd6b6ef264bb19776ebdba0f7c365d7c2d1442d0d10a2fc485fb99cc9d5e",
           intel: "38d7bb81a9793f0c871178b3a26bf5f36ce32ffecbd72a15c8dc6d3431c0811c"
    "lt"
  end
  language "lv" do
    sha256 arm:   "98de671762c441f06943806f4018d07f4b7f105e85cd251b85e8393025ce8c3d",
           intel: "81d7d2df5a739514f4266bb7bce114dc3723fbe05528b55d54d22dbdaa5a6487"
    "lv"
  end
  language "mk" do
    sha256 arm:   "64b87d76820ef3860b948de5d22ff6071e220871344edfb0198ae439cc7e47e6",
           intel: "0b18b0ca9bbb229682fd7013255f4aaf8ee8648651e548643b829afadbadff58"
    "mk"
  end
  language "ml" do
    sha256 arm:   "2f2167d0b3cfe8f48863b425a0080774877a3bdf9f91bf8c463aaa8645e14df9",
           intel: "8e02859c3fb4cefc2e8ade76a00c523d5c80243557c185fdc9e4a8ee53d995f1"
    "ml"
  end
  language "mn" do
    sha256 arm:   "3b48682833a38b16573e5679320aea9a407a3bb59159e370ab477c7008b156f1",
           intel: "74b4f1e13d0de48d0aea8a52a5d472604678ee0fd60efa0dbb3ca627991dda22"
    "mn"
  end
  language "mr" do
    sha256 arm:   "f198ef23af1e2f13a830e5b38a2ce06a9ab15cb3af8c9373edc05cd6b05cd924",
           intel: "c9fb4ff85192d9e5930c09420f8b50de705bb2e6b8640793d29e92c0c0d07f75"
    "mr"
  end
  language "my" do
    sha256 arm:   "22b0b4331e26a32dcfb785a10e2212af8bbd6d80ce49960745e46f1a1bc374e7",
           intel: "4265d94613885283f48bbd70b93ec84f2cdd73ded24ea765047bb19e075f3b8d"
    "my"
  end
  language "nb" do
    sha256 arm:   "a4a247e0c8ca59a7b77fb09d746b3d517e508ed0009cdefecb1200df1a6c1d40",
           intel: "a20d2207c8e181aaf7ad030ef7f139539056070c29a6bf2becdc4848a0d4950f"
    "nb"
  end
  language "ne" do
    sha256 arm:   "1fd652a900c5cbd72a13af2438e9d90103d8fb338fd0bab2144be5542ae25a39",
           intel: "65c3f1fb249a0f64c9f2714a0e388de46bb25d490badfc8216e5535b9f5b80eb"
    "ne"
  end
  language "nl" do
    sha256 arm:   "a680df21ed0185839ecfb3e6fe0beb1a62c70412989d28496355f923992032a1",
           intel: "33ea7841dcd20fe92e0388927c4af73144c01d349835494e2ff9cbe058c22fb3"
    "nl"
  end
  language "nn" do
    sha256 arm:   "b528ac9d23a72a5c12d23d2709c017fba3877ba6074b423b07567769f116110a",
           intel: "6bb1d7207362b3f359a091e7d3c3ea8a18e3aedc8f37fe525e9b9dc1bc3fa627"
    "nn"
  end
  language "nr" do
    sha256 arm:   "28c400bf6c39b40786b101f1e750cf09313e3cc1fe9f646a121fac80b287b483",
           intel: "2bac43c5f49d7cc5e144f0805ac114864c5df9bb6a47a7a05fae1d87619755a4"
    "nr"
  end
  language "oc" do
    sha256 arm:   "6ebc259b8784ac053d319d603fb5ce37964d3ec1db7fc6b3968a59640493a4a9",
           intel: "fb34075d19725f190d1bca97d16c976670217c73fbb74deaa9ab361a0d9f0481"
    "oc"
  end
  language "om" do
    sha256 arm:   "afc1e9efedc7d6ea250f02e43e04a65e205d4fcff6b0f994de27888524778da2",
           intel: "ff01459cd3f87fe6bb925564ecbd9ccc6b833a19b5c1bb8ab3cb0548704f0358"
    "om"
  end
  language "or" do
    sha256 arm:   "313846c4252eb7d2fbf68dab08f0cefa2b7edc834213afb420fedc1cd5c7999a",
           intel: "c48c1d253c318bea67222867149ac2c4f1df87729a1ae8859c81c6fe0080a428"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "c3320c51bf407ce428d7c63fea361a7a04c0187940ace0e6d23e3d5bbdb79276",
           intel: "a760c6d03e4be6bed8a644edb5d474846dcbbc4fd8913ba05980cb97784aaa88"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "50d25090e4e8286613d60d0ce97244a7cabd0bd1d8f5bb2ba0fb8aa19d6bf6ca",
           intel: "c96e9bb89af6617bca04ecefd030b3750acacef035a245d1156fb50ae0360e78"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "d4018f708559927730f32a4c635ef4de095079dd774cabd0ea55d767b758e096",
           intel: "1903a9ccfcce7998d0d4aa309287452f43333e30993897d8a6b074bc2e81a10d"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "dd3decb3c98dc3eaf48b0946097052e5568851955c86940368329f023f34973f",
           intel: "6d873d4113d013337397d5e9f3afa5d389250411c6313aebee09f511260af75c"
    "pt"
  end
  language "ro" do
    sha256 arm:   "8dfefd52c2b4b507247b3e43decfebec8a8dc52c82bdad5b8e2b36d0fa702dca",
           intel: "769710cc16d80e4ca1611a37a93583ee8da53f7cdc427cd8e4693817596a7139"
    "ro"
  end
  language "ru" do
    sha256 arm:   "4a852b0a8727aac8032f3732687ad4bf01f2fc78f45f5cb7e960900060d7dbf8",
           intel: "d7ca14b9528fdb877aa4cd60f387b2575da94c328ba467271988804491c94a9b"
    "ru"
  end
  language "rw" do
    sha256 arm:   "d8973e8e6d7beace828e502858cdbeaff03fc30a0778b7011b42642553d8c61a",
           intel: "d678777feb7d0cf8208477b6511056519abd75993f1b8261e8ce6dad928ac7ac"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "95e94d93e19bf173a3376944fc714a0b13926a46c4118cfd92a719a4b3114010",
           intel: "79ee3088ef0e5834ca307f65698193bf4cb345f0adeb3976614ff8c976273567"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "afe464c0654eb3889933d9e05098dcf88c63e2289ac50a9b46310c7219f4d8b5",
           intel: "b031770a92799086af6a62c7293796717fd3a76c6496eb208e9d451292438734"
    "sd"
  end
  language "si" do
    sha256 arm:   "2f548251e9f917acb63c64a97980ded3bafdbddcb4d324ca3a049c2b0f7c5b76",
           intel: "b0694fdfd1a3c9daa9eb66225606fdf76aa2469414f75a7edc97d53fb42f9643"
    "si"
  end
  language "sk" do
    sha256 arm:   "797c528db70ad9e41b358603906a0d26ed86f3f687933a458a14659b2f6a17b0",
           intel: "35efe4226810c440c13ba3513b707ef7eb6d129a54b7a92a90f7905af331e52f"
    "sk"
  end
  language "sl" do
    sha256 arm:   "d0837c7ac1030c218115966aad744689690b001a2b4207dba77c1813ce84dcc6",
           intel: "4bc8f2e39b113075370c19f28f3fd29a2a34aca251897059af24589d457bd076"
    "sl"
  end
  language "sq" do
    sha256 arm:   "e079b8a646a1a2e7cff4a357f9b42d90ee18697fec9d872a47e1d486601b93df",
           intel: "1db1480211ccbef65c4553f76b508c5692c52845ae657a6bee99634ae0af4e84"
    "sq"
  end
  language "sr" do
    sha256 arm:   "5b3895a6c06656b9c70596d4aa4986802303d460598e9ce7ea85dadd810b7dc7",
           intel: "f734bfc974b7633b67f12c4920799193b7d9a9f694133d934e45ce90531903a5"
    "sr"
  end
  language "ss" do
    sha256 arm:   "9609d54516284c2f57f75562d4fe6841f81830036b936c4f73ab2eee41b5a278",
           intel: "7ba4e50c1f25682c2e268637d79de931f6c61d0e2240706cdfad737a86f0d50e"
    "ss"
  end
  language "st" do
    sha256 arm:   "e09b0dc68aa64f220fb2093b9f14c8a617b0610447918bdca2a4d36858d0e45e",
           intel: "7072e3721df0879f429405b343b49702badf5b2587770b30dbc078a201a71188"
    "st"
  end
  language "sv" do
    sha256 arm:   "4625e6cfe43b58b1fbb6c1683a138a66ae6cbdacccf2b3791b974f97d346afde",
           intel: "276f379a23d61a45db0c935fe2caa8b4e784023e9bd1739a6864bfbd44eb2556"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "75184ad28634b2c9153042c652c73e5e8ffd5e653fb2a3233d1c7fb7aa396d77",
           intel: "2fdacef3d749bf0ed6ec8d932105c90a4aa37dd46b21ebb75ff389fc133ea388"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "268a57ba9f2d3be68a99f77da6d5cf6feb35603411324558e4143c944ffbd139",
           intel: "aac3c694fa02fa3327e72884871aa4594cfc13afe265f08b67f6ef096c29fd98"
    "ta"
  end
  language "te" do
    sha256 arm:   "0e41877ba72bc928d8498786314679f154197a35fb8d47126279e4fbe7a2c701",
           intel: "ac1623342b6cb11c81edeb56d81194b6ca8263097978796b0080b174fc771fc2"
    "te"
  end
  language "tg" do
    sha256 arm:   "161b1b2c96a1e3128f7a7d3d59c5d1d0d45f8d819337fd25513284097c1d9a11",
           intel: "b732aea592d589bcca9119ac5e5aa02fa8ed3ebb018625a606a7c5df7291a9f5"
    "tg"
  end
  language "th" do
    sha256 arm:   "249d02ddb46ee1671647932a323fad9e3f58e088a5daf18423513da195ecf95e",
           intel: "298e982f557aa944e195e9de28b22f0090ea258222a5a65d5d08603ed643af28"
    "th"
  end
  language "tn" do
    sha256 arm:   "6c3dc440d2de264e62fa607e78838cdf7bfaae5e6170cd22e927f9f164b3c29f",
           intel: "c2997d5c96ccdd990f4e4cda2ddadd5a6aac2b751cfa75d5ff3554bab655a25b"
    "tn"
  end
  language "tr" do
    sha256 arm:   "bc9b02fb9f66826901bec198926e7291a9ca434eb9131bbb8271c6d1fb139284",
           intel: "5c99e926d994b0aa22abb276c5244c8a2e3c8c57be729eef0c0f5e08f747cbc6"
    "tr"
  end
  language "ts" do
    sha256 arm:   "052772fda0c08a675277551148d6b2e6c800cc6c552a7ec98dc55c328b3de6c7",
           intel: "1541f9092ad0de065968729dfcf89ce83ec8f05a11f5b2b94bf4742ff53e3b23"
    "ts"
  end
  language "tt" do
    sha256 arm:   "20583101efc0b9f032b96a8d7ab1e4ec16ee53bdd19f3072f28949f5d1222ac5",
           intel: "60619bc6f9a19c517d947085c456519a27af2ccbcd95cce17a5107b2d11ff5ad"
    "tt"
  end
  language "ug" do
    sha256 arm:   "91752cb247fca34dcfc4fb7fa045f4d7ee3cef2a76015ecc73a1da4843414faa",
           intel: "68323e20e92006529460964c0c05a9365c624ceebbe4d9e36d70a0523c77a147"
    "ug"
  end
  language "uk" do
    sha256 arm:   "791131df7068aa0980a40cb8346e7447c06b675d376d50218dd0152e2fac0b25",
           intel: "d9db4a62fc822ec5d87822839e5efbe7600e874f9a8718272c9acc2d8e070d08"
    "uk"
  end
  language "uz" do
    sha256 arm:   "7d3b6aebf78b3f2f5b5432d3327d9dfa535c7d27dd8ed0b8323e2790aa4f3842",
           intel: "105d94cc5200778da85d5ed6618529d25c590596c47424a48f74e7d93aeddb5f"
    "uz"
  end
  language "ve" do
    sha256 arm:   "a4021470b9656d9e51f520269c410a0ce6f9208d82c88e7c2d2d66b972c5eaad",
           intel: "944b7bab79364e1a267b1f43f26c4e388adc4ae861cfc9b6c825f31cb1bae6bd"
    "ve"
  end
  language "vi" do
    sha256 arm:   "cfd2654d9a7b9c1bee4b79e325a325712674e8578861bf23eb735b34ff611b2a",
           intel: "13f68928b133f8f9c12a8f13afd493a826589652c9c9ee0ba3c88171691227a1"
    "vi"
  end
  language "xh" do
    sha256 arm:   "281f17bfe3cf9fe270d8b6a555ffef5c6d12b62df17eb32f792db127f405c920",
           intel: "bc03003fed69f0fdc9930a395c75498d8023df949fef882c9313e5a397ade48c"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "fad43ee587043ff11342f2670bbeb7226ea696ff9cd3b815108ce2a7add1e81b",
           intel: "33447bc73364955a55638b9c5a165b26b016cf516d29c41a4afc91c3feb0a5df"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "b598b88d1e37e171acfd6bca869cb95fe309c77cb60df37709351e5643ead83c",
           intel: "81654437e49bc8796d88d30f0dfa18223d2b85d188eee33657d3a66e417838b5"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "427608a4d6b9ff4136280775e0dc2096e1d67616e93194b1f63ece37d23b090c",
           intel: "35bea07a20bf6fa680af72edd6b8513736a7618f60807d265a7955c39494c05c"
    "zu"
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
  uninstall delete: [
    "#{staged_path}/#{token}",
    "#{staged_path}/SilentInstall.sh",
  ]

  # No zap stanza required

  caveats <<~EOS
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
