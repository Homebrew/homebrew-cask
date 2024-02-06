cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.2.0"

  on_arm do
    language "af" do
      sha256 "1760033f84e01960d80892b59d887e47b8bd76a67635a38d5cfa7432fa01d61a"
      "af"
    end
    language "am" do
      sha256 "40a6e54e2af35167c3859623810dcf65b9ce99683758778f9b5f6465e6df586a"
      "am"
    end
    language "ar" do
      sha256 "e0fc9198f77294127d2f686ed4758396e8e60628159c0d9664f8aa7ec9377023"
      "ar"
    end
    language "as" do
      sha256 "d0c274c673a7c69a880790475776d6f36934269b8088ac86951d49438808718f"
      "as"
    end
    language "be" do
      sha256 "a41a9d53e603dfdf71aedc99eaea302cf8aeb6ff6c25e1816e243d733cac0839"
      "be"
    end
    language "bg" do
      sha256 "c52b3a71810d7c3de636ba61a32391a46c4ca9c93d2b62aac07916bdd51a91f9"
      "bg"
    end
    language "bn-IN" do
      sha256 "4debe42e5175e51668329ac83905e5e87c5a0c89605903d0e0f4cb40f690c9e0"
      "bn-IN"
    end
    language "bn" do
      sha256 "33b0bb78912dff7de0e786d9376bde8559a63ef3d88f05bbba5e743cb5c05cb1"
      "bn"
    end
    language "bo" do
      sha256 "3b3c7976caf15dfa695d962e2db70174d04b1734a5d9a431cacfa7533b098cef"
      "bo"
    end
    language "br" do
      sha256 "80f95cbcf74b360f60a6b243130c1d5bcd7308a7b6bee7c2c147e719d62b3e0c"
      "br"
    end
    language "bs" do
      sha256 "78e722c530014876675f2c75743144975abec03c6bb363b7947706d4fec182aa"
      "bs"
    end
    language "ca" do
      sha256 "0513e3fd36f1a78766fadb543973d8851621ea6103895465c1437d410507e599"
      "ca"
    end
    language "cs" do
      sha256 "79f159fbe3b2c83b300e8efd1184f1ef32d908d9ad7cffd914ff998edc3c734a"
      "cs"
    end
    language "cy" do
      sha256 "7e0bb7295860bf40659b4d49fb2c380d26e0a62046816e34c9a3bab867469bb1"
      "cy"
    end
    language "da" do
      sha256 "c1c8fce6387a61f7c97802fe8a9c4ce7a0f9f8291406fe6394e05e724ce03165"
      "da"
    end
    language "de" do
      sha256 "fe5e795da38e89c26bd7cdce8f88af2dbd7d2d013246ed1cf5dd54ce5402839c"
      "de"
    end
    language "dz" do
      sha256 "b065c3a5d89654e434a55e71bedd053883dd9cd5b4bc77a4eafd418d7fe59a44"
      "dz"
    end
    language "el" do
      sha256 "093062ff009206c5dfab79b8b3364c42aedb6e3dd5df45753d900cb8f01f22be"
      "el"
    end
    language "en-GB", default: true do
      sha256 "259d5302b86548075ad94c9f78eed45b8e0ef3728a9d63bc28ed5982350374db"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "fa7bdad2309674893aea71df4dc36225c873ed9b7e1d5feb5e142546ac436951"
      "en-ZA"
    end
    language "eo" do
      sha256 "9f70443243f8791a4e0a2fc0b419711952a942c3546e59e2acf60f3844267646"
      "eo"
    end
    language "es" do
      sha256 "cf6622ae363c3535ccb7ae3b812dbd5d7f4324452092ec0d0ca1e3324d95ae0a"
      "es"
    end
    language "et" do
      sha256 "5411229650a7f604f1c85963158515a23bf1c7b61a77dd402ce578434d255c76"
      "et"
    end
    language "eu" do
      sha256 "8e56eb5b1a7a2aec833cce7e5cf110c177e3003b8b70629eaf94ed0b3e3d2c2e"
      "eu"
    end
    language "fa" do
      sha256 "5437d56fce5bebb613255d3b0b264378021ed89cf153000f973ebd7df50f0f60"
      "fa"
    end
    language "fi" do
      sha256 "68c928c6194bdf876beb014c1e3b7c6332bb97f095817524c6d73bd3ccf4f72f"
      "fi"
    end
    language "fr" do
      sha256 "97558365110c39490c5ee6b9e9f651fb44451d87d53efe43b81ba63256666b38"
      "fr"
    end
    language "fy" do
      sha256 "47dbfbbfcc7f37e09193f9b43d3ad2b02bf16a68c3e09b41c8d703e451379902"
      "fy"
    end
    language "ga" do
      sha256 "20983687e291cf0bd7364578769bf1c565eacc54e34b06c375060c6333ee3b63"
      "ga"
    end
    language "gd" do
      sha256 "094c0525f10e0d764d4162372e22e34797da6b23d78658615a1887532f21a023"
      "gd"
    end
    language "gl" do
      sha256 "6ed204334f5e2bc72a293ce4e2fa590ac38da19ccbe1c2b2ba7867cd072cd16a"
      "gl"
    end
    language "gu" do
      sha256 "eb726a08fd7d2f77b3d351e10d7a99653f101451abfc1f8717f07edf99a81980"
      "gu"
    end
    language "he" do
      sha256 "a4033745cf3e1622b2e38f15273364031cdb0e5fac75c1db8ef319161fdf95d0"
      "he"
    end
    language "hi" do
      sha256 "0885bd4b2365eee646565bcc05e0f9d47ebcdc8f1acabf6f9d83355ecf50ffb4"
      "hi"
    end
    language "hr" do
      sha256 "1e56784a62ad68ac527b6bffe71a221bd1ee9218ae82a18817b5d3486f808a74"
      "hr"
    end
    language "hu" do
      sha256 "2bb3be39debb25c2cfe9c495765ca550ff22333b0ce761826503105d338d0669"
      "hu"
    end
    language "id" do
      sha256 "331bba676deede42a01f8e90f4f9e8a4232ab340d87f119f5efb56bd3a430133"
      "id"
    end
    language "is" do
      sha256 "c5eb1b329dfa33ffe37d67ae797d9263591c040f57f2e0ce397d4641d53fedc2"
      "is"
    end
    language "it" do
      sha256 "efc16c1c0ab3f240815551a3c331adcde67b07aa2d38540165c8f37e8d5f37a1"
      "it"
    end
    language "ja" do
      sha256 "20e54ef112d4029e94e1c7e20230b2f6d2295cd2bbde92d72ea749275f128310"
      "ja"
    end
    language "ka" do
      sha256 "fbe195c6e0535b77689e6d224b5e4826e7cf809dba984999a1eaa68811c726d0"
      "ka"
    end
    language "kk" do
      sha256 "347de5d223f18beae3e769aedb2c3a33abb52fffab570247d289f6290c9070dd"
      "kk"
    end
    language "km" do
      sha256 "d346ba14f96ac3a684e00fffc6dec8bdb0e295a8cf36462d3cbd9f3ea6b5f6cf"
      "km"
    end
    language "kn" do
      sha256 "14b817e7d7abdab43b84d36ef082fed6a3318a5148d8a0a2a80c455b9f21cc7b"
      "kn"
    end
    language "ko" do
      sha256 "f063007805bd1b9c9c750800f299e871b92951208e313d6d8d6e604f60e74bb2"
      "ko"
    end
    language "ks" do
      sha256 "bd8ea60782fdae7b93606d9e3950e55122be432716783c473c49d74f718c0f1a"
      "ks"
    end
    language "lb" do
      sha256 "c3c67963b2bafea354de78b5ef6ed26ea659cfa53e35eaeddf1e08bde656b132"
      "lb"
    end
    language "lo" do
      sha256 "fe1d0f15c3acf950f45199b187b9fe310404a8f9e2af966c30daff500a711926"
      "lo"
    end
    language "lt" do
      sha256 "becf804cb38952690eb22d833ef2e793d8d41684ffa78c11e3400d3e04d74406"
      "lt"
    end
    language "lv" do
      sha256 "913d06d7b7e4efb497843b6be3e4f060c33d8b1599400c6349bbef237f5d5fa6"
      "lv"
    end
    language "mk" do
      sha256 "f962c14fcc0a282c94a96e4e29b0a0c725914fdd1920bfee6e64396a5ffd581a"
      "mk"
    end
    language "ml" do
      sha256 "8641a32fe9299aca95471792124b56b2d6fa653e5e35abb50d4eafc77e47105e"
      "ml"
    end
    language "mn" do
      sha256 "33585555a46e9763f0ca22d054f3ed00d1e7bce62739a4c4802aa30cd0d49e7c"
      "mn"
    end
    language "mr" do
      sha256 "40eb2b48b12f6612950312af15aef473600b4b0db765dd7fe8053262645466bc"
      "mr"
    end
    language "my" do
      sha256 "547e9cb252e11f52f87da9ef2ea7c74b9225a9d7fe4ba9714b805c84640a4bba"
      "my"
    end
    language "nb" do
      sha256 "9ca313b37cba1f59132fa1cce8212911a81a7217ee8263a9c4a75d9daca0741d"
      "nb"
    end
    language "ne" do
      sha256 "87b7cc680a31a87df1bf2c837ded79b779c428ebc9a66ce82d8bf39d85209556"
      "ne"
    end
    language "nl" do
      sha256 "a73309b45c70ddf60339c4f690f8c31182788f9c66589018a3bf2f53f716cc6a"
      "nl"
    end
    language "nn" do
      sha256 "aaf28351f07fe519da5ef6ea446b2ca9892e1835b0cd20ed129ca0e355fdadb4"
      "nn"
    end
    language "nr" do
      sha256 "482bd6c292e6c347ee2580ed3a0375fd8efce73f555eb8e5fa20f26f2d5e043e"
      "nr"
    end
    language "oc" do
      sha256 "a968e9fe8535a7e64a2e1b525b7e5bd632159015fdbe619123911bd904125082"
      "oc"
    end
    language "om" do
      sha256 "57112696b9411e09572f27985aaa47b4dfb146c5b5696192c35dc2c90a18998e"
      "om"
    end
    language "or" do
      sha256 "8cf63de2d53d1aca4cf6928fb2724851c1ce198f5a18aab976a942543b45708c"
      "or"
    end
    language "pa-IN" do
      sha256 "60c6f46f069e39f00f0fb06656fb10894d99c108a8064512ff84a9e316362c82"
      "pa-IN"
    end
    language "pl" do
      sha256 "491b5f576a230c1c55b0ce592b860c4d94716ef0caea2e169ccde7fd6bdfbc10"
      "pl"
    end
    language "pt-BR" do
      sha256 "ebc0bd6cc4e95e3e2669d919efe70bae2eb53f03f75663149da74cd4daf55ae3"
      "pt-BR"
    end
    language "pt" do
      sha256 "153d5377cec5a27256ad84f28954921291e6a3f97c1a226fb3feeca469ea6381"
      "pt"
    end
    language "ro" do
      sha256 "4a45dffd011762dc65c0a388e4e40ccd6223308b1a7a4dd481bbe7301cccf64a"
      "ro"
    end
    language "ru" do
      sha256 "d3106e504d7ca71832b0918afb22634a5e8a4e5487a38f9a3afbd82af6192bc5"
      "ru"
    end
    language "rw" do
      sha256 "8c02d9d59d703594ef279bb2afcae9672e9b3143094ea8747254f8097751c403"
      "rw"
    end
    language "sa-IN" do
      sha256 "e9bbf5c5c471abb254419652535c026d7b136f5405049c9a758cd70d36b20d2e"
      "sa-IN"
    end
    language "sd" do
      sha256 "edca7f9c2b02257d9abc34c98e4a2007e03b0201495a6de8ad9bacb99d14e83b"
      "sd"
    end
    language "si" do
      sha256 "866625d55c7975f2b2dd9e533380038aca469c2f79d8e61fda9864ada18e10ea"
      "si"
    end
    language "sk" do
      sha256 "f5b725148e62ba3320ed87a4b14fa190f366b3977564c8f036ed1647efd45bb5"
      "sk"
    end
    language "sl" do
      sha256 "e121ca92c419925f466b3de169a75ee2f8aad62a6132cc031b14c261e13f4acf"
      "sl"
    end
    language "sq" do
      sha256 "3396628160993f89e9e1d590c819c1cf55ad07ad1227a3cd8e49225dd226c719"
      "sq"
    end
    language "sr" do
      sha256 "7b321dc37c12fad2b50a43bff7c9dcb7f09773929928c0041d757a66dfe08a53"
      "sr"
    end
    language "ss" do
      sha256 "75c32115627118fbeab3372eb70e1d76f2f4de5b78b3ae11bc347d5e69c5bcea"
      "ss"
    end
    language "st" do
      sha256 "d92286988f451c2e0a640b1d9feabe900b16a1620f7ddbae2692230c68b52e6a"
      "st"
    end
    language "sv" do
      sha256 "982449d3046b14b333ff1f4c3c15a059e3f87da67515f5ac0f69758962cb5d26"
      "sv"
    end
    language "sw-TZ" do
      sha256 "50fdf57e7400b9af45d5e088e6b04361851012ccb238da280d71f0433e1c9054"
      "sw-TZ"
    end
    language "ta" do
      sha256 "fd19a21619ba6ef57b3136e11725ceab84a9100a7892f20c77c0043624b7ac55"
      "ta"
    end
    language "te" do
      sha256 "5f4c8cbf00ec73cb9479ae88dd4b89a52c493dbe1113568b81cc9e7f4b4844aa"
      "te"
    end
    language "tg" do
      sha256 "5c31c9b0ab47805fd8f032034ddf70f298951fdfb7cdfe599347332dce7865d0"
      "tg"
    end
    language "th" do
      sha256 "1f5a758da7076c94fc991c2339a2459cd479fa86f203096ae4d02b4d1f569144"
      "th"
    end
    language "tn" do
      sha256 "b6eb990a995d7fecf365357315e5ecd6d67ee0f1e278368015eb4b731af5fb1d"
      "tn"
    end
    language "tr" do
      sha256 "34f7aadd8dd4b085f969838d085a12807171c02f8901df553909f555df4191b9"
      "tr"
    end
    language "ts" do
      sha256 "0527597592fd2a36ef4aa4fc7cd0b990442dc53fff90980bf3fddcf12447580f"
      "ts"
    end
    language "tt" do
      sha256 "39c5501c0b7c104693daad6e91cf0527cccfae4c8ece748ba6eda244f90e27f2"
      "tt"
    end
    language "ug" do
      sha256 "6a5e9129a78758156e617fc325d55707d993ac3a5b94850429e556743c453949"
      "ug"
    end
    language "uk" do
      sha256 "95957ca9c3a1cdb0863748c9c0b3ba3e4da2d158bdb4c2bb5dea72589dc04291"
      "uk"
    end
    language "uz" do
      sha256 "c516cf7e5b0648e7c94dd9dd106001d698be929aa5cba0f410544a73c6545f66"
      "uz"
    end
    language "ve" do
      sha256 "6640e27a2d3993bc4c4bf7d2a738093a4ec9dab9e66401b781a1ef984e7b9890"
      "ve"
    end
    language "vi" do
      sha256 "27a6cb1f54f892ca2b830553f0fd3ed7693205f11b5fcd53d031853abc8cf318"
      "vi"
    end
    language "xh" do
      sha256 "096a3c47afad7f5b455d653cd5339f702949699572d720f89035eae090819193"
      "xh"
    end
    language "zh-CN" do
      sha256 "7f0e8dd53d83b361fc24bb8b4428f3586c49295b4d014a9b9a9aba91970453dc"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "88fa49706b3828e8f51d7b0a4b7b5cd3f92df4b334e47cc69c078f68f1e1ee96"
      "zh-TW"
    end
    language "zu" do
      sha256 "2cf64eecb2f0ceaf2880e176fd30dc86dfd12a8a5caaccf86969b7455fca0086"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "8dddcc31085b79bc102cf00d3ebbdedfe6bfed33a5511e9ea5aa739062d3e837"
      "af"
    end
    language "am" do
      sha256 "1e3d9255b76301a73fb208419a27e2f97a8531f215add789ac68f1a21b8cc554"
      "am"
    end
    language "ar" do
      sha256 "67dfb4c6702af664d4ae43accdfa42745fcea54befa1a0c998569d6ce711cf94"
      "ar"
    end
    language "as" do
      sha256 "141bed49958d48d4fa5a2388bcf55c87e0ea2e4b22c526037fe61be1b5daf286"
      "as"
    end
    language "be" do
      sha256 "10e388bb1f2d9117fdb89dfab48ff09cb9e185d77481920a2ca7208cd4934282"
      "be"
    end
    language "bg" do
      sha256 "73fc756aa621a34669d95e00fa81f69f2e2b8a9332b2d0857f5c468055cc8a8a"
      "bg"
    end
    language "bn-IN" do
      sha256 "e63bfce93c7904a3a039c02485121867176d47f502e8a05d54980f9e54c1e935"
      "bn-IN"
    end
    language "bn" do
      sha256 "3967abbef390994a30dd1b0b36df6684f4534e4f8a9907a00d4545c10d371ceb"
      "bn"
    end
    language "bo" do
      sha256 "5d13c98cec7f4ecae7b9065fb3613d1841c5321960bcc550c3d41f052398c3cf"
      "bo"
    end
    language "br" do
      sha256 "079e8b2c7ca02ebf138f1f5ad747735a78e9dd31cacd34dc8613926e6297c780"
      "br"
    end
    language "bs" do
      sha256 "fcdb1267bbbab868ab9e3470d64f1c997c7bb96db48667bcd22c0355bda3a8ca"
      "bs"
    end
    language "ca" do
      sha256 "5ca920664893310b8ac5bd082999256dda6ed6b218c374aeee36aed8fdae86fb"
      "ca"
    end
    language "cs" do
      sha256 "db50ad98eba2e25dd9ec8513a8bc96a60b549eb92fa2665e572a4fe3d8d48159"
      "cs"
    end
    language "cy" do
      sha256 "5f072022d25984db6019a47c14771ad238e71ca2b8fb417dd6d5c2e99dd44d11"
      "cy"
    end
    language "da" do
      sha256 "3c01b3e93365254acdd88388216188c02858c6027f5408e632931d8bc0f855e0"
      "da"
    end
    language "de" do
      sha256 "fa99b1e88f754dd044686fa66c2539e0d6ed2e91ce0cdd6f7bb2d09e77186e47"
      "de"
    end
    language "dz" do
      sha256 "5fdc849777409c8b872af8422c6aa648ac6e2442c92dc34c4e3cb28456866bc1"
      "dz"
    end
    language "el" do
      sha256 "097793069ceaed1f816874e18dfc8608fda5c6d9509baf728cbb004429405445"
      "el"
    end
    language "en-GB", default: true do
      sha256 "8299568d0903bf998dffffe829ca9c282ae0074378768a9bcfb346654b375240"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "bfaf4d130783dc89397df1608b12e2d69d836fe7362bbb4819fe5fe612fb1eaf"
      "en-ZA"
    end
    language "eo" do
      sha256 "67ee1cf3514985dc38efe3379b706a68055ee6c9ea2f8e34bfc22379ccfd362b"
      "eo"
    end
    language "es" do
      sha256 "67e48821d0d4f84aefa50b6f535a8fd48ff340e1cc6e65d73b24e69c39bde4ae"
      "es"
    end
    language "et" do
      sha256 "22d49002299cd9572c1b72fc442e52df98a30550dde76c9d51a28f2ca8f460ae"
      "et"
    end
    language "eu" do
      sha256 "257c5014156108585bb32b2db56ffdf976c4e2c30626bc6b99756464fd8b8c8f"
      "eu"
    end
    language "fa" do
      sha256 "8bb38eb14d9e60289c557cad50f6553829ba83a0d7c9f6c9caf3b217674de0ef"
      "fa"
    end
    language "fi" do
      sha256 "7fbe7d75321839eb10db8879a3db51cc76a72c85002c288935826395ce4ce3b6"
      "fi"
    end
    language "fr" do
      sha256 "8d075397f1daa6bce3e7c15d0cf52ade884b2cd65fdaa95244067ed27de7d3dc"
      "fr"
    end
    language "fy" do
      sha256 "e64955dc264d82709b61bb52185ca8ba33ad86811c36efddb962325137407b49"
      "fy"
    end
    language "ga" do
      sha256 "87431ca98c950f191c3ac72cf5720bfa2397df3b8fc2c148b6d0341bdefd5f4f"
      "ga"
    end
    language "gd" do
      sha256 "b1312aedbed8cd619df834dd02033b587bbb4270473ec22e12bca04b0e93dccb"
      "gd"
    end
    language "gl" do
      sha256 "853e469d827c2bb6983f514da77f642ae265706afcf749e21368b6328bcd2d7f"
      "gl"
    end
    language "gu" do
      sha256 "1d4ff95ca16db5baebe5c69dc01090718817e18d08e035708b3c84dadb8e4f71"
      "gu"
    end
    language "he" do
      sha256 "a387f43424a9ca7569b5f0a5d0f881e9c75d52fa8ff5c67bdf47d7ab43fc6468"
      "he"
    end
    language "hi" do
      sha256 "43271bff36022d1df9851a97666dcb536ae43c41036220e725419ac98b36f2ca"
      "hi"
    end
    language "hr" do
      sha256 "1338dcccea9b008272fff10872aa6a707f67f4ef0c2f07da7779bb51e1e1cd4d"
      "hr"
    end
    language "hu" do
      sha256 "ae540ff54180500ce0b6869a9f4596448b86d6281049799061e8185741c83d3b"
      "hu"
    end
    language "id" do
      sha256 "34cb7be3ef4c12e84059ea31a13289d9b89c55ac6cbb8838a5ae6f0203344fa1"
      "id"
    end
    language "is" do
      sha256 "9c60808b5edfffc354afd335b902ecac0781f833968581fe6707e413ee297b4f"
      "is"
    end
    language "it" do
      sha256 "0f804f6eb9a5101329809d03790dccc41b34220e3c6033c96275035d576967aa"
      "it"
    end
    language "ja" do
      sha256 "47d1699a72d025ea78a08e92f977a5fa8648026870d7a666b13fbfaedc509ae8"
      "ja"
    end
    language "ka" do
      sha256 "5282ffcf492f0c63bbf58697e091d35653812c463b366bdd439efcd8c476e521"
      "ka"
    end
    language "kk" do
      sha256 "d7d2b8acc05d2730f682feaab6400ed3ac3a5e4045bc52c905275011929526a1"
      "kk"
    end
    language "km" do
      sha256 "077460026c232313cf2defcc1ee61b8351a43bb47399e4fc5995164092988e73"
      "km"
    end
    language "kn" do
      sha256 "ab9c100967c9a10baca399e9c24c9e188e181df60201ad087afb8c7c45be99cd"
      "kn"
    end
    language "ko" do
      sha256 "5a4ad99a114a3dea01b68f81f6b1a4c7079f35f947c73c3c679a6adcfde79ebf"
      "ko"
    end
    language "ks" do
      sha256 "009cf064ca8ab6e8b7205376719cc4b88ce51dc1cad9cd423084c95ff6ba0b1e"
      "ks"
    end
    language "lb" do
      sha256 "89eb06090a913377d0c9d33fdf3e1fa0c40e9d22282140ce9af9d2f76f9885ce"
      "lb"
    end
    language "lo" do
      sha256 "52d11276c4ca35e7f84c451f0d78a57070e8fd5c1c672f44bee45489e0a6dff4"
      "lo"
    end
    language "lt" do
      sha256 "b222ab8cf23eeeea07b2b9a0379318c5dd1c6a90989484ddc119b51f180caf6e"
      "lt"
    end
    language "lv" do
      sha256 "a320a6e51a42a471cda0a1d0093f129cf0fad510a508230d1e08af5410f1b474"
      "lv"
    end
    language "mk" do
      sha256 "5a042e8e43c98c6c54e080ca5e92b5e63f75f5deb4852f1c07cf6b8351e17f2a"
      "mk"
    end
    language "ml" do
      sha256 "00aeee7721825fb09a72bbf1148b73d405f48296a77c20895eb3274ae39e2bab"
      "ml"
    end
    language "mn" do
      sha256 "1f8dd44355f483df83a95ee63739f1ac7382be3f01c5b9e23bf7bbe288306c2a"
      "mn"
    end
    language "mr" do
      sha256 "1533b5897bbaff45db5f8a6e559aa3ccf20554f55691ba84e5ccd9c0af66bed1"
      "mr"
    end
    language "my" do
      sha256 "65307be209dbb0bca676ea37b99d976cc9c28695195af6024eab65194d31a35b"
      "my"
    end
    language "nb" do
      sha256 "4ba689c56e0a7ac0d3fc5214628ab47a2153dc87da97b01068dcfd142524b3f2"
      "nb"
    end
    language "ne" do
      sha256 "b792c29fcf726c6c5b91e4ce3c8920d407f9c003351c9fb84ddfd2b96bd4665a"
      "ne"
    end
    language "nl" do
      sha256 "2e31d8c1bca68922c2e0c1bcbebedccc2323b66c1e940de1649560c67e0b9b2f"
      "nl"
    end
    language "nn" do
      sha256 "44d4ab83dace67592b5f30b63a5cb62ba0a33d7ce70d641766c909db98a979a6"
      "nn"
    end
    language "nr" do
      sha256 "2495a41433e2a99257af6be262e5487b16c37a624a2580d11b9718abb88d3481"
      "nr"
    end
    language "oc" do
      sha256 "19313feaeff520ab7a089db380697add13e991984534703039017c66c742c7d4"
      "oc"
    end
    language "om" do
      sha256 "82937ec220e370601eb17eaa166b2a6a0fc1cbc5bc3b6f81d36dd02bcf3e055e"
      "om"
    end
    language "or" do
      sha256 "3d6519df29d0418989cea00bb699dd5db0694995fabce6d29282742268983cbc"
      "or"
    end
    language "pa-IN" do
      sha256 "a7e2018369642914768111d0b8c59a38bb5dcccad7111c90d70cfb61f51dc6e6"
      "pa-IN"
    end
    language "pl" do
      sha256 "aa39dbeaffa365378649ba65de0e60e6254ea1d8d89e5b5c0d7bc5e6c5fe0f28"
      "pl"
    end
    language "pt-BR" do
      sha256 "7efc9934c5df035917e1fd84695fc9e482e45722ff2524f82af3a96b235e4d76"
      "pt-BR"
    end
    language "pt" do
      sha256 "4800df71a8aca246d4f906ad5329e925b578791b037947d92e877bdcbc76fb79"
      "pt"
    end
    language "ro" do
      sha256 "4a1a703600eeccc80d38ca428c140ccb99184bfc130f1e17b8f45431a9a8466d"
      "ro"
    end
    language "ru" do
      sha256 "f3eefabe934a4c56935afa48847557f02f433d0458a8267def476bf3f31ee454"
      "ru"
    end
    language "rw" do
      sha256 "c94d3fb814a9b98917b29a33dc826743cc3b517f359cc9fef944e6372225e3ad"
      "rw"
    end
    language "sa-IN" do
      sha256 "b00be4a504dfd7b0fd5ce79de7db4d1a65b4ff5884176f7807ddf08ce0ef3dff"
      "sa-IN"
    end
    language "sd" do
      sha256 "dd848fdd18930543bfb9dcb9f4dcda8ee5848698b0e81af3a865c8227c787862"
      "sd"
    end
    language "si" do
      sha256 "c1e25ba986b8e9fe7590bc6c90945f0a1367832ddd12bf74fe3f56d3f440d886"
      "si"
    end
    language "sk" do
      sha256 "295f6728ccc9632ed5edffd0a837c7a228386892c858c03c251c80207e85668f"
      "sk"
    end
    language "sl" do
      sha256 "e23a8b3492d3f7aec7d94494fb802604104e7f6a0fe657bb1e280f7bad44bf9e"
      "sl"
    end
    language "sq" do
      sha256 "3a84b45154275c2d2e9d453665758d3f0d6c06a41ec2800ef6fb338dfa5fd157"
      "sq"
    end
    language "sr" do
      sha256 "985d7361f3b6100e2c2f69f3d5cfb2cc9fc293a21354d2c7bb42a2769ae29018"
      "sr"
    end
    language "ss" do
      sha256 "7b4a21d63879a9055a11526400f58fc3a532178185215e1b2082b91baad6f75c"
      "ss"
    end
    language "st" do
      sha256 "4c1493d1ffd8437b8acaa03fe8b44e3f4d9d2276b6eac36fef7736abfec0f4b8"
      "st"
    end
    language "sv" do
      sha256 "9d942d2b5d6bdb12663001db096d671c6da377bbcabe5360d199ff31e40ad8e4"
      "sv"
    end
    language "sw-TZ" do
      sha256 "34d08b3a484cbd590c5ebcbadf602bf5d729321d416505964a7e3487804824aa"
      "sw-TZ"
    end
    language "ta" do
      sha256 "7812b63bd4d759338d69e43870376592a58e136e170b8bbf5a04a3d36b2bade5"
      "ta"
    end
    language "te" do
      sha256 "b3c81ac3ebb4f5f48c6c1ccaea15d92d596c93349d9ef863a82397557cf9be80"
      "te"
    end
    language "tg" do
      sha256 "7e37e3e4c705d9643ff9ac8424f010c82981381a8985ea451197b94ac7837877"
      "tg"
    end
    language "th" do
      sha256 "f05020f406d45d4aa76395623eb77d2128f704a020d1dce8b09dbeb7868dcfe5"
      "th"
    end
    language "tn" do
      sha256 "a4ff42f8c7ff97e76700a4d3ce259c305aa00b358c253a2fbdd5fac9b322bf7a"
      "tn"
    end
    language "tr" do
      sha256 "4bf95cd4f5635d78a4a99d7c02024544f6e1a818cda4ac76dc370b335c325e58"
      "tr"
    end
    language "ts" do
      sha256 "cb5241d113d587e89387dd34c6fda2e7b5aa9a39a70984f9e05e2608ededf0e0"
      "ts"
    end
    language "tt" do
      sha256 "225fff65482ff7bd904653b2c87ccd3e12b05fc7c694e859ba7678b52583b1ac"
      "tt"
    end
    language "ug" do
      sha256 "a5c43f508a8a9cec6d6db36d64de65e4c5a7f376718e14628b8e7fe817c58dd4"
      "ug"
    end
    language "uk" do
      sha256 "1caee4b8e402ca713f29d6158aecee330061cc468b96bef34bc1312cbe991a91"
      "uk"
    end
    language "uz" do
      sha256 "b39f30ea510c6573d91834c6d922c890af837bb4ba5c623b7680fdb544b40b00"
      "uz"
    end
    language "ve" do
      sha256 "b2db120c90a7e6db7093d8f4eec5e706fa8375ea89621226489182d79e79b9aa"
      "ve"
    end
    language "vi" do
      sha256 "0fb3a7fd31b106336b0b8c779077adad1b9aa488e994dd2c170edc57a859c673"
      "vi"
    end
    language "xh" do
      sha256 "b8d5ab7954510937fc651ffac96ef51dbe7bb7768097a346254af1157a49b2a5"
      "xh"
    end
    language "zh-CN" do
      sha256 "1b66ad2e55161ef48cc1f779f7620c7073efe27d9a437f7823454697b7a9195f"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "c27da30ba5dfd6e75076ddcf880b5ba70934a4134530d2a51433665d27d2dd0a"
      "zh-TW"
    end
    language "zu" do
      sha256 "825bae302d6e214cb57a86b47050c1536ab2659f386d64462f42f45eaf9a0cef"
      "zu"
    end
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
