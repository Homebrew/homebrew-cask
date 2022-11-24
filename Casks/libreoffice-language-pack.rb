cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.4.2"

  on_intel do
    language "af" do
      sha256 "f4371bd3dd9a311a50e31789e7a000914727dc1138135e13255d5f14dab4ec22"
      "af"
    end
    language "am" do
      sha256 "667a6d02928fe4dd006acd7e5b4a800b81a54bb1f5c2b1d0dfb9d6e4f6a306e6"
      "am"
    end
    language "ar" do
      sha256 "2f1f4a31124013039e84870073ceb1a584cc2fe6ec4c3db6fcf04db56f3ebf00"
      "ar"
    end
    language "as" do
      sha256 "a25743a91274791c70a7a3c590f456f6a834964650006611103106229ff52007"
      "as"
    end
    language "be" do
      sha256 "399ba01afa326c644eb0a3771141aa1b0d48c6b59669dd51f8b7c648951b33aa"
      "be"
    end
    language "bg" do
      sha256 "919508ebd8080c0901645e844b5454681552772a189810cb244323e2ea48f7d6"
      "bg"
    end
    language "bn-IN" do
      sha256 "0946b0cd425bf46c962e2f1087f5a107a1655a05a3fdee9f5f93acc628904422"
      "bn-IN"
    end
    language "bn" do
      sha256 "d2fc20743e55d9fd122087f0faaf640f5a560d30dd7c49cc5df48cc94927dcdd"
      "bn"
    end
    language "bo" do
      sha256 "23d8e808062e028765fda5f175400c5663ac0829c8e58fd55b701ddfada8edf7"
      "bo"
    end
    language "br" do
      sha256 "d352d9d546376a961cc85f565d446fea1d19c19ae2d8101068e05c4266c816be"
      "br"
    end
    language "bs" do
      sha256 "b99d9e382498848cda8eeb9dd31c5ca3fa1693c731b33e751ca3666f75cf4dc0"
      "bs"
    end
    language "ca" do
      sha256 "7c9be3b8649ae190177d0f29a0b89ed75cfc34f424f98447134da367be580778"
      "ca"
    end
    language "cs" do
      sha256 "6669f84820461391abca43a99d3fe07633a79a20fd3afc7b49933177022dd47a"
      "cs"
    end
    language "cy" do
      sha256 "c160d421f86dcbee19d4f2deec1cfc8de0e3328654568fa0c2491dda8a858687"
      "cy"
    end
    language "da" do
      sha256 "1bb3b33556aa7965edd59f9943b352a95cab574e18d43abf7e2c5397dd7497e9"
      "da"
    end
    language "de" do
      sha256 "81f2b869821e608b9655b19ac5cfd50fedd2f164ffb287b17109edf254242230"
      "de"
    end
    language "dz" do
      sha256 "d6ca8e75a978d08a1df2e9098b9a88789f9760f05e13b33e215d8f62d3eef067"
      "dz"
    end
    language "el" do
      sha256 "75e55dfe488e0852a9c268d223af228d7d0e0144e691480474092d077aa3dedd"
      "el"
    end
    language "en-GB", default: true do
      sha256 "a8ca5a33d8e86811f72d27de733eeaf5af1b28f21af6475fa6ffe25549d94673"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "0db76688f465ebacf65c96ab374848b31c8812e117260cd2b98b238ed33794d8"
      "en-ZA"
    end
    language "eo" do
      sha256 "a6a1eee3df5a5171c1f49e9f04f8fb4e66fa81441536739067afc48dd83e2519"
      "eo"
    end
    language "es" do
      sha256 "2a367949f3085408d15d05d8d8000c27bbc935095471fc0a2580517349527131"
      "es"
    end
    language "et" do
      sha256 "8ba3be41fa94098f644c0d161a2404839de1713969ccf739a7813da2f2fa501f"
      "et"
    end
    language "eu" do
      sha256 "55b5b514b7fb58d9cc39f5eb74f3fe0aac7fe45f7324ccd8636bd08e0d9cc464"
      "eu"
    end
    language "fa" do
      sha256 "dc3525bc4c640364d28df4ada98f27c2d3c8da2500986641c642214953fc2d9f"
      "fa"
    end
    language "fi" do
      sha256 "650ce95fd23e736829df218295e9c19d45ba104f9f3732b141228e22b9358349"
      "fi"
    end
    language "fr" do
      sha256 "8f51934a19b4510d38d87f8ed253a4cfdd7136a129b7e2acbfe31a66ee713d2e"
      "fr"
    end
    language "fy" do
      sha256 "bc97391404c4d3ed348ad73ed5787ef8d7af55475bd949bc1055069679561a55"
      "fy"
    end
    language "ga" do
      sha256 "e2603c0874fc8ba2760cc89e22a2b0bbad36e0ed7ab06a213e0c1767875b2dae"
      "ga"
    end
    language "gd" do
      sha256 "dc5b70acd004d9c6ed560d24410eb343efe1bd0472887b3f966b52243f18a56d"
      "gd"
    end
    language "gl" do
      sha256 "cef4632629d6e6e1fba2ea10db4e41752678e0fc862e55d378cac4efd40b8605"
      "gl"
    end
    language "gu" do
      sha256 "30561baaeb83a46184ea36ac90b87f4316ba600bbffcf1aabee92d7222c54513"
      "gu"
    end
    language "he" do
      sha256 "221991b8f7fdc7c75a12f4ff14a51273905d86c1de5711e510ea9e9f347fe589"
      "he"
    end
    language "hi" do
      sha256 "2dd850e3c8a0100fdd36d16275cf747204d56be149b5e003d4e6fcb2cc19367f"
      "hi"
    end
    language "hr" do
      sha256 "d76245358840708160c146acccb49a3609cfce9c70934d341f9cec58ea55de60"
      "hr"
    end
    language "hu" do
      sha256 "d1c1e09799a5e3382d0f5aa8c1f4e45f7f9e8548ff157465195dfc3ac8994d3d"
      "hu"
    end
    language "id" do
      sha256 "05bf65b33c287870eb0b2d38af0317c955821901cf7488f1d44099c50313349e"
      "id"
    end
    language "is" do
      sha256 "41c1f913886b8dba2b10d8ff6fccc9170661ef4ff6873de02280fae7283a01c5"
      "is"
    end
    language "it" do
      sha256 "bbb0df50ce8b0e9bcd8a66dd1a8d7b08685e8ef04566725a405b87911786fd7d"
      "it"
    end
    language "ja" do
      sha256 "d02609d7093676faf8bbb8a3baf96ef8eec40329972bbddfb3e1967db90d0f5d"
      "ja"
    end
    language "ka" do
      sha256 "e80d70139969a66a54a7c77595b9f8da98ca4d4568fcae135a8774874bafec18"
      "ka"
    end
    language "kk" do
      sha256 "82d61072159dc088960013acc783502901c1a679e1de236630da2a73e4713866"
      "kk"
    end
    language "km" do
      sha256 "0b3faa25b57eca88ba9ff8ae3bab015f268f893cbb2a0df18c70de42df16049b"
      "km"
    end
    language "kn" do
      sha256 "eed266cf69698a1aeff3361edf013fed5a10121c81ab194a54b366e28e76ff76"
      "kn"
    end
    language "ko" do
      sha256 "c45054b3ceb6d35078cd863aa338b97f90c6450ca36598b8b01a9d753b61e2aa"
      "ko"
    end
    language "ks" do
      sha256 "639df813af5d71604e0a99ff4972db12f5e5394ba9f35d1d05a10662c4bff0f0"
      "ks"
    end
    language "lb" do
      sha256 "51dd04e6045f34ca87dec7639f13a750c5bba49e4df4d16bd1fa7aaeed72cd23"
      "lb"
    end
    language "lo" do
      sha256 "a06321986261e0f4c95b9548c4a3982e20e82108f2b4e056b5c52f931f971a2e"
      "lo"
    end
    language "lt" do
      sha256 "ee8828e93e034edb265cc8d3d3c5dd6e21bea5179dd3975d1a9cb3b2ce5a4280"
      "lt"
    end
    language "lv" do
      sha256 "834c6faf041579b0b4ce3e220134e4e338ef75c35947c823b23bfecbc6c6cba9"
      "lv"
    end
    language "mk" do
      sha256 "259598e94484a2bf7020336e4051d359633bb929cf49fc0bd2cd707f99fdf36b"
      "mk"
    end
    language "ml" do
      sha256 "493ca0b0a6c5481941d257463f5018634a10db7becfee701cdb6803c004420ba"
      "ml"
    end
    language "mn" do
      sha256 "bf9c006042935f45df63ea209bc2c6007f5b4696c4db97dd9a3d549fe15c60f7"
      "mn"
    end
    language "mr" do
      sha256 "e9207e79e07b98a3d828b82f6a64bf29db5d65b5f2fe5b129f433253dabc81e4"
      "mr"
    end
    language "my" do
      sha256 "ae0efcb0340df4ae37480f2db90c1926c2147739eaa07a4294a3d5e63a2cc828"
      "my"
    end
    language "nb" do
      sha256 "427ac8ecbc40eaec1d01a7d5682c4b24f736408e6133d125b732775f160c0e2f"
      "nb"
    end
    language "ne" do
      sha256 "a50bf4223fed496b22c511974d61a1ec8058eb474a54d37f9a6dd944ab6ad019"
      "ne"
    end
    language "nl" do
      sha256 "281bbb3dccca34d8528ee92d2ed15ae95ab917bf81d6b0b61d232183ab8b64a4"
      "nl"
    end
    language "nn" do
      sha256 "37e3a2b1e93cbb0b9afb8f9f1a09a96af2cd5e827d963246b35c3054447c3f3e"
      "nn"
    end
    language "nr" do
      sha256 "2ed36fb949b806b877e625c4cc79dcac3f180ab03445b3432f6775d59afddf8f"
      "nr"
    end
    language "oc" do
      sha256 "b6509f07bfa6974c494bf1b7a9f18ade83d46b177d80cdb0aadf29f9d960aa94"
      "oc"
    end
    language "om" do
      sha256 "54ec566c635fe4e0a585ca9a44bf187541d3093da5d1cd010e5faa00044350b1"
      "om"
    end
    language "or" do
      sha256 "c5837121336618ead69b851fcda228ec0395e4a128fa988aaa16f5ccc994cec8"
      "or"
    end
    language "pa-IN" do
      sha256 "31ab530a0954f2299109619a3e59d2d505f6abf534da9f986fb065f480bc8e46"
      "pa-IN"
    end
    language "pl" do
      sha256 "b6203c2e10da58bd861015054414d7817c07aac81e7330a573b6efd93d8573cd"
      "pl"
    end
    language "pt-BR" do
      sha256 "0ac112504fba1c2724265e081c22966592736eb47b8ae0c1004b8a80cca928fc"
      "pt-BR"
    end
    language "pt" do
      sha256 "983fdb0b937d00ecbac8be805d991a6d981a167766d27fe2667e6bbae3c25e5d"
      "pt"
    end
    language "ro" do
      sha256 "0bd581aeb5bdb837bfb447f45f714d704b1a1e3efc02acadc12aa890edc17502"
      "ro"
    end
    language "ru" do
      sha256 "72d33eb10a528515551502eee99a6c870d32c3a159e4c7ad48cbf6607941f200"
      "ru"
    end
    language "rw" do
      sha256 "70eaca6a865a7a6eabfec163f8967c2f423958f4672ed02dfa353151b476d360"
      "rw"
    end
    language "sa-IN" do
      sha256 "99791a4af9d54516eaf0b68ed0cbe6082faf5114c4ca60624429d78bb02b8593"
      "sa-IN"
    end
    language "sd" do
      sha256 "2cb0f27862dcb97cb8104ece1157e0dd58a4e7986deb66539745b75b39a0b5f6"
      "sd"
    end
    language "si" do
      sha256 "ffb861439a1b41ce4ec157c08d99830dcf6c6700442a7825d5d08bb579c4ebf1"
      "si"
    end
    language "sk" do
      sha256 "4b7314e4a192d5639d707939265e48e8139e20403e20d374d796e4cfdfce8325"
      "sk"
    end
    language "sl" do
      sha256 "b8e9771aa76123ee68f381e5d84a3a3621515efcd090b6bf13a334518c6afd40"
      "sl"
    end
    language "sq" do
      sha256 "412fd641cee62d164a18932a209ca8ffd0dc5f597c97241b28eb46ff0a13ba6d"
      "sq"
    end
    language "sr" do
      sha256 "6512b188ddadd4e4ca4b8f821f562bfe3aa550ea15401b65b73a1b88e3547537"
      "sr"
    end
    language "ss" do
      sha256 "4977b2016b080fec276d647bbd1c73331b38bbb069fc1e3bb309fd1008a2a234"
      "ss"
    end
    language "st" do
      sha256 "88a8e442efc3ce2daa3d19b83a73dc54a0ddcb087481217bedf5f58d25eb64f2"
      "st"
    end
    language "sv" do
      sha256 "18125cfe85174ae3017512be68ea83fe6d659a67d6872899c1442734e4a058b2"
      "sv"
    end
    language "sw-TZ" do
      sha256 "77a63489e7eecfb03c849384b23a77e4d5d1593cd7ae0f35143ae2bbd3239581"
      "sw-TZ"
    end
    language "ta" do
      sha256 "8512f381720d773ef96c86536dee2c9af006068e3061e32b0f1f8bb74f17066b"
      "ta"
    end
    language "te" do
      sha256 "e0bf0e7582c16b821cb1ec117efdfc8d6714d3d9ffd8c07da5a672c985701a12"
      "te"
    end
    language "tg" do
      sha256 "0a558007a2372dad6797b0be8f5edd0a50dba31de3e5f8765b306c8b87623986"
      "tg"
    end
    language "th" do
      sha256 "d5b079b3e5ca6a9d9948a2dc995f4adfe4211e43a723446a2166b43d709395f9"
      "th"
    end
    language "tn" do
      sha256 "df7116c107620495306df5af674b7981c6b69d385ede6f082e4a27fc0ef83449"
      "tn"
    end
    language "tr" do
      sha256 "d7f636ba3721dbcd6585514b763ab5a4a193ea9b45b71f4057b9f1aa222ba35e"
      "tr"
    end
    language "ts" do
      sha256 "5511257dfffcf49669f80077b16ad5ec52944b660b925a98e4d94294e539013b"
      "ts"
    end
    language "tt" do
      sha256 "aacbf1695c6cd0729e833994e5f6517f48753453b3959dae2e47a4a5787fc690"
      "tt"
    end
    language "ug" do
      sha256 "f48f25f1739bcca3a0e3285b55cf7f49d7dbe4c9d41bd38fdc821f1ed7b93198"
      "ug"
    end
    language "uk" do
      sha256 "dc02e6bbb547afe52529be7c25c9f0ec1cbeb9a778f154568cf1945a9c0e715c"
      "uk"
    end
    language "uz" do
      sha256 "3bdf605f5332259e276d11bec7863e90380fae4e06604bf227db5b9ac4fb4243"
      "uz"
    end
    language "ve" do
      sha256 "979b024a989b79d85081c3478496c015d68af5a2cbaf18debce7ccfdcd552ada"
      "ve"
    end
    language "vi" do
      sha256 "4c49395e24d40a6ab98364814405b2613fe2556d6240225e07f3625c75afe5a4"
      "vi"
    end
    language "xh" do
      sha256 "c555374c33a9cdb95e6e52c0f70231afbc0f36e1ed3db02c093fbc54974ec222"
      "xh"
    end
    language "zh-CN" do
      sha256 "9d70abe7f0fddcbc84ea79a7a3a91731b76c0714ebb11add064339e3ae579ee4"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "713d41f57d67b628cdbe0fefd17ad10f29d631ee138e8225a121cb2dcb811d70"
      "zh-TW"
    end
    language "zu" do
      sha256 "3181eab669f30eaa5e8edddbce237fc2db66b805997922857e27bc54c1a3b3ec"
      "zu"
    end
  end
  on_arm do
    language "af" do
      sha256 "2fd270e6788682235113e1b407da48801fe2b103d17dff9fd276779fa075519b"
      "af"
    end
    language "am" do
      sha256 "2acfac2578ed07265d61d103e6590f8b32fe026d4739090e714a948caeb96317"
      "am"
    end
    language "ar" do
      sha256 "bc8bafd6304aa0f4867b0520f9410a45bab9bbc8be525297f45522880729c281"
      "ar"
    end
    language "as" do
      sha256 "be18734b3cfcb0dce3700c7b52639da490b8d62cd87c1e4acdb2f10bf466ed81"
      "as"
    end
    language "be" do
      sha256 "ec6a3c9eb8cee2664d75b297ddfc3b8e5d01407d482ef090ab286bb1f7803219"
      "be"
    end
    language "bg" do
      sha256 "43fb797c403037760b1674403604e8afea9c04dc1ef5e31b5b313677a719d947"
      "bg"
    end
    language "bn-IN" do
      sha256 "530aae39c0c1b73e348c9118c468b9e403bc453aecbedf031eabad360a991303"
      "bn-IN"
    end
    language "bn" do
      sha256 "b3a3f39d559198e602e9a2ad85efa730860a2c293c8631c28a199e6e02934834"
      "bn"
    end
    language "bo" do
      sha256 "c9026d82a8cb8e86d7b85bd40ad548d88743568b8b295d0fb75a4c9900a0d32a"
      "bo"
    end
    language "br" do
      sha256 "2d242906894034243966688ad9305d5c4c4e77c950dc80ce21565cbfba147ae3"
      "br"
    end
    language "bs" do
      sha256 "3a8d06bc314e43e125f5a9d6a2ba8d3e87ff8e9a2024a418138b4916cd7565f0"
      "bs"
    end
    language "ca" do
      sha256 "6edefb30c85ed7c34dfe801e2f732689241906ba8fe2bf3a59c9fa77656e3f28"
      "ca"
    end
    language "cs" do
      sha256 "eb19f85176747cdd52e8d7df947cd5b38d137f881a769299c01c0a5e904d7702"
      "cs"
    end
    language "cy" do
      sha256 "5ad0c8e501bd4787d0c6aa35a9039854db15e3a55799de4d44b0ff8b3011343a"
      "cy"
    end
    language "da" do
      sha256 "b5066546b9e1e61671841366d5db780896db34a5f0054539239b68241297bcf1"
      "da"
    end
    language "de" do
      sha256 "1e7ec7f09bb1104dbda39021ddb60e91c9fd6db30e1b650c94e67dcba196717c"
      "de"
    end
    language "dz" do
      sha256 "aa547c77560ec203558e5c5acdbb9baf0900982128bb3a043146f6a14158c470"
      "dz"
    end
    language "el" do
      sha256 "51c9c10808ce0ab39a7be3f208e026719008dc0750af6d957394aba2ccdafee3"
      "el"
    end
    language "en-GB", default: true do
      sha256 "e50574e3c28bc8da3735a98da20ac1d78590c9fdee1a07e835b2ce42ecb9b4e2"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "f9b42dca80fa26722a3fa76300ddb3cbe58b5abe84b64751e525a0b4ee905bbd"
      "en-ZA"
    end
    language "eo" do
      sha256 "98ab2bd326e2e183fc0a5b7e2b4eb35e02294a47c08faf0fa528aff01adc29cb"
      "eo"
    end
    language "es" do
      sha256 "070ce20ad1b5f667a67c15e1de9c978c2504d821cafa90262a7fa343cf0b4e0f"
      "es"
    end
    language "et" do
      sha256 "03119f66a1f65495b193cac16befdef7036c1853878f2c373a3d218383b38ed2"
      "et"
    end
    language "eu" do
      sha256 "97fd2c2e09dffb88c202361ce70d4edcf983fdb8dbcdf32bfc37b0de843e86c9"
      "eu"
    end
    language "fa" do
      sha256 "0aa09d4e8f7ec0bab9e10e4e01ffd36827d707d9131f7dfd6508b22cab344a32"
      "fa"
    end
    language "fi" do
      sha256 "405bdbb3a0e37570a021d8b2dfaec51634a1ca183843e47f7740050545ac8fb8"
      "fi"
    end
    language "fr" do
      sha256 "2196bd04f468ec28d01d9810bf46a1fb5559cbe5e5f8d8de28b2bfb1abf91d05"
      "fr"
    end
    language "fy" do
      sha256 "5ef3f4bdfaa6ae1d58f9ba6ffd58d745e588b9bb4222d3c5c558c77fae8ffbc3"
      "fy"
    end
    language "ga" do
      sha256 "99ee05c8e6e3ac69b5311327d8650307824c497f30269682b09d9bb540875032"
      "ga"
    end
    language "gd" do
      sha256 "ee73fbee6c37f906ac47038711fd2f2cecf091ff22e634ed3d7e00c4f138e500"
      "gd"
    end
    language "gl" do
      sha256 "0b8ed10054592d6504b1129e5de406823d417a8aabbee54264b772873c2f56f8"
      "gl"
    end
    language "gu" do
      sha256 "0bcdbf351aca6ddf4d76a402001154d11f610efdc2ea91243358c6aff2114696"
      "gu"
    end
    language "he" do
      sha256 "114dbc2acd041d969b06246adbd8c1b9a0db729e87e8923ffb04ca141bc10336"
      "he"
    end
    language "hi" do
      sha256 "b08d8e36887e640ffca407217f5799c7b1fabd45f438c03ca59f895ad2123bb3"
      "hi"
    end
    language "hr" do
      sha256 "b9463c0d54b5dc27f92bcc820d499ae7b385368fa40b93cd82ec1024f78640b9"
      "hr"
    end
    language "hu" do
      sha256 "535ab42d3f56ab345e4d84b115fa7bc76cc55ee04b31f75b99fd72f685fd80c0"
      "hu"
    end
    language "id" do
      sha256 "91e95f7b4c44964fbdccbc7fd860d47818d5f639903ca4b280af8a91f3f21910"
      "id"
    end
    language "is" do
      sha256 "0dd81b2e5d577bb2e11056cf20cfecd839adebfb26cbf52802138f764a786b8c"
      "is"
    end
    language "it" do
      sha256 "d87fe9f0eadd584c38e2b9bc8380825fe4986f6078b2d556b4d66513f70981b2"
      "it"
    end
    language "ja" do
      sha256 "7727804609008324b1d6d7a51e87e750662d03dd21125ffa0055cbe82a195634"
      "ja"
    end
    language "ka" do
      sha256 "d40dcb29d99799a4e416777de6cbb49f80c7fc9edc6b6e35d51066ef156a1d4b"
      "ka"
    end
    language "kk" do
      sha256 "233ab12626e69c28087e1ad39ac2113278a6288fdaf8c98b00e061b7a177a662"
      "kk"
    end
    language "km" do
      sha256 "85bbd09d8e901f200eadeb3d63c29359609ac4eedc595f27e8e4db5cbc8e2afe"
      "km"
    end
    language "kn" do
      sha256 "d2dfd21e531bf595a527196a0b48a90d79d70685714cf1bc7c771f68de493881"
      "kn"
    end
    language "ko" do
      sha256 "51270108dbcf53a6f9545f04ef66a1e0fc7495fce422d51d5978480a674e8b6d"
      "ko"
    end
    language "ks" do
      sha256 "3d141ee5cb1ebef57749c688df70fb18742abe62eeeabfd1ecfb29d528115c5b"
      "ks"
    end
    language "lb" do
      sha256 "939719bfbd821c64ab9777b5f922d051823cdc9bf1c0c384f140ef43c457a3ab"
      "lb"
    end
    language "lo" do
      sha256 "47d707ad50ae3cf8e32b1f3602711fc1ca830908f7d9dc59a9fb19341c4e7c36"
      "lo"
    end
    language "lt" do
      sha256 "97f40621053591a17759ffb12ac90edd9453ded15950538063ed15c4b81b20af"
      "lt"
    end
    language "lv" do
      sha256 "5001c66a4d18dbc654b2d0c949c5c232047f8dd1d685ffa30bb75430d3d72d76"
      "lv"
    end
    language "mk" do
      sha256 "53129dd5d1d435ad22dbd293d9d8a8cc6a13452dddec4b15c5656e177e930ec8"
      "mk"
    end
    language "ml" do
      sha256 "a2a45746cb1cab5643c7b6929fca82773d794bfe80bc5f70d8fca9b8955302c2"
      "ml"
    end
    language "mn" do
      sha256 "736703052dee29d61e4a563a0e35c7af92350698566702512e6f209e74c2c543"
      "mn"
    end
    language "mr" do
      sha256 "f3d2cdf541916492db6643fd3e742a4b011a610e2cea36d4782d7a1e953cbdbd"
      "mr"
    end
    language "my" do
      sha256 "5eb3b293c89cc79b9792cec4f280037265894c27efe9fba8e2c6070a8ffffb45"
      "my"
    end
    language "nb" do
      sha256 "a88f325cc78db7d4e28ee912657e0fde02d64568b8a684725c2d48860dd318ed"
      "nb"
    end
    language "ne" do
      sha256 "941006184b88440b2b3612054d41f903948ee5310b154452e2f4499bb342b81b"
      "ne"
    end
    language "nl" do
      sha256 "8e916b26858df7b99b637c827484f071693491f61e4e2d119a1ed0c0b9137c3c"
      "nl"
    end
    language "nn" do
      sha256 "057609c365c1959cd4dfb33d7a259ede88aacd14a4ba663e069aab76d0c7543f"
      "nn"
    end
    language "nr" do
      sha256 "a5b0101c1e812b32f0ae6a7c70f737449983d5e36ad26c9d436a88c35af529e1"
      "nr"
    end
    language "oc" do
      sha256 "33695d40d690a32058e527fc8709c6aa235e549e648544021d3a954b6f96cb39"
      "oc"
    end
    language "om" do
      sha256 "3d6093c5260b99c9a810342aea7e7df8bd8eacb137f9517fd38af86b7746be5f"
      "om"
    end
    language "or" do
      sha256 "7b404cf08d6e78b6cea20c7b768f3c605c12a7311c80c3ac2649bc62d39af15e"
      "or"
    end
    language "pa-IN" do
      sha256 "2d02417e6d024b6c8be69ce4fe1794e83a4898e437b3b9e92f61463188135cfd"
      "pa-IN"
    end
    language "pl" do
      sha256 "78d3c5d5401a3f1830dd273ce7c0eb63f0f3aa5ace846c35e460ac4e8a1b59c2"
      "pl"
    end
    language "pt-BR" do
      sha256 "64318ee669d60bacae13d6915cb2e1d113ba1fe5c90fbc3873b603da94feef90"
      "pt-BR"
    end
    language "pt" do
      sha256 "6f5183b50dab1cdbe6c0dae4479334b71054cce3f5ce1d35adcf9a64fd2726d4"
      "pt"
    end
    language "ro" do
      sha256 "06b2c5a41ec3f6c6a2f6f61843bf751e5ce20022ac16bf4ee985b342e6382aa6"
      "ro"
    end
    language "ru" do
      sha256 "8fdd46bce87ef7c18e39c4690b006a93be921a395d341a13227dd72ba64c53c7"
      "ru"
    end
    language "rw" do
      sha256 "b1d1706a2d81fd5e2a2e6b20023d8eb7a17250fe42bd18992202a22c8cb05cec"
      "rw"
    end
    language "sa-IN" do
      sha256 "33e57d2b17c5c5faa2bdcef092584191edcfe3dbed863266527d7002a9ea48f8"
      "sa-IN"
    end
    language "sd" do
      sha256 "c6eedeff543be730aeb46c5f7047a0e79a4b2aad15ed5e640ed2c7012caef11f"
      "sd"
    end
    language "si" do
      sha256 "d33f8851c1d51e3a041aaafb8314b8e28876bf880c0806a4c2696a815c572ede"
      "si"
    end
    language "sk" do
      sha256 "ee4bff6125eea183ab46ddec5a09cbde0c978566b5c831f20863819351223a97"
      "sk"
    end
    language "sl" do
      sha256 "2794c2d2a2a3ea48cba34904e55692897ff51bd763f4ae42921b5664f41364fd"
      "sl"
    end
    language "sq" do
      sha256 "4014537b0873038801aa7340114288f2d494fe6fae667052b81ede65ad65b4d1"
      "sq"
    end
    language "sr" do
      sha256 "adfd0a388c6525184da4faf41555c09507b7fedf8f0d496160001cae6019e92a"
      "sr"
    end
    language "ss" do
      sha256 "9029d805e96fcbe8f3ba2941de3121fdb39092eaa00c2d9c426c9eb9067929d3"
      "ss"
    end
    language "st" do
      sha256 "44ba9d5426de3b5b7cc685d0d18a338b183f126eb4972a8720242de7fb580e3a"
      "st"
    end
    language "sv" do
      sha256 "1d60b1a97e7fcbb2799822dad514b67eaba9efe1e7028ab5d15a2aa2492d8658"
      "sv"
    end
    language "sw-TZ" do
      sha256 "1ded5a6b7361d8ee90906fceb696c5c21554312deb60a33ee54e2d1e3822c927"
      "sw-TZ"
    end
    language "ta" do
      sha256 "aea72f75422f2ded64939b8407022185678180ab3b88ebbe0a291be8fcecb3dc"
      "ta"
    end
    language "te" do
      sha256 "23d1fb9f3bc68f0781ed4472d5f955bf870987f5cefb0179135fa934c733160b"
      "te"
    end
    language "tg" do
      sha256 "54e78db70590afb2113853e8a192308c766d3287d60f7d3e2ba07d4abcfec587"
      "tg"
    end
    language "th" do
      sha256 "cf8a1078035848655d2f81cbc430b5c6dd8774d8ec9ad08b0551c261ec5a2550"
      "th"
    end
    language "tn" do
      sha256 "56c161d77a0dace0bfef720d1b268b53a4b7bb35f0cdcaaf757d3e0f681c868c"
      "tn"
    end
    language "tr" do
      sha256 "c75eef12d7bd5b09bf3e389f7dbec894e83372edfd42409dffb61a3f95a62b29"
      "tr"
    end
    language "ts" do
      sha256 "aef209ee0dfb8c64dfe1a9f86231b812b107a34957842489b79f200afac62a55"
      "ts"
    end
    language "tt" do
      sha256 "623ffd1c7601015ee5a4915241c259b2adcb169cdf9d0932e00ce4052b20ca71"
      "tt"
    end
    language "ug" do
      sha256 "5bbc6ac2f770e30ed7d67f6a40fb6e2c56e2fb5283d81dc771a35bebad9da79d"
      "ug"
    end
    language "uk" do
      sha256 "dab24a58cbc3cc1e7a39ad3a55d6f1aaa4350812fa9325f9da6fa37d0692aea3"
      "uk"
    end
    language "uz" do
      sha256 "52997f01963006abd232ca65b36ddbece23c0cab47b84a37f96339622008f46e"
      "uz"
    end
    language "ve" do
      sha256 "6fe50ddd7f3676650076d2f44853f282c38036545a57fea32814d768b7e591ec"
      "ve"
    end
    language "vi" do
      sha256 "4c4a671507da3885f17dd82444b95a1f4246ac8ab97be149dc03f9c406ddc35e"
      "vi"
    end
    language "xh" do
      sha256 "427f5c3da129ee43fc534b98a35db39070e49308368bd5d63a1d7d85309d0fc8"
      "xh"
    end
    language "zh-CN" do
      sha256 "d32cbd8c894dd4506b03672bf3f8b8792d76e435de7db11488b1a4df2b8fe163"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "be59b895dabd69adbe80f982f08060a750c86e6a8c65cc7ab93aab7db40228ea"
      "zh-TW"
    end
    language "zu" do
      sha256 "fefb86f12f7fa2496a7110f76647d1e54cebe3fa1961e081a58b5e02013b6d5d"
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
  depends_on macos: ">= :sierra"

  installer manual: "LibreOffice Language Pack.app"

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: "#{staged_path}/#{token}"
end
