cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.6.6"

  on_arm do
    language "af" do
      sha256 "9daf002faee7406f660245ebfdebc39f3d02db02eabb17f658a109eeef4cb322"
      "af"
    end
    language "am" do
      sha256 "b9fb62f8586d33bd4b7cb7df9e7ce894654b675789a6ee4a75a1a91244366397"
      "am"
    end
    language "ar" do
      sha256 "69554804235308b888c753f99db017aa65fb25ab88087041fc37f8a4af4f08a1"
      "ar"
    end
    language "as" do
      sha256 "f1fac461a1fa1a7aeebb93a63eae03162b9fd64a3249f424aa5078ae49e759d4"
      "as"
    end
    language "be" do
      sha256 "5a02695f4c939a464ae1e6fc4b5a4d4e83b6091320ab3b54c9244fab926c7974"
      "be"
    end
    language "bg" do
      sha256 "53ed3009d95d72c766d7078e6597c1cc0634f763af62c2f87056f6736290bf2d"
      "bg"
    end
    language "bn-IN" do
      sha256 "33d1fc750fd8ac4dccf84559e5fa66d7828fb6a890e614207939693770ebc6f2"
      "bn-IN"
    end
    language "bn" do
      sha256 "66019682ba5cc06de826f4972226444960e2cef8b4e89aa91a28ca80493bd662"
      "bn"
    end
    language "bo" do
      sha256 "cd018a17d43a5ffb55fbc478569f034eaf0f43e30afff3d77eaf211a1fcba81b"
      "bo"
    end
    language "br" do
      sha256 "d40391f9d2048004b006d337bbb27b8bb102ffe71a59e9b534d94b06f6a8efff"
      "br"
    end
    language "bs" do
      sha256 "d78e62ea2aedebed32bc1b9d43692f68fce8ed95a8b54ab8972a0a7e938238c3"
      "bs"
    end
    language "ca" do
      sha256 "ed61afa18ef7fb474f8a3183f264d3736ccd644a1f39241ef365a9aeee33a102"
      "ca"
    end
    language "cs" do
      sha256 "c50311bc4b63baf8b86654234f52f0da0cece913ea63ce0b3d9237d7e9bc8a5b"
      "cs"
    end
    language "cy" do
      sha256 "f9614af1b535c37da7c65b798dbd3c57b82df6abdce5e7ba2976dd5d18807635"
      "cy"
    end
    language "da" do
      sha256 "b663c4c583e9dd5ab69aab75ed6eca220a36dbf3d3065a80d5ea474e0697caa6"
      "da"
    end
    language "de" do
      sha256 "89b8b0d756bf8987776cebb5a53d6364a67bc9d21846a0bdb53f80246f7256c4"
      "de"
    end
    language "dz" do
      sha256 "6bb144d5f164761603f8027776746ffda278c2ec5556801e66659ffbef7b5a13"
      "dz"
    end
    language "el" do
      sha256 "356e6a938fd0871b6c75b6420ab0161f60fe5c7a2533a1f7868a0d625e678587"
      "el"
    end
    language "en-GB", default: true do
      sha256 "3632ce0ab3e60ae5489a1437b93bc6c6362a56f8520644e300183ef302730c47"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "fce96d9ccfe40a3962647445686a3857fef5503a8a2ecc6c0552424a0d4b3680"
      "en-ZA"
    end
    language "eo" do
      sha256 "5a0db4e411a5fb756ea28548fd534ffb57edc14df7539df60329b0ef4c35b9a9"
      "eo"
    end
    language "es" do
      sha256 "88ff18e0e79a6add611b1e2d0ae95386790493b47d0f3b03d88f0f1e5d82b5c9"
      "es"
    end
    language "et" do
      sha256 "127d34c6d154ce07e10554e0d615b0ed061430406b98470ee604a4702f1056f2"
      "et"
    end
    language "eu" do
      sha256 "7b9ec751f247b24f38f8ed29088cd1681a7672bfd81bd889b7a4f4fdd923480f"
      "eu"
    end
    language "fa" do
      sha256 "d5be4b1ae452dd83fa14fc233c07b8ed1c2109ab417db73a124e7e8e80e5e9ab"
      "fa"
    end
    language "fi" do
      sha256 "77ed77767f31a61d72b76d76f3bfed58c5ed983da877e51ff791269c3a70bbde"
      "fi"
    end
    language "fr" do
      sha256 "ad446bc0e04c7c7ddb12f9883d3da87fbc13189a31509cce5c96651555946007"
      "fr"
    end
    language "fy" do
      sha256 "e71727cbd38a3ed6512cceac88f23dfbaf41e766f2af7ccdcdaa948cc90e1259"
      "fy"
    end
    language "ga" do
      sha256 "d498347796c48787b945af1e23a12733668d5c4f9d85f6ad112c65907d16422d"
      "ga"
    end
    language "gd" do
      sha256 "b0858a7d82f6c72f73b6e00043a868b6bd2187af21b718130b5660cd0b4a9e82"
      "gd"
    end
    language "gl" do
      sha256 "d584727d4e04829fcd05e69f2c33e296cf03056bc55f9aff179513020b067b9e"
      "gl"
    end
    language "gu" do
      sha256 "1c09d9c36c5f1f8e7c27326044cab811e9e106c727547b85c14d694b060e4583"
      "gu"
    end
    language "he" do
      sha256 "c6583ed9d129d9040e44ff69c22546a8707b4617468e4e09dd77fbedfb8d858c"
      "he"
    end
    language "hi" do
      sha256 "b5b793be43ea53e21d94d24c77106dad9e74738b9bf42207e616a16716897b61"
      "hi"
    end
    language "hr" do
      sha256 "ae007eed78520a7074ec5b94980e02ce6b7bfb2b85d2effbf702ec6917fc3fad"
      "hr"
    end
    language "hu" do
      sha256 "71139e0739f3f21144d7b35bf4367223d9709f168830ca7f02588056c3d93f52"
      "hu"
    end
    language "id" do
      sha256 "b55524093e9966b3df8d46bd0972d9414849747af3f528bb396c42cbf96e8748"
      "id"
    end
    language "is" do
      sha256 "c194649fe3d0ae0eb277237b1a3836e50f6a85763bade48bec622ed21f8486a1"
      "is"
    end
    language "it" do
      sha256 "675f48f8b777f3d0f8294c49bebfbe83bca12b52c828e7cbb473b105b73c50ca"
      "it"
    end
    language "ja" do
      sha256 "3628662fad036566edee72ac8268ab80fccb734d25ece3e492c42f05b8bc370f"
      "ja"
    end
    language "ka" do
      sha256 "9b3425b6b5ac4453d2e55ccc05dab441dff7900046d0b034753fc78c9c239de5"
      "ka"
    end
    language "kk" do
      sha256 "80fba55665584c78750fc82c98eecb9bc7cd6557df38b3c02a256cd72f6ffc2b"
      "kk"
    end
    language "km" do
      sha256 "868c8bf77eddfda7ac2ae097afa90633ce87523fdb8db7d18a317b89db0df373"
      "km"
    end
    language "kn" do
      sha256 "3ad6fcb7b1501e0dfcc56739130806b0f56874e8ec036478daf02f4e05badc68"
      "kn"
    end
    language "ko" do
      sha256 "874ff4765167f8a2ef448fe864c09459aea7aa570be4401e4a9448f08e230d63"
      "ko"
    end
    language "ks" do
      sha256 "91ac159ba5cd148b5b56d7d00dbe5a7c2661dbafe4621bab2df6f7d58ccbff44"
      "ks"
    end
    language "lb" do
      sha256 "94e8420c4fbb90d520d05fc54fa46b954abed092d20ee94fbe0cf1fee3322fb6"
      "lb"
    end
    language "lo" do
      sha256 "6cd7a4d1fc029454d78794dec93589759ce227d46eb2e0f8aa355ac505cb395e"
      "lo"
    end
    language "lt" do
      sha256 "1077365c3648e990dd9654373c10580fc12009ea946ff3c8bb7734faf527a563"
      "lt"
    end
    language "lv" do
      sha256 "1a0cb365a59318930b70dffc1e58e819ffeb2860d1e6eb53f92baa99bca21642"
      "lv"
    end
    language "mk" do
      sha256 "8c1cc61117431c8fb4250fc3092722c6c04a2562a1dac8c20f6579dbaceaad67"
      "mk"
    end
    language "ml" do
      sha256 "5a7f648a2eb90168cd3f193719e4c7d73094ac33e634f1a8da220abb0e467fa9"
      "ml"
    end
    language "mn" do
      sha256 "5a22b95da5617733027f422d332ae5ecdceb06cc3a787add8fadfbe493329897"
      "mn"
    end
    language "mr" do
      sha256 "5e70852e4bf8a40970261108ec4ed4e85cf161e5c6a5a4921e5bdc01698e6697"
      "mr"
    end
    language "my" do
      sha256 "178d8c4adaabdc36d573765f04f52074c3bfa255cbd5b74af1563190bbd0ab25"
      "my"
    end
    language "nb" do
      sha256 "99bee9db274a01495e9b12c32fd34da415937b80dc58d37b0726840be76ffa7f"
      "nb"
    end
    language "ne" do
      sha256 "7a676b95104b149f60366b3c50de755f393ee9786751aaea4e638315a32c742a"
      "ne"
    end
    language "nl" do
      sha256 "1050c8f0636bab3322b3c1d03e60a5a212b8a8aa4c3897e6927dd7d6b6dcbb07"
      "nl"
    end
    language "nn" do
      sha256 "d9c8ba9b4610f2ec013db7014598f16e34eb20cdf5ea06e6a4358da1ed19badb"
      "nn"
    end
    language "nr" do
      sha256 "66d1cf0cca93ba915c38bcf949392d745c3135018a36411807d403870aaf2e08"
      "nr"
    end
    language "oc" do
      sha256 "4dd6d9bbb6be4298456421ad3b0c18da735adf45f99f227c833df92a00a56530"
      "oc"
    end
    language "om" do
      sha256 "462fc553582896c4c3a6a96920f6a9694cea3fbdb4ff79beacbb0b6aed00c3c2"
      "om"
    end
    language "or" do
      sha256 "8f16f938a155b2056b25e028b9464174b50600d36ce9ab06ca4bd2103c62b0b8"
      "or"
    end
    language "pa-IN" do
      sha256 "9ea379db4d750f09cf0f0b533ab34427f18a79805a7896da10fd4d9d20031f77"
      "pa-IN"
    end
    language "pl" do
      sha256 "adfe2a38454d4ac9703d03ec6fcc5646a5e24e444f87dbbec445f3102e358be3"
      "pl"
    end
    language "pt-BR" do
      sha256 "6632f8742f79aa67b2254810294cae24fca0ef47c948c84c174595864abe1a34"
      "pt-BR"
    end
    language "pt" do
      sha256 "9d1afbf7196d927699afcc68a6dfcc5d99e51fc7ae76a8a88eb637ddc7a7daff"
      "pt"
    end
    language "ro" do
      sha256 "cb749791aae43a0ad12647f56be7953cafd5c1c88d05ca6f649e065d8dc8cbf4"
      "ro"
    end
    language "ru" do
      sha256 "413c16a860de03d5f7c4600d2e8f32d6c108529e82b70eee0324da701365c39c"
      "ru"
    end
    language "rw" do
      sha256 "7154528592176c0685b2da163128ee9861f34404efc249eda1d7ce6d11283d48"
      "rw"
    end
    language "sa-IN" do
      sha256 "de5127147d8ecfcd11ae705bce16ca93b3774f91de4d964be8ba5a2f98a0eab2"
      "sa-IN"
    end
    language "sd" do
      sha256 "40c7d9a05dcbda7ace3adba9fb1bf9aa409da64cc28f5a56aac58db351f817ff"
      "sd"
    end
    language "si" do
      sha256 "678c36a8ab6d103a98b172de4271f68374500086890a705c6d893b8bbaa6eacf"
      "si"
    end
    language "sk" do
      sha256 "eceb41442d1dc2a66b35f1603dc7583735e1aa65adfe400524ba9bd1db97edf3"
      "sk"
    end
    language "sl" do
      sha256 "c596fda73f336534e4c564d901740cb509f3b8cbc39bf9cbcdf9a66218d595ad"
      "sl"
    end
    language "sq" do
      sha256 "28b33dcda6bd2057f0cd680a29e89534131c9ce347c1e2c1905d309f757f77be"
      "sq"
    end
    language "sr" do
      sha256 "888d8b2ebad97d254f604ed8691d3b74d6467f4e2d2675efc5b3fe1f745028d5"
      "sr"
    end
    language "ss" do
      sha256 "a479ab9da91da40f7f0494f68f53a2fd6af81ffe6501a64834851d46df07d3dd"
      "ss"
    end
    language "st" do
      sha256 "5e1acc45debc7ad220b425fbab309fa48a0ded49d1822c574d8b569c8c54711d"
      "st"
    end
    language "sv" do
      sha256 "16a1b373d7095dcd387ee7370be4dff7f69c3d73a2d5a3d9e8a8b9826e216583"
      "sv"
    end
    language "sw-TZ" do
      sha256 "e5d01e1e08d59722aee657f2223eea873c63b1f114b5097e6550af006e38dc6a"
      "sw-TZ"
    end
    language "ta" do
      sha256 "5d41219966d4534a6f152646c83d20e308b080d0c082b6f984d63bf3e0988125"
      "ta"
    end
    language "te" do
      sha256 "f6181ed1f62238f7cf4b18f661521d1733ca9520a19265ea7c52c45c556f2667"
      "te"
    end
    language "tg" do
      sha256 "82035a9f745250b0abdf6830cccaeed22b272b7800c87994d331eec7602d90f8"
      "tg"
    end
    language "th" do
      sha256 "c043b5b7130817c58d4cf938aa1c0863f007a7e77f2597eb3ca5f55aa24b287b"
      "th"
    end
    language "tn" do
      sha256 "3d02f7b742453c8e4ec738fa4a3fe4b35e322cfd38e40d4a93d640c3c6a428f2"
      "tn"
    end
    language "tr" do
      sha256 "41b451f80f651f8e8cd17774261d835d2355177b9006ef619b5219bea341b628"
      "tr"
    end
    language "ts" do
      sha256 "dd4ffb9a0e901202ea1797a12540358ba143cf64796e6209ca7f7e54f3d4313e"
      "ts"
    end
    language "tt" do
      sha256 "42714019f4000b4fe6ef155b4f10cb431ad10f59bf3b50a3e623faed0648cb23"
      "tt"
    end
    language "ug" do
      sha256 "0619433e695215ad0addf389199ea59275535d7f336537b321e6c55e0f53c33e"
      "ug"
    end
    language "uk" do
      sha256 "668f0e84a8c42a2f1258ecddb07f9cc8095b7ad4d307339ebee5cfba90c13001"
      "uk"
    end
    language "uz" do
      sha256 "6faf7a16b390f27f5df04d2c4f62a36c4fee10325734ada65ead813dcb0eed9a"
      "uz"
    end
    language "ve" do
      sha256 "5b9c2ff370abaca2144dc03e85789ca045ce63aff1b182815e1936ec94c84d98"
      "ve"
    end
    language "vi" do
      sha256 "cd65aa1a92f2b901613c29cc8c7592d3155bcf2e67a896ca4380e7657566cfcd"
      "vi"
    end
    language "xh" do
      sha256 "4fb16d54f6f594a3f3465629627b184aa798a616fefea4b9475272e4dd85fc41"
      "xh"
    end
    language "zh-CN" do
      sha256 "8a4e0f037fc4d81508a1029ceba57400085c0a7e65fbaa8d90e8b327337646ee"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "1eeca7de77db4b66246f164b5aacb3f2e3b759f7ae9a60aa267e7d2f86830696"
      "zh-TW"
    end
    language "zu" do
      sha256 "9bbd01db31698c59c9bc9a0082c322c846548e5326fe5138583a3b6ad38861d7"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "663fae78ab1a9c85b419cd922698ba890ae0a2b9f3660cd51bde51c9f6453e67"
      "af"
    end
    language "am" do
      sha256 "5458057d548789ae6acb5f27fff3749ec37d95577e989dd1db0f58f05c48092c"
      "am"
    end
    language "ar" do
      sha256 "d5c4ff18433751e43863b58025899e8bde819ae969853f997c666c47bb9de0f3"
      "ar"
    end
    language "as" do
      sha256 "70ff7ab21aa58d5b6c6d6d03202a615b4c8fda548741d3a83fbf46de24128acd"
      "as"
    end
    language "be" do
      sha256 "47b673e8d439ece4889b2b39f55a4f9752215a5e0a09459edc81aeebd99e78b3"
      "be"
    end
    language "bg" do
      sha256 "dc25f698469394198eaaf747b7eb3ff0cd5f3434593959827fcf2ef95195f1ba"
      "bg"
    end
    language "bn-IN" do
      sha256 "08799214b7566f380b51396f2035ed3d5bb24c181d371103f4f1f8c6e80f4711"
      "bn-IN"
    end
    language "bn" do
      sha256 "a813e0f6160e0133b7a1c148e656939a020ac12efe496689520a96f4f58304f1"
      "bn"
    end
    language "bo" do
      sha256 "2e5f09fe1b37927fee92de1aa387af2e6095b78d34c7f18ebdfc3cccda29cdff"
      "bo"
    end
    language "br" do
      sha256 "e511f5399545f5d8e79417398e17d261f5f2dd1ce3e68922b759b914b3289526"
      "br"
    end
    language "bs" do
      sha256 "d3890db1f5eca8a97f8d3079b90dcadcc45e146ffe9cfd11cdf7eb7ed4098af9"
      "bs"
    end
    language "ca" do
      sha256 "3922877795b438a704a80306f486bc27e0e420bca613b12bc8ae9f02f1c16acd"
      "ca"
    end
    language "cs" do
      sha256 "2824a2ab14f5e1eb6d38acc36e84137b0a9b737b3fcc21c1511a9db9555ef4c3"
      "cs"
    end
    language "cy" do
      sha256 "ccf769b1895459464dfa94352c68332f0c160089a55554a7f414ce817dc0c869"
      "cy"
    end
    language "da" do
      sha256 "25a109986892777923ee7d0417a3ba845fa278453ae3d1adcf2d6bd4460be591"
      "da"
    end
    language "de" do
      sha256 "fadbba8a40b15e521008a99a140891084d88047799c712b429b1c9ccb7f02525"
      "de"
    end
    language "dz" do
      sha256 "d49a57d1ceedf92fa91260d0df7b28fd093cad1e7d44c684aa88776b73fa408b"
      "dz"
    end
    language "el" do
      sha256 "7562a464ca87a1a8742a83b281c33e8976e0b46079dbd5e837082b867be10795"
      "el"
    end
    language "en-GB", default: true do
      sha256 "c4ca84c60f2aa5db0eca6f214c2b98d3a584597bf57de2a5ac49071930f7fe9b"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "ec883c8fdcbe070e0eecd2b7fb176dd62dd5fe2008a063b5607bcd84e5bf8505"
      "en-ZA"
    end
    language "eo" do
      sha256 "162e433e0367d93fc352a04efda443a1d8bde00a6aac293f1f88daf78cfa1026"
      "eo"
    end
    language "es" do
      sha256 "013695d257631239ee4d28d74b6ce6eebb68c9012cd2996a325601e2f96f0fc2"
      "es"
    end
    language "et" do
      sha256 "aa9fe74d56831e44850d8f37bb049830913ae5fe08c685839e5ee45c000d014e"
      "et"
    end
    language "eu" do
      sha256 "cf38710d7fb6bc42b6f32dcef7fe493d4437fb74722eccc93752add949fb4a5e"
      "eu"
    end
    language "fa" do
      sha256 "55b0beb550c5e3d74d83a0b123e371ded8ef2bf2ee616a92317b4b2edf2ef97e"
      "fa"
    end
    language "fi" do
      sha256 "7585c79d21682b7381ec01512d20cdc510d73d1d774958e9237018b0948b1e9a"
      "fi"
    end
    language "fr" do
      sha256 "a487ef3a85db2745e46c59fe33c8710612236814b999bbf701e53f899d0f31ea"
      "fr"
    end
    language "fy" do
      sha256 "bb8e8c07a80a414c07aa640da8896cf69b888131c5e81cde2571f130353ef530"
      "fy"
    end
    language "ga" do
      sha256 "3b8911c6a652991845f18ef482916b2eec0240148cf06b41d675a3dccccfff68"
      "ga"
    end
    language "gd" do
      sha256 "c569088caa2a43fe30b5738c194bdaf2f6916e2e40b87986c06e49671d674841"
      "gd"
    end
    language "gl" do
      sha256 "a60b002749844207decba46af4ced45fb0d055cde313abe11aaa2d30f5f50f7d"
      "gl"
    end
    language "gu" do
      sha256 "bcf5a688311eee792f91dee3fd4fd4cfb302213911dad4301a2b3d8f73f324f9"
      "gu"
    end
    language "he" do
      sha256 "f256abaf20b8792e058f45fcfadbd2417bf046a2c39185ea033be455318b15e0"
      "he"
    end
    language "hi" do
      sha256 "3acdff19b411c1fb3cf3015438c10a945f55401279ea367f049407d99fa396d8"
      "hi"
    end
    language "hr" do
      sha256 "afe20c858302b26e4698c735a0523e4a104795b6d613cc32256d6b52db6b9b2e"
      "hr"
    end
    language "hu" do
      sha256 "1d104e03d858a3ba292645ac57ff2c5d3af840fcbf61d38c9685a93f666c5040"
      "hu"
    end
    language "id" do
      sha256 "9a9e1a2d5bf81a99c6eaa7cdc0bfb7cfd7312454c5bd9c674cbc8962428f9e13"
      "id"
    end
    language "is" do
      sha256 "04bd302b91dc970e5d6d0e1c6b6874a57e40e9d68059590cfbc25f570a6c0c3c"
      "is"
    end
    language "it" do
      sha256 "7c53eebdb82e791a1ebb004319f61c56c9b7e4980f2c69d20a3632f7b1ccc7b4"
      "it"
    end
    language "ja" do
      sha256 "dafe2a470dfb35f5bad0df5dd5ef2e36b6e91b95bf8625869fc6efcb0ba05cde"
      "ja"
    end
    language "ka" do
      sha256 "401c0500fad5241f8b4b268f219bb497d3ace2aadabf49f35841d637965fc293"
      "ka"
    end
    language "kk" do
      sha256 "09b773c98afb0b1abb76fb9b79dc2743091109885a728de8bfae3ee262c0b10b"
      "kk"
    end
    language "km" do
      sha256 "0b60a170a76c4d376fadbea37f2bd04c5df660aba45dc879dc9ac55d07ac59b3"
      "km"
    end
    language "kn" do
      sha256 "3d840ca800321d75d396bebd0f2f9e5861a755024d9ab68320af929bd16903fa"
      "kn"
    end
    language "ko" do
      sha256 "2fd4e15d75d92b568f94b712108bba9f893f7edd5160c8ec78c55e6055b7580b"
      "ko"
    end
    language "ks" do
      sha256 "f2b25d67b6a84cb2a486e66aab0ddf17e5052bd88d518d14b292885026ef29bd"
      "ks"
    end
    language "lb" do
      sha256 "0a934b48f6fc63c05f83141df6442002ff30f7766b1417e6703b760f35e4d0ca"
      "lb"
    end
    language "lo" do
      sha256 "0ba0550be79897dd9da3f2adedf3b4adb263959f0b2b96403782ade5ff620ba5"
      "lo"
    end
    language "lt" do
      sha256 "1dd4ceb0f1bf601ef594de3be39c6b5b4c25bb32d1b26ebb5edb57a7f8546952"
      "lt"
    end
    language "lv" do
      sha256 "7b33dcc56590ef07da21c087fe5dd6b3db20566a6b9a12fdc02e3440c557d693"
      "lv"
    end
    language "mk" do
      sha256 "593d8bc0e693e82e75c5c3d2fd9ab35b2b1b700187e23da88aae9f56950e5d7d"
      "mk"
    end
    language "ml" do
      sha256 "8dd3048ac4168957ecf0e4caf9b7ea38fd4ab0ef3aa6ef958321562451f4c0a0"
      "ml"
    end
    language "mn" do
      sha256 "4db8c705c1b7bd6be9e126768f970eee1392150f4137c8341d1171f645aec5f4"
      "mn"
    end
    language "mr" do
      sha256 "7acefc7b741ce00f597e9bbd77e826db6a8b3a2c6269bcfb0bd10f38709732ad"
      "mr"
    end
    language "my" do
      sha256 "e0a38a34944a5b5c69a319a8002bab0fc7705f22cecc902c5cd1b700765b2d1e"
      "my"
    end
    language "nb" do
      sha256 "740b1ed7adb06e97aab440c8d2305eef2f038c1ebb1386d6c82d3f018e66ea6b"
      "nb"
    end
    language "ne" do
      sha256 "2b3d05a9ccd81948c8dd225ec84e8679dd6dab45e6923902e42af1a596e262b9"
      "ne"
    end
    language "nl" do
      sha256 "0b3098b1cee8b2d2f2cab9cd60194f40afbff697a8243fd86e58011db39eda2c"
      "nl"
    end
    language "nn" do
      sha256 "716b2ba088decef203d42271c2d564c2f2ecf8cdade4e40e9675900442e2f187"
      "nn"
    end
    language "nr" do
      sha256 "b1353e1bcf3c55d6c3bf371219f0331179e16b3f0caf9b01cfd15e5722826770"
      "nr"
    end
    language "oc" do
      sha256 "13a9944486d747449a856e29ce6a4e1b04f8fac3797d7179e1cd5daa307156fe"
      "oc"
    end
    language "om" do
      sha256 "c2ca648d23c3688df8fc36d4f0716129e3856e607078ad1283454154767622af"
      "om"
    end
    language "or" do
      sha256 "ee299a5fdc050e6edc769f62ba8a31f7a7fef7978bc0efc5fd660219a5f5ced3"
      "or"
    end
    language "pa-IN" do
      sha256 "520f3d0bb2a60d9d8f59a350aa86cc6aa3d5aa5eda860bb1f679e486e6be5e23"
      "pa-IN"
    end
    language "pl" do
      sha256 "07f6088acf6f6f00c61c5c6920c54aff6770e1c54e8efede11bd72d9491613d9"
      "pl"
    end
    language "pt-BR" do
      sha256 "0be9c662f648790a89033443a7b1d0caf375fe5794edcd7d41e987d9f4afdfe9"
      "pt-BR"
    end
    language "pt" do
      sha256 "3dfc4790e2036d46aa51161b833229d32d3e5357183036dfa67ed566a18abda6"
      "pt"
    end
    language "ro" do
      sha256 "30f2651664b672c050920e6f094c8e518a403fe271eacd6f56e290f128db139b"
      "ro"
    end
    language "ru" do
      sha256 "a698d4b94679f07e815306678340cb40504187026639f1935f5118982e159027"
      "ru"
    end
    language "rw" do
      sha256 "bc5a3ef6a6ceccad806e30abbfb29c70acfacb0d2411f6fa860e44fa84b30b16"
      "rw"
    end
    language "sa-IN" do
      sha256 "47f12bf526b4c7d5f908d3a5f7d5272841e5bc7f91e3beff1bc32be610b244c1"
      "sa-IN"
    end
    language "sd" do
      sha256 "773d6a4237efdafb22e659505c7eb4ceecee4d4a38c19295c8f5de39b521ca3f"
      "sd"
    end
    language "si" do
      sha256 "2ba0329af6cf3cd072010b282d5eb7f76ccadf633088ec2952ec0a8056d633a6"
      "si"
    end
    language "sk" do
      sha256 "7caaf185a1bf4adcf1a2a028807d6b0a1ef9060f895e04df3a05f4e7949df1e7"
      "sk"
    end
    language "sl" do
      sha256 "4db4bf7541fa178725b2f761298541af988dfc1448686d6028c946f85a7bd5f8"
      "sl"
    end
    language "sq" do
      sha256 "019b32b9d6b153a7f16df831c8ee5c9f94f38c924c94dc20022c4bcd4f7f7df0"
      "sq"
    end
    language "sr" do
      sha256 "01c79adfa930049f9686d9ee230ad4c0e5582f66294947f402ad697eea18892b"
      "sr"
    end
    language "ss" do
      sha256 "5935555ea1de283b353625664c12342f9f38d5bec7f22c6d2e87799172cc16a6"
      "ss"
    end
    language "st" do
      sha256 "509c610ca30d34a6632860f077c15091816c5b44f0a40a180b613a49f76647fd"
      "st"
    end
    language "sv" do
      sha256 "68487893c5c0af0ac5efb26838d1feb842c24af58981d23c868f1a2752862a04"
      "sv"
    end
    language "sw-TZ" do
      sha256 "3111ab88fa67cef897d36c75b13100b39702b980ee7091616879d3f342e3bff3"
      "sw-TZ"
    end
    language "ta" do
      sha256 "588cc618b92555fc41c599d76710f07c29290117f7386cf3120681b720b76fb8"
      "ta"
    end
    language "te" do
      sha256 "58b8f967a4cd8f3e738222d8eb36e33e9e4a79be807e5d0ea8f472a4bb08bc5e"
      "te"
    end
    language "tg" do
      sha256 "55bda6090021268b2c2c6bac5771c988452dd75e974fc3827d383d1798b94326"
      "tg"
    end
    language "th" do
      sha256 "a73a0f3215a7683d9789daadb70304c67dab1cf2f08ad56a65cd68167d1b9fa3"
      "th"
    end
    language "tn" do
      sha256 "384c682a46fa5901a025207ca5618cb244e0cc2fa1bdf8c295adea98fe8d7ed7"
      "tn"
    end
    language "tr" do
      sha256 "90972e564430b7567bab5450c2f84bc422da85fd243c91762963b787110c9088"
      "tr"
    end
    language "ts" do
      sha256 "808f84bf9f0a3a6f43abdba2124f672af7e64223ed14987a0a731dc38aa448bc"
      "ts"
    end
    language "tt" do
      sha256 "9ec7a334cf49828dcbaf79efd239e140f303b88dcb5f78a3f92f89672196a9a0"
      "tt"
    end
    language "ug" do
      sha256 "6f80d40708c515669ee59c696f005e5d5ceb456f58c4f8d89b681e32a7359f6e"
      "ug"
    end
    language "uk" do
      sha256 "9a56ba222f5097fe46df5a03b4f23450826d631eee09011cbbde0300abb68182"
      "uk"
    end
    language "uz" do
      sha256 "86c59221601877bfac8e31e4d3c2d3de7971948b2b1de30ec1a19d8b76f86e29"
      "uz"
    end
    language "ve" do
      sha256 "8ae5896d41a7bacc3ac0b992af5195508312b7fe57f677c7f3fe067180c4044b"
      "ve"
    end
    language "vi" do
      sha256 "1d114d5c5d1a986d942d1632134ca84fb582624e4d393b96e1e0dc14a641eea4"
      "vi"
    end
    language "xh" do
      sha256 "3603fb0e7a765e85fbe7d98ca0ca849af8530347c423870a4da850ea3ee694d3"
      "xh"
    end
    language "zh-CN" do
      sha256 "d26bf8f98ddee4ff98302017c062a4f97d7edc9486de44c987e9f807e13d2db2"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "43af88cfc9c0d0d2e5b9d620ec7397b5ad20441b11de0acc75be5df89c98e0bc"
      "zh-TW"
    end
    language "zu" do
      sha256 "7164d5b143bde5b17e2dc8b4fc4018d753a7dd215ce4a2d83958e35cd623a1e7"
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
