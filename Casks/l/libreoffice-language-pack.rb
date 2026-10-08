cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.8.1"

  language "af" do
    sha256 arm:   "8c8025d9fddba1ec0e34c1c08a1da45f6595b1c5f627fbc6d63cbc746e57f315",
           intel: "65fded55643a19e92f4eb049e00dd187a3af6478ef71eb1b55e984599380e89d"
    "af"
  end
  language "am" do
    sha256 arm:   "50b69b6d58117de44b0c022083877eda23559aedd7ba0c84693d8e1828f4b1bc",
           intel: "76ca5d1f3dc84f40ab8c7db8c1296ee865fad21f8b05e9b8945149880198ab29"
    "am"
  end
  language "ar" do
    sha256 arm:   "0287eeb9c1b8992ededcab3708ccdc6c24b1aa20f7517816fc5a46cd25303dd8",
           intel: "46787104afca58c70c240e9aa9ee8c42089d70625e4b2790034602d95b88b6bc"
    "ar"
  end
  language "as" do
    sha256 arm:   "0e02435c5a1a0c569b7a8e782ca1261ca5c749933a239198930da98b9dda0da7",
           intel: "fd03fadd0f77bd7a0cf21b36587d5a556931a84f5011cd3ab4835a1db73f71bc"
    "as"
  end
  language "be" do
    sha256 arm:   "434aa3c7beb5d10aeaa96cdbae5c459f4dba5bf31236cbed19527406ad7068b2",
           intel: "b10baae865e3e1490b5506a827e1b60bd493b1f360e668af69b33f059e3a5d72"
    "be"
  end
  language "bg" do
    sha256 arm:   "ed17a617b84377fe3ca2b0262bf61f6bec9ebcd1eef4ce66879dc583fb838e8e",
           intel: "8c0c4ac20e113b162a20f47ac8295316d757fcc391c38b59f23d584f6955da98"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "dd4eaf809f2bfe78c43e556719915fcb0938d0861a32f14482be6c71e88d0f7b",
           intel: "1fcea30fbf56ef7cfb4acbf0f2e4c75440112e951beb14c578adbac29141cda2"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "7327d031fe4d32245478f7aeabf41b7e68968fff10cbd996b6e4aee0d0cf1f17",
           intel: "fa03299f55dc06cebcd37f4ffbe8c627913b4921a56a186feaa4d5828eddeec4"
    "bn"
  end
  language "bo" do
    sha256 arm:   "defc61f981cfddc81fca4f70560ca4f9dda99e9bfe55426fe017ff5507a686f0",
           intel: "1a0b5d12d0d9376e0f28ab5b6ef8643f69071e776dcd5756b5b51d4102d5d233"
    "bo"
  end
  language "br" do
    sha256 arm:   "c3d63ceed87dd4a4e84b7bc224daf92f457ac895f678f8a5c3ccfffb1b7b558f",
           intel: "d22c619197e89cf71f720dd1816f7f4ea93e002929536de3619e928427ed52dc"
    "br"
  end
  language "bs" do
    sha256 arm:   "0280d913e6f203798a3353ca63a30e3f3b49795aa3e8d59d2ec7859f39d50be0",
           intel: "b66539966f5dea823019992e8e4c7e3fc04e51cc525aa1bbd1ac8194744c9ed2"
    "bs"
  end
  language "ca" do
    sha256 arm:   "7af3a2ec4c1d10f7dcdffc985ef4f6d59edf612f382541dae1ebf6e63d86d057",
           intel: "d59b6ca1e4ff6e36678b1b25e761dd9972b9c1a587a0d0284ab6dba420d41866"
    "ca"
  end
  language "cs" do
    sha256 arm:   "b9a816cdaed9605d034023a437b15da63cfe51a75df17ba7687e00ae5e897a30",
           intel: "df515c0f5c91ee695cd53e3167cad719064c8d86c37d3f132d7d464c22ae92eb"
    "cs"
  end
  language "cy" do
    sha256 arm:   "cbc67553a7cdcd52c01bb1f3afea1e487f5742cf786b6e2f8e7d0624fbf57380",
           intel: "522e1d0428445090679b58a752cb23fd2d1831d4140e1fcddfe7ac3a88a2d94f"
    "cy"
  end
  language "da" do
    sha256 arm:   "9a82ef7fb9301d1496d9d760b5e3624fd8af4c66c3bfa32cd6a62041cb2027fd",
           intel: "146ed47613ced06f2d0dfe65cbc077fd14d3a86cc635075b13598fb6bbaaecb2"
    "da"
  end
  language "de" do
    sha256 arm:   "614dab9b71db4fc165299028e1366f791684c792c34ded05043be83316b650cd",
           intel: "81c3c62b59065fd34a43b0681ec26f297a2666c5444f6194691f867ef81bb999"
    "de"
  end
  language "dz" do
    sha256 arm:   "b7161c9c2cdab2995770c9cd5c850807beb19c600b9678c3952e53c38bdfad8f",
           intel: "51dfd19e42baee6561a7292f689bbff2767aed3d365c651f763d51de314005b8"
    "dz"
  end
  language "el" do
    sha256 arm:   "e68972f197508f1e777ef635d42731a8e3a67769f854c6e4487b22bf88845935",
           intel: "2dbc616137682e322708e81f07367af69a3b15ae8e3136296a230947c11e111e"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "9621d64821374215a37351d48baa9dfc6e9ffbe81586e7b045c8a33fb395acc6",
           intel: "041f72b7685a5c3765aac9ea73cdabdb6996695097057e217279d48b8963f6a0"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "4a0825d35ab886509a7b56855cb1ec6bdfbb07e3ddd5b6bbf158e991a08d4e95",
           intel: "7caa800cda199267651f5b815c786b56b9726728d10972cbc9c1c7b25b73e730"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "5e64e49d602f30cf81072d850d4c020c96d87de0440ef6a5c4081553afb3ac77",
           intel: "011e1cc0f208c70a0e8995b89776da7500c2dbcede10767f79473410ddd8fae6"
    "eo"
  end
  language "es" do
    sha256 arm:   "fd880b017910bcc1e4179fa3a170211d2e94b35e3ba30b60c47b3473d4b2ebf4",
           intel: "553d09fb18378f3dd609de91a70c12c0f1a56f7345c4339db9c5e2f4f00967a0"
    "es"
  end
  language "et" do
    sha256 arm:   "83c6099bc86118e5bec14723f107381cb28a4d31d62174662d5485359cea4561",
           intel: "c66564112550a1e6f289ff706f7e1f3486be9a70bd7da4b239ff4202ea45e872"
    "et"
  end
  language "eu" do
    sha256 arm:   "9c0395ab940affc6ea73a94b86f05313e3cad40eebbdfcf83af8b9bd0f768c40",
           intel: "df19585f286cb057d01a54f7617b68262b54e3b08ec49756432983c001d37bb7"
    "eu"
  end
  language "fa" do
    sha256 arm:   "b98d9a2f9810f7214e42b2d0acca5edaeb4161efadaf3900e30ae05ba927257a",
           intel: "b192db7659b70c53e19283050beb84bd37a55a57db3dd5bd5e55942514601165"
    "fa"
  end
  language "fi" do
    sha256 arm:   "df0043bf7b122ab2e581085be27512e3de8bdbb66a1fb21698d27e82b068335d",
           intel: "8d116af52c9bb7f34e9b1aec89fe7e69f12dfb764ce982dfa7a029298db242fd"
    "fi"
  end
  language "fr" do
    sha256 arm:   "66deb03547ef4c93939819f3b1149d7b6338ecdda2395c63e527ca36428fd4b8",
           intel: "75e9e6729e424047edeab09d90433016e745f45d0838f9575d20e85be69148dd"
    "fr"
  end
  language "fy" do
    sha256 arm:   "04503cafad70ecfc7d501ebc2cae98c7bc6a04befdf675543feaa008490845b8",
           intel: "36470331742525319f7153f2bd0af412f5da38b0ce3630212dfd9880a01744e8"
    "fy"
  end
  language "ga" do
    sha256 arm:   "0a202c07b9966b3d074b2e11688e72d8bd52d7c94b3450ff036875ccb42f6d63",
           intel: "02b5394e9d2e3e9d9b3297f55bf1acf784388f7fdd354f62ddad7036d7a39d4d"
    "ga"
  end
  language "gd" do
    sha256 arm:   "09cd4e1e828dab6d5117c594967cd6f74e985390f3a98aed097685eda5c79b4a",
           intel: "8565cce819e30a4625dc587ad35165d3900fe10e5258446600783b49e1abdc70"
    "gd"
  end
  language "gl" do
    sha256 arm:   "6603d5f3154caab45f26ab5d8ad1fa163765c0164fd0f3a578a27315b11a60a1",
           intel: "e857c286c3d285ecb7a5eb25836b637ce9aebda6b6d976dbd1de46ba3f14762b"
    "gl"
  end
  language "gu" do
    sha256 arm:   "acbd7d65227f28c45f657afb959179697cd94e0a1b7d6c80bdd844137846d77d",
           intel: "6ab87a7fbcb831d06fd2c186b5a80bf5430b873b7ce7ed11725b5d29f680dca7"
    "gu"
  end
  language "he" do
    sha256 arm:   "62bdd07fc6018d2d75fc664e14264a9bd0005ea0be288f046cac7f571617e150",
           intel: "339ec262e1247aeb883d5ae8e4591afc38326622000c41b1e94de0e96a6ad063"
    "he"
  end
  language "hi" do
    sha256 arm:   "6080d2f58f72d76a79766efaf0cb19dcaccc67bbcca42159ac3d6d2a764440ab",
           intel: "18abd6827520346b48c73de2b389e0b4099dfcdf47bd93c04f050d35213ced97"
    "hi"
  end
  language "hr" do
    sha256 arm:   "09550d3c66822574dc59e61e31c462925082dfac1d98c2838cee085bee86b1bf",
           intel: "41c117415628f406a83bf8492622abbfcf075cccd8f1a3e68d8c7bf47d02e416"
    "hr"
  end
  language "hu" do
    sha256 arm:   "2de37d9a88bcbd690c75d896d65b71c2def801564612bdcb137bbe30af5f3c0c",
           intel: "ec145969bcdc9eb52d4e3ffe87ce6d8fec5b56fa3e9b0b2f337690d0943cb219"
    "hu"
  end
  language "id" do
    sha256 arm:   "5b2ffa2b4e6a84deb32152c09ec1a571b860f71e904ebd114dcb7195ec3da4e2",
           intel: "6709704ef1bafb09095dc0cd80dbf6b742589c92815419d4f446d3c2b0f96807"
    "id"
  end
  language "is" do
    sha256 arm:   "d7168fc6f78568e6eb9d43dc1c380a848dfe856ff30f25d9ef4adb517fc78a8d",
           intel: "898a9d20348fec71921454cab7b171a6bb6e426409c4aa3f1ae1b94764374e62"
    "is"
  end
  language "it" do
    sha256 arm:   "ec0bedafb857d36c4ec1310a6fc317578f844fcf47b7d2154c6dde88ae86761b",
           intel: "126d612ee769cf6662a8080ea4f1093bad5683833a87cf0d9bf5336f0e174b10"
    "it"
  end
  language "ja" do
    sha256 arm:   "685ea8601385e72051d768bdeac42dfb1105ed776752a7a5a7738b226eadffb2",
           intel: "6292db5d33a72f89c81c502d2e5eaf72d31b3586ba9c73f4df5f567f16c100bf"
    "ja"
  end
  language "ka" do
    sha256 arm:   "dee1953903f257911d2001a81c1f415ce88d7d9ca25ece3c5537518a0674b30e",
           intel: "785c6bfe52706f958fc5c32df971f7f86916480647cf100a7a6d7daa64737c43"
    "ka"
  end
  language "kk" do
    sha256 arm:   "62d0d4b5f38537c9d94cf3ce18cc93acbedb7df6b28466d14010379e0d82572e",
           intel: "3ca9e4832a4cb052f62622f864bfb3db2e30287ec79e2a574aa40d7b1284a26e"
    "kk"
  end
  language "km" do
    sha256 arm:   "5b0887e609085b2a2f96f460938b921db808b1532309d3e720a30a77e687a5ce",
           intel: "13f2ca8f8e9036619291b274d62209b41d60698b9ec455a0c52d5cfa1213f413"
    "km"
  end
  language "kn" do
    sha256 arm:   "b36fffcea4f33b422b5312a15109c9d39eeefe585dfdfc7f7157472ffa5b7154",
           intel: "b9945977f760981b7a1ccc21cb7fa6853a6b7ea05e15d95e0e904edb842b72de"
    "kn"
  end
  language "ko" do
    sha256 arm:   "2eb300c6fc9f9050532f75842424746bc39cdf2a2fd49224b0e60795fa769a1a",
           intel: "c107b0fda7f67955ced16bd383582eba24bc417a7048a83540795f8fafe7ca7d"
    "ko"
  end
  language "ks" do
    sha256 arm:   "e217452bed12f9aa44548d8cc8670fd4d05fa39deaeeab94a281ed4dfde2a79b",
           intel: "e860f63ce59cba519a76fdce6da2af41e3cfa640637bafa1aae25b06ab7138e7"
    "ks"
  end
  language "lb" do
    sha256 arm:   "51d7259667f4fc73214f3416af691b31596c2b72f4b532f6756f9d6128469d1b",
           intel: "cea70351e0084cd5af883a1a2a1c3a9d95ee4fa51d16ce2876dea9a3ca939db2"
    "lb"
  end
  language "lo" do
    sha256 arm:   "503d141a470e32d5e28f05c099ecf23fda24cb61b6ad7e3b280a612d36b408ef",
           intel: "25b69c96eaeb9fac56225b16b95523e8bdfa2ee8fd4d5d21077efa24d5dc61aa"
    "lo"
  end
  language "lt" do
    sha256 arm:   "86efb29311e61ded9574657f730bb9d3bb84a51ccbab45d640acbc3296c3525f",
           intel: "2808cdf5e03ec040be91e94de77e7d9a4df26d999ebcd7d2b102ae674d327994"
    "lt"
  end
  language "lv" do
    sha256 arm:   "162994d7be5a366dc9d1f6f31a001e4d157b57e306a3084b24ebfa242a0390d5",
           intel: "d79134870298d946937b782e097168440cea2a3946edb85ac7e40768500bc0c3"
    "lv"
  end
  language "mk" do
    sha256 arm:   "5b54dc034469d646c117513b2d28d05c0b748eb7dd9397433d3a210c5a7521a3",
           intel: "4bcdc6a8e2b348ea72255841839e2cd68a11b2658d990d0c841800efc2e6108b"
    "mk"
  end
  language "ml" do
    sha256 arm:   "f1a1f42744bd7a081287300519dcb7edb245543b948345c9f143a1a0f4119c84",
           intel: "8a618ca0a44ac06961a691919cf4da6cc043a38ffe040c3d27dc6a6c8ab5a239"
    "ml"
  end
  language "mn" do
    sha256 arm:   "2a536a51d8c65d3f90b4e1e8d391fc5072ef9503ac62b8754dfed05ac99eb20b",
           intel: "7e55637632cf6ab181ea3baeb53f8623a01fe0665fffaabad2e357fbc304bd26"
    "mn"
  end
  language "mr" do
    sha256 arm:   "29db813126df3f7df9a63a755865f42a4ae91d332f621bbe96d127ddcedbd6b8",
           intel: "e8f6569299e7b146b25988e7c51349fa6a87287c28ca47c4b487fafe176cd862"
    "mr"
  end
  language "my" do
    sha256 arm:   "a0f809d8b134f5ee86677b038d22f5434182b1c0726fa4ef973193bfde379ae8",
           intel: "caf47ad343bc1c32314f2ad2d37a4a357a3b107e19314d4070ff5f994e941d3c"
    "my"
  end
  language "nb" do
    sha256 arm:   "3792bb6c3e108f72a44aff4e0a5a513dc2143f936af1ccc5e780f81c2af163ad",
           intel: "f5d039fa463ed1092f08d8b46facddea4985d02b4589750425e088a160aee790"
    "nb"
  end
  language "ne" do
    sha256 arm:   "15476bbe309e629569ea38e6a1a5ff34a2088f2e83dbbb6b3fd031a0ccafa908",
           intel: "5ce2ca31c9e67fc0715f9db6e63ac57331e8929ce7331dd24778fa83834efb14"
    "ne"
  end
  language "nl" do
    sha256 arm:   "5f85ec4774e4f122d9f063d4a180fbbaba417aa30df1c41515a76a3ec1f9c6a8",
           intel: "ab22b278fbff3838450422d7fd612f76fcf8a011c9933a8a1a75678e817036a1"
    "nl"
  end
  language "nn" do
    sha256 arm:   "4d8b4601caaa3ad4039127751864e639ee8c04cca521caed201da88b5b648996",
           intel: "b749ed11fda4728880c6b95e603b41f36ca76cd6eb72abc6c5cc7ccee1a747dd"
    "nn"
  end
  language "nr" do
    sha256 arm:   "90c8bc6a8c519633df66ef123b72da79805c73cc715def911fdc76ec699d87fb",
           intel: "1ed4beaa762f6960e53d9d8b52cc8b2dd4b2ccefa4667d9c2b1b15f188770b24"
    "nr"
  end
  language "oc" do
    sha256 arm:   "b7066327b182407db0a2e7f208ee3eb57fe8f484a19ee97ffb8cfe4e8bc040f2",
           intel: "14671676b7ae9fc0d33ebc3d92b77fe5e885ab2d3266ee0b66f8d72b58f46bea"
    "oc"
  end
  language "om" do
    sha256 arm:   "1588b31e31778d5ef658369c7c3552da39f7dea8241368754234b9926caf27b0",
           intel: "720f6e570759a5b8b00ad74e0987fd696bc3c9e1e635a463ccd8440022aade2b"
    "om"
  end
  language "or" do
    sha256 arm:   "262d14829df95ba36c3e563716c7c00fa044ee2090baf9f2419c887064b1282d",
           intel: "111eb11eadd642f3f6d8288a0e393bb7c66452636c738d03b3021f31b2ea06db"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "0e05dd324f0bba1c70b6310ebc8161accf99839722f90d08d535210a2d7e1512",
           intel: "9ab3bc0dacf59b57894f81782e18c8a620593ed1dda675069f8adc70d7076bfc"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "9dd05eb15f3c4666345418c4c762e1db1bf759050ba82f850bb3d67a0f462817",
           intel: "d68986b9bc737c198f29628c2d6b32b24f832aba2959307cd91c1745d3cb3a88"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "e44f06dec532e2c71c30a96b08d64149142c967d98bb1f6af1453782a1d1b1f3",
           intel: "620b7f7cb10f99c7d437961be0503ba706a8e2e7d01803bb5d9630d12c46ec8e"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "a6fbc2f1f9758f64b270a8e78c2eac00fd74b93b6c1f97ab3df87ea8e7d8bdbf",
           intel: "ee878e6274e402f343ccb1e4a8cc66d29174ec96edb29ae822c28ecdbac4172a"
    "pt"
  end
  language "ro" do
    sha256 arm:   "fe8e05846478fc8b4cbad818f2d5ace15baa94421961910b8e5c362164590bb9",
           intel: "0a4c929705317ce5c5c6d44495a478519198ac7accddadd391932d853e8f59f9"
    "ro"
  end
  language "ru" do
    sha256 arm:   "c901632888de00ab4d0faa7bd98126a296cb4980a1050219f3775170ae31f9a0",
           intel: "354b4ea922455868c1278dca52a5082365a1809d9dd60461fef32e93d96d93c7"
    "ru"
  end
  language "rw" do
    sha256 arm:   "6275f15bce6f6e46dbc8a81b5479b5aa8accc3d312b7337a8afaf2f6166c7749",
           intel: "c07c955dfa8569dcf42e84f0412a7abf4e7d1db30a66725130b3485091b90f44"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "b902a477358aed644219f0ffe4e3de582b8f690ac873482bc87e2da9b913ce38",
           intel: "d396a24b24b065a121d6d2d48dee1c24d6ea4573a054660ea225aa14ff50a311"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "5d61c5e59035fc02824c125b053debfd689d884d6a977f2be43859eca7f6637e",
           intel: "9401f73b19caeac52188e086163a8b1b990256523c362b20cd6731713af50455"
    "sd"
  end
  language "si" do
    sha256 arm:   "5e6c34cf206edc646036506b9df1cd64e004244b12b10bf1cb8ba421a83824cc",
           intel: "62f7fe572bc381ab800377861cf97fe4318e52dae7b39918eff398ffed40f510"
    "si"
  end
  language "sk" do
    sha256 arm:   "76240c85fa3c13fb770488fffe58ce83f8ce76142d40450b5d9c5075de2fda7b",
           intel: "7aff4988e8490931b91e945952b38f1b7752969d1a630aa62e2dc7a724b789fd"
    "sk"
  end
  language "sl" do
    sha256 arm:   "054a16386b0651315554b166065997eb9d727800b2d199f48243ca150f0b681c",
           intel: "b5735160313666cefcf045d1fe0bb46a278defede9b5c90024b00357da0103a0"
    "sl"
  end
  language "sq" do
    sha256 arm:   "615a0bfe8a7b3489b2f28f104da9bebdad1422bfaf65c831b3fd57340eea4692",
           intel: "64a8619a5badafa8c7266381d23d9a56bf0640488845d493bf67ee100ebdf987"
    "sq"
  end
  language "sr" do
    sha256 arm:   "1c37eba02b5eea9107555a0c3532f547903b94b71733498066fbf8a4d36276de",
           intel: "4b58135f525ae88701fe80d6be7b6d757b7805dabaae7c380b759436965ab3f8"
    "sr"
  end
  language "ss" do
    sha256 arm:   "46b7dcb0d0d3cb22039c4d1e72c27c74b0332f8a30374b1926201a26b1bfece1",
           intel: "ef3041382e1627b5a4457a9992c21f50ba52a959ac4457228ca9a29d016f167a"
    "ss"
  end
  language "st" do
    sha256 arm:   "92ff5e9f4919504850c35d7ceadd818bca6bcfa58d86ce68f74965120de3f5f4",
           intel: "2e3e03e20f6a3a53a473b3d5c7891eed18221d19b1bd80dfb97368bf01c62855"
    "st"
  end
  language "sv" do
    sha256 arm:   "762b6e5a2f07775b4bb35a448f344588847c83ec933c63cf501d49fbedc38fab",
           intel: "0fb04a66e8095614b22b8af5fd842016aff388aa1b5157582fe81cbc8d9fe70c"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "bd78a43b4a43edde58a66cdc8b00b23d3d57631266096b2226240b4190acfa85",
           intel: "a8a8442c5db044d0859ab1d79080b2046d04850cc6c77b4a96011c80d45f269d"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "57241edd596261c8593b33f0799d0ebc28214e3a0f69063d140f974c393bdcf9",
           intel: "2bce49f78e983aa5c81a544900126a2a0ce68dafb8b87ce833e3b41139f4b2cd"
    "ta"
  end
  language "te" do
    sha256 arm:   "6806e2ac12894ae8272902682101ba2aef76c3796b3e252f757cc1b71e82305f",
           intel: "0770a5cd8bb0b86a1782d895dcbb8c913253f62b38f0551b2db1467a7e503087"
    "te"
  end
  language "tg" do
    sha256 arm:   "a0dfb8a7d0dd86454d7c57583a520cfc80ba32bdeb2ae6103770064678472705",
           intel: "ce4607b1163337ea23b2cd20f110247b370adf5b51906546326f631d0d85d69e"
    "tg"
  end
  language "th" do
    sha256 arm:   "44240bc1c2d7c6d82b8beb3cc33a551d2ffeccdf44f134b976bc180eb394c6ab",
           intel: "83c96f1e2f2fde51db9e477eef5098d4802d7f33d7864666ea47b41eee4b64a3"
    "th"
  end
  language "tn" do
    sha256 arm:   "3187b67e092c0c4542061f5b3a99bf350067b753f64581806c3d4531907ca810",
           intel: "05576c4d599aa977979e88aea800713dfb8183135dc62e1e8a6e8905aa0b04d1"
    "tn"
  end
  language "tr" do
    sha256 arm:   "d6e064f2c2fc41397d3a4149e9554512728cc0e5cbe90cc976f7c34d4cec78b2",
           intel: "34b49442804164b651a2dcfade8606d4f65602cbf74c85c7715b07f33d8fa6d1"
    "tr"
  end
  language "ts" do
    sha256 arm:   "b8cbaf295dc50882e99b0e4e22fd1c78aa0298e79dd9afcad043f81979eac037",
           intel: "1184a12f65bca90566f37428a032c63671f4cf73f25298b12d7182acf0ca4133"
    "ts"
  end
  language "tt" do
    sha256 arm:   "b92c158ca9cf6151b68cb9dbdd9f76d18dd53dfed917ddf08ed3022e127cc093",
           intel: "b36a3a54a05ee866d0b544d1ad1d4d99c48e3905a2e07c4e77d59e545858bd96"
    "tt"
  end
  language "ug" do
    sha256 arm:   "faed011f44a12ff1499ebb9c561a25dc48a3e6da0318471d4ab1b2bc7a77072a",
           intel: "59e7b08605518f956521a51ad2084a94e1cac210d9e2c0b9aec74504234c42b5"
    "ug"
  end
  language "uk" do
    sha256 arm:   "500d78dad53141b26fcf978e938f09229d45d2371e8303751fec8c0e281b19fb",
           intel: "90b3f18e1cfecca99f2b767f35bab0236832ae48c5a0da4fa5777ca632e0544b"
    "uk"
  end
  language "uz" do
    sha256 arm:   "9cd70e9a1c5a2bc2cf1c252d144b4aa72d71dec3d34ca0d3918802fee0d6575f",
           intel: "29ba00ad82d0395943119dfb803d17d1486a6e726cff0caa079eadd8fb97e38f"
    "uz"
  end
  language "ve" do
    sha256 arm:   "2fb6aab36b2b7b2ae5a7da66c9ec6af25cb12d1f27cdb7f486c9f24578940098",
           intel: "5a6a85e49c78174013c8558159df0de4bf108ffe1d647de86a562d3e933c55f1"
    "ve"
  end
  language "vi" do
    sha256 arm:   "47bbbeb529934c38ebfba9ba3d4a941eafa732c7d0f4a5c81863276ef9d70b93",
           intel: "0d4fd89630ad9bb4697ea8291bdc90a80725ce898b485c4fa7b2b0b8568cc069"
    "vi"
  end
  language "xh" do
    sha256 arm:   "8afcf3645755749370143bf38b48ff0eaa3350842021dbb501a48be2fb78ef1c",
           intel: "dde86a06c7d90f1d8e3c46a6cc535000d191c14b6f05dbb3ecab4b9ca0e92094"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "bed798290092207dd40afe7976cbb4bae936fb20c26a5a3c263dcef34f678577",
           intel: "a18156ff923e3d41497f441f3e55f595e447c3e6ad9466abef94f9ebf0e01e28"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "79722588ca865214e6df1f0ff8113737c4767c3cec32bb13688216f3a0efb75f",
           intel: "90825cd41fcdeeb5d5d7a99d2d6badae8721bb4bebd70aac46a467d8a95b5a11"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "24757d6565f3d3fac7277a46fa7584bdff6e62febdb0e6019513b98e44514aae",
           intel: "68fe2587b3dc2130e2dd3a849c8e903192eafe8e4135c1d40fec98555fb2e353"
    "zu"
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    cask "libreoffice"
  end

  depends_on cask: "libreoffice"
  depends_on :macos

  generated_script "SilentInstall.sh", content: <<~EOS
    #!/bin/bash
    pathOfApp=$(mdfind "kMDItemContentType == 'com.apple.application-bundle' && kMDItemFSName == 'LibreOffice.app'" -onlyin '#{appdir}')
    if [[ $(mdls --raw --name kMDItemFSName --name kMDItemVersion "$pathOfApp" | xargs -0) == "LibreOffice.app #{version}"* ]]
    then
      #Test if the .app have quarantine attribute, or if they are already launched once.
      if [[ $(xattr -l "$pathOfApp") != *'com.apple.quarantine'* || $(xattr -p com.apple.quarantine "$pathOfApp") != '0181;'* ]]
      then
        echo "Silent installation has started, you didn't need to use the .app"
        echo "Add language pack support for $pathOfApp"
        /usr/bin/tar -C "$pathOfApp" -xjf "#{staged_path}/LibreOffice Language Pack.app/Contents/Resources/tarball.tar.bz2" && touch "$pathOfApp"
      else
        echo "You need to run $pathOfApp once before you can silently install language pack"
      fi
    else
      echo 'Silent installation cannot match the prerequisite'
      echo "To complete the installation of Cask #{token}, you must also run the installer at:"
      echo "#{staged_path}/LibreOffice Language Pack.app"
    fi
  EOS
  # Start the silent install
  installer script: {
    executable: "#{staged_path}/SilentInstall.sh",
    sudo:       true,
  }

  postflight_steps do
    remove "SilentInstall.sh"
  end

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: "#{staged_path}/#{token}"

  # No zap stanza required

  caveats <<~EOS
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
