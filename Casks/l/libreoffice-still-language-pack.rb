cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.2.5"

  language "af" do
    sha256 arm:   "4c67b7fc61118e2e54c52247c3f8dc8f3cf6dd22931df8f66acaea0d653bac83",
           intel: "52f0d9fa0d3fb910c7110ac4bc3a728aaafbc2ea62855a8ff175772054bb97ec"
    "af"
  end
  language "am" do
    sha256 arm:   "d5683f262e4c74b419f7a3568c9a0024f4e7612efb5b5b94e5cae142624638c2",
           intel: "5c501eec53bbad24fc845d05ad0c58216e72a43c82abaa7608271a9c7e37d5a1"
    "am"
  end
  language "ar" do
    sha256 arm:   "fd2f0d882171bb400e279131dd1a0bb770a00948910f78b6b87d37d65fd7768b",
           intel: "cf2c1c7a339de60f3bf1621b16cf75ac30af9941fec608785e9f90bf568433b0"
    "ar"
  end
  language "as" do
    sha256 arm:   "32c42b6168abe1deb85e8dd8cc175e12842f59bce107734eb392ce9b75e857ad",
           intel: "87ae03a4ae1108db592ff998150d9f45e588cb7314a5d9921ba574a78f43cffd"
    "as"
  end
  language "be" do
    sha256 arm:   "fac2722befe85724bee77bf310461f3d5a075f19916da2a930e4e663433e3472",
           intel: "1a3e6e3bfc07d44f01d53418812c7f424acac2bfa94bb94a3ed9a0d6c0f91d4a"
    "be"
  end
  language "bg" do
    sha256 arm:   "b88d9e74846f8d5e611b8b96fe88273817c593cfed4123b3fc49a5a95df0d809",
           intel: "5178aba011558154559f58eafb846c83e457d18a1c7b35d502fa9203fc0d348d"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "f3d123f945c73beee92e742589090ec7749f701c426c5988304f71f13d106664",
           intel: "8947e1fd906956a375a877c68f3c433443e55ab21d304235f0f161226a3745f1"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "b7c5fe4041209d0d904cab109339e3fa612382541ea3c10ebdf712a184c1d7b2",
           intel: "c197cbb1b8ac1c04604ddc345784a8c0d21c00f0b4536a600a9e1edec156d098"
    "bn"
  end
  language "bo" do
    sha256 arm:   "e8ebbb3ef738589496ee8919cc04a70e9a4e0c0481ff333dd82a98e361ddd8ec",
           intel: "aaac02a04dd24f2b80a61a390146045c9161cd2892bc8f35da9eadc0e6b3b203"
    "bo"
  end
  language "br" do
    sha256 arm:   "28adfa46f4f07a7176c237266a15d71b2f271788ffeee69d45a68a23e8da1082",
           intel: "031c5ed6f826b3eb4c6eb799dcc97b2b215682182a0b1ee1498564d12b2692a0"
    "br"
  end
  language "bs" do
    sha256 arm:   "0f98bf784451b1696ec8f73f230bc885409ec7b38f512a88bab4e3bd55ed8e42",
           intel: "63b22d7a6a520359262b5b9691547651738c6f9af235ec78c0ddb3be11d73b4e"
    "bs"
  end
  language "ca" do
    sha256 arm:   "007216711df82c28f574e840496ba536b4a1a1a296361093a5010002b4e2abd8",
           intel: "17280ddd9e145c0726f59e10b237371efbd4ca3dc60ad2ddeeb4eaa3ffa5d7cb"
    "ca"
  end
  language "cs" do
    sha256 arm:   "02525468e361f79ac7516e929c762cb0b3b5a98dc024577be772c0eb21d333e6",
           intel: "86b691db034ce21da798e3b4855fa7d2bc5659096bb2fb723858d4614f9ac65a"
    "cs"
  end
  language "cy" do
    sha256 arm:   "4fdd49bf6495154ae2c3c02382f65c80407c7de8c8c1502d2fcaa27b42a7041c",
           intel: "588169fb15c57bb5744147b0e6033284bba66fc6e83d3ab8e3803d17161b29b8"
    "cy"
  end
  language "da" do
    sha256 arm:   "6d93c73cf35f17a3aa373e0fb9850be83f056860e6c7e43fd39a4125dd060bf4",
           intel: "8f220d19b1664a54e620f992e363c3a95fcce439c1771814d22799b77c491006"
    "da"
  end
  language "de" do
    sha256 arm:   "9370067efd5c168aa437107c3abb37967c54998f9860c23f1e8fefff0443aad9",
           intel: "ea4eea3d436fe43a4d72035e4eba579d017fa2771b916106fbb2ff28d7dd96e8"
    "de"
  end
  language "dz" do
    sha256 arm:   "688f7858abed03e4def6b2dc068317bf99896a92e77c560168a71891a2b71022",
           intel: "ed84ef70f39105d2dcad7c16232b2e8849703ff41805c5ff65bcaa4cc6ed43c4"
    "dz"
  end
  language "el" do
    sha256 arm:   "8d44bd8deac4cea8057aa4a56e64b3d54086708e272ac9a676233cb26cc25a1a",
           intel: "560c4fd0a6412e67a78ccbf34937db224916ef0025bdf38c266327fbc74a1cb7"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "1e15b371143215b98610e2589ff7dcf9f581245e9b4c5dfeb922f7d606c55dd8",
           intel: "3f7cdeece7b4859e6752f9e23b430cd733eb811ec51d4fa381dfe6ac7e8084b8"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "3979df5be7cd3da9ec3656d00054a37699a98f617cec3bddedccc65a39b40b79",
           intel: "74d7e9b9e5958705f9242e91e0caacebe84e2476a1ca8af3b9393b5565dff3fd"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "f0f37c722c668629394b98aeca0ffbdcca740ff5db366e175db85b51cd5305c4",
           intel: "fd2ee5ee09dc2a39a3b7fee5f636c75a4d80c3f94d143cf22f004bdb6f8a3ec3"
    "eo"
  end
  language "es" do
    sha256 arm:   "9d51c1463056facd03c3be8f823f928c4888f24c8e2443ebb75738a7c011174f",
           intel: "187213246674ff30043a8448d9ba04b626014a1b3f58db3682a987078bf9cbfe"
    "es"
  end
  language "et" do
    sha256 arm:   "d9cecba5a6b389facd03dc8fe8ea27a5d49a8d0e8e485021cd1593a674c7ef62",
           intel: "f3749f2d515e29807b63f9e10555f7116ef3b1839dc15710660fce83787441a8"
    "et"
  end
  language "eu" do
    sha256 arm:   "019bcf9e15a676569f0812e902089a3332b7c57e7f6400a344fe0b4dd236858e",
           intel: "7504ce00733949be4f5ff3f4e72cac53d16d94e06294dba2e5ad912dbe26908f"
    "eu"
  end
  language "fa" do
    sha256 arm:   "031e0134221e5df7e90ee83d4d6269b4c89f03fc45ab57cbadfca2a03890fada",
           intel: "b4adcb75952d6f320c66f66509753548f07e30c3982d06c05b14c7058420b666"
    "fa"
  end
  language "fi" do
    sha256 arm:   "31937961a1e587a9f8907c7a8f339458ec80553beb9ed50f83ce6ebfdd46ab44",
           intel: "2386fecec64313150cc0f552eda41ab572993ecacc57e0f70f08ce12910eb571"
    "fi"
  end
  language "fr" do
    sha256 arm:   "5838f70c125cba9357172e34a118df2d2e02779548f5e7e382cf16add564e6d3",
           intel: "c14b66fcc500fc5dee3670bca39b371770b4b2eb1744dd3b308d6fb7d658ad63"
    "fr"
  end
  language "fy" do
    sha256 arm:   "08981da6382a3172f60ee33b03bfb2cf8b47b1cc58cdb449805650c0cd04b251",
           intel: "1b7fa5a2aff833a4adf1302c7dccd6de0c6e43faec8e6e0b2ddc500b57067109"
    "fy"
  end
  language "ga" do
    sha256 arm:   "9bf4711446b0170a7f05a224792802de38ebc16e63f301ad929b5bf6e6de3636",
           intel: "50f5974d9464659ed6fcca7d94f717ad3612139f468eaa6027c7ec689aa15046"
    "ga"
  end
  language "gd" do
    sha256 arm:   "1a0e8c698d3ccb27def883750c3fcdd271f450ff0c5858fac9594686fe6ecde9",
           intel: "fc38818abf4b972005d1521b2e9a99f351c93bd3d57136697039f388a84ea726"
    "gd"
  end
  language "gl" do
    sha256 arm:   "f6a4690589051d5a4d4eea5ffcb8c9a75fa41dc7d1f74ac7c57d05744f6fa094",
           intel: "5ef1d5073f927bb665a1fd9b8d3fd4b1156d031af35b8a007d0509de62b5cd03"
    "gl"
  end
  language "gu" do
    sha256 arm:   "5aba767576d36ad8b95dcec498111edf86f73f562184df2823a8cd0f2845db15",
           intel: "66f1582af2d54006a2ed611e8b869ffa178f8bcc28b429bcb3f49f3511dd3254"
    "gu"
  end
  language "he" do
    sha256 arm:   "12810a21e715078830d4f7598772108db5ea46cac7838786ebe85759651c4497",
           intel: "c312df0db0bd4bc4de3d358dd6deead9dd5179f01b4300c44bdb72b6c73b0e1b"
    "he"
  end
  language "hi" do
    sha256 arm:   "f42f86227c525cc1f808b0e48dee072277fbe4bdedacaea344f78945e5a249f0",
           intel: "7266a5951a0a7ac571b8adb7735a216b9bbc9f82b7c05ff374345910801af289"
    "hi"
  end
  language "hr" do
    sha256 arm:   "1049ab0b7d3fb57f1531113e18384d21e9a963e0c39e0d8e73d636658e3cca8c",
           intel: "4fc8d07f342a88dab92a8e5b029cb1eb91a7be68e4c48c31fb9b3271019a6ee6"
    "hr"
  end
  language "hu" do
    sha256 arm:   "fc910f37d942c20cdbd3c7f52e266d1f677def51ae635de334fbd78bc7b90abf",
           intel: "adeb8580600bcd8b43d5f5f7db27e645c10aed8b2a7659fe911cf8b01f540929"
    "hu"
  end
  language "id" do
    sha256 arm:   "cca7fd94b0b773d1c1bbb745497741d60ce8fc6404d1cae21058b95d686d8aba",
           intel: "5515d3181f9d25194f606e5132b0126a8aa925c968bf141c7f32dca56e5aac27"
    "id"
  end
  language "is" do
    sha256 arm:   "4a9b687cd254677a35fd28d2ea0ea2ec71e9db7248802687225d0778bf91a68d",
           intel: "ffaf143e121e393355d87ec9adfdd1a65a382f9b791d26732f6a9667181a4cf2"
    "is"
  end
  language "it" do
    sha256 arm:   "4072659b230ea0b28c320020927557aa0f3ebd97e1d2e80385302a6ebd1e60d2",
           intel: "34fad187edc8262a93244c0273341f4afdd7caafefd1369ea9b0a0a13513a2b2"
    "it"
  end
  language "ja" do
    sha256 arm:   "93e43350ae5b52830192073956fe7208ca7fe595d96d314673784af7a0ae6c2e",
           intel: "fc3e805e96b697eb1aa1ed8864fbe6c072957836114025d7ece3aa381bf60281"
    "ja"
  end
  language "ka" do
    sha256 arm:   "8b40b38c70321d5a4d4dc86445448ffa68baf19c986ea1707e41cc69d07dbf0c",
           intel: "fb5baa1f3fe130e12b0bc46a926feb63fbdfe02f197fc758bbae315ab6715b54"
    "ka"
  end
  language "kk" do
    sha256 arm:   "b6bd771a63c52d8f64fae62afac3d132ef021bb72d7724966cd336f215dc2d6e",
           intel: "04bcc1456cbbef6e1e0b09a7ee07520a8762fd58f05dac125603e25dfa46f2be"
    "kk"
  end
  language "km" do
    sha256 arm:   "6b1007d1e3354fbe6e0d97cbc5a3ed9b6e968eac8e70a6f6564a40ebd053ccf9",
           intel: "2694f0b17d020e75f4fd7375fe4008f435b160dc14f0ff5923127595c4b5d385"
    "km"
  end
  language "kn" do
    sha256 arm:   "d7ff77b24410091771a06eed9b4d42ce9cf237f46d532001378e37ea0d3de4ee",
           intel: "0f0b16573a1fcaf4cb9147866df0d2856e3efec823ca8c71a19e1e6121aaf185"
    "kn"
  end
  language "ko" do
    sha256 arm:   "2dd297ecd4705d052f479fdd86f5f51defcfcf96769b1b932e1be217a4255c3e",
           intel: "953bdba197714f09d149f0c55e2b0db346af31865b292ea1498a6941261ef186"
    "ko"
  end
  language "ks" do
    sha256 arm:   "5f18ebe6d7c6dabac888522f422c0d582fdc39cf8a292c2cc57de445e9649684",
           intel: "3b2ee49c1cf6b984f6a36a024d85fd44f458770260cd3540ad295453a4764318"
    "ks"
  end
  language "lb" do
    sha256 arm:   "916f1d8f0efbda39813ac77fcefb6e399ade307ce80e5673c1a1fbda237d574f",
           intel: "db552b133faaacc1254c6795519f291bd49dc70f7204fc4d360fed08c07a6ff8"
    "lb"
  end
  language "lo" do
    sha256 arm:   "c477dc9e7d7e1f7a916a525429dcc496a598657e87e2547099d23c77810b1800",
           intel: "e6467e33e0732fe7c98fbd99b3fcd956556334a0d430be0701a2ad53e99f202d"
    "lo"
  end
  language "lt" do
    sha256 arm:   "1b0757870e284c60c752583e23271ee38bed1c351df87c8d18a20ae276ef33da",
           intel: "ce5cdc9d96910ec36afd039834615d634a76c4e8c5320d6161f22dc4b2e72d71"
    "lt"
  end
  language "lv" do
    sha256 arm:   "4caf918d17ee8d323b0f4319f2e3845f05f1e703ad34a547f4246da0450c7b92",
           intel: "a10437dedef7493f432a6a5d9e5f9be37bb5774fca514d21966d6692234fc121"
    "lv"
  end
  language "mk" do
    sha256 arm:   "a411c022885c9e07a739241c5bd10e15906110c99410ffb23b0ef035c70cc2dc",
           intel: "2994f3874b7b0955683d1356d7306c42c2717a11b9ab0adede405e46613e6005"
    "mk"
  end
  language "ml" do
    sha256 arm:   "8ef73f6db803686bcbce9a6d1d0bfc55c89dd7ae0595492ae60e5710ff6eb831",
           intel: "4bfe4009a5c22b0622130e1c5416a1955a6f3d6801373af05b64d6e892e78c25"
    "ml"
  end
  language "mn" do
    sha256 arm:   "8090a6922f15434bd87d86872df89e0222fe70e22ac28d607546f5de79d04199",
           intel: "6e4d538eb25992ecb61e58d5178684a027a0e9af163d5d9b2cae77b6a8330745"
    "mn"
  end
  language "mr" do
    sha256 arm:   "2c84a7fa90f4b38d7f17b0662aeca799a3dc56a8c7b717b0863eb20af71af718",
           intel: "9f69072e1255bca44b5d557eaf0a9e77b16070b052af0d7052af66475be42427"
    "mr"
  end
  language "my" do
    sha256 arm:   "d05d78bf68a36af13b1155bf76e4ffc94a595458003a2f8c4043a2c0412d014c",
           intel: "2323b7dab5e71461435b470c76bc3606bf8eb2f27b2ada4aac3a72915143fbd0"
    "my"
  end
  language "nb" do
    sha256 arm:   "235c4bdd3099f7e6076b4cd85cbdaf59adf28689c8eeb006380aa6f9dcbd94f7",
           intel: "fce7fbda53d1523ea0be9f8676ebcdd9de430dcae32e93bd4b98ac1e53afdeb9"
    "nb"
  end
  language "ne" do
    sha256 arm:   "b46d689c0cf8cfa6cafdbf73582cf8b76adc4695c227aed8d994ab9b7a2d211a",
           intel: "f685eb70524394d68e460eb3a56ce82821c19dab71c107f82fc418ca459ca9f8"
    "ne"
  end
  language "nl" do
    sha256 arm:   "eca8f84f63e715db842e008ae73e4f19c3bb52f3297632f98e6a5707124558aa",
           intel: "63201758657eba151cdce2becd243dd00bf7b39bda5a38ddcc81c66d585ebc41"
    "nl"
  end
  language "nn" do
    sha256 arm:   "2f8ae8e8f4b502e301e80f70d05ff57018146276fc3d1df73cb3bef3038ed592",
           intel: "ea69451ea5c7cde2f6756a36d1aebf50cb7e72679c7b618ede7f42e30d8cc1b5"
    "nn"
  end
  language "nr" do
    sha256 arm:   "ae6ec9ddabaa3ca27d5f61d04c6bb1c49077b61cdfd33150df3bd89b6425746f",
           intel: "8152dc1a472b6069b1f13c9e8ef66f08d64eedbde50f2214f0a99a6bb8b7014c"
    "nr"
  end
  language "oc" do
    sha256 arm:   "265ba8faacd434492a8b53d9697bd9a2980c4795413593510fb1135c7eb9e8de",
           intel: "74fbf4b19bfd28b28f0a7b8db30d42e064a265cb9e81c7f6f05e22d734cde029"
    "oc"
  end
  language "om" do
    sha256 arm:   "1b171615733c56d59739cf075f0fec70661ba044517e6f8672b4deb20ffb4292",
           intel: "ddb404985fce74cde6f5683a5d523b27e564f0b30ba4520d8983922608967d18"
    "om"
  end
  language "or" do
    sha256 arm:   "8639fbbb53fbff7bffae2bf25395b7665b98303253b1638c8e7204c131c33ede",
           intel: "8406db4dccbdfded3962035f063dcfc47a8e9a236fb6e7baf4a019d713b3f761"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "7f914e97fa8bb93b61c636cab5d9f80d10c9e41fce168c68d583fd583ae89205",
           intel: "67b2c80ddd43a7c97528ae8d0b76bc7e084d2301129f4165719caf385a582c5e"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "7572810971b8b78189b885201d808c0233c440c64cd75ff378c906b6a1fc7cf8",
           intel: "c079df974b4564fd7f572ae5a676c9c76844d32b0faf95c23bd473ea0ec48703"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "295f8caa88e1a813fabf5384ffea4afe2b397f81996e8bb624c2efc65b7e5775",
           intel: "92484457db7f5fd8723b2e866855ebd4ca29a3686fab8d62c5d5b59b88c85993"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "727e39aca601ac384ca968763d8ccc0dfb4bc8d9df8257215bd5840dc56e8343",
           intel: "89a06048f9725c280dd267d9d384374844b482978d0c6ca023536724dc7e2a0c"
    "pt"
  end
  language "ro" do
    sha256 arm:   "9926c5fe3a72689a7a9c6032db12bfcaa63766ea1b3b40927fcef682362959a6",
           intel: "14aa90e9e75c5dd419e160588bfdfec51b25bcb785c3167c7b1711f6d0b94ae5"
    "ro"
  end
  language "ru" do
    sha256 arm:   "a7213a5cd2dd3527e5a2d031fc1551e8bfa384e4f282bce5e3cdced6fa7a0809",
           intel: "a9ecbd65f86cb0ce5389eea7215fe58532a1ff38d1dfb62bc0cfefb21f81aaaa"
    "ru"
  end
  language "rw" do
    sha256 arm:   "ec4cac88b47d2f61fc6bfde76869f582e3c0625328a47fcc0178a253bd01ad3d",
           intel: "44de3b127fb339e4470fd09436e256bbd04b6347281919627fc57285c42d3c99"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "c3bfc236580f61cc558de65a6d0bfd1f491c4c503c0f1eca0ce1a4b06a92310c",
           intel: "7b88ecbf66c2a30493f6600742472c46511a58cb6efeeb3cbebe97f7e5dda506"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "a5c2db94696e4419672fcd0b0d91cfb1e93d8f460a41cd69fcee29330388a325",
           intel: "7d99fa4d2723a960d1278d5df12436cf52ac6435c7b09fd8c69b129e0bb28eb9"
    "sd"
  end
  language "si" do
    sha256 arm:   "f6fa60bb5a489b31331237bc2c074129bced2b441fe9079c449586c4d9b15601",
           intel: "eb118f0c11252a2865365cd8e7448413927e3567d88cce2e08adcfe760f812d7"
    "si"
  end
  language "sk" do
    sha256 arm:   "f4209aa41ba18bdfe625340293ea16487ea22ad7dc3afc0e46a43001317e6251",
           intel: "122926248ecf30f104f410f9462e2e7a83842ad51ffb4e229f9d015668167def"
    "sk"
  end
  language "sl" do
    sha256 arm:   "c17685ded57ea37d8e169e6ffbc792c43b8c31281818345deb0de228103ff14e",
           intel: "cd189f6468e7ed726feb685d76ac8026bc916ac72a89d416102714daaf22f190"
    "sl"
  end
  language "sq" do
    sha256 arm:   "0ad429b62c4b4e0f517c951f59724b2de40edd07d84b8effce8f8c5fe1f4a70e",
           intel: "6a4e34d767cb6c77de84c98337e877ebbe6b79ecdfa54c8b3f47bd8ac1d47de9"
    "sq"
  end
  language "sr" do
    sha256 arm:   "c2840299ce82c08c098098b8110bef110ecc962af5255e1099ab08455be8927c",
           intel: "1463e8285fb704025a3f127fc9631db067e96ece908e8c4e0ed6d2847191df9a"
    "sr"
  end
  language "ss" do
    sha256 arm:   "95454fa4ca274310e9beb4fac578d471b8cc4c81cfe82e7a9d0699b1c284ea0b",
           intel: "868dd8ef77d22488abb93578a2469078a4c2baae54f47d3092a27721513306e7"
    "ss"
  end
  language "st" do
    sha256 arm:   "81a784fc3fbbc519c65d40b321a8dd535a141208dc3cbb65a76b1a9341c5744d",
           intel: "7634c5b6886223790d3857ba95e3e74fde8db3003b3d07a8814cb84362e80515"
    "st"
  end
  language "sv" do
    sha256 arm:   "423b7094db517eb0aac966e4dfd28f5367fb5b4e7a6a818877c633bfcf926a03",
           intel: "a03f247b408f8556a373499be77da29eb0c040f562e026ae54b524bb0e4f9249"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "a52fddfda4ba3ce9edb0a8c08e14dca7a09ca96df309fb3c85071a1e3ea94d23",
           intel: "8d1bd0e535236f3ebce5c06d37b6a9525532046f47dbf3ec9122e5396142ac3a"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "8d62fce000e21d1e4132b0a2dd849c3030db2175c11d1d9ea47bce8d98bdfe60",
           intel: "3597c525c841d949c4bbf2cb2e13dd90349363599fab41795b59512ed9112692"
    "ta"
  end
  language "te" do
    sha256 arm:   "9b332aed33a65f6f14e66d0a91200a9fadf7a47caa7f2e4112ac5425a1d667d4",
           intel: "0249b54be100e39c7da4864d74cdcfa097814ffff85760821ab4a889bba80562"
    "te"
  end
  language "tg" do
    sha256 arm:   "962de9dc678d92e5a3bbf646492d426c78b3da379b21de1585923eae0258fdd7",
           intel: "48a346eb4b72dac2e12b528dcc9f853016eb768af237a8c972f11d6cd5cb31d1"
    "tg"
  end
  language "th" do
    sha256 arm:   "95e27dc902a0d6214365650025fe474d945a1cec3a9c5f9ee631e267a7712d0a",
           intel: "cd462b7158decbafd5eefe8bf746ad6c28d5310878f946245cf0af479935c322"
    "th"
  end
  language "tn" do
    sha256 arm:   "f28935b206359e0028cbfd911254f9de4810254edafa2e76f3919ffbd0b30461",
           intel: "8a23ebb1680b0f5c758e1c70f21ec2916dff6acd7831fe4a1d6d3ff0b544ac92"
    "tn"
  end
  language "tr" do
    sha256 arm:   "bf449e769a1559c27373635f3b6a9c6db0aa17ed1c110a4aaec90a7335c86edd",
           intel: "eda6cc362ecbbd92e4929d97e85bd5f12b62cdcf35a79727dabd4dbba8fc08e6"
    "tr"
  end
  language "ts" do
    sha256 arm:   "8b37e2a93c2997213c907b47410a7b274f44fe8710807a9bc9f8909288ff31f8",
           intel: "4cf3527fe335f18e936807456d41d853bd0520fd1f2f1ebe36f252749453b8f6"
    "ts"
  end
  language "tt" do
    sha256 arm:   "ff4497948b22f04fdbb79eacf4a84202923441e816e295d085686211ed07ae99",
           intel: "7807aceeaddadd2ae7358b1e089c4d57b2e6c0bf4b01555c41a95ef79bd17d47"
    "tt"
  end
  language "ug" do
    sha256 arm:   "980ef880d0abaef7befe65a5f8ca0e92b73642248e2ea8f8d11aa045cf7b1a81",
           intel: "46e274a6c5952311e6e435838a70d3e29364282662329c3c562f543615aa8aae"
    "ug"
  end
  language "uk" do
    sha256 arm:   "3fa26ddb1b5ba40d12b154b221489f53dbb372536f1e0794922ee1eed9711eb4",
           intel: "bbd8bbab29361855462dad5b19fc080a4c6354e899f1a79671b8554679ae8ccc"
    "uk"
  end
  language "uz" do
    sha256 arm:   "baadd935aae6d124605be307b76973a3209a5fe99ad83b32d95ee16795bae0b8",
           intel: "9291af1cf9499c21600ac149aa8dd960241cb6ac090569c61a82b38f40e2494b"
    "uz"
  end
  language "ve" do
    sha256 arm:   "72d003a498b50653c31fce914e2b97e6674d7d918f43a3143db632c67f6c89bb",
           intel: "5ecb117537d0f7ec6fa7868d21395f589e69a3690511ad577675ce19bc039190"
    "ve"
  end
  language "vi" do
    sha256 arm:   "d20fe4e9ce71c4554318a679a59b1eec9e98384b74e6272c3e94cdeebf27a5c9",
           intel: "16a1ed23837679713234cac96505f8cba5b80f438e49f164732b10b1adb6b3a9"
    "vi"
  end
  language "xh" do
    sha256 arm:   "c86439b0d8de0e1bb6a105bb72fc631ac128d82fc2b2d33a12592d798b08c88e",
           intel: "4327f4d27e39501312e266da9d59015083321831d6f1746ae9e45bcaf4931474"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "0eeffddf00ac828b4bc391670705ce27c9bd3a38a2f0d68ae60c3328be435088",
           intel: "742ede139a5f57fa84a55027c517fe5fce4fe93c171440adbeea9ff0cf6a6323"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "eef8a2f4de3fc5110185d0dab6347f934467b199126433aca540c49e633b08c4",
           intel: "740e86a442f10176af534e20d3f494401c2e4d79c953720aa992b64bca930bc1"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "076e27ceac49313286e43d22f832a5f34dd273ebd559547c1c508cd6842a9117",
           intel: "b239792a5e2b5bdeb178a78d5deae0aba400fe27911e423bde22bd1cc8561464"
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
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
