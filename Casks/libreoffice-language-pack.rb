cask "libreoffice-language-pack" do
  arch = Hardware::CPU.intel? ? "aarch64" : "x86-64"
  folder = Hardware::CPU.intel? ? "aarch64" : "x86_64"

  version "7.3.0"

  if Hardware::CPU.intel?
    language "af" do
      sha256 "dc0313d11f60af313eea2c1d7b6dc6af4d83ec57acea155c884d8d8fab9d7496"
      "af"
    end
    language "am" do
      sha256 "643df5d90bed3bac359cad6d88cd857adf795aa122a5b3501c0661e1655ea99b"
      "am"
    end
    language "ar" do
      sha256 "4d141bba22f3c849f8f81006e1958e03397b7056c18b7c0b3c4359a3ab89c0ef"
      "ar"
    end
    language "as" do
      sha256 "c083b5979c1a0aedcfbb7ee91ec530ef789f6063178fb12aee4a4a2cd9b92bbb"
      "as"
    end
    language "be" do
      sha256 "5e0dfc3abef2b7b2d1e61148282acb05bcd44a555e95d3917a77f8ec0e32b17b"
      "be"
    end
    language "bg" do
      sha256 "930fd5de8a39f0d24425d345dc4bd6df37ab6f34bbc2a421813c11e2606fd66b"
      "bg"
    end
    language "bn-IN" do
      sha256 "cdedf2c954a5f6594b813d182a1192f628c15689ef44bd5cf69b592e95b245b9"
      "bn-IN"
    end
    language "bn" do
      sha256 "204dac64e53ca58651030e8f184c1b9ce605512e663a932d0099b7740a77d9a1"
      "bn"
    end
    language "bo" do
      sha256 "e60d9e1bba088fdf7c477c9d68fcfb61891d10b37bb8619d319871a0e85fc6e3"
      "bo"
    end
    language "br" do
      sha256 "009127a1e53b6b0181ef6e54e7f588fdcebc58f583934c45e37832440818636e"
      "br"
    end
    language "bs" do
      sha256 "86e1e6c85332ef62b0d977cd7537e73490a5059d65758a5102341e0e6f4c829b"
      "bs"
    end
    language "ca" do
      sha256 "40c195a7aa20303fdcf95b3a2a533db592f3858fb6b7fcec804d9508d28ce577"
      "ca"
    end
    language "cs" do
      sha256 "c4e087b044942f2868087561bc23595ad5245b975d341470c0b432bd27f709ca"
      "cs"
    end
    language "cy" do
      sha256 "96a41e969c11dcc25a072e9159005cb5f3cbaa17c24063d31d183a1f334a5903"
      "cy"
    end
    language "da" do
      sha256 "3fe9f7daf7522674a47506c6df3c9099434592e8269f58972e532b885d990560"
      "da"
    end
    language "de" do
      sha256 "6fa4351b0659680c9f55509fd9f06cef937aad874f71aeeefa16afa6b07105b7"
      "de"
    end
    language "dz" do
      sha256 "a58dd9ee46c0ec38256720ee423c71535b18c4b1fc9bd61ea9c08c3cbadda485"
      "dz"
    end
    language "el" do
      sha256 "b215a7b0138eedb1cf7fe93d0a7117fc5bf5450fc1396c974997dbbb10b58681"
      "el"
    end
    language "en-GB", default: true do
      sha256 "5acbe47951ef7be1dbe1031e702a56e5c3bfc4749bd334d7c36a67aae6ba0777"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "36f8e0a9cbfea670ce7b35a18d88942947788fcca723b463672416ecdf06e1ec"
      "en-ZA"
    end
    language "eo" do
      sha256 "d585c84e8e8c968401a0f7a991f18ead9b93178dd28cd393771269a5faf5fd6d"
      "eo"
    end
    language "es" do
      sha256 "2f3357fa9ac4443cc8827cc595b9ca7223da3a5dc93aff0c8944eeba9784669e"
      "es"
    end
    language "et" do
      sha256 "a48d54f8300e95bb8f0ec7ae73aaeefed365035bb4959af26c1706e49082ac6a"
      "et"
    end
    language "eu" do
      sha256 "98e7fd929a6b40d36cb6c8ac23fbd49f56636c972de78f57fe50dee5fb3abbc1"
      "eu"
    end
    language "fa" do
      sha256 "49e45ab1be2f9742119bd875e04acf714cf5f2234f83bde6ed607822ee5ab44f"
      "fa"
    end
    language "fi" do
      sha256 "3069e70dbacf4283985cde26c8e084886b77faa70da32d5fce8a710806843e87"
      "fi"
    end
    language "fr" do
      sha256 "8f2ee0c1cfd8b16d315a7dc277092a08d79d03f9ffb72667c9b906fafd342e5d"
      "fr"
    end
    language "fy" do
      sha256 "645367a30ab8cbac4fe7c2bf6efe0978030eb2101084d80c463fd079fa36c253"
      "fy"
    end
    language "ga" do
      sha256 "e84da7e4dd33e9cc5ee80809d4b66f5019c5bfb8bfd7353e26d249488bb9d9e5"
      "ga"
    end
    language "gd" do
      sha256 "0f4e8abb999a2bd9ea46cbd9957bd65a2a6d663e3c5eb3ed304e56eac9ada26f"
      "gd"
    end
    language "gl" do
      sha256 "907fd1143dec893e10f8fc25f90be57417800881741bea20eedc72fd0293fdd3"
      "gl"
    end
    language "gu" do
      sha256 "c9755bfeeea15d694e037c7bf537b03839bc42fa1fcbcba66970c47319944a03"
      "gu"
    end
    language "he" do
      sha256 "34df10502a947a924690797370dd893a721d353e1725906739b9300a8984d32f"
      "he"
    end
    language "hi" do
      sha256 "0f0f99011f14e37053cdbed33a9bbe9d86bfb95285732809ed9303d5e4ac6cf3"
      "hi"
    end
    language "hr" do
      sha256 "103f3a459d59018900d6f59175c18c4756a98b6e88e992d63095866aef2858ce"
      "hr"
    end
    language "hu" do
      sha256 "1e68e7efef055e23af794fd03ed86b3a7dac7a57e41898c2fea31aa6898c7686"
      "hu"
    end
    language "id" do
      sha256 "20e6c522bc8a7a5cf69c5dc3164acc3e0ebdfe5a61378bf9d92fcf39cf74504c"
      "id"
    end
    language "is" do
      sha256 "fea4d2701340fc862b29beb47398120b678083d59c0b1012a15e77bffa7372de"
      "is"
    end
    language "it" do
      sha256 "25b2c96f11351c3a268d70a3ab9d0f71d45f9bc435d1c4af853df15ad26baf23"
      "it"
    end
    language "ja" do
      sha256 "75dd6bb99819e1f6c1ddc90cd4735b47914ce3824f5d311e87aa03ff25bd741c"
      "ja"
    end
    language "ka" do
      sha256 "892254e6f0cad9451a1bf8bb6c2faae75a6155a1a9640f1594c16a6312a1e509"
      "ka"
    end
    language "kk" do
      sha256 "4a3aff8bc2f81f9c1fc916d4351f10e1df554066dfb27f46de51cb201e06e527"
      "kk"
    end
    language "km" do
      sha256 "9dce142738e39d9564fd757d9a084c61689816e4e8f762a73c0d0dd083543bc6"
      "km"
    end
    language "kn" do
      sha256 "4b28cc0214c0494f4da06645799d24c1b772867fdda78d9bb28c0a6140c37833"
      "kn"
    end
    language "ko" do
      sha256 "4b7a8d9988fbe76ec7a4f7d472d21f4dded205ba9002c22ff8b8cda49a179d37"
      "ko"
    end
    language "ks" do
      sha256 "2a500be1896626dc587b3b12e29aa4abaf4fc916674a22f2f246a6bad066e53d"
      "ks"
    end
    language "lb" do
      sha256 "9e65cf09f150c4127e49a1fb6d3a39fbf4b3d225f8bf893b45ef96a02b2dda18"
      "lb"
    end
    language "lo" do
      sha256 "8e8d424dd41bc2f362c9449ca4c6952a5c0e923b5124562fc85bebb9f4598f10"
      "lo"
    end
    language "lt" do
      sha256 "a835c58f10ee850441de526e66216e4d9f2cd90525f92aff701c65e73897ae74"
      "lt"
    end
    language "lv" do
      sha256 "566353bab3a30bea853e7e23f8cb5feb01b66caf0cc773a7694f89ff802c8102"
      "lv"
    end
    language "mk" do
      sha256 "e7e062440efccc751be6ec547781e42d3d0810d66ea4201ab0904c9ca6321122"
      "mk"
    end
    language "ml" do
      sha256 "506276b5b84504768e31b53c829d154197159366145b5fc44255b8688d7f6515"
      "ml"
    end
    language "mn" do
      sha256 "a93d974545922a4c915f13cb7cf2faf3e130a818a5cd07d3a55918e1f994f1f6"
      "mn"
    end
    language "mr" do
      sha256 "db0df4da59adb9267a6a208f36defbf7a1ec3d420aa5ef780d1609d611b0d56e"
      "mr"
    end
    language "my" do
      sha256 "2d6f7601694d1591936606f353d486b8a6a7dfbff645df6637db0a1f473a915d"
      "my"
    end
    language "nb" do
      sha256 "59cf92f0793e0528bdf39c61f1bf8fe5e69838feeb9115149430514f0b705abd"
      "nb"
    end
    language "ne" do
      sha256 "b30a80d348e734e36defddfce070affa2c99cfd03d1e38d7aec728864fa79f11"
      "ne"
    end
    language "nl" do
      sha256 "c1f32d1993680e7e448657486693922e9946c7f69c3924d16d2d94d98b6ad462"
      "nl"
    end
    language "nn" do
      sha256 "2ebb60dc4cb0a00aa84a96bda265b539824fc187e324c3666e696725c3f16860"
      "nn"
    end
    language "nr" do
      sha256 "1f6fffe047f0395270ff82ce225f851ec3864aa86e638516822b2c66805faafd"
      "nr"
    end
    language "oc" do
      sha256 "ac46207307055d0d9958d257dc82712a54b0c1c53081f6114bd29471890134fb"
      "oc"
    end
    language "om" do
      sha256 "142958e1241ba0d83ebba7deb35f558cde34d3eddbf8bbfff68f0daad1a05048"
      "om"
    end
    language "or" do
      sha256 "aa4e6e52b5a8baa8baff1cfa59cdecc33ba2eff4254b019eccf92bd036c944d3"
      "or"
    end
    language "pa-IN" do
      sha256 "7a3e8639bfa9b8e68ad75df9f04c661e6eb93148f84c5f5ce3ecade5035ed848"
      "pa-IN"
    end
    language "pl" do
      sha256 "6d2f00e23bfb66b7332ed8cf1dbb888771b8b17644ebf98c890fc1637a0b2316"
      "pl"
    end
    language "pt-BR" do
      sha256 "04638fd9927a57b9c48b5df2dfa4941dcb29a5fdb715070b93978d880defbf41"
      "pt-BR"
    end
    language "pt" do
      sha256 "8e3a025f940024348da05066a571bd2c21077c5f31412e57359378036427f62c"
      "pt"
    end
    language "ro" do
      sha256 "bb9ceff4a0c3847723d46eb2c588431e8f514c045f624470c44dab968802d8b6"
      "ro"
    end
    language "ru" do
      sha256 "f9c3e835f336e0cbd68d7e8929285d23235f65dd6334045baa3de5bca37a80f7"
      "ru"
    end
    language "rw" do
      sha256 "86a62b3d64871f1d57158ba54c599dc080c185d9262169b06294c3bb34d2eabd"
      "rw"
    end
    language "sa-IN" do
      sha256 "1d7b729d98f93b67e341629ada26c32c4f887eb1e797fc4520d5122cc012601f"
      "sa-IN"
    end
    language "sd" do
      sha256 "327e363c8aaa6e4c2fe413aefa3e81ab4f0836ebe412870d41cbeaf56ff0a49c"
      "sd"
    end
    language "si" do
      sha256 "ea19d6db9cfc202088d4fe17b6dd3392429e6ea44553bea9cc60f8eb61a2d8ea"
      "si"
    end
    language "sk" do
      sha256 "ef9048a926f93c8b05ac7efff62a9f81408cd41fe8b0acf8a520d62357cc17d4"
      "sk"
    end
    language "sl" do
      sha256 "63441bb68e3c63b655f587dffe41e725aac409adc7136c26667c153c9ebfda3b"
      "sl"
    end
    language "sq" do
      sha256 "7390c02d1e71630575919d2390915c50646494750b9d6dd9203cea2bebcab702"
      "sq"
    end
    language "sr" do
      sha256 "c6789966681c1c67164548d4f1fea5801e861723a0d139fc693fa2144c549e82"
      "sr"
    end
    language "ss" do
      sha256 "6c2a9b54ec65c5be29d9e7960fe403c80255df0f2c13f3fa0742bea3ff0144a1"
      "ss"
    end
    language "st" do
      sha256 "0ab7e95cccc0dd99cb1fe4c559a8550983179b0400d8950cc1fb0079f557613b"
      "st"
    end
    language "sv" do
      sha256 "d9efb1da4863a9b616ecff43f3d6536318c0dfec6df4dbafccf942eb619f2616"
      "sv"
    end
    language "sw-TZ" do
      sha256 "b18f1e7625d1764a3b4206c81eeb93f8a9dbfc3d742dd1f5670c780e3cf8b4a8"
      "sw-TZ"
    end
    language "ta" do
      sha256 "bdd8f0000e3fa2d31bc574402cd4f598cedfc029da051f7c5bad8177680d4a07"
      "ta"
    end
    language "te" do
      sha256 "599f6a95313abbd69bfe45be037d54907dc3172f3572ff0aeefcd4cc8c22cf43"
      "te"
    end
    language "tg" do
      sha256 "1bea5ea22f2eb83dddb9eec96e97772ce029963e9a392e23b7ed4668a77f9221"
      "tg"
    end
    language "th" do
      sha256 "e87014ddb9f3a815d903fdc5b07d453f0c6c3e6adc62fd1e4247399b18c0913e"
      "th"
    end
    language "tn" do
      sha256 "259e2194cfe689ca47164ead52f4b842d656bb6622a3342a58c2c7ec2fc9e7b6"
      "tn"
    end
    language "tr" do
      sha256 "834176048c7f059901a0623af178ff1d139b8c93b42cc2d673de3ff808b4164a"
      "tr"
    end
    language "ts" do
      sha256 "b54dd854c727e97838a74fe35aca56c177c71313b16ce0d373660d22dbe1ca7d"
      "ts"
    end
    language "tt" do
      sha256 "1ca5601a930c1627e721492b0ddcb79310aae6c39682a1191b8359fee2a07996"
      "tt"
    end
    language "ug" do
      sha256 "03bad188ce2a994ffb3c8f67b41a5fe307f3ebd3d965294fc756ade1569a6800"
      "ug"
    end
    language "uk" do
      sha256 "fb90ea82034858921a5c772ea349f2455e29c184be3448da0f295f8687097c92"
      "uk"
    end
    language "uz" do
      sha256 "a765f8964aeeceac8d591e6ac6df648f89c78bf519bbec2b810270f1a6a53206"
      "uz"
    end
    language "ve" do
      sha256 "aebcb371f1d07226d1ed672f5c1a65c2e483833ae51376fd535b7266bc5b5432"
      "ve"
    end
    language "vi" do
      sha256 "f598725005a23a17e8bcf16a63fd99222688cb153c4e660fd81efb5999aa2489"
      "vi"
    end
    language "xh" do
      sha256 "4b3698f897a4df0e7b20914a2bc6809e2a5fcd1dc501491c58ff5ddf69a6b2f0"
      "xh"
    end
    language "zh-CN" do
      sha256 "0f49736bc4b28bab57f828ad035e86a073d31f234c83efd93df410a43e55e22e"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "ffa3d1f8bafaf9aa93366c78b8249c18e0b7948b2c2f33ae16ee47a296430696"
      "zh-TW"
    end
    language "zu" do
      sha256 "26f9850ab54e20e93693522868a772cdc0a9d5bc164a59e9f3eb84182c9090c8"
      "zu"
    end
  else
    language "af" do
      sha256 "da44b0f770bbd48aee142e98c518b34469130cf41031956904bb3831e0f53641"
      "af"
    end
    language "am" do
      sha256 "f3a55a91a900dd895fc748588a86bdf2c940af239b142cf38d534f3fc82ceca9"
      "am"
    end
    language "ar" do
      sha256 "71849d67a91faceb213cdb3b4941b406702f1d1fb81b32989e54c37c3271e336"
      "ar"
    end
    language "as" do
      sha256 "59d9534788a30b76069aea57173688778c1197daa2b4c5800aa37c16bb9769af"
      "as"
    end
    language "be" do
      sha256 "42decba6db19f4b0279f47ac567ad523b142b4dc3d1ec430f3c052f7337805d6"
      "be"
    end
    language "bg" do
      sha256 "ce738012ec0b3ccbb970f637924d7ca9e66ae2d3fd7cbfa324b7a39f7abfd65c"
      "bg"
    end
    language "bn-IN" do
      sha256 "126a6355298f59b3d423e98a5596c9217e9cbdbbec8fcb39cbab84b4d3e820be"
      "bn-IN"
    end
    language "bn" do
      sha256 "e7d881f0fa91ca07a8281f9421ece13bd3645f9ecee80650e1fd6270ffb4a893"
      "bn"
    end
    language "bo" do
      sha256 "39ecc9e2e56cd22fea695cea3aaaf4076cd120aef14884c40d9a595215fe078b"
      "bo"
    end
    language "br" do
      sha256 "974a8bc147729469b0a9f6cc40a0cc60311234bc5ef2b597fa148039b0b1653b"
      "br"
    end
    language "bs" do
      sha256 "fe805d443973a160c125734ce681a4e4175f52297ba07502e1ed06f09523bc57"
      "bs"
    end
    language "ca" do
      sha256 "faed61cbc684d0bf275c9c71449a8ad266029c6bcf49e51f671c30c88e7a2268"
      "ca"
    end
    language "cs" do
      sha256 "4783d18c9ec8ad1a32c0044c99f86ddd681f6eec16baf22f687cb807d98b5e04"
      "cs"
    end
    language "cy" do
      sha256 "db4b86871f233ae53a2342d2a9d4d8c56dc3765804a4969b5416674cec62e770"
      "cy"
    end
    language "da" do
      sha256 "7bfa2b1bbfc47d6bb0c211edfb8987972a4f6ec948a023cccf42a9a2ff8e8c52"
      "da"
    end
    language "de" do
      sha256 "9facabe1c3f38f6be4e1c2901476cbb177e296a332ba7dfd378ead4c30f5c987"
      "de"
    end
    language "dz" do
      sha256 "c70deba10730af3dcaf91f2ddbb1210d1892e3eb7129bf875293380385279762"
      "dz"
    end
    language "el" do
      sha256 "a51a49db7b70247e4453e96d6979a4c6d2031d982f06961c2476013cb36e84e4"
      "el"
    end
    language "en-GB", default: true do
      sha256 "8f44ac0d53aa348dcb59a58cc81853e83413496b6a93ca28bd746b096b6992b5"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "11384fe917b000d05bc1a1f9a35040825daa6a9d34f8f5bf6adc8610fb8852be"
      "en-ZA"
    end
    language "eo" do
      sha256 "f716b7ff9c2873e676dbde7faedc0605a389291bdf7e13840d9fcdecc0999caf"
      "eo"
    end
    language "es" do
      sha256 "da5be64bf7e2c03b84513b5e7984db228d993b22bd4e5708bd499b3b36aa9b38"
      "es"
    end
    language "et" do
      sha256 "a1dc28982aef566fb2f37fa4742f4fa6b55b6b81ff09cd9d65360d51dbf0d9cd"
      "et"
    end
    language "eu" do
      sha256 "21afa40129e4d103fcc971de5976fac6bca42910a8d042b24d10ca2217795fb2"
      "eu"
    end
    language "fa" do
      sha256 "fcf462bb122967665a2a2ccf82a82dcdda5547d2684501ea8ddff1f1f31ad029"
      "fa"
    end
    language "fi" do
      sha256 "a2e71857d095df3c4ecf31484ff3af9d8ed307c324f7509d6dd3b9fdb95756f6"
      "fi"
    end
    language "fr" do
      sha256 "da259b42b737f90d9f5e3a8fde3c8cdef853eba50a71db99d10128a297beabf3"
      "fr"
    end
    language "fy" do
      sha256 "8163de6ed2b5ecad37e3d212527d24d469d390837c54c533c6320f24b2365cac"
      "fy"
    end
    language "ga" do
      sha256 "8695b0fdf12fdf7bf1657a9b263fd69b58ff04beaaf0802ebc1da7141aaa8294"
      "ga"
    end
    language "gd" do
      sha256 "133f2443c44392c8d2c8786f0ee37fd5f2bbec2b5c283ada64bb14eacc7dd029"
      "gd"
    end
    language "gl" do
      sha256 "6aae2e3e82db3e2ec7e19f85fa5cafbf15c21417882519254f2b8d800e13084e"
      "gl"
    end
    language "gu" do
      sha256 "6e6a66e8fd66516b069660ebae30d68d272f9ca804f9b23841f33dde94b3c023"
      "gu"
    end
    language "he" do
      sha256 "9b7eb914958f4fa7c71e231ab2dfcd038df5ecaf9e270784646c3a1908274bbd"
      "he"
    end
    language "hi" do
      sha256 "e7345b18a2fb3e851579cc6010a95384928d544b68c3c6a1a8b2de9ec6cf968a"
      "hi"
    end
    language "hr" do
      sha256 "48394355bb8fc0df3a1b061db0122f54b46c2a5099a963dd98fab90b3a60757d"
      "hr"
    end
    language "hu" do
      sha256 "f7823ad38703468a4ecfffc7720b61ed0269c8caf0c691c0159eb9b25209005c"
      "hu"
    end
    language "id" do
      sha256 "b219771833eb5ce183d2512718a831f7499defe005c298424b5680c8a25f1330"
      "id"
    end
    language "is" do
      sha256 "52c77c40018672a1841fa92eeac8c0ce1c489a3d670312974ebd9c200570aacb"
      "is"
    end
    language "it" do
      sha256 "63ac9f95f4c184226daf59301ce123ba5d2a86e631f58375e32826a8f5781bd0"
      "it"
    end
    language "ja" do
      sha256 "2d54162ab08f3bf4dc7a0042f19a73620fa62d4898117a0d6b1a12a4b402e510"
      "ja"
    end
    language "ka" do
      sha256 "769e5e68533b9f2b369f9eabd0a5452924f0df18fd81d055d98451f7729b3d92"
      "ka"
    end
    language "kk" do
      sha256 "79753a37a0bc031a4544fe759787f0ff5970bb4ae417e10d4f6f0a149df6ff7d"
      "kk"
    end
    language "km" do
      sha256 "3d027bc5db749491110a6dd7e740df2d32248ec4cfba1dd5483ff0610ab798cc"
      "km"
    end
    language "kn" do
      sha256 "d1ba69e714e6b6472a6dd6d032b144a22bdff4a3a90eddb3036cfd38591a0b3f"
      "kn"
    end
    language "ko" do
      sha256 "d7944c80433b7b8b0a3a1ac504ce69e3b72c7088ae6ebadade93665704bfe48c"
      "ko"
    end
    language "ks" do
      sha256 "4b6634610db82edd0b1076d4bd4caaa9155bdd7d922b3b3de2fe04d72e4b982d"
      "ks"
    end
    language "lb" do
      sha256 "f72cf324cc7c74474692f0a6749825bffa03492ab023399877e25dc8cff3cb30"
      "lb"
    end
    language "lo" do
      sha256 "bb73888ebc0cd3cb3cf2a38635ef0d1c544ec1eeded171cacbfcca58979105ed"
      "lo"
    end
    language "lt" do
      sha256 "384f15e326b7b45b7eec53bfcd7d387125199d18386b9ea475f3ad7572940a17"
      "lt"
    end
    language "lv" do
      sha256 "8f12d02e359d6047dbbd66e9cdef7e4bda86ce0afaefec7f1b61374061f38558"
      "lv"
    end
    language "mk" do
      sha256 "5903e6cc8b3d0fa4b232e641238620977edacb2fab304f9c15d500ec73e3381c"
      "mk"
    end
    language "ml" do
      sha256 "12b83ee6621e6df9b66901b8622fcb6395c15179b5fa774c93ee428a573dc035"
      "ml"
    end
    language "mn" do
      sha256 "aa286062d3abf3b3bacebf1840cf161f5db6ddfdfdfbec3f76bec534825d38e3"
      "mn"
    end
    language "mr" do
      sha256 "e82aec390a98c212ad83737e6ff29d2d58a9aa6d02e329955a872bac443f8ab1"
      "mr"
    end
    language "my" do
      sha256 "a263c90400412f340931f406fc29fc7e81c6ec91e468668e4a003a406e87a1bb"
      "my"
    end
    language "nb" do
      sha256 "c36ae885110541f7a11cfac4b580bd991a1352b05c062208322da0efcf9dc9a4"
      "nb"
    end
    language "ne" do
      sha256 "bb992762fe2bdda2ed221d69e9194f3f12ec4720e57351babdfdce45c6952ddc"
      "ne"
    end
    language "nl" do
      sha256 "deea4b161c9a824da8a06a753f0fad288b77a47db462761a11e3eb53cec6c57e"
      "nl"
    end
    language "nn" do
      sha256 "92ead33f87870c4c6830dddadb9dfa2cf76d116628b9f588f74ae47e9bf99950"
      "nn"
    end
    language "nr" do
      sha256 "f7e2ace1c98cdf5f882aa595eb51db2de85235e20045c47f01f6d3388e0be684"
      "nr"
    end
    language "oc" do
      sha256 "a0800663a76b817c7ae91fd16569d9bf1a8331456845a32ea9a68bcf00f42f07"
      "oc"
    end
    language "om" do
      sha256 "91dd4558b20e43ee6fdb4721cbc83c7bbfca942c3378dd8d32b1a5f123e9c751"
      "om"
    end
    language "or" do
      sha256 "e71dcfc958a5030c418d1a323ae0d9aafcdaa1b7d6ed0e241ae92cc030fa3ee2"
      "or"
    end
    language "pa-IN" do
      sha256 "43fc0deab94f552be45b6d938a36bc90043b10f5eb36d7413b1f43b071b4a59e"
      "pa-IN"
    end
    language "pl" do
      sha256 "46bf280399291e462d843ff8e064e8bae20c4bf7004004ba75704facf70dd48a"
      "pl"
    end
    language "pt-BR" do
      sha256 "9f5aa39b2ae0135f6d588fa344bbd26650f03532d2c2fe0afabd1b4be4818b74"
      "pt-BR"
    end
    language "pt" do
      sha256 "6d2dd0e689964d8c8a11516a32bf6259eaf0294cadda2d4265f7a7a6a66d30ca"
      "pt"
    end
    language "ro" do
      sha256 "6d79acd9fc26234f28b63e0e94742d9d7f9f3258e6b5867d4524297425062773"
      "ro"
    end
    language "ru" do
      sha256 "1aa034a8a281f9a3fd0e67f4a36708e9822bd41252f985f776d01d7ed2fa3826"
      "ru"
    end
    language "rw" do
      sha256 "c5b2d4e95fe79ff15b97982f320be400bf40ca2f1298c663a157e85e334f491d"
      "rw"
    end
    language "sa-IN" do
      sha256 "088b6b3536d245945a27c518d2670421884f8a3ab86b85cad6968f8f95e9e287"
      "sa-IN"
    end
    language "sd" do
      sha256 "86a04035b7146829e2c06da8ba08bf0014c37168140b295cdd24c1d2a9e82f7e"
      "sd"
    end
    language "si" do
      sha256 "3d4cb2095a2f7eb98b064fa6ba58b650658c3686ed4cde68ab65731a0223730b"
      "si"
    end
    language "sk" do
      sha256 "409debc2891f4ac37e655297d975a232895b174737f6bc00e0c7646e3d2cdc22"
      "sk"
    end
    language "sl" do
      sha256 "8ee5239eb154f1497bbffd67bc6a5ff5ab1ea10942923c5ff60da1aa4dde038e"
      "sl"
    end
    language "sq" do
      sha256 "1d4d2b969da36a574365ecda8999331798b177a4678792613b299bdadd98d488"
      "sq"
    end
    language "sr" do
      sha256 "e17da62e37d6f88056c3da20d270245b971a6ca4656440eeb2aa3a8bd396bb1f"
      "sr"
    end
    language "ss" do
      sha256 "1f6102ded25d719843df2ecf3c50de7804ecf9a70cb650f58daf5056f1d12e4e"
      "ss"
    end
    language "st" do
      sha256 "32eb652fa8cea8767903f681f3eb85edce6c9be92f20fdf23e2892a24da36eb6"
      "st"
    end
    language "sv" do
      sha256 "aff9fada59bf2d71e31ca593189efff27e5054e8bf80d834ed76dcbdfe66ed9f"
      "sv"
    end
    language "sw-TZ" do
      sha256 "79f9afc4005d54df38f9a29c32b8f7e3cee737196406cde41d87b57fbca44f30"
      "sw-TZ"
    end
    language "ta" do
      sha256 "443a2677645734d8f0fb48799b4bfa11f2e73093769baf49ad0f9fbee953aa3e"
      "ta"
    end
    language "te" do
      sha256 "dd027089c0bd268f65716a71f9afb43492ad446044563d2daa7945d0201075b3"
      "te"
    end
    language "tg" do
      sha256 "8055eafcd4b7eaee0ef1364b10f0a2570d236b365499fba629cbe5cb5d8227b1"
      "tg"
    end
    language "th" do
      sha256 "e627ab3ba5281e80ea8426785cec47429adc7a5ddda3f1cb05a8df28173d8226"
      "th"
    end
    language "tn" do
      sha256 "1eb0f09cc64f70955b262be3ee019ee97ec5d2477c0062dd73e95e089aab98af"
      "tn"
    end
    language "tr" do
      sha256 "7143a2a05f3833af830bd6d0d0042ee863856860dc017cb16c2dee2f8fd28d94"
      "tr"
    end
    language "ts" do
      sha256 "e97149bc5d36c564f5021fa400ebd6cf44bff7a3724a4b6853ed8ce46e6e3e20"
      "ts"
    end
    language "tt" do
      sha256 "32f9e2b9d14116543b68ab1ae3737ae24130ae0891d5cc242e9b474c008b7e96"
      "tt"
    end
    language "ug" do
      sha256 "a5542dd316d1d862ab937e1bc525b870fcaa32a7049e4e736eb549a00342e4f8"
      "ug"
    end
    language "uk" do
      sha256 "2ff93a3b46a5b46ed640f8b258eeedabdb7a7090b6aa1711368b944e7ee7ac15"
      "uk"
    end
    language "uz" do
      sha256 "56225d383768a9dcf1c957f791df6baff46599f3cfbab07d8ba6fa09f906437a"
      "uz"
    end
    language "ve" do
      sha256 "891cdcfc175ad6c9874451789f3159d10a9f0c613b4e3e1f3cc9430ae3c580d7"
      "ve"
    end
    language "vi" do
      sha256 "80796e03aa2b08cc8c5e9bbffbcf8a3a03222d3963965f386ba1d7e19986e7c9"
      "vi"
    end
    language "xh" do
      sha256 "d3f93cb736fc1cdb44d663eb39cbd19ffd764f8674a508e31f31a7289ff08628"
      "xh"
    end
    language "zh-CN" do
      sha256 "e21f141b439b8daf5aeb02d33484c15cfb6a91a4d0f23affdf184e81f55d1828"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "375166af03187a43676f16552b10f68462769af7d1eacc11b6ae396db92bf69c"
      "zh-TW"
    end
    language "zu" do
      sha256 "adc8fab92134d115e6a2c8b0e3d01c84b8cea6a426372a3aa5a5492a30bafe66"
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
  depends_on macos: ">= :yosemite"

  installer manual: "LibreOffice Language Pack.app"

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: "#{staged_path}/#{token}"
end
