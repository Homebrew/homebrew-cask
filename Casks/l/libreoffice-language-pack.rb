cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.2.2"

  language "af" do
    sha256 arm:   "0c39e0c30eb7f1a2c507b000b1d7e2d9d3caf2c9d3b4cd62fff0bd53b60534d3",
           intel: "8748d68385eac4241578e3f1b50e95c98500efd918a55e253931603559b663bb"
    "af"
  end
  language "am" do
    sha256 arm:   "c3ee516d4f96b50d09adc9f19cefa279bfb22ee226258a91672469e5c2bc561d",
           intel: "6126df198a39af6eda21b8709a3a84ae38e2972eb3d6af2364aa06bc89110b38"
    "am"
  end
  language "ar" do
    sha256 arm:   "cf9528adf625dcbbfa7d7ef5d7e63f2e9688c66163382caa25162855c0c99c8d",
           intel: "6e781fcd067cd29ad3702f485578e22456a27d76825072e88b46e25ec2806c20"
    "ar"
  end
  language "as" do
    sha256 arm:   "ffdc16bccd168dc40e58133470001d474b7cb4f5f46e3638c746617b134b90e5",
           intel: "505ba60d8b57e7e981b29af76df526cbef7d9a617807c328bb116143e7d0a5f3"
    "as"
  end
  language "be" do
    sha256 arm:   "40a3ab4fd4b0e877b16f4b38b435f2545a831332fe624c6de2322101b9261629",
           intel: "940a814c3512c089c1a8b7688134e45650d95d95cf89079d47607ce543777054"
    "be"
  end
  language "bg" do
    sha256 arm:   "5ea54a9c7f8702cf384ba52493863c2d24e223cdb4c215c5953109a29c9c94ad",
           intel: "c586a67edcaf2b4ff63fb8a30e9ce7d687e88b4856a5c0c52ad2da1999f4a51b"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "2cb3b546b53f7cbf859c3d42237a00dd4b8a48b1a58daf2b1f0702c1dcaee813",
           intel: "97d147551ec1ac49c68f79e78b68afa9914ae68f5f2a78a978546d0819f31344"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "a38c7d176ceab77287e11cd72d9fce5b9e1a4eb92ba6a74780e5588bebfc88ef",
           intel: "5d4b47530c7ab7255ba4d0afa7fd6d8e667b290b17c193807309e9dd9c81e230"
    "bn"
  end
  language "bo" do
    sha256 arm:   "14d7143a590c5acd8b9c09fe65aae9e19ade25d0fbd207f39da8c7822cdf7770",
           intel: "5f90b8204e6885f9852fc5e9eb186ee2b1dc270c1fdbf5304fd2946d573e8121"
    "bo"
  end
  language "br" do
    sha256 arm:   "d7e04d7eaab1d78d8155ab590d446f846a5a0b175fc5a8748947551cdd2f6f76",
           intel: "9d57f51787c45a68a5de06727957eb44e23a250f20f5b27b611e08043bd1f694"
    "br"
  end
  language "bs" do
    sha256 arm:   "108405403d252606d46d444c6797372aa6fab4c9123a535a3e7b5d2a4951fd99",
           intel: "d0910f84f812716d316ee32c3533fd73c47fca1f3aa7fa806c278a354f5d6538"
    "bs"
  end
  language "ca" do
    sha256 arm:   "96db6cdd59a25468a34f3ef50ad809f643c23c06ffdd78aaf7d933dea84953ce",
           intel: "02aec08e7b2f8043b93a421a3628d74584cda3bff2c9a6d7672d208873ba10ab"
    "ca"
  end
  language "cs" do
    sha256 arm:   "5f91bbcaa11f7a1b91388fab17b348239fffbb6e4379a34e04fd6076c548dd3d",
           intel: "2ac805dae25601d0ccaf76ed8d5d8b9eb04073a2a57bf6135b0998065d82c7c1"
    "cs"
  end
  language "cy" do
    sha256 arm:   "21685aef64dfc25c1a1340b1c3dafa27276f90a0fbc2f183438c3c4d22de2d3a",
           intel: "0390d25091f2f4bb3fa56857a2509d0a0b8d33ae04d2cec6cbc89399fb117e74"
    "cy"
  end
  language "da" do
    sha256 arm:   "b7dc03882f3c3f1e35a7c59d9379e1d35ed49f73d2191bc2465ba0152d133884",
           intel: "55ea63c289c6b897ff8eb8a97b4c555e61b02818e181dd0005a6ca026ae6142a"
    "da"
  end
  language "de" do
    sha256 arm:   "19ef5eb29ef0c2926684fbb967e1d3c4ff0c0820da5ee3357223751a15ba347a",
           intel: "480f76d0d561cbe5b37114906909d391a6380c44d864ffbec0ab09e3c19e9f1c"
    "de"
  end
  language "dz" do
    sha256 arm:   "bafb4f4f48ca3064c56d57baa03dfce9f93a6b58dad13542caaa50f3d41f6a14",
           intel: "6254dbbf8b38e75c4a917bc5b03cfd2309cf883acef7f2c3e1633e671910d89a"
    "dz"
  end
  language "el" do
    sha256 arm:   "9aad61e08c7ee6cbdd46f808dda218a8939acc7e929b45b0653833c65b5b2338",
           intel: "1e5d7f6c5c9ba007bbe99820383fe0ed3ae6e309cfa73760f8f885bf74ba6a09"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "f30b2c3a13104a8626023a981339c0ef99ff3ad7e9a5af4d7aefcf2045393b5c",
           intel: "42472686e7c77ddcc37b0c632564075607ad74842ae2ceb036d53291b0e33b68"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "08af2b457951566ca0f250f9d5d08c0159afc9b5828b3c8fbbe12eb97010ef32",
           intel: "93575faabcc07bd369de206143ff8a789dad44032da9def66dd4ac27f2de494a"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "7f82e2d472453d3448bd9824e298e164e7eb736cbdcdaea328dd9b515d343007",
           intel: "0ed1bcc411cc421811e6568970e0b2a1f0f622e0525094dc3713c7bb11ac6240"
    "eo"
  end
  language "es" do
    sha256 arm:   "86e6c68c04a062e0eda575a41c7619bcebe7a727f592e5de599e746dc9a9e22e",
           intel: "8ce5d75a007e6b73b33f88e6d4905f992b0681dd1fccbf9ebd8ea5f529085b07"
    "es"
  end
  language "et" do
    sha256 arm:   "37122131739d87c49007aa24c16fb1df445d92ca75c1e16265e41975ca324539",
           intel: "c433c26accc3b619ff7dfe2c6f2f082d54816be3749faa965c7d85d2614dfca8"
    "et"
  end
  language "eu" do
    sha256 arm:   "30630f65e5aea527499f73c76bda9908935c448986848a31510250913566653d",
           intel: "fcd63edddac047b6daa54f1be744ee826b8cb1faf49bb048aaa9bd6af903e96f"
    "eu"
  end
  language "fa" do
    sha256 arm:   "d0af2638462f35cc18c64c3e98c15fba30a9f214e806fb794cb9cf2fd7f9a510",
           intel: "b47d03f2620ce3503beb9a510ffc60ed2c98a93be1a6d56950a08c3df353700e"
    "fa"
  end
  language "fi" do
    sha256 arm:   "b88e32ad1550d8d23882955a880e4e2540c92facec3bad3b6ed00a777a546e20",
           intel: "78668339974c511ab67e89b5fed882f0d5f80ce311fb983117665f39e8d12fce"
    "fi"
  end
  language "fr" do
    sha256 arm:   "bc53fd6debe2e1872be4a63f0a13e8bcea1922bcce1ef926971817a6cbcf87b9",
           intel: "e00136caff63b024da36c9a58f305290503bf273cdd7ba2df408dc6e61d79c88"
    "fr"
  end
  language "fy" do
    sha256 arm:   "68fda10c9987c0725b3f79940d0b31778abdce1d39b5acc659ce8f7692a44715",
           intel: "636276289b40529d7d51fdbaa8077f73ddd7e2d166e4b453b149549029700005"
    "fy"
  end
  language "ga" do
    sha256 arm:   "71a82f2c3f258a8d2c104487d2dd5269514dee608d1a50acbcb8be14e37d9868",
           intel: "e9d024f0e9799f42f5ffac2fc7100d2b402f1d7c611cd821c9aa54df7351b04e"
    "ga"
  end
  language "gd" do
    sha256 arm:   "00239057191d3b57f2fbf72fff734e7c6a1e049ebcd86bf02f35648d4d90efb2",
           intel: "04bab7f4a8a37fc38f15f5c2f479725c3d69a510e73c5d79ee89b6c3fe0d04ce"
    "gd"
  end
  language "gl" do
    sha256 arm:   "a6e77a7568487906809ce26fcf3133f5f5fe0f1abc7a2868806bde3ccc2ac08a",
           intel: "c9063a5aaada8b6d94055521a2d4cffd4d4aed04225e262f7f25c3f128258f2d"
    "gl"
  end
  language "gu" do
    sha256 arm:   "b42a27d922f9e9d82f8c148ac91d825060e98b53c0c33f2485fc911162020db0",
           intel: "0a4bd0d030b5aba74dcbf309502525e8f3d61682911c5323dbdc6e2eb387d044"
    "gu"
  end
  language "he" do
    sha256 arm:   "00ddfe94aadf0bd418f8459ce6fb0eca8dbf2f41266855ec48e20f0626b98698",
           intel: "7090ff1a6f47b44a927c8ce94b9d9473817ff37693248878cf736309f23a38e5"
    "he"
  end
  language "hi" do
    sha256 arm:   "8f14e744bdbea7a501fc643b306caa7dd4eb7ce63f903d3ce30ddf581eb972b0",
           intel: "7acce92347af043cfd408872dc4544820c9b983699f3b5ef793537716ebd60f0"
    "hi"
  end
  language "hr" do
    sha256 arm:   "8b35924b6baf9983424dcc2524a74a678b6188eade72958a1c96538fb09ad851",
           intel: "a97b4e7232e6141abc4a755d9212b904a9adf4fdc3817ab442414cadcdf8535b"
    "hr"
  end
  language "hu" do
    sha256 arm:   "33e0a52b5b8e843a7aeac98a82e8894febcb2d4ccc2d3bd64fc3eaa999c37b77",
           intel: "6045eb0db670e2c0d5dc6b0725bd6a30803304112dcd6ee1702929707dab120a"
    "hu"
  end
  language "id" do
    sha256 arm:   "5e2304d7f395b7b2a8836721fd3f550ef301bee9429037d21eb60798b87e2778",
           intel: "ba03ec985f0f14529fa30b30e8dfae8d153ca5ea936e65ea00ba09d5b3a89b5a"
    "id"
  end
  language "is" do
    sha256 arm:   "ac71dece6ad89e8d26eddd1d7245a9772435f59927b63de4dd9a288148340a11",
           intel: "85541013ac61e05091ac8a63c1845ba80f1cc3a75b719216caa310f03654b895"
    "is"
  end
  language "it" do
    sha256 arm:   "ed4d6b29d222fb2ff06890123630010499149f3066e7f91aca0dee672851a319",
           intel: "6de0a005e43a36fff0885271c0ac97f6f7b7b8d95b5a95337b4d0a5d6f3bc656"
    "it"
  end
  language "ja" do
    sha256 arm:   "2a81e49f3a556f498d7dc9863d624649ae4563f4d68483e138a34e05a7a272c1",
           intel: "526c3f2457de88df6acbd30e0b72a2d3c4652f7ff77902a010e48de67151a9da"
    "ja"
  end
  language "ka" do
    sha256 arm:   "4e884ce23f769abd91742a05a759648a438b0c9f5a660cbaa14e2b4f39755d01",
           intel: "513c2db3722a4e5a3c636999e457d78ee3daf1922e6bd0e31a4f4d21c8865863"
    "ka"
  end
  language "kk" do
    sha256 arm:   "76678907a8bdc5af819e98289529889083c8eb7471c34020eb658563bfe72142",
           intel: "c381a0bd9a0afb9f42b887f5fd50606b503adcb1aa0837e68382e96cc4d09d10"
    "kk"
  end
  language "km" do
    sha256 arm:   "1b7e903a34187d5fa0f2967f0976cc72ef90920cb748c970b54b94d1adc50906",
           intel: "0d5e786bffbce10522ff4db0bd50f29309723fd1fbf4f7ed4980a41a70db849e"
    "km"
  end
  language "kn" do
    sha256 arm:   "38e2782c4bb28ec577a83cfa9bd4b9740ec6c3606cf3e83f20dbc476b67d3a36",
           intel: "e04fa92b8819949df271169ff3e97d62664815fbe811d4520e67783e9193e240"
    "kn"
  end
  language "ko" do
    sha256 arm:   "d875210bab673585750f6675b2366d826c8fb03809ef04e238a19f6d056dfc1b",
           intel: "7a2dceb1b5716ca5698d84e775dad7881ff9b08c0c9225aa755cc58b859c6961"
    "ko"
  end
  language "ks" do
    sha256 arm:   "cb415833ce8a28b6925f75c0c47682f783cec32840db586b8d89fc45f44e3b6a",
           intel: "e9ba11e9d0c5c486e2880e8773d1059af820ea8dea87b2e8a76e5f7981541e46"
    "ks"
  end
  language "lb" do
    sha256 arm:   "133b2722949b7749b2c6e64cc05272d216936d902032ffa081a04a42d19f86cd",
           intel: "494763b77c4ebb8403872c522f2b1dd8e1757de28ae7fe6285c7759a10d818b5"
    "lb"
  end
  language "lo" do
    sha256 arm:   "af30532d667ca42906b78438236aa7c06cd50830f51386e39cf59d8fe19f8b68",
           intel: "be6742d0a213b4aaa2fa3e5be6e94aaa5d26198b8e94e468323692fa7e195131"
    "lo"
  end
  language "lt" do
    sha256 arm:   "85da6f107d7bcec7acecacf02835618bec9e0f26eb68e061cae4387c56dfd7dd",
           intel: "59dce00a13f8a2466c6c7d159679e41c70df04dcb74432a7a30285fe5f7f59b0"
    "lt"
  end
  language "lv" do
    sha256 arm:   "352ee910b9f17bae840197d2ee0a112ed5bc0954579671b76e3dfd4ee651b419",
           intel: "8f8e0a743db03aae00d6149722a9cb7da54db88ceef7afc6d0fc1024047d4023"
    "lv"
  end
  language "mk" do
    sha256 arm:   "ff034dd06ff7ebfb4e0dab3ff1432a685625be98a75c2fd43ffd356155be9006",
           intel: "219fbd5d53a87957b651d40294370af6d57e7557afdd2f4c8d1e1d3460e8f2f9"
    "mk"
  end
  language "ml" do
    sha256 arm:   "f4794b3625746bf4b68f187cf6148e46b2e548fd7d2e101d3c4422b28963a651",
           intel: "fce5c0d9da034653af8ecb45f3cd8f369db4916f9f6f44343427bc577055aca3"
    "ml"
  end
  language "mn" do
    sha256 arm:   "8158cf4e850d9dcaefb033bed138ee4dac45d442d72aa12b94af36c678d71b42",
           intel: "648be1ca032c6c9e3f063f02b1defc11d6f64a25c88de940362fd478ecc6a7b4"
    "mn"
  end
  language "mr" do
    sha256 arm:   "0a923ef1f7374b0cb0d36e3db9f493edb35c634a3cfb9d6bb0119eb056f1e51c",
           intel: "22b466b834866f6c3e71f4306765cebaa5af0761e5e3f2e4e4da41bfb6fbee46"
    "mr"
  end
  language "my" do
    sha256 arm:   "af02bc72334b5662eb649b56b4ae520c2330ef34d2ba76b8609bb905d5a31e4f",
           intel: "416380c0be1249e11875a063e5ad816cb7fbb3a725f55f3b01b42dc2bbab59c3"
    "my"
  end
  language "nb" do
    sha256 arm:   "93212bba5cdd9313649c2cdd3333fa8f13166dba90e1d36aa6081926ad760e3f",
           intel: "05df0a906b9e9b56fa3d623c0c27e0041bb1aafaa612058dca14021e38bd0aa6"
    "nb"
  end
  language "ne" do
    sha256 arm:   "9e5fc33b8000d46fa86b6b6fb3cc5f8c0305e03f867a2a1449a20e2459041ff1",
           intel: "1a2576fe3fc19c7fcefa9d12a2e17f2e769af2ed2f169848a3794241fdc84ee0"
    "ne"
  end
  language "nl" do
    sha256 arm:   "c590caa7efd10be36adadf0b542229d4faf1b8b42a54325c2b00111f47dedd9f",
           intel: "8102e39fcf1b1e59af3a7590c602e5549b742c34c339c299340dc40d055ac0fb"
    "nl"
  end
  language "nn" do
    sha256 arm:   "c7c94923b439f8d9f3b6abd12a33d2f4108ebb3d76831d597a372199754263d7",
           intel: "dbc379fd9b974dfbe32d0267ff8921640851e808e38c96ba35b70e02fba7ca0d"
    "nn"
  end
  language "nr" do
    sha256 arm:   "6fb4cb60f47a449dcf66b098f0769b1ff4599f9cf143cec1ec5ef8b9d0b4451a",
           intel: "fbc3fab735a95bbaff683a7ab74c3deb4cd5c601185ff6be4a10f1b59b68fbd1"
    "nr"
  end
  language "oc" do
    sha256 arm:   "5cd2033d7f8db475f72c277637e49d490ce19e4e35ad175e692ad3b1c3277bce",
           intel: "4abc4c66cb8774f8725025aced073282158bc37a51d62c278db3ef8ae83e9328"
    "oc"
  end
  language "om" do
    sha256 arm:   "0d16eaea9874897f53f8f5e7351517199347eee0dcd275d02f3e4cc9b9a60bc0",
           intel: "4027b790d7ed818f1c1259e44c33f67dab7a75dbfa11b74acbf90893ac307797"
    "om"
  end
  language "or" do
    sha256 arm:   "f3d77017d76d247184bd3a2898aa818d1efad04b649ee66b2ef66fe4cf65ef61",
           intel: "fa0603441b40b112cd6c4334e0dd3fd5426473a16a04d7a61dce0e35211c48f5"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "d6f920c27980a1dfb2bf51db64ea7feeb041a91ca68ea158fb129e8d957b2e6e",
           intel: "b4e0dcfdfb8d53f0eddb97a8ddf3393777843488e057b13fa18b0d0705773f30"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "da6036cd211573f20f8f53fc63d6f57725f3b4235151f9775b9db7d8ca93f28f",
           intel: "cd4ac957202ee315d3973430ac0961a9328929291b142ba9d30a01a2f193cbbb"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "fe226c97208a4376fef150ef37fd7dcc73955d6a54a23e9458bd297cc1f02035",
           intel: "01b0a29c61cc1053e0f9684876168d23ff24c859043f109aaef00a784d3a87ba"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "bc760edb89d18e2196d3d7c7be7e5a5df92c30a5baa4d79a8e7a24f8fb388c4f",
           intel: "e2345e6d0f6514b132d6c6493ffb9db16896b4ca9da00bd961ba74b92e10861f"
    "pt"
  end
  language "ro" do
    sha256 arm:   "141e5e3db0f58c65cc343d67aa71715358ba533aee904ccced8363bd45a13d35",
           intel: "41969ea8873a4af00b6cd57fba257f0548ed228869287fbbe77189a5a6bdd9a4"
    "ro"
  end
  language "ru" do
    sha256 arm:   "ca737492c035060e0421ec1456f463076e47dd1dbd4d49b3cade31d31f730b33",
           intel: "7e530147e95cdebb70e75b346f6c7f0a73e48f2f5ecc2c75c582c1f244086fd0"
    "ru"
  end
  language "rw" do
    sha256 arm:   "e5153ba7fe6e50df17b134206ff725d9a8bd75df3131c8d3f7732f61f13325a5",
           intel: "23d29c5e239e2c47a35b1a84e126e1e2940a0f9fc6365607d27924c7f848808a"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "a15a92e7b22f6a8a8b2b4ef7ee4b9d052f9046dca2fa4000f5068ebe8e605e7c",
           intel: "06114c1bb9df909b196ecee9cb3f57806c2e57f5c6071ccb038a648ed024bc3b"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "a464da1b0953c75c6614cd923584d205ca26a11c31c1bdafeacb676e9042fab9",
           intel: "efca314f2a2543a9c344e65d78fb2ec485c3c75e9f626add2cfdf0f3f92e5587"
    "sd"
  end
  language "si" do
    sha256 arm:   "a985f9d0c45f30dfd6e483217377b54a34c631b47024f5caf33c6ddafd695cd3",
           intel: "f20c0ccea75139f3f098846c9415c1cb5367657adff0777aad339edb4db2aed3"
    "si"
  end
  language "sk" do
    sha256 arm:   "29f10a2303950355486083f948e2685e693d2772ab1f39b7e29f4084da7c8fcb",
           intel: "169e74641d5db908d23ff710e7ec143885637336a6e067dd85290fbde50ad1b8"
    "sk"
  end
  language "sl" do
    sha256 arm:   "cc182efcca176812cf664586f90ea3d5dddc20909ee3ad673236b6c2a3473a00",
           intel: "c9fc98192034eae541184cb0dc43fcf78d70c1ee9570eea53ca27ad36c4adc7e"
    "sl"
  end
  language "sq" do
    sha256 arm:   "43ee95a7d38cb03fa48f41d66f56684ef610b98c80e07cbf3327712ad37e8ef3",
           intel: "37b966bdd47068de0fe9bd7abb12a2f81ccc95f95321619eb0c92535decbb7c5"
    "sq"
  end
  language "sr" do
    sha256 arm:   "f05c3397c84ab6251da53bce716ee0f06bd95407814c65aa9be591767d1f90a3",
           intel: "987f42bec7ac2dadfb65ec9c6950cb3c37b3bf91018d95a2141644d3ebc79515"
    "sr"
  end
  language "ss" do
    sha256 arm:   "22ddcfb84f2184c99d530d97ee0dee56402456f38d7c8984530dc3142907bec3",
           intel: "527381d87eba93cd9344e9e720bc9178ca00a393b7f9780dcf154fcbb64eef7f"
    "ss"
  end
  language "st" do
    sha256 arm:   "2fd99d773aaa5944bd901c75d07144a8b3c7b3e74dcbd52cd197e29daf632189",
           intel: "7cee600520b3212e390ffd940e8c08449b4de582c367d2f14d46faca4c75e164"
    "st"
  end
  language "sv" do
    sha256 arm:   "0809d72169a082df0d7d8e0ff6319974f22a2b09224a34d36a7d3a55336b683f",
           intel: "e11a7340d3dce211c9baa266af0bceb5125ba90c4c0f6ad2cf53a1e1000311b0"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "fd6dc10b979cfc761d647e0e05a73fc1214cc0c0ed9548518a1d744fa140a8aa",
           intel: "8f11b4ca899c2fb39b316ebfb8d0000d96c53779ece46badb17c8736ef789f44"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "1eac2fc307ac4decb0f3d211b1c4d21c34e19a19669f45e1054c4aa3d1d9314d",
           intel: "908561993b118c57ec254b7cc40dfa06f6b9d538625da0d2de65cd4fe0393668"
    "ta"
  end
  language "te" do
    sha256 arm:   "8bf1b24d33a777f1bf450773bff0529521c90e0fdb1dc0d6c4a9474e2b3b4c58",
           intel: "c69b5f151f6a1162dc899b8e6542b943fe8115f745b675d41603809496b0e7cd"
    "te"
  end
  language "tg" do
    sha256 arm:   "a73a40c9129b98a4acda5b638a6c3aca7ba022631c99fb3f033f4cecdf6cc4bd",
           intel: "2507e2c1f08fea1dad16c7a6dcc689cecf8f1a8298a533c931db006dfc5ccaf2"
    "tg"
  end
  language "th" do
    sha256 arm:   "9a5a3e5523835c9782bc54e292338cef0136a54d92e2890e38589cc7b999bbf4",
           intel: "9c212680cfd0e927ab7d716c69a5bbdcdec4f6581954af9d283d774f2d3f18d7"
    "th"
  end
  language "tn" do
    sha256 arm:   "a43bbefd7a82e1816ff1d40df7b000213bc70341580a7ba59ee5aaf60db50c82",
           intel: "99119bbeda4a0f880989cb533cadb47daa11e305819387b332b1eba5d67ae583"
    "tn"
  end
  language "tr" do
    sha256 arm:   "9c797fa31a82797cf6da7fbc86b4b749e68c8b37c52d25c24e9fe5f81e665904",
           intel: "8c02c61575189e05f84c31f6d22b5000a4678366367c6d581f89d38e41064bf2"
    "tr"
  end
  language "ts" do
    sha256 arm:   "bf52cc3a77d236006819f869ea383d5a8b81470f5c7eccc115bc65f8cfcbe9dd",
           intel: "c0e8dc36f37d30b17f56aceba46207dcce0048b26f44ee8d06007a3510092ac4"
    "ts"
  end
  language "tt" do
    sha256 arm:   "a7b8a3b734c97e3da283c57484936115c52e71eaa271686406b392894026aaa8",
           intel: "a3b695961317d582fa33f6b8ab302a56d3d341f568c83ce710479048d02012ea"
    "tt"
  end
  language "ug" do
    sha256 arm:   "bba9fe641e71b383ee0cbdeccba1f8adc58fb2527fffc7293d43dc202c3d3cd1",
           intel: "30c8179bf4cbf30b5e1b129049e6c6877ca8416d5291f547f639381a871890aa"
    "ug"
  end
  language "uk" do
    sha256 arm:   "2b8d74184afe8330eddddefcc62cfb9f78c732c47e7439d6d7c58e701be1db5b",
           intel: "954ff896f67fe13a583b4f595528406eca78ab42a48fd80f2bef1fb3e90bca8b"
    "uk"
  end
  language "uz" do
    sha256 arm:   "7693a66a82add56628f2f932ea611a865014dd7df543d9583012c1f58fd5454a",
           intel: "f173d525f0eefb1eaec7f09c92c404a80a7a2ef3b4652f7d931ff6422bf9cea5"
    "uz"
  end
  language "ve" do
    sha256 arm:   "05770e6aee2f7b98eec301353b0518e61a9ac15918dbdccd86c650bfecab557e",
           intel: "127872294044f04ba751a1261242f09fec3fad1fef3ded78365aa7eba74f3713"
    "ve"
  end
  language "vi" do
    sha256 arm:   "3b5d05b23bcb589e67949c025d366b16e3cc67f98887ab8061b7ee21e9605b5c",
           intel: "6875ed7f335bbf6d53285ea1f57dceb3c20e299938e2af7e93d223fd2e5101f4"
    "vi"
  end
  language "xh" do
    sha256 arm:   "2d1a16bbd6606fea6f5251486c35172877fc11ecbd7594841bd22c668dca6db4",
           intel: "ea73699b3c2779c4b85a7722aa8add0cabd0bbaf8c2da8daf9efd746fbf043f8"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "224c06bedaf246b6f3715ff190e68e697980e23d9ecd86577b8cea41a6a4298e",
           intel: "598560c1deb35545bd59d347f08f1135b3ccdf93cd8aab10708722c4ab3f3859"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "ab1ed11ce5aa4d2596d715d06ded851885eb62777b1cebb57b05ac7c1ab4a363",
           intel: "17ed186596a6a3c1fa0b7b81533c79b52690901a54c462f051c84c84c1f5bc2d"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "5a462db171a9c372828f6d945f01357b9e94de60bced686c79f009adeecb0d61",
           intel: "82988e4abb59438445e68fd03722807083ba11bd00af688d9c38b8bbbfb22578"
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
