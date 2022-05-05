cask "libreoffice-language-pack" do
  arch, folder = Hardware::CPU.intel? ? ["x86-64", "x86_64"] : ["aarch64", "aarch64"]

  version "7.3.3"

  if Hardware::CPU.intel?
    language "af" do
      sha256 "7e477f6c6dfadc5137b795c298437700da07e6f61a744e4bfc74ef5f9d07c079"
      "af"
    end
    language "am" do
      sha256 "196a97bfa0648a7159b516535628a94fee55f101ca15ac745f23d680ea0c5fb6"
      "am"
    end
    language "ar" do
      sha256 "da30026a72732edb80eb64fac6f6219440971832b28ff9dc35d56868cfbae4f9"
      "ar"
    end
    language "as" do
      sha256 "b2df589fdece3deec20225f2a936f9c5092b747c87cbab18f630378705bb1f1e"
      "as"
    end
    language "be" do
      sha256 "6434c5543cce0789f93d2e1be0638fcdbf5880826b70623d08aaa068eb92be2a"
      "be"
    end
    language "bg" do
      sha256 "9310fd3cb15def707c1b67d698200c8a06c968fd279f07acccb6f1dab84eeb84"
      "bg"
    end
    language "bn-IN" do
      sha256 "cbac64b174f7540be366f38ada065dfc3cf12fbe6a9117666366e643b4085912"
      "bn-IN"
    end
    language "bn" do
      sha256 "efd9da069c1dfbf13ddb545f8db7588d9bb69ec867fffa2e2ef7cf4855bbb1ef"
      "bn"
    end
    language "bo" do
      sha256 "0fa2b4719487fbe6881b18e72b3477f4bae1d19d3a73965c8a2fd5d29149b66b"
      "bo"
    end
    language "br" do
      sha256 "7ed2f8ba694debe321f0d4324a04e8c83912cb2232d604d02826abf7f1571f0a"
      "br"
    end
    language "bs" do
      sha256 "07307c0a098dc70458892c543dcc07055d267a60236ecaff434665751d812393"
      "bs"
    end
    language "ca" do
      sha256 "3719e7ea9b3eca014a80ce8e1e6c89075260e670ad0a14500a354f2d7cdbafef"
      "ca"
    end
    language "cs" do
      sha256 "82f177552b1cef29ca4569df2b59001147614f5c7c845191e40936e5f0d75b44"
      "cs"
    end
    language "cy" do
      sha256 "b05d0c04c02c9ca05b082f08546c5a68024039bfe5db2651b4ca3b4ef59e1400"
      "cy"
    end
    language "da" do
      sha256 "806f58cb32b334564347defe76c38e85afa08fb1f4e4a78b03cf4f1481f83700"
      "da"
    end
    language "de" do
      sha256 "6584b1fc48a4494db74e3a9a3f3fb30e026af24089aa8ffc63490358630f4b0e"
      "de"
    end
    language "dz" do
      sha256 "04f2b1d338698b310035a3c21f4bcd26976c2f9500f2880cac8e30561814183c"
      "dz"
    end
    language "el" do
      sha256 "df02a9eb8d25d3dcf07db82a60ddc644cd93092dff65334bc3c9d39a11ab888d"
      "el"
    end
    language "en-GB", default: true do
      sha256 "07f2e4f6bed620b42119c0ee6851db41d8b31a64d9a4dfda1cde972d32ea91fc"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "4fb08b72840542ce29aacdcce705170d86c0b588e0d16981d71aa35447b81560"
      "en-ZA"
    end
    language "eo" do
      sha256 "5774155a7ecb357f62a6d84a83b56ffe0af2aa474de4addd47cae8f88b87493d"
      "eo"
    end
    language "es" do
      sha256 "f2354d70e089221dcc778f116f68b85e0467812a93eb0ba08d80ddbd31f4cd63"
      "es"
    end
    language "et" do
      sha256 "de8a34dc961b43167c03f7e9c71a6677a1c874d02f94ddbdaaa496c3f11ab39a"
      "et"
    end
    language "eu" do
      sha256 "2b72b54c4b84e620e8b8c7015ca6237e9da9fa911c04181cb8888db6dba28a2c"
      "eu"
    end
    language "fa" do
      sha256 "bd2b764cfa39043686d0a6d5de517f37f20d51ff027756e78d6ac2129eaea87e"
      "fa"
    end
    language "fi" do
      sha256 "64f2300cfbb3fb75e22a7504eb5d1b00372906c2dc59a61903cae867feca1226"
      "fi"
    end
    language "fr" do
      sha256 "57ee5beb1308cb5ab0a2ad3e2af7edc84e736b1ea44504d55b0db5d2dfce8d6b"
      "fr"
    end
    language "fy" do
      sha256 "cbae3507fc71b54a0a4d42f298fca17ffd94fcd74eb3e308d326efbd176b0918"
      "fy"
    end
    language "ga" do
      sha256 "e198db950aed2169317cf531001d7b8f450f744ecf426273276e724740846884"
      "ga"
    end
    language "gd" do
      sha256 "1f1cc1b5460533ec4158b848171ebf933620b3fb208d585b12f71e6201ce2299"
      "gd"
    end
    language "gl" do
      sha256 "cc8430a2d4cf32b75737af8c7d29d94dc479df9075320d49d9e149e86015e81c"
      "gl"
    end
    language "gu" do
      sha256 "82ac46662d62911f07c0274534c604cd67ee5af6d8b441fbcd13824cbea7e5f7"
      "gu"
    end
    language "he" do
      sha256 "2bfbcf520d94e61d4ac3f1bf79856fc7cabf4ecb7351b31dc62af6d8929e7d02"
      "he"
    end
    language "hi" do
      sha256 "a45e851706825398b007f20a73e7aa2c0aa7467ee56454d0bf501163c675cf6e"
      "hi"
    end
    language "hr" do
      sha256 "58b83b1c949fe18f18dfb07d810ab352a01748289c94c832a961278e753cca8f"
      "hr"
    end
    language "hu" do
      sha256 "906cd33ea385b5705f7a796fba9e8da27ddec6b152dd1a12f6ebefc2c063be94"
      "hu"
    end
    language "id" do
      sha256 "5dcdcff6209519ab9055febbec1fa6706f2069db1e6e4df7ad0e7e62805c73ab"
      "id"
    end
    language "is" do
      sha256 "d5a3c0d8147e5fcd311d9d2ada9fc32446116adb06755d2a46466c036fbefc43"
      "is"
    end
    language "it" do
      sha256 "b0648e147568adc471bacb7f3114851cb59d0df35f300195871abc075569befb"
      "it"
    end
    language "ja" do
      sha256 "9c5774e5e067b5438ec578cbf4c3addfd17b7c299749741b983d7aede4558cde"
      "ja"
    end
    language "ka" do
      sha256 "bb5f912cbd91788c0c9903802708ad293b985ac05ad7f570b0c898e838918a12"
      "ka"
    end
    language "kk" do
      sha256 "bceb9477a883fa8afc23b05f37a163f3162be52fc42e13cfa1b7c492597cec60"
      "kk"
    end
    language "km" do
      sha256 "3e48e266e2c29d31d979f15e3f219ea284af373d53f1a2829653957b4247cd64"
      "km"
    end
    language "kn" do
      sha256 "28abefc455aab054936271aa3b7886b6121b5dfd2a44d1854950050e597efbb9"
      "kn"
    end
    language "ko" do
      sha256 "340208d26f38d0a9c76c01994ce0e5ec12a7bb98f2239161916c2b100866b640"
      "ko"
    end
    language "ks" do
      sha256 "c21b5febd13693ac68c462a1a02fe0fe7dc4457972517eeafb3b8c40aec3cd66"
      "ks"
    end
    language "lb" do
      sha256 "965cc0b5c969597550e227af744ad64420e19b5cc783ebcb16e942bbec185b1d"
      "lb"
    end
    language "lo" do
      sha256 "cd06ef342aa61d9f51eabe96db79e4bb9038169d22b6d194a561a3abd70a0965"
      "lo"
    end
    language "lt" do
      sha256 "5c2637cee1ab4ca6dd3e2f135b1cb56c68bac1d8a8a8080a9c9dd67b02d878c4"
      "lt"
    end
    language "lv" do
      sha256 "b00878f0b4934473c58cdbe65dd21399596af5d2f520f22057fc7f6b91069737"
      "lv"
    end
    language "mk" do
      sha256 "cab491f5f1d5c2ac1ead552b0612c1fcd23683a24ce2c37924264cf1d0ab1ffb"
      "mk"
    end
    language "ml" do
      sha256 "0e65d993107f4f236526dd4e15ad34940f3efa84301f49b06d0c8a4237889c7c"
      "ml"
    end
    language "mn" do
      sha256 "bf74995f49313dcf2f7364b1bc19c73bf2b9f5c038b824219a0ec65b0bb474cf"
      "mn"
    end
    language "mr" do
      sha256 "cb58fa8fb5e91dd4337bfd32f89e73367822f7fcddf6be411d299ccfff514f4c"
      "mr"
    end
    language "my" do
      sha256 "a9bde4ec6711d6484fc858e355720c34d83ff3f500492db4e6e5acc50f69cc06"
      "my"
    end
    language "nb" do
      sha256 "894acd228e7190eaf9e1f564aa5d73a4b1bd4173516a4c2842755ed5ae6ac8ee"
      "nb"
    end
    language "ne" do
      sha256 "b7183f0ff92ab5932b55e2ad1f1710c8ffbc724fed01be51e85d27401cf5f439"
      "ne"
    end
    language "nl" do
      sha256 "f375129b9476eda3f69338d9b6ed6ef13359079051b0bb23dbe8d67d48308c0e"
      "nl"
    end
    language "nn" do
      sha256 "28eecb872b102d45755599163a00aed53670aa8422011f0408cbad2e4ff882fe"
      "nn"
    end
    language "nr" do
      sha256 "0a43bf75d9c1943a0d016357b7d94305d019e547e7feedf07d83196f761b8b3b"
      "nr"
    end
    language "oc" do
      sha256 "38c6043d9a382eb215fde4965eb42fa21ef8ea9ec47a4e2d5e2fb49cdb608171"
      "oc"
    end
    language "om" do
      sha256 "b3c42b3bbc8675aa7677e72ee686e8cf56a34458ea0f5f30f05a080f1cbaed6f"
      "om"
    end
    language "or" do
      sha256 "3a5f287d86505bc0ee112542cb9a100bbb69c824905963bc940a1921d6012050"
      "or"
    end
    language "pa-IN" do
      sha256 "45f4a88da0c2097dff19fd3763508a37c5743f44bd700da4977ad53d262e5e80"
      "pa-IN"
    end
    language "pl" do
      sha256 "e714c002ec5cc7c12d9d24215e11aeda0af89f1ab0966b6bb15e4d2ae3a846b1"
      "pl"
    end
    language "pt-BR" do
      sha256 "8e21408b27742e8298f649c2a472137891db1866084833a38e494944e2443050"
      "pt-BR"
    end
    language "pt" do
      sha256 "41227027a23d4f6b89e07dc58a53e407addfd42c1c62f4ad33c748b462d35956"
      "pt"
    end
    language "ro" do
      sha256 "14ad937cb510965d294940feb0c6154adc6408d01273bcddde659f0a43d732e4"
      "ro"
    end
    language "ru" do
      sha256 "32d36803f22d9885d42f9b41936ac065dfca794175460655fb617afa6de28c34"
      "ru"
    end
    language "rw" do
      sha256 "4fa3e95c7ae9bc99b1d0b71fd5765d2915b651e24a78565d099bc8e1ce4319bd"
      "rw"
    end
    language "sa-IN" do
      sha256 "f2be272cdced0cf0ccbcde75940d1e5aed01b8f5fbc6dc1127150ecf7fc03ce6"
      "sa-IN"
    end
    language "sd" do
      sha256 "247fabb7ddace86be3992606b9db8ee6799f810475d0ab81236ffdf5cb554a2e"
      "sd"
    end
    language "si" do
      sha256 "b16b4efc6522bdbaa3debe3817368ec54ea84eae86fa2518a1d4072073a5f771"
      "si"
    end
    language "sk" do
      sha256 "1b92d6ffffb6e4209424e32a447d81eda49f14072a50a8903dbeef5005710faa"
      "sk"
    end
    language "sl" do
      sha256 "b0e6ba808b4e10c4bd14af44bc5e6ffd166bd653a964b085764cc047691c70df"
      "sl"
    end
    language "sq" do
      sha256 "65c0c238ff2d11148585865f269ea7baae12b6a2352cc3cb31d4316aebb09f62"
      "sq"
    end
    language "sr" do
      sha256 "95f33a0de328a4b92a225d9dd9c54e8e2cf20f1d245936d23701d2a51fec1acf"
      "sr"
    end
    language "ss" do
      sha256 "8cdb59f7cd74d4da8db033de479fd3a3020832d5d42c4bf7155d5be5b82a1b00"
      "ss"
    end
    language "st" do
      sha256 "65694b897ddd2363d047c38e7cad760fa65313180829ca3611d9c6eb688f8f51"
      "st"
    end
    language "sv" do
      sha256 "f6211fe5a3906aa4c873b17200147dbc2475b25e72ee2640aab51951db4e63fc"
      "sv"
    end
    language "sw-TZ" do
      sha256 "d8d9fd1f471b8fc4f3535194b01869978babd5b29d75f9914aefa67427f70d61"
      "sw-TZ"
    end
    language "ta" do
      sha256 "d5fe4b3c46f359831f33a6d345f88a4dbad8b3872f618ed30b1bdc7edf118179"
      "ta"
    end
    language "te" do
      sha256 "383e448bab6e7a62e6d5b4076c9637577c6a869ec6819bb6ad6f6051a6c7f3a9"
      "te"
    end
    language "tg" do
      sha256 "544a47c5990ae7ffa3ef57af345b1a855f9e5fa494f5d7987cbb1cad6c8cbd67"
      "tg"
    end
    language "th" do
      sha256 "cde9e3968b179118b3575b53d12ab06424d73b503174360af8552a1d757bae0a"
      "th"
    end
    language "tn" do
      sha256 "f9c0b4cccca8b7a16f5ba4a231514600c8df74a9788cf2afd497064c8f6bca9d"
      "tn"
    end
    language "tr" do
      sha256 "03741ece9dd55f435ea7f518281a42f15f6ccd78235acd4b25589960a9538768"
      "tr"
    end
    language "ts" do
      sha256 "b4e22540d96c8065702a944faa0af76c471674c26cfaeba1afe2032ba095e9f9"
      "ts"
    end
    language "tt" do
      sha256 "ccaaa8828982e515cc10a614a6e9b4474b1bf513a99a7a34e3500df3dcbb2f1e"
      "tt"
    end
    language "ug" do
      sha256 "ee0df32c41b529189fb26a4574af035a041ededa771c3020da74440024074b18"
      "ug"
    end
    language "uk" do
      sha256 "32dd79e155d531c3f70eab990dac5384ba634afa3d1ed984a02f643b511be5dd"
      "uk"
    end
    language "uz" do
      sha256 "79cc1a1bc3668b38b0fec98eb405ed53a517e6e80cecd91435c2fab77e3d3295"
      "uz"
    end
    language "ve" do
      sha256 "9ef362b6c058894ee60ae3d8328b534908704ff88c3ecf6ee97f49d1b0ce5e41"
      "ve"
    end
    language "vi" do
      sha256 "a447eca3edb5c48ded65b8378d54c70b30d37b7229ee4c5b0a45e89bd8fa32b5"
      "vi"
    end
    language "xh" do
      sha256 "4545a462de3880ea0717e8a36c20f19eabc12bc0a217c19d20b4a22b59112b16"
      "xh"
    end
    language "zh-CN" do
      sha256 "483012ee032fddb30cdea4b845aad7b9cc7f8977fe90144a54d36cc80a4a1f33"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "857a80ee9b082f91d745776982b42d1c418fee01e2a44a026530e982aa6ad716"
      "zh-TW"
    end
    language "zu" do
      sha256 "8255c43b4d4942497d67b06137fb18ee6cb95c6d65d3ddd6df0f34f78feab2c1"
      "zu"
    end
  else
    language "af" do
      sha256 "30b96b50bdcdd01dfdfa8687f5e90f12258b0c70b397866033c0b2baf1da7e67"
      "af"
    end
    language "am" do
      sha256 "7a44cd668191a43f4bad9fc62f5d344f8123e4a62c2759baa8b29f707f9147a4"
      "am"
    end
    language "ar" do
      sha256 "6100fea2f969117fbc3fe5e9f29a75145b6ee5154d044d328fe8951f4dac637c"
      "ar"
    end
    language "as" do
      sha256 "db6ac65a6deed95fcb6d9a7e7f77a0f27b4611acaeb9664e39efd1d57c62a0b0"
      "as"
    end
    language "be" do
      sha256 "6bb06f58800a8deb722bdb372dd698a0baa4dd04f6aaa7754c94c3527cc235d0"
      "be"
    end
    language "bg" do
      sha256 "8bdce62d0bbfe62ebcb1ea62ee1024d4be103efab61758862a35ccf3f88bd678"
      "bg"
    end
    language "bn-IN" do
      sha256 "e0882747cc1fce66bf59a16ba2eebfc958bbd1ee212777addc212f10224ee8b7"
      "bn-IN"
    end
    language "bn" do
      sha256 "d64343b90c5a4fe204fef0cdac61898610c7ed6c93b3d743549a9ae58beb8bef"
      "bn"
    end
    language "bo" do
      sha256 "61b1dac9049bda184cf9921e7456d8e54c527b1f8702405fccda167b1500b268"
      "bo"
    end
    language "br" do
      sha256 "c27c36408d8f7240f12b2274c12a635161f9947307205f3abb232e8af8b5c0f4"
      "br"
    end
    language "bs" do
      sha256 "aa74a0bc93d31960bfd3c3c97f6f68a3e49096cb0a03ed6e9d945309fcf31e30"
      "bs"
    end
    language "ca" do
      sha256 "7b238ec1bb01c28a79f1bc0884c4e8baa4b282b9c05d36eff25e6790985a6893"
      "ca"
    end
    language "cs" do
      sha256 "8680572cbc616f6f2aa102bd37e5b9a5af703197cac9e5c59e155cd0d40f7663"
      "cs"
    end
    language "cy" do
      sha256 "283312446e1c8945b2c5f39002bde8c210308302142e5131707cd52c17ac3f74"
      "cy"
    end
    language "da" do
      sha256 "7a3c6c86eef25f4f51e0ff942404c90ca09d376daaa3fe2b9baa60ea022d3b55"
      "da"
    end
    language "de" do
      sha256 "ca87025e62bb87f28831d9a3593102559a710be0b0195193d94baf96c097a1c9"
      "de"
    end
    language "dz" do
      sha256 "7ab45e042d2cbbd4de3081d3cf59afad96498cb060243c729672d425d4a15d2a"
      "dz"
    end
    language "el" do
      sha256 "f556867e07f1109a687eb572a445aaba9ffcc80f7fd4a3eef6dd05a62780fc6e"
      "el"
    end
    language "en-GB", default: true do
      sha256 "3629f41a633573110e30e5bdb6d001327099bd7cdc963d610cbc32fc9ee97a7b"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "b01c911c42db2184d6cce20ef7eba8f130a8c4dbf25ee7b5bacfe552fa092d61"
      "en-ZA"
    end
    language "eo" do
      sha256 "bf7fd23ae84c9c59b6d90fe5891084c836a4323149a0c85bdaab616fb8b4a484"
      "eo"
    end
    language "es" do
      sha256 "dcfae17de8ae82f2949c8bc20af357f7e3336cda80841ca8014a20c22842519e"
      "es"
    end
    language "et" do
      sha256 "a497a7422a0ee5c6977144d249f91462a26f28dbad40b220cb895bfd60c1f5ec"
      "et"
    end
    language "eu" do
      sha256 "35c0c905f8f0e1ee529fab355c90ad82d7f3199372e7538c98e20a2795cf20d5"
      "eu"
    end
    language "fa" do
      sha256 "529aee7395f3f6ebf06353d9397846a76e7fa019241e8b3810df9d81aed48ce5"
      "fa"
    end
    language "fi" do
      sha256 "09d421f97fa8ce4136d819245f6af998eef081e7cd0b8b146bf162fe03429522"
      "fi"
    end
    language "fr" do
      sha256 "a8fe2b8864aea881095edfd4dbebb4fe16391e55e53c8abdccb41447fdc9db8a"
      "fr"
    end
    language "fy" do
      sha256 "8e077bf4d2e1cbe67793b54791537252c3e78e327e19365b76af786cb30f5013"
      "fy"
    end
    language "ga" do
      sha256 "0d6f66f4d4f5138e5d3fb7a7539fe98c3b2355ebe2844d539ba4affbf431ba77"
      "ga"
    end
    language "gd" do
      sha256 "8d906b09b9e65b0bc53a918f513222904d07747723c361a956bd5f53c01c0a05"
      "gd"
    end
    language "gl" do
      sha256 "402c24ae35f1e6a5bea560ae9a34a041da506699327a00482a1786178ca6e57d"
      "gl"
    end
    language "gu" do
      sha256 "0e2225a2d0c95d3f84a88fb86561770840cda2962bed1fce626e5db6bc7626e6"
      "gu"
    end
    language "he" do
      sha256 "f2dfa0b45c0abd2e3bda287f7fdb3f7188d1843ca797586fdd69065b0acee6b9"
      "he"
    end
    language "hi" do
      sha256 "caad72c12a5a8ec916e6c4531fc446fa8fdf53c4b9b598c6b27c1830d0d7147e"
      "hi"
    end
    language "hr" do
      sha256 "a9672904986bc019ddc7fd5babe665df0e336d6f4a27692a4020e3e4ab687a3d"
      "hr"
    end
    language "hu" do
      sha256 "32eac30c92cfc70708067f27bab1ea690f891ec927faefd58a84bda1bb882dd3"
      "hu"
    end
    language "id" do
      sha256 "56bdf18fae82dcaa64b3c27e731ec771b6d07202535a549177c39f3ce09a4460"
      "id"
    end
    language "is" do
      sha256 "aff6564549d626483d337c299b607d8ec610cfeb890159e74f03c30e78d5dfdb"
      "is"
    end
    language "it" do
      sha256 "9a2daf7ef51da773b07a1111246327cc97b4cd1d0906741a3391f38b0cb299ff"
      "it"
    end
    language "ja" do
      sha256 "10461a236936de715f93a0cc20489a42d93c22302d6ce5a79d87556900bc23b9"
      "ja"
    end
    language "ka" do
      sha256 "8f4ce9ebc5678dda78441260baa1b08469430f34b154218db02702fbeb9e63f5"
      "ka"
    end
    language "kk" do
      sha256 "7bfa5b3fa4de5618eaec4b616f1796670a7ab4fa7c676b28dcc05269313edc95"
      "kk"
    end
    language "km" do
      sha256 "64c6ca232a41f150951caadb00103e04a5eb88370a2bb5b7ca5feec977c71d6c"
      "km"
    end
    language "kn" do
      sha256 "2a9ef51d34da5796784e6ba2067ea58116dbb2a3a49e476fc29cdf4aa7aaa39c"
      "kn"
    end
    language "ko" do
      sha256 "033aa5287a4892543bf08e0f9c2f281f43bb008a45fa441a49c375aeaf0790e1"
      "ko"
    end
    language "ks" do
      sha256 "2b497da8cf632aff2ab49010107be2a01b0dedcf237ababdcf3e5ff53c78e673"
      "ks"
    end
    language "lb" do
      sha256 "a8720d585b1bab4ed86d8d35e3f319d9f5616ebe7e2baedc14141eca523e199e"
      "lb"
    end
    language "lo" do
      sha256 "8e8d07b43e0c13093683a8bb92f96408974e6b44e124b2abf091a4b0c727874d"
      "lo"
    end
    language "lt" do
      sha256 "e97e6a11e97c038d25f57eb65e4ccdd9b9895b2c6f4500b52e651ad9c3414cb7"
      "lt"
    end
    language "lv" do
      sha256 "fbd0e62617ae12efe3c8054615db90f645185eb444fb6adf391713a20e60ac3c"
      "lv"
    end
    language "mk" do
      sha256 "6371cd5cec9690ed31eef7a8bdd552f5e98ab1534d285bfcbf0c848ab8a8fcff"
      "mk"
    end
    language "ml" do
      sha256 "0cf557500cf58ea8cee91d4e58f5a5f15ec83c2895181f55a96c57ca332c2be1"
      "ml"
    end
    language "mn" do
      sha256 "b94a1e3b564395976eeefce75c6d961d6ebf0e6d29eddc5d8eba6dff990de949"
      "mn"
    end
    language "mr" do
      sha256 "adddadd9a0e1a79972f4e24ae5dffe30f76e5e549335ca3c2f7dd7407820504f"
      "mr"
    end
    language "my" do
      sha256 "b380fb68127312d81af5256d58d350c143cd264a28c58417a7736251d1acd6f7"
      "my"
    end
    language "nb" do
      sha256 "e8a14915d776cae070b67677d0de504bbe9417812f00c9fb4f419448e99c80c6"
      "nb"
    end
    language "ne" do
      sha256 "ff1523f988a3c836c9601d2624ae4563f9b40ea548994d51791b053c8f90449b"
      "ne"
    end
    language "nl" do
      sha256 "b906badcced0d92d076b14a234a9d2f80380bc889250f61c6d5ac1bd739924a3"
      "nl"
    end
    language "nn" do
      sha256 "02cde3487f2c759dd71da2d1802f291fc5114cbb538f9bb38b023f8764213ae1"
      "nn"
    end
    language "nr" do
      sha256 "fad03faf5c009e1790a782d6e3071c1f115eeea021e7f452d0361d4057de413e"
      "nr"
    end
    language "oc" do
      sha256 "9117c809034939932801d1a6c24a355e182e7c61285fa4d9260d7b49cab09c55"
      "oc"
    end
    language "om" do
      sha256 "cab279ddf7fa201162d8da797c705d0aaa4fb02e5a1572e0992e7ed34db720ec"
      "om"
    end
    language "or" do
      sha256 "24eb3d98bab02db3158bcc65a3e09527d79f5c744ba74ea585c5f35c2197e8c8"
      "or"
    end
    language "pa-IN" do
      sha256 "9b51c7d7c1fc6cb8f82d7e2f3bc4de3f91b8e5ce755b2132c8055d756d94bc5b"
      "pa-IN"
    end
    language "pl" do
      sha256 "5982a932b56cab892815485cc3b2ea51bfcfbf58607daf06a125989d6a340553"
      "pl"
    end
    language "pt-BR" do
      sha256 "02eddd659bc021a5bb9a0419bf99487a148efdc88437ba0f4fb4aabd387697da"
      "pt-BR"
    end
    language "pt" do
      sha256 "185174880c4f8846b3ee6f197bc0115088d4d03f4e1f25db0677d815c44e78c0"
      "pt"
    end
    language "ro" do
      sha256 "13f6d274a464656f150b6c322d741c1344af33aeba22af8ec0d6dc06f59a314b"
      "ro"
    end
    language "ru" do
      sha256 "9947b732e4dd219e6ef9bc37968f49cabfacce153274fbad316a95bfe1a27909"
      "ru"
    end
    language "rw" do
      sha256 "8ff895ec4e4454084b8643ff332c077483d52cec38ffa07b74beac102911501f"
      "rw"
    end
    language "sa-IN" do
      sha256 "9320f36d64f5c0e679c346abbaefb3732bcbe6af6ee9155c0ee4e2f85b5f2b6c"
      "sa-IN"
    end
    language "sd" do
      sha256 "2635ec6311b92d247a987fbc4695d615dcd8efe7159ce00e634468b88e9f4942"
      "sd"
    end
    language "si" do
      sha256 "ae6db3da2d50c77014b65460461ae87b44b7f493132688291109f3034ea463dd"
      "si"
    end
    language "sk" do
      sha256 "d38696c946d62d13f83ee69ad259944e8197d9d692528baffaf23504a24614bc"
      "sk"
    end
    language "sl" do
      sha256 "205ebc4a8998772e20edd5bf4444fbdd02872ecb3ef6b4a64a6fba80a1f53ec1"
      "sl"
    end
    language "sq" do
      sha256 "9f7df1c600367e7be112b88204077b62b2cc6c599e3f9a1a3b943a7a036ec99e"
      "sq"
    end
    language "sr" do
      sha256 "ea6f1ff1d0400ed53b69974c954f9e2ad80755883bfdc0a577590ff109e1a99a"
      "sr"
    end
    language "ss" do
      sha256 "df763f5f24c838eb947f49ec8c4a9f5eca26e0f8cbcdff5e61662738568bf9f9"
      "ss"
    end
    language "st" do
      sha256 "dda244e2ef4bcb018fec742afba96e3bf303cb0a3e4e26ecfbfa4a079f63e4f7"
      "st"
    end
    language "sv" do
      sha256 "f9436e3fe9b9667120e3f4c6f724698a5bced1186b613f3df4995ab4b5e9aaa6"
      "sv"
    end
    language "sw-TZ" do
      sha256 "415d5dc16dd2691ccccb034ef90c8908266b48a93c5b420381b23b028136ff37"
      "sw-TZ"
    end
    language "ta" do
      sha256 "9e2a19a15bdeabf7737f090ea3a1ec3ffedda6493618c25b1b15795a2e99466b"
      "ta"
    end
    language "te" do
      sha256 "67bf5c4c307aa490404acb718d2adb11b24e433b9714646f32be1be89743bcb0"
      "te"
    end
    language "tg" do
      sha256 "112a419e7f1a43a35f5c30808fc442b6509098e1fd2b91c7264d23caf5b2da33"
      "tg"
    end
    language "th" do
      sha256 "3c443f628b4f788db1e97f9270ac50ed76fca0f14466804b2fa8bfd1350895f5"
      "th"
    end
    language "tn" do
      sha256 "1bc1f1f13ff6e87670d1c2b28baefc2dd4f04698110414a6fb2bf412e7ed2e83"
      "tn"
    end
    language "tr" do
      sha256 "9ad5f2d0244c5fe56915aa0bbcf7e2103d2679cc718a1110c9f7dc764345b445"
      "tr"
    end
    language "ts" do
      sha256 "c8657dbb0649e6e9b877d5d400c116d7dc5553a1d5fc569de6ce5ec5a33e95dd"
      "ts"
    end
    language "tt" do
      sha256 "0043ae6bd67f3c28b80d4735fcd39cbed86966ca65c9d986da6c03e3dd67bd3b"
      "tt"
    end
    language "ug" do
      sha256 "04235e604d1999668805904422b2a4948c1e747a3d9e1e60699a19b56a7d13fd"
      "ug"
    end
    language "uk" do
      sha256 "678658f8589aa02bee5112eaa279a22eba61ae336636cd3e5f6a269ad0bdb6bc"
      "uk"
    end
    language "uz" do
      sha256 "ad40b7769c5200988c5c219332967a755d7c83101100bd01c10cae1abe99d444"
      "uz"
    end
    language "ve" do
      sha256 "cc7d534923de834ffe883d44f565ea0ab18681a1107fbc04dbd231ce17b4e12f"
      "ve"
    end
    language "vi" do
      sha256 "825ab9405bfe1ad51b033e894d83426793ba08a30b904a7cdac0b7d4940cc7fc"
      "vi"
    end
    language "xh" do
      sha256 "71989ba3a096ca64524a998cb6b36ee9222b0a3c0ee3e8854c26f6736dc00a66"
      "xh"
    end
    language "zh-CN" do
      sha256 "61437333561e27292c49b373f8619a417c7f9446e8ba9dcd7e16311cba8c8e95"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "09cf83213957cf983979e712a95e22e0010b4e0ed4bede19bedece02cc02815c"
      "zh-TW"
    end
    language "zu" do
      sha256 "db000d316323d41ec7dda76dc053062ce4943e7f9e3f84003336a738e20dacfa"
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
