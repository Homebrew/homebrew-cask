cask "libreoffice-language-pack" do
  arch, folder = Hardware::CPU.intel? ? ["aarch64", "aarch64"] : ["x86-64", "x86_64"]

  version "7.3.1"

  if Hardware::CPU.intel?
    language "af" do
      sha256 "99300e2add6534205cba89b2b01ee1f7620af8984e936bc49d2ea60429626bd3"
      "af"
    end
    language "am" do
      sha256 "dc2bb4ef8d9b1b2f41c1c5670bb24105c37daf59b43bcb3747758c1bcf1d95c9"
      "am"
    end
    language "ar" do
      sha256 "9dd8f4ddc4ff8ae9f80d36f17a1ba2c5c5d2652b30734f85fa9c9668486f3ca4"
      "ar"
    end
    language "as" do
      sha256 "2e3d4f9661e846fab1c00c5fbc40fcce9ff01bed1346506c6ab290a18418bfd7"
      "as"
    end
    language "be" do
      sha256 "353d6e31be18755dae7bfae2cb01de0f32a708e603619f8ae0687f1b8e29c9ac"
      "be"
    end
    language "bg" do
      sha256 "ebc6bfdf98320d023d368da4afd78b9f13b476b1c075207c04c079f661b0d22e"
      "bg"
    end
    language "bn-IN" do
      sha256 "61a068510ccffe5906e7608007b5841f21539cea864ff36c63845829bd2d2171"
      "bn-IN"
    end
    language "bn" do
      sha256 "e71b243db0808f18630377a979814c563071421876b93495147a46aea1fd615f"
      "bn"
    end
    language "bo" do
      sha256 "6ad2c6d14cdadd2ec549c2d33998d56e2e9ba081642861099194b19dbf864d76"
      "bo"
    end
    language "br" do
      sha256 "419ec145ea0308996c57b55df74e1b1f3d8d6ac81cf9075ba5bb5bc8f7b2ea70"
      "br"
    end
    language "bs" do
      sha256 "d832fbb43c41899697fa46cd39dd59b96485a8bd7909dc8f8476e394f58a70b5"
      "bs"
    end
    language "ca" do
      sha256 "4598bd9d203e429f7f1a9a5e4320228ace213c15f28782b44f5e41dc07f2546c"
      "ca"
    end
    language "cs" do
      sha256 "d6916eb08ebf00bf18946d881787098efc00c8ebe7535209a4c49b4fe70b018a"
      "cs"
    end
    language "cy" do
      sha256 "3eb5ca8fd1f2efea44b1ed57695c805941a17b9e290fd082e2c1fc03056334ed"
      "cy"
    end
    language "da" do
      sha256 "bd694642e02c23f7a7aa8ebb71f25b6509f72ece96c509f60be90adfda72a1dc"
      "da"
    end
    language "de" do
      sha256 "71031f555801ba8f00d0a47f1c462e9e5bec9d3c8ecb16d08c75f84758902ab8"
      "de"
    end
    language "dz" do
      sha256 "b03aee683f5d7cb0311de0df77874c9e7dfb1b1395ae4eea950576de072e3d90"
      "dz"
    end
    language "el" do
      sha256 "23dc2fbd3bf700831e2503ff9f74638f7f1ffccae4ff305cfb0912c79c0a56da"
      "el"
    end
    language "en-GB", default: true do
      sha256 "67f2a4e014d3e5173d384c732757a432eb27b4c30824faa996aef29f602adb81"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "73bc3a398ea239be2f6ca43aa85a29ca1c9f08573369d3a4392f9724266e6c20"
      "en-ZA"
    end
    language "eo" do
      sha256 "1e00a64b12a3095b66d4c042fe71a03c4b9be58fdd807aac09e397087a708485"
      "eo"
    end
    language "es" do
      sha256 "e9dc7a1724344491914fbd556f2f04a2f84d6ed4417b15c465d499c2198b9648"
      "es"
    end
    language "et" do
      sha256 "10c1ba4b998986e110e07f2f440e9679bcceabbc0bb522c11e266fcae34fbbaa"
      "et"
    end
    language "eu" do
      sha256 "da1ce5734dab49ba68edb1424c9dad51299ed3da97a0475be1d6e7aa0cd3c729"
      "eu"
    end
    language "fa" do
      sha256 "4ce21066f5e733321acd75fad62859e4059bda2e957ae32f360ecb09112b8678"
      "fa"
    end
    language "fi" do
      sha256 "2a110ba389e5b57825bf94229c811b838470081b6bee60f84e1be17faa7b17c9"
      "fi"
    end
    language "fr" do
      sha256 "abec191abc7a93c2a2d91827443141746f5a99fc49f135c847e96843de1ebe03"
      "fr"
    end
    language "fy" do
      sha256 "901585e01a0c8660ab96b2c731eafee5f45e54c92ec503a3b21191cbec53a6bd"
      "fy"
    end
    language "ga" do
      sha256 "79f49d315f08022459cd301bf80c910dc19d7aeee6cab77f35bb6dd66fe4085b"
      "ga"
    end
    language "gd" do
      sha256 "090b82e001e343dffc12b92ed046034c6e237272b5622acf3f729cb9c7a0404f"
      "gd"
    end
    language "gl" do
      sha256 "b3b99c1f33efb7c6e906b60389dbe8a0b367ed76668dedf8aa0b131d53a92743"
      "gl"
    end
    language "gu" do
      sha256 "3a0959a434bfb86327e0882ed7782d1dbfbbe5f4615c1e697c5ad51f611f1106"
      "gu"
    end
    language "he" do
      sha256 "2ed6ec28eacf1f08e007b72153332d1e926180ca6a79fd9ab03d8491563a51f5"
      "he"
    end
    language "hi" do
      sha256 "3cd88b99ac7b592603b1e814780dab8fe554f16f6958caa489c5dac77344cd56"
      "hi"
    end
    language "hr" do
      sha256 "8cc50abbfd291d7ec8b057a1e106e1d1b6b569fc61b0c3ec8de93f830d4f3980"
      "hr"
    end
    language "hu" do
      sha256 "9c3d98b50dc86ae2a4d064cefe5cbce497c0d661ce85a8930e7435ac53bfe626"
      "hu"
    end
    language "id" do
      sha256 "6f7fff00051f655deba50fb7328fe23947a1c0ca928e6126073a24c734b8ba91"
      "id"
    end
    language "is" do
      sha256 "ffd31ec46b015be3e4f5c7128275cd87dc77fb0291a53ed59030211dfbd13c7b"
      "is"
    end
    language "it" do
      sha256 "5e2e5cc43ac02ffe553d61d297bd20ff09c324be4538fcd5a2ddab46aef53bdc"
      "it"
    end
    language "ja" do
      sha256 "0090838e6326e7914c85ab33e2131ea6a162e05508457db0f9eb34befee24474"
      "ja"
    end
    language "ka" do
      sha256 "68c422ea8987c9bc040c3c6ba0fb81d8379d35f01130387072aaa842461ba96e"
      "ka"
    end
    language "kk" do
      sha256 "a2310d2c41a0f9339a8756595fe8ea0f086d88716e30ab5f673247e52f0aa54a"
      "kk"
    end
    language "km" do
      sha256 "806467ebaa02b4531041584c9b53be79370e58eb8f9225dadd311b1a0b55339e"
      "km"
    end
    language "kn" do
      sha256 "f2edc5360817e35f949c4008bc074884c7c355327eb9cf12e09fe5bf2fd9bdc1"
      "kn"
    end
    language "ko" do
      sha256 "66da261a5aa73268bd48dc4316c671a9020a0beacbc8c7dc0eb87706b6adecc6"
      "ko"
    end
    language "ks" do
      sha256 "7433db1392ec96087124482cc646cb0109d6858610f0269e8e9c88d0bc1d4d13"
      "ks"
    end
    language "lb" do
      sha256 "dde046be9ae256aad24a97ec183b0829007ce902346da59a359aa55f9a337c34"
      "lb"
    end
    language "lo" do
      sha256 "8fe272318182859af750afe9751ef513c882a1e148f3e3ed5881f54418971815"
      "lo"
    end
    language "lt" do
      sha256 "9d11b9b658a555333bce48af9cd760edc362a3666a3500c757ab91ef1ef0d320"
      "lt"
    end
    language "lv" do
      sha256 "cc79d4e44d4f5c0f5e2f524b0664e200c5d95487518ab3a4c20834bc0f661aed"
      "lv"
    end
    language "mk" do
      sha256 "90052e843bce12249948d2ecaadce0196ac9d811a45fd75d5cc7d9f1bdbaae17"
      "mk"
    end
    language "ml" do
      sha256 "4a4efc158e648a9101d2782790a9cf507d9c6f3c6ee8d32ab6aa02f8aa55a6ad"
      "ml"
    end
    language "mn" do
      sha256 "ac53265b259804f1a442b1bdf30bdb36ca5f455430209661508d171e1270b1fa"
      "mn"
    end
    language "mr" do
      sha256 "8a3f86874c44a077429961fd3b450f52edb4c0d8f2c22f6e46a2846ae786a4d5"
      "mr"
    end
    language "my" do
      sha256 "d32b31dbcd75ea65a39614054d34349a4017e3d2a58dcf8b098e541159cafc06"
      "my"
    end
    language "nb" do
      sha256 "2ddb86f60ac9be28652c67be246bc48bee699ea979c98274579655d8fca28f1b"
      "nb"
    end
    language "ne" do
      sha256 "c8dfdfcdac8ea8e6098760e9cb61b4bbeb2612f1e3eee1a2b811a17769cb45e6"
      "ne"
    end
    language "nl" do
      sha256 "f094f6afb1e77fd86fc05a1079b007bb89fc3970a05c0958f6a2b0f2107f270d"
      "nl"
    end
    language "nn" do
      sha256 "9eaa5ad7309c833ca1af3750707597f92a96ad96cdc0b95d16086b79ddec1691"
      "nn"
    end
    language "nr" do
      sha256 "ba5d1232bcbd4da1c5fbcc64d0c2460a46a5998980704bb87c94b862106ca5cf"
      "nr"
    end
    language "oc" do
      sha256 "a0823523aa2c09fb53d3525fa8a90f44246c1f5f4f7142bc37d1ef4f9b6c5222"
      "oc"
    end
    language "om" do
      sha256 "7513d89c94709d15faeab3203367ef0e975c59954fb35fbc4c552705665c3f4b"
      "om"
    end
    language "or" do
      sha256 "fba8cdeb4cdceb4b3414ecd40dc28528a8c878965729aa94dbf1a0b2a683fd98"
      "or"
    end
    language "pa-IN" do
      sha256 "41c1ebae440bfc7a0fdf60226ef086c47329372020154055a557387ad2e6506d"
      "pa-IN"
    end
    language "pl" do
      sha256 "0150087cc605d191d2139e8e5cc31e0c78c0497947e58036bbed551b88a92247"
      "pl"
    end
    language "pt-BR" do
      sha256 "48536eb8f911fa76b8dcbe072069f8f863501dece7983f4676811480830dbe37"
      "pt-BR"
    end
    language "pt" do
      sha256 "3148162d21ece0bab5c2213ac314e2588be2612590703bef1ab89dfbd9a1b6e5"
      "pt"
    end
    language "ro" do
      sha256 "7af4c68ac0fb9a5843e52fbc9276eab1a702262622394fec417de37ddf583f75"
      "ro"
    end
    language "ru" do
      sha256 "eb6ef7410dde59f78c27f14a5d32c240e3b94fcc0c56fac3efc07645ce3bf797"
      "ru"
    end
    language "rw" do
      sha256 "d036aecf13d3aae49c7d742ab7a8a623c0600a2dc55d1e24eb1c59157c3149a5"
      "rw"
    end
    language "sa-IN" do
      sha256 "696349059061f25a5b7a63f113163c65f273a0e873af2009058fc783784ddc50"
      "sa-IN"
    end
    language "sd" do
      sha256 "17a49aed999565bdd0c7a93ddc4b8a71fef61f19d55da5ca385a52c59565e6c4"
      "sd"
    end
    language "si" do
      sha256 "5a74bf1d9c9f34d6cba35591da324447958412b764ec99b3529406ce0b9c321e"
      "si"
    end
    language "sk" do
      sha256 "01e8c031d03df15517de9091260565e908e78160b576b09bd620c3552923eec3"
      "sk"
    end
    language "sl" do
      sha256 "494716d240823101edb95dfeec0d03fce5121efadf2cd90cf7d06f04a7de8f0b"
      "sl"
    end
    language "sq" do
      sha256 "2d9ce4a5f65a65a688308a1896f56b5d362459e0996e235a92837c1d9be6ec0f"
      "sq"
    end
    language "sr" do
      sha256 "6db741e990c4c50c61d17147b0a5996d825673188f5817dc0c1c6066d7aa5689"
      "sr"
    end
    language "ss" do
      sha256 "ee7f92538a1dd5388ac6005685a6fa6e3db6859b7f86e0a5132a00023228e0b6"
      "ss"
    end
    language "st" do
      sha256 "0880c02853c5b907b7afceeaaa60df62106eafd0cdc6defcfb3962cd3e0b2b5e"
      "st"
    end
    language "sv" do
      sha256 "a9836d08a1a3270016cfe251868b76675c8b1aca1c8fe08a343c0da699c461a8"
      "sv"
    end
    language "sw-TZ" do
      sha256 "24ec9eec63df4af9ebbbc097c0f7c173c9c96d8a4b55abdcaa078c94c33e519c"
      "sw-TZ"
    end
    language "ta" do
      sha256 "944131ab600233a53ab0db9474ff1695a34961ac5364c91fa45c76f9ffe56545"
      "ta"
    end
    language "te" do
      sha256 "da9f0cf28ff8eeef2f078bbdabd5cdb2dfe89d23d2097a6512f210675585b879"
      "te"
    end
    language "tg" do
      sha256 "043dcc9ab1de067c35d206674c369b4fce8c8f0f5005d3e96828959aeb6eef21"
      "tg"
    end
    language "th" do
      sha256 "3b9979e1e002d05601710d5da30bd57040cb37192946d6552a443d0805149c7f"
      "th"
    end
    language "tn" do
      sha256 "dd885ac1d5975ca170fabb7dad6d3801c845d60e7d07b7ce49c19cb32a401a75"
      "tn"
    end
    language "tr" do
      sha256 "0bdd197dcb7df67c11298a6d19794252884fe0b9fe7b8d7683ec3b25efc1430e"
      "tr"
    end
    language "ts" do
      sha256 "6aaa22d2add7440fb63234c0668cd7a3c72487ec1546cb6fbe960df0a2b432bf"
      "ts"
    end
    language "tt" do
      sha256 "cd786f2438278f0e1f55999b3d9d8e85366c29b5bd2a03ac363d19cfcb28c097"
      "tt"
    end
    language "ug" do
      sha256 "a40d32ca89d614688612480264709eca07ad9b61d837bf6d8215898a74f99fb9"
      "ug"
    end
    language "uk" do
      sha256 "a5880d96aa4735874338996b2eae1a1542e012982cb0eb61223bd1f0e1a48d35"
      "uk"
    end
    language "uz" do
      sha256 "f129feea24413dda668be5e8c85b93e3dacf3611339a1950b4b4a11c22d568f3"
      "uz"
    end
    language "ve" do
      sha256 "075c43dcbf14761038ce70e4df3d1f2fcb96abb319a569d204821af7094ca5f8"
      "ve"
    end
    language "vi" do
      sha256 "73b0d44618ab36bba3f91a99703de22159e8cee69b07108952d7ec6291dcf5c7"
      "vi"
    end
    language "xh" do
      sha256 "33ccdc17784865d5c868ad69275c6baf6eea5d3dded722cf4bf1b33011c70302"
      "xh"
    end
    language "zh-CN" do
      sha256 "2c5a4b36a4ed7b88022730cf1c543057af41230e508d74c177ae7b21c14ae308"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "14a09c7d97dcbe69ed9919080f315b4eeafb8bebdad7adaee92eb30734c38c18"
      "zh-TW"
    end
    language "zu" do
      sha256 "aa92229700eadbc31c1e5f86f8553920d4181e7655411aec4ae50d78cf0569d5"
      "zu"
    end
  else
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
      sha256 "96429d15e93ec334df242a35620964a7b052660d6a9d77b6476e4c9505401301"
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
