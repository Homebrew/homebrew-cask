cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.2.1"

  on_arm do
    language "af" do
      sha256 "ae57e60aa76f3c7e33be489f9ef8caf99ac7d09ce18d48ca49b229b39b674494"
      "af"
    end
    language "am" do
      sha256 "43c3f1599b907d3133cbf88aa9ea0db1d81adbdcb844c2cd1bd0abd924e84658"
      "am"
    end
    language "ar" do
      sha256 "3f722385c376bd09fc72a93396390ada46507f739a0a88250c957ccdc72221aa"
      "ar"
    end
    language "as" do
      sha256 "e85c9582f9cda81ec974f858949f8df1584f93f8ad5997b4c735c8dbdf6364cd"
      "as"
    end
    language "be" do
      sha256 "a3c2894a48c9a81edfd1b346b77239cd33bdd573349377d73ee7a8d350a17d7b"
      "be"
    end
    language "bg" do
      sha256 "d2cf59f722b1e6de9e3b004b405f72987b2066f5208d9d9084ef53250b89f8c0"
      "bg"
    end
    language "bn-IN" do
      sha256 "89acd25455bf0bed1470bbb81ae305b4754af5b99970af56b8c466f36b088335"
      "bn-IN"
    end
    language "bn" do
      sha256 "09bba66948eb0f3d74ba4af3ab4d563d40ad90ed1faafcca15dd5a11bd0cb1f2"
      "bn"
    end
    language "bo" do
      sha256 "4ce904872a9a8b096a1ee6c7a6983fedeadb39ea9ce210cc69fd75f8b3d564f2"
      "bo"
    end
    language "br" do
      sha256 "2e00e50214e57f9c9f629521fa0c903f09842ca7792aed5a4c79423b90b0f29e"
      "br"
    end
    language "bs" do
      sha256 "7410b15d78a6dced7166bab01d8cf42e39f62355a898d13fd8a40fadca755f16"
      "bs"
    end
    language "ca" do
      sha256 "01a54b52279db14580323e119462602076698b259194d898805da88de93a2750"
      "ca"
    end
    language "cs" do
      sha256 "477535068a474f550391451435d296ea78621bd794e945b71a83b65bf2ad9433"
      "cs"
    end
    language "cy" do
      sha256 "188c2e6b1b81c7e5e11b514b5d9f8288a83e58ad88a4bde27f3c53dc60056fef"
      "cy"
    end
    language "da" do
      sha256 "b1b0da483a44b6be99a75e34a722446030a11b966f3042511785a50365e4e24f"
      "da"
    end
    language "de" do
      sha256 "34ef528d6bc2b65719b38200c5eb168d68b5b1201115340cb9ce86bcda8f22c3"
      "de"
    end
    language "dz" do
      sha256 "43ce00cdbc4139e7cb8db8b14e22ece74e47f93450ae074f067c2dcf2e1cacaf"
      "dz"
    end
    language "el" do
      sha256 "8cd0513c972d173e07938d93db75e190c8f1387a8e702d584a356976c13bd76c"
      "el"
    end
    language "en-GB", default: true do
      sha256 "765cd434fa24441e64f90285d609636beb13db1cd489a37220b62ee13809b16c"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "3d4533c7b74b02a2fb5594ea451420cdb141477c504921d3fb0b6021554f7668"
      "en-ZA"
    end
    language "eo" do
      sha256 "0d007fc6bb6807dd756c8c2de4457a5799dea1e5c5e6a3c626d9bb35f4203155"
      "eo"
    end
    language "es" do
      sha256 "fdcd063002fca066b97199e21a0fc1e0390fa03d0aebf3df1b0dcae629c632c1"
      "es"
    end
    language "et" do
      sha256 "828b849da8013cbfb7b6b8b5d7edb81287c3c3ce96fd0175a541e34ba7b8a330"
      "et"
    end
    language "eu" do
      sha256 "7f86f9cabd92e285565848a59f7fa29402df6e80db99d5110049374b27d07c3a"
      "eu"
    end
    language "fa" do
      sha256 "f4c495b4fa9233e42de85805add37f6f66c7955f86cbc0de453e8ceb8616cfab"
      "fa"
    end
    language "fi" do
      sha256 "cd7c0e4525482e47df57826e0d3ac2b63a7ba028bbd17e51b2a2ca40013ee8cd"
      "fi"
    end
    language "fr" do
      sha256 "64d5fad2660226b553954d933a248adfe68181144a5288505d78cfa59db6a2a3"
      "fr"
    end
    language "fy" do
      sha256 "149d1e8a1a25350d8608958354fec4cecb18d258fb94c2762830d710b8999fdb"
      "fy"
    end
    language "ga" do
      sha256 "8ab448cf297bda8a1a375bf1e7392f80275d37d2717665586be381972da73748"
      "ga"
    end
    language "gd" do
      sha256 "18928c46fd2af5561d723cae3f07f462201176d6c4c2cab2b80915813459c06e"
      "gd"
    end
    language "gl" do
      sha256 "115fe6c71b62eedaa0eae962c06e41e7c9004f2b2e88a5d60a07d7b983fcdd4d"
      "gl"
    end
    language "gu" do
      sha256 "6fec62c4381edc97ca24f30f55cbc8839383bb78fb9fda18b875ce0e5327104b"
      "gu"
    end
    language "he" do
      sha256 "43b343f111d2b494522389acf95e7b18bd1ecc401f61bc5ca030a984779d4fce"
      "he"
    end
    language "hi" do
      sha256 "bc2f364877557e6d5553eabd7203e9aff2ba84be2b125b3764763e8642ef2f1a"
      "hi"
    end
    language "hr" do
      sha256 "898e2787bb9260bab824caa45db3b2009fffc22c01ee6ea39ccc898a3ece2d45"
      "hr"
    end
    language "hu" do
      sha256 "bcf9b190a018e0dc590523d3732da1f196ac7dcfa2465c4de662a1202d0b183c"
      "hu"
    end
    language "id" do
      sha256 "c706253d7295533932f53622e402b6e493022f80122331978b64315303caeba6"
      "id"
    end
    language "is" do
      sha256 "917ae2a5fd6ff2ce8ec56b87d1009cc6ace16d51b8bb50b80532b5bb0759ce54"
      "is"
    end
    language "it" do
      sha256 "0976654472ea42657b65f8c4ca56996275dd40204515d0c8f2fd842bf8ce3950"
      "it"
    end
    language "ja" do
      sha256 "af70ce7380429ffb83325189ba7743b361f597567548d35cfa8b63630d5c7cba"
      "ja"
    end
    language "ka" do
      sha256 "7dfff2567ff23cee9e62b95b78069dccf64049f362d36ec8169ef486832b36e6"
      "ka"
    end
    language "kk" do
      sha256 "d18f68d023b1758b33672bb5a393386f06453485eca2203b792ecea2a95c7e49"
      "kk"
    end
    language "km" do
      sha256 "21bd862cf2511b469b9d373196136ab385a5cec844a4d89645707bace2369a85"
      "km"
    end
    language "kn" do
      sha256 "62bbc00542e4bf7b769b14de4b2dd8bad8283a4523778ffad498a52324ae526a"
      "kn"
    end
    language "ko" do
      sha256 "320753e92625f10010aa328fdff913d39a1422cc8bfeb4f7ba08fbe2c0bc515e"
      "ko"
    end
    language "ks" do
      sha256 "f2aa4eb196e16c3cb78af4dadea5b89fba6eb1d6edee602437829482e3d815f0"
      "ks"
    end
    language "lb" do
      sha256 "7cccabaccd3882d22a0334f232d79984870a27152e523c913850873db9f8960d"
      "lb"
    end
    language "lo" do
      sha256 "1a82fc96c277a08eab8dc35370ff8d7071798e6f518651137a5c9a20e768cf8d"
      "lo"
    end
    language "lt" do
      sha256 "44cf03658b3e835ca2b94aa97460d477915a6b0e0c3f73d2d7fb6d43ac88f4ff"
      "lt"
    end
    language "lv" do
      sha256 "a9377ffdc64f04fc346293c1bbeffd513363b98cb5d8f720887af3fbf0847c6e"
      "lv"
    end
    language "mk" do
      sha256 "16d62ca2f2426685d150e09db65268bc1f5f48a1c7b567e91949bbb4beeb4626"
      "mk"
    end
    language "ml" do
      sha256 "e5523b28c1d0632c4a3bc463e353295ee1e8fabfeadce7e5ae730d5679b2781b"
      "ml"
    end
    language "mn" do
      sha256 "d6ec4344e2fc6e6dfaed09a16444f8eb10c4cf3bd6f01dbe7ec8c2e1f03c6a98"
      "mn"
    end
    language "mr" do
      sha256 "840dfa841c98642347368d0980649586f17389d52adfab0f2c74c76c6da92a7d"
      "mr"
    end
    language "my" do
      sha256 "0d7232e5169e826c73e78ee3e58950545b4f4774527f03e0727e6faa50ad1800"
      "my"
    end
    language "nb" do
      sha256 "bf2f2d9bb9e5eedcec845fc25838ab324f900720ee3e3c0c9fdac2456f30ad0a"
      "nb"
    end
    language "ne" do
      sha256 "0ebf65d841a841f2cf08c6e577cfe817335d4904b9e4416f57e8e2a55c024f1e"
      "ne"
    end
    language "nl" do
      sha256 "5d74c069d1184707fe830c9f7be602b95cdafce0e392d041140b2fee3d117325"
      "nl"
    end
    language "nn" do
      sha256 "4193c5802ed72ef0dc9d91a5750609aa5b69ce18245699963924c5202562fd43"
      "nn"
    end
    language "nr" do
      sha256 "b2bd5021bcbbea707980b91c6baa16cc8723aa2998490198d5522244d872955c"
      "nr"
    end
    language "oc" do
      sha256 "99913cf76090102393d09bc35f15c2c5c9bf61726ef72772f7be09d10bdf1661"
      "oc"
    end
    language "om" do
      sha256 "3c145ccefb268b0ae7aa7cef80a8fe974f85e44393bfd5ffa9fef2da0cde7cf8"
      "om"
    end
    language "or" do
      sha256 "844d8b60dd5e4dbdffb35ce853fcef627da58828255c2ec2e87212c1be8ce67b"
      "or"
    end
    language "pa-IN" do
      sha256 "7b0ad07a5cd320d70b22f67cb1dfac3c5ad44b8f9dc915bf5f6e922eafd4f30d"
      "pa-IN"
    end
    language "pl" do
      sha256 "17e2d0575d4faef19b91b68b8370307fe8749a9f5f905e46e5af958d6d3093ba"
      "pl"
    end
    language "pt-BR" do
      sha256 "e9e4c8234755c57ae6c290c307d19c47724935f74a04457845c52187b14930b2"
      "pt-BR"
    end
    language "pt" do
      sha256 "c7f2dd7c180cce10ace7f67505035f52849abb703b8131d258fc1e7eb31483ca"
      "pt"
    end
    language "ro" do
      sha256 "6ff939af1dbd38a5176e84fc8a59389346759a29c7d84cb5637826b87c84bda3"
      "ro"
    end
    language "ru" do
      sha256 "aa3f2422123bec14ada6f0a62bf71695ca5cd343e16438a3e88dbf4b51efe919"
      "ru"
    end
    language "rw" do
      sha256 "a30c6de15f45d3ae019b12fdf3e96f12b582714c8bf09b86259a102dadc9e644"
      "rw"
    end
    language "sa-IN" do
      sha256 "c20622e351f9d4640d3cf1655308f178ec3121581615bd92855eb3e355041d8f"
      "sa-IN"
    end
    language "sd" do
      sha256 "fb5c4e24dc9d0c07dc7817c7861a1a0bb0eb2cd00d82853061ba95500bf84bab"
      "sd"
    end
    language "si" do
      sha256 "68464ba243814330044aaae33ca3b825c9131141697dcc6823321263156dabea"
      "si"
    end
    language "sk" do
      sha256 "d84693fd26ef39561ad8fb5bce48025f61236feda7fdfb74c10df25967f11e4b"
      "sk"
    end
    language "sl" do
      sha256 "20a84af78dbe465dde974cbe2e10a7319dc6a2dd59c4cd36ae148b21a423d963"
      "sl"
    end
    language "sq" do
      sha256 "61b5fc231a2365f8283053ccce4763745c7a6b8b9abce170d1885b413a38b991"
      "sq"
    end
    language "sr" do
      sha256 "4f8e6aa131e1bc3e809a4e8984619fb01248fed8f98f0aa338df106207a54a8b"
      "sr"
    end
    language "ss" do
      sha256 "9dc041a9f64b72a7cbf0bb064491c639b73e3e06a9d5a4dbb4449843fdad7f81"
      "ss"
    end
    language "st" do
      sha256 "cbe42bf8289dbda4f1dc0609df7725dcccd7095d8da489fc70e7196a74530757"
      "st"
    end
    language "sv" do
      sha256 "e0bb1c19d6ac8c42d701f45968c7831ba4caccf6bf2964bdce2ef9b9eba00881"
      "sv"
    end
    language "sw-TZ" do
      sha256 "4af115ed8d8ed74285c0ef20d281c727fae7462cff2c41d727416a3ac5a34a6e"
      "sw-TZ"
    end
    language "ta" do
      sha256 "ba0e3154c28f831d52f0e8f70a163b5f0ccf3b79b25343b00496bd1e4ee48a4a"
      "ta"
    end
    language "te" do
      sha256 "e637f2864be6c5464a5e3c5230d9f18582cbdaba0aa5b81146d3bc2cb7912a8e"
      "te"
    end
    language "tg" do
      sha256 "3936cec7ce329f8f651144aafcab718f631df433a28787fd54ef2b8515930e57"
      "tg"
    end
    language "th" do
      sha256 "889651d6dca6f29e03b00d86fa20eedc8fe507474ea543f5d95063f7c7ef90d4"
      "th"
    end
    language "tn" do
      sha256 "88f192c35ecd3b43e1db0b6e84dd6efb14cd93ff5e99a54bbcd458b6da3e48a1"
      "tn"
    end
    language "tr" do
      sha256 "bdeda32998e636494f91ee2e7e2dcd891ac03b40fbcd61082918bbef5f72b477"
      "tr"
    end
    language "ts" do
      sha256 "5305231a0f80a577586e3d98647e1d7d920578154d457a4c44c4ce7058353e98"
      "ts"
    end
    language "tt" do
      sha256 "ced6dc44af63e1f62fb8c6c5221caf1cc900c422117598e2de5d15e98b02eef5"
      "tt"
    end
    language "ug" do
      sha256 "3eda7ee375c428d7c1ec8d54e4caeb35437481fbb4858178b36e2867e07d5619"
      "ug"
    end
    language "uk" do
      sha256 "19cbbc330a8df40ea91c0bcc375e6ecc032558ab2a65be5417b66e8310f38adc"
      "uk"
    end
    language "uz" do
      sha256 "279493edf6d8f4778dc505028d11fe9b0fb8d531981bebcf1376c61b699d9c7b"
      "uz"
    end
    language "ve" do
      sha256 "2f662971bba2693b4614e9fc64be5c329b3bad7569dde63696e0f756910130de"
      "ve"
    end
    language "vi" do
      sha256 "71410215e7d281a8405f0b2887713cce3716a14d2526b9d7ffe6b58f14531f07"
      "vi"
    end
    language "xh" do
      sha256 "1b7cc61520e882b7fb657a2c31f6fe9f04294562e7151b3d3672743e8847c970"
      "xh"
    end
    language "zh-CN" do
      sha256 "367f9851d44ac34042c9bcbf77b6a6875fb81d6b6f2696e6f764ad85b622d4ed"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "1e13db72eb9208638fecefa57e1736bfa365c127ce8c5e811c7fdaa2fbae1862"
      "zh-TW"
    end
    language "zu" do
      sha256 "3f6e40e7fb42bd2ae14e5a086452f65467a077bb7b1448554fc564d83fb1e016"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "be1cb9a1355ac51abf6c90d12cb08ef3098449e56595da182fd47a9a9244c597"
      "af"
    end
    language "am" do
      sha256 "1bb25d1ed10f3a70e10b7b9f045a959a085dc8cb2d50b1d5ad732312405672a2"
      "am"
    end
    language "ar" do
      sha256 "87d753a44a5c0fd3e16734dc23511a70b5555898d5e8c80f341adba419dec398"
      "ar"
    end
    language "as" do
      sha256 "586dad29d2ad315ade870faa3911987d36e85ad9007029dd4a014226652a6359"
      "as"
    end
    language "be" do
      sha256 "76ed9cf7f0b913257e97401d0ae95d752cb8a9e14d77a8441d6450018122afb5"
      "be"
    end
    language "bg" do
      sha256 "66fe1de1231f6881ae672c608b471deac0bb88ffad642effdb72b108d4391750"
      "bg"
    end
    language "bn-IN" do
      sha256 "eb422b0c625a5e5ea179129fd51d3782baea1d430e29c1d109ba7cc7cdc37bd3"
      "bn-IN"
    end
    language "bn" do
      sha256 "d7a0f12a751701c18775cc4130792a1df5aebfc137c3d924f1ed980de8980b71"
      "bn"
    end
    language "bo" do
      sha256 "ec183221e3d85708e136905706ab37d8c9b50bfbcfd9ad9ec61a1cf49d9f5d94"
      "bo"
    end
    language "br" do
      sha256 "7d8b6f220e03dff90622ab892ec5152e558d896eda1a0e914652aa1cffa50266"
      "br"
    end
    language "bs" do
      sha256 "a3989b0ba27925f96820f0b5fc1e4ea3a316fbc2d9cbf859b05196577190877c"
      "bs"
    end
    language "ca" do
      sha256 "4e7f9480d81011d84bf9ac6a91db1b4779a7778c6cb1786d67e87cdba834337b"
      "ca"
    end
    language "cs" do
      sha256 "4fe983bd81d707c7c8d141081f8a61d4636d8af942d787885c387222cd764254"
      "cs"
    end
    language "cy" do
      sha256 "4d9ab6495414c7ac1dcb8e45fe126bd2fdabb405cfe2ac3a808d49b08b25043b"
      "cy"
    end
    language "da" do
      sha256 "cdb094b71754d37a82942024e9bc91719e118f73d20b4ffa04d79aa856cf3b10"
      "da"
    end
    language "de" do
      sha256 "13d59837d6aaae8bfa3e38c03bd951fe90f5aa54a1b5a023911bc8f64ae25225"
      "de"
    end
    language "dz" do
      sha256 "04c60732f09ae1511c4f129099a607a66842970e44c82ed2d3be258a4ceb472c"
      "dz"
    end
    language "el" do
      sha256 "f730e3748354da645c0bd77ee27f841f40f897f58fb66928972b7ad098f6af62"
      "el"
    end
    language "en-GB", default: true do
      sha256 "f8728a902cb5fa51d9d1bee9d0dc59d20aa361e83ebe623d4f2bf87a67c584b5"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "a7f0c0583fb404b780099d18c7e8dca280e81289b14a991f5e53d6ad2501c051"
      "en-ZA"
    end
    language "eo" do
      sha256 "f2e1b662c3eb6d7fbe07e85dbcc9bd861013f99dd5af838092e04def69ec24b8"
      "eo"
    end
    language "es" do
      sha256 "560411604b6f4b33df2caea7874ae724eba5cf725f12762f448dce619ee6b421"
      "es"
    end
    language "et" do
      sha256 "e46936f95a8ae2f5b8558d886dc79def9aa5bc952487865fe9ea127f80e3de0e"
      "et"
    end
    language "eu" do
      sha256 "7bfc065e98a3dcbfe1f808c988b470c72bd3859ab7d56b6a73aee59ba2d253a1"
      "eu"
    end
    language "fa" do
      sha256 "45cac9870743287193f8d7d025779c96c98fae18f99ec61c1263a50fba61490c"
      "fa"
    end
    language "fi" do
      sha256 "7435ed50b8241667d6a93db43c14abf85d6f03a17a5e3644f05e7a67fb2a1c05"
      "fi"
    end
    language "fr" do
      sha256 "c608fb9e3d3c577cd998c75e3d0c03ee962c214ffc152851e3fa6790077ae606"
      "fr"
    end
    language "fy" do
      sha256 "621b4ec3ee5661d9c410df93f224509e8fdf28c864e36297d0d9f50814b59478"
      "fy"
    end
    language "ga" do
      sha256 "f2899e3ff021e58741baac4807e07d1591c4e76d3dd6c1677e1b2addf6178da4"
      "ga"
    end
    language "gd" do
      sha256 "3dc87ad44f82fa96105898669102313e1b91780680715d9336a39909f550d3a7"
      "gd"
    end
    language "gl" do
      sha256 "00d139ee5c2d5d633bb68f7fe6c3c9233aee278452d1677f9ea5770e81767231"
      "gl"
    end
    language "gu" do
      sha256 "5b53c70d05883f25f6832135b5ebdf30ba5c86007b293a36aaa107b39eae488e"
      "gu"
    end
    language "he" do
      sha256 "59eb4678c33608f4f6a9feee5b6c5597121156c615d585466394337ff65b819e"
      "he"
    end
    language "hi" do
      sha256 "e8d82aad6024b67d7e17a673dbabfccffbe638077b1bb0019b2121525b95ee88"
      "hi"
    end
    language "hr" do
      sha256 "b73a9335278323af752afeef7f7730fd7f46858b76ee008be47dba260c553fa5"
      "hr"
    end
    language "hu" do
      sha256 "7caac268d63f8c6fc6e6414a45635c15549f1b9d21f6f11498c2f6a426513961"
      "hu"
    end
    language "id" do
      sha256 "bf00a832d3ee08471bef0b14bad93db54f0a95f2e35ca6db6edee03cbb6ed401"
      "id"
    end
    language "is" do
      sha256 "d690d8456fdf2d1364b0c17d8d5616b48fe638c17740fc5df9472302bb7e2a31"
      "is"
    end
    language "it" do
      sha256 "a1ca59b7e93292e43e0aa30305ef26f1526f44d39892e27792747d8210cc57e4"
      "it"
    end
    language "ja" do
      sha256 "a2bc3cda1ca0f39a40349db7e8ee5e6baec9f54ef143b242e8d9440dfcd0d299"
      "ja"
    end
    language "ka" do
      sha256 "dfdf2bbde8100c358a7a5fc0fd3cd260e1d4272c13ad2e5ddd2eba125fbd302c"
      "ka"
    end
    language "kk" do
      sha256 "0821b044bf0b05c5b1104c1b201e31bbe9c58e0991076de5be74d9bfdb52fa33"
      "kk"
    end
    language "km" do
      sha256 "a18b64284dad61c0e4dd854ad70f3d2efd38c220246eff5b662b68e387d604fe"
      "km"
    end
    language "kn" do
      sha256 "b3f41c3830623762faabbdc6a383430db57a451fe94e79c6a455dd9af465b583"
      "kn"
    end
    language "ko" do
      sha256 "4fc590cd8d69b879bd2c7a898ba219c4fe3fe5b9b045e047475329afeb3b6ca2"
      "ko"
    end
    language "ks" do
      sha256 "8ac403e35bba9a5dae252f76f8f307822c68e501b9260880753d775d37fa42ea"
      "ks"
    end
    language "lb" do
      sha256 "fc9933e2744bd5dc88cd502c6eee86d7271fc59f87dad744fec664ed2378e84a"
      "lb"
    end
    language "lo" do
      sha256 "f1331f27f066cc3d355a35454cb98202e8615fb3ec88700baebd6c8145a12a95"
      "lo"
    end
    language "lt" do
      sha256 "a59b51512ddbbc48ef14912f4329a9ad0793608cd83aa4ee228b70f2eaa49482"
      "lt"
    end
    language "lv" do
      sha256 "bb587e542816b54bf477892b7bf090ee680eaa7c265f6c24705cf837346c1ee5"
      "lv"
    end
    language "mk" do
      sha256 "2018e568e214fb52b05100e71932dd9e4fceee99b4bc2b43a85bda0bf822e181"
      "mk"
    end
    language "ml" do
      sha256 "99c7d31a019c8c5e525d23d91f63f5d2c2180e33224d3a1b2fa20333d1d1f99f"
      "ml"
    end
    language "mn" do
      sha256 "e698555e278f3af33ae0b4a2d2819787741ab973a38cc4db5bc2e87564953e78"
      "mn"
    end
    language "mr" do
      sha256 "daacfe8f07b7dd5b54728cea0359c01edc756cd980be2b357af786546f0089e2"
      "mr"
    end
    language "my" do
      sha256 "772016f4e1af027ce990a4cd49d8d7731611a3f210e8bca303dc63955dd05b3d"
      "my"
    end
    language "nb" do
      sha256 "e691fb6536ab5765c49a18616128ffb88c4c9f3af200ba38df09ceb539062afa"
      "nb"
    end
    language "ne" do
      sha256 "0ff3dbdb63db8be288b0f716b161c91b4ae93ccdf40981de40e3448b6ec5be9d"
      "ne"
    end
    language "nl" do
      sha256 "b1f4270bf028e63c9b722e59590cbae840607774295728060886867acf1e2a1c"
      "nl"
    end
    language "nn" do
      sha256 "28cd8d359a1b6b776f74bfa235fbd29f761f817759cc031104e3fe8d7a176b5a"
      "nn"
    end
    language "nr" do
      sha256 "fbb38dc45f211e95052365a2e566729660ee09ad697859b2ed0b8b99f3459c45"
      "nr"
    end
    language "oc" do
      sha256 "bc2dbd6ce712c2b381e638da01a13186cff1c97b62b045b782aded7acdfd4c0f"
      "oc"
    end
    language "om" do
      sha256 "a5d7e1a31bcf3a8016e6ef360927827f706467a6e008ba59ad9db0fa0b971843"
      "om"
    end
    language "or" do
      sha256 "02d7c51ff86ef663ba2883ad3cc4a843637b35195ddae8b0fed891c72a91ddaf"
      "or"
    end
    language "pa-IN" do
      sha256 "f62b197a5d905c8c034c257407aa186e74dadcd76bc54311e2c29130f1384957"
      "pa-IN"
    end
    language "pl" do
      sha256 "7418fdb5c7233f5b086736408ec2004249d6b1907948b6ba909d7d5da8ad8809"
      "pl"
    end
    language "pt-BR" do
      sha256 "dbd4a10794c5282185ed4f9279608cb6999dc2a355c48bc62c7129fd5181ad79"
      "pt-BR"
    end
    language "pt" do
      sha256 "f7e14ea6ed3d01738f50d66969daf646b37b265a443e9fdc10242eab1b81f993"
      "pt"
    end
    language "ro" do
      sha256 "840fa50d9ffd861ff820ac7d52a62855adc69b5a9c3ad4fa601d0a8097f3b6a7"
      "ro"
    end
    language "ru" do
      sha256 "442fcf678f55b65723666107326167dd61de81b8382723aec8e09e9896854ef1"
      "ru"
    end
    language "rw" do
      sha256 "566cf5e941ca1981d995f1e262f8b819dd5f1d58d07efb4836d66701302b4c13"
      "rw"
    end
    language "sa-IN" do
      sha256 "1f5d22456c85ae2581794e11d6b3748cee8c6b03b5d04e9bb5a09c01fa58a295"
      "sa-IN"
    end
    language "sd" do
      sha256 "b885d4ad76a9a361a782e0abc4ac6c84d9e36b0d76a4931263d8574ca75191a4"
      "sd"
    end
    language "si" do
      sha256 "9b0a831588244313374f7985bca9f0663cbeac56ed4b0629669dda46a7e312c3"
      "si"
    end
    language "sk" do
      sha256 "0a64b4f2236fc5dada4cda0579a3538f2c8f58e3798ae799cbcd88379a8dfc85"
      "sk"
    end
    language "sl" do
      sha256 "e2383404089ff539aaa44b6b4ffb2e07a239121671d365f28bf5b1b052d93fd6"
      "sl"
    end
    language "sq" do
      sha256 "04cdfe423075293036f1d4b1a22c7411ddeac8fc97ad901db2b4ba16307fec68"
      "sq"
    end
    language "sr" do
      sha256 "bad1dc9166aaa740bf45f8a00200538ee8850449eba0cf8a3fefa6f5797a0b17"
      "sr"
    end
    language "ss" do
      sha256 "a82f5c255246be77c160586cf09ecf9c7e1a9c35e7f7d5114a5a390fa490391f"
      "ss"
    end
    language "st" do
      sha256 "13202b756c1253cb78d91614b519f2351dce4e9aa3b26ef03661a5292447a2b3"
      "st"
    end
    language "sv" do
      sha256 "20c920bddcef3306b862729f8a21949820091ad4fe9ab22840285f5f081522d7"
      "sv"
    end
    language "sw-TZ" do
      sha256 "c085e83985fd74f8632c17fb7cbedec4443da070208a934ffd865cc8fd7cd0c6"
      "sw-TZ"
    end
    language "ta" do
      sha256 "d9917fdc9d4995fe8d12bcd34d15ae0e8addf4620e8aa468ded0f97be4af10d4"
      "ta"
    end
    language "te" do
      sha256 "5e0965cd7d2c2b62d1afd4fd4a5fb81cd0d3cada92625cb90a9b5ba7e9571399"
      "te"
    end
    language "tg" do
      sha256 "479f72790c57b1e5db3b902b081e39a17232cb15735ae9b8114461482409b3cb"
      "tg"
    end
    language "th" do
      sha256 "9aafb2fecd20526213cf4fdfa748ea5d4552677ea89fac87d1e605ad95cd5bb4"
      "th"
    end
    language "tn" do
      sha256 "cc09669383f1601930f56d8313f074334462faa9484d3c4e40c135539243e61e"
      "tn"
    end
    language "tr" do
      sha256 "01a01602fc7f4e67837ef18821dbf5b1f1a090b5984592e3b161d5f0e7155e67"
      "tr"
    end
    language "ts" do
      sha256 "299807d3ee652b4a5112631955d23109b93f9175b1ad0e976a369ccb52176936"
      "ts"
    end
    language "tt" do
      sha256 "837fb4f64877ddbeecada4b4052c851b208b30e6e84a31dfb82ee7931031eb04"
      "tt"
    end
    language "ug" do
      sha256 "90d1134e3476a5b55fcba0781653f0979100cf630766ddff2a292b59d6368ff0"
      "ug"
    end
    language "uk" do
      sha256 "fbbed34dd8e753f0c08eeddd69d4678c98c6658d94ee59b688da85304d04bf02"
      "uk"
    end
    language "uz" do
      sha256 "8ea777405a175b7f463af2f6f5a5b8f85932dccc4e02618c144653b6fa4dd8b8"
      "uz"
    end
    language "ve" do
      sha256 "75e96a95572b0aa30060b45014e6c5fd9ee4a54dd095659be808811ec197ad98"
      "ve"
    end
    language "vi" do
      sha256 "89fb33e39ee08c6714146bb583c5655aab23e598edaef4048d513db76bf8ee6a"
      "vi"
    end
    language "xh" do
      sha256 "7ddc46902984439f52449fb01c4e48ae15ef97a873ef0202d6d6cbfaf44f4b6d"
      "xh"
    end
    language "zh-CN" do
      sha256 "76336048a664e370e499c02ef5771816c1cf63b3493df4ec3a1680ff6e24a806"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "869c75bc3d0e1642c05971bb0a2c575441ea806fb8058f3d1582aa86f6ca3827"
      "zh-TW"
    end
    language "zu" do
      sha256 "61238f73a3ea03a6a496dff0d616959cfea1ffdd5162763eb1bffef1f1e67825"
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
