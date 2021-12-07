cask "libreoffice-language-pack" do
  arch = Hardware::CPU.intel? ? "aarch64" : "x86-64"
  folder = Hardware::CPU.intel? ? "aarch64" : "x86_64"

  version "7.2.4"

  if Hardware::CPU.intel?
    language "af" do
      sha256 "19645340987bdd2897ec9f2ba8519e1189cff9e639e8ed56f5fe37e4caf1374f"
      "af"
    end
    language "am" do
      sha256 "ca66e04045d9df3ca8d4fbb1be28f418cf4d60a6b85bbeab4c81010270f6a9f9"
      "am"
    end
    language "ar" do
      sha256 "b4a191394344cdeca9ac604c0d1750f124de123ff276b84b06853f697eef27c4"
      "ar"
    end
    language "as" do
      sha256 "6aac14adf5d60e5fee2e30a0388977c393e431fb509ec35fd5d6d8b31feb260e"
      "as"
    end
    language "be" do
      sha256 "4a1242aecafcd907f207810f2a7b5bb10f03efc9adc93eea8014b20a60c6cc20"
      "be"
    end
    language "bg" do
      sha256 "e012b4c860d48160ba4d6cdd114f246a9801ba4e7db779bf28230a31cba24cb3"
      "bg"
    end
    language "bn-IN" do
      sha256 "b298ea4f580cea41ffcb0628271bfa61a0ae2db1507e63d4403e8afb43d9b011"
      "bn-IN"
    end
    language "bn" do
      sha256 "2f949ceee0aec1b49faed9155d740de04dc0226ea1911401bca200e8d0cb42c8"
      "bn"
    end
    language "bo" do
      sha256 "d88f3336cfe643c4f39305879e9552dcbd14e6ac048fa5885a9fb788eb654810"
      "bo"
    end
    language "br" do
      sha256 "dd4038f458ba204384a68e058a359cfe2769cc070cdea9cd81ce878adb3ade6f"
      "br"
    end
    language "bs" do
      sha256 "c6115fb85bad578022eda6e1f359cd4034eb018f27d90584af41d1f00c2367bb"
      "bs"
    end
    language "ca" do
      sha256 "44433e2dea5d4912765f8495aa6a2911cdd3b9591536b7c70bd433dd05857c0a"
      "ca"
    end
    language "cs" do
      sha256 "8ed3bd484b458bc521344184c7a9e8beae77781b47d58b5317bffb10c7504682"
      "cs"
    end
    language "cy" do
      sha256 "ed41fe3c6f3ae649f5457d533e210b0694be63f34ed477c3f34de1dae2a56975"
      "cy"
    end
    language "da" do
      sha256 "a27b087fdce50da2891936f1a3e102a3b214334f8b43205012cdd6ccdeb6718c"
      "da"
    end
    language "de" do
      sha256 "863c832782726ddffce131a50c145250368def17678ca1a8a561e145fe7d8d64"
      "de"
    end
    language "dz" do
      sha256 "a1a9af32e1017e77af2897b9f719789ec5166073011031e2620ff436b62cc202"
      "dz"
    end
    language "el" do
      sha256 "dcaf75c99f204d569d6c58eac7622b31cb9887bf3162f87cd4f8944861b5787d"
      "el"
    end
    language "en-GB", default: true do
      sha256 "e9e5606d4d7d902aff410db219c5b9cc3de32ae9f6d0102874064c26ad3363d6"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "b8641c522476e71e8c2fbcf09d214ea5e4a3bf1b211d2ed97a5e8ff16c61c6c7"
      "en-ZA"
    end
    language "eo" do
      sha256 "e71b4c8fbedeec215f45932924cbab99e900d15076d606cb5937a893879121b5"
      "eo"
    end
    language "es" do
      sha256 "b72df1f5fc2025183e017b0b3e8db9a49584fcd2c2eaf7f4ca336366d04edb7a"
      "es"
    end
    language "et" do
      sha256 "0df3ff68d42693f26f47ba2f44e53564d678619494c2368f273503772c0d0ce3"
      "et"
    end
    language "eu" do
      sha256 "40898e413168046a20940b7d7040cf0d056c4efe0505991d326a7aa7c950bc8f"
      "eu"
    end
    language "fa" do
      sha256 "477f7a1b7f8b8873584d0052254911694b3fee21059a15aa1f2aae694fc84c67"
      "fa"
    end
    language "fi" do
      sha256 "9e563b8a431a7e44c0473f39e4669d917dea8a69bea05b5eff4eb0df593af0be"
      "fi"
    end
    language "fr" do
      sha256 "0efc8f5cd63bc3ee1f6a3320c19edb90a1904510510091798123f2e4d622cb3a"
      "fr"
    end
    language "fy" do
      sha256 "b01dfaf7defed454bbd0e62bfeb143352495e31cfab57b7f17384c99dc93ff50"
      "fy"
    end
    language "ga" do
      sha256 "e0425ff0fda92d7ae02ca1aeb06b606a1f9f63a6cd1c4e458c0cae10941ae6d3"
      "ga"
    end
    language "gd" do
      sha256 "bdbf1dcc0268678ac7ed4829523324041d0ca52580e2ebc352099d8ed84e48cb"
      "gd"
    end
    language "gl" do
      sha256 "f06dd58e6a6d8244018bc6674aa91b8265f75d5222788833c0325bc1e4443b54"
      "gl"
    end
    language "gu" do
      sha256 "f7b84be95f441c101188da4599adbd10478e6daf3afd0c3b8bd080d836c22f0c"
      "gu"
    end
    language "he" do
      sha256 "2f7416d040ebf18266531b177347d9b5007813b221c3646593bb0e5ca94e7caf"
      "he"
    end
    language "hi" do
      sha256 "b82c866fad8e5b7fc101589771d5a6463bb5bfaa63540817809779696708f075"
      "hi"
    end
    language "hr" do
      sha256 "650a0efc41a56f550445659827cf1692fd9fb6162471f8f5a6c3b3709b0ec4db"
      "hr"
    end
    language "hu" do
      sha256 "ad53dcf791fbe01fb1de9ad8d387f87c1ea4512b0e0084a193b9c01548e271de"
      "hu"
    end
    language "id" do
      sha256 "2d6020fa813d1a457b919f755232bf1d14d3c70c1f30457e398f34947dc87158"
      "id"
    end
    language "is" do
      sha256 "a5aba766916b591246ec11a5e0e1c7ac3fee6886269ec855eca458b531c9611a"
      "is"
    end
    language "it" do
      sha256 "6f9547ebec8dd798dd0dce876082a5ba6666ba2310b9369776b61a729055adfa"
      "it"
    end
    language "ja" do
      sha256 "f2a3b7a323043172acefa55ac22fa777f011bc3e432e16c4d700ece27ad1a8b2"
      "ja"
    end
    language "ka" do
      sha256 "513f34c7a1aa217e9b9e39ce7acdcdeb7e5340e663e428471cd533ba5dc574c4"
      "ka"
    end
    language "kk" do
      sha256 "e66a699a66da84b0224d8a3d3c6007b94470cbd30f3a62b90870bfd2b60427a2"
      "kk"
    end
    language "km" do
      sha256 "92db70f5661eb2a241a37028730977eb9cccc1b6465c3f80e49070436d011b71"
      "km"
    end
    language "kn" do
      sha256 "68333ce1ce5555371d6c092535572dfa6483ec59119e045c207ef6b053491d76"
      "kn"
    end
    language "ko" do
      sha256 "8b47662ef113582416651836ceced3fa0b097e48fc6a743a79d2ae1de6ee0662"
      "ko"
    end
    language "ks" do
      sha256 "06f36b53208a3279745fd38230ea38939f464d38c771ca67d6678573ba5591a0"
      "ks"
    end
    language "lb" do
      sha256 "b368fe10f6690726dbd1efb7a189b884c2cb8f96fdbeafa09352cc4171e7a702"
      "lb"
    end
    language "lo" do
      sha256 "5d53fd4cc3f1a1740960a27b2946dfa8d6cfba66ed434698e58bb34ba599579d"
      "lo"
    end
    language "lt" do
      sha256 "8e3d128c276abf1938b44320487a231819685a9bdbde34caa50223527685dc2a"
      "lt"
    end
    language "lv" do
      sha256 "69e16bb4e25a600c8ec6c8ebdbbe64c8c411edbfbc198308cd7e5e75fa97b918"
      "lv"
    end
    language "mk" do
      sha256 "e22d246e42964e191685a3ebafd09a22994e463a36890cb2bf12624830ba4ab7"
      "mk"
    end
    language "ml" do
      sha256 "6e399e90e0cf113ed10ec4ae4f95f85e7fa2365450cfbb1bf4abef6b5025c85f"
      "ml"
    end
    language "mn" do
      sha256 "58aa0a4c71ffaa940b68a16a38fbc493e044266165385e178a2890662a39fced"
      "mn"
    end
    language "mr" do
      sha256 "7fcd318b2041d5ba24aec95371a1c93cd0114d62b7244c8f44b2b6e5024777a8"
      "mr"
    end
    language "my" do
      sha256 "a47b5f607c8cb09d4320b8036d4c8ec9901a2836552de9f963fe53864b23cb20"
      "my"
    end
    language "nb" do
      sha256 "f7b840f9a817f835c534284e241839c0d396ebdad36a3748c1cabbe0c47f7fd2"
      "nb"
    end
    language "ne" do
      sha256 "5303cd1cac3a43c1bb4eee4c6a0dff1f4bea32096abd9614876ebcc8fcbd3b3a"
      "ne"
    end
    language "nl" do
      sha256 "29467b0d767d1f16f67c15b9f3a0389914cb56d1777b3ac4f9d31911ce329e6a"
      "nl"
    end
    language "nn" do
      sha256 "bc1fe648a936e8ecebe9ccab964470a69bf3b6a76baa4d02167a601bb82459a3"
      "nn"
    end
    language "nr" do
      sha256 "c2a63341ff423b0cc4045ff20c3b208c5ccb636e53d98fb53c118264159fdd1a"
      "nr"
    end
    language "oc" do
      sha256 "74d093e5867aaa2a7350ca0202eafc3043f49996593fe229bb3d4d87af983779"
      "oc"
    end
    language "om" do
      sha256 "0195cf889b23e03211e96221e899a68958100bd85bf338d61c1ba1081245b6a3"
      "om"
    end
    language "or" do
      sha256 "395994eb044c6502e0358828115d01dc0ca5864152fc701c107c5b847fee640a"
      "or"
    end
    language "pa-IN" do
      sha256 "9bd61447f1e4eb112df220ad0588c7302983cb352a15b34f651571da8d007788"
      "pa-IN"
    end
    language "pl" do
      sha256 "02fe24f3144921e62cd7ef187b00d7a0f81b4c9a2a80121e2039f183f8b3a9da"
      "pl"
    end
    language "pt-BR" do
      sha256 "750987de51c43db0a11a68c752f93eb0f500568356954e397055304acde3ffbd"
      "pt-BR"
    end
    language "pt" do
      sha256 "c61e16a69aa44f3d28ae2cf62c973bd6fa33ef9cf6ab11a5fe3908e7f70dfab6"
      "pt"
    end
    language "ro" do
      sha256 "e6a6348aec80205af5bcaee510a01a8829e1d673a1030af8f12b92442de22d5a"
      "ro"
    end
    language "ru" do
      sha256 "36cda5427de94d315019e09663f064ee18086aac9958e7ac3bf5dc8959260ee1"
      "ru"
    end
    language "rw" do
      sha256 "60054f37ae4a9c5068b3174f9601592c57af9f6798b68ee62f9286ccf6cea759"
      "rw"
    end
    language "sa-IN" do
      sha256 "0374558c9946c239fc8bc3cae57ed8eec31dffb941c2164acd946f2ce7eddfa6"
      "sa-IN"
    end
    language "sd" do
      sha256 "8c55d05da326951c1bfa32dac5aeafb7e4d477179bc853885d6a26bb94979ae5"
      "sd"
    end
    language "si" do
      sha256 "40d3b40bad6d2341c8dcf8cb0f21a8d0162d22cc2e7411ad990d6e8a2443f246"
      "si"
    end
    language "sk" do
      sha256 "ec772d409cdd84661f949ad42d92e38d20cf6ec968083d0f6ee1b8e94fa4c02b"
      "sk"
    end
    language "sl" do
      sha256 "b6d248e185bb31c0f51aa5f5591b55e8519dd508025a62e954d0cb545c9ae9ad"
      "sl"
    end
    language "sq" do
      sha256 "947514a9f69f494bcb7e0706dbae93e6f07894cc5321531ac86d313802a8d77a"
      "sq"
    end
    language "sr" do
      sha256 "d0aea71f3fb9a60602f1420eb854f624add9c87e1af187fbb2e3833fa9989f00"
      "sr"
    end
    language "ss" do
      sha256 "e70642ec08ee9c933f564acf60505bba6e9df3346a83ad840df536b8677e864e"
      "ss"
    end
    language "st" do
      sha256 "d9da625f5aeceae9afe866df274f00114f9b1835d089dea4f7ee4b0b42f4bfa1"
      "st"
    end
    language "sv" do
      sha256 "f3a8f3dd70ef604d31fe57502d10311a2739febee6b6e265aaa64b6cf127f0b0"
      "sv"
    end
    language "sw-TZ" do
      sha256 "cd82c9af75fae5fb4468cff0c0d26d0d510cad99fcdd31ee3c685516b1b1e253"
      "sw-TZ"
    end
    language "ta" do
      sha256 "f66623bc43f0d4d595ff1364ed220793c66b3c90630d16fff6382bf2ec55ce5f"
      "ta"
    end
    language "te" do
      sha256 "5796716a361936a3f2c9b1ea0cc32c00945ff6ebf5a6c60d3ab1166ede988e0f"
      "te"
    end
    language "tg" do
      sha256 "0757bbcf698e33b9fe082d544707d3f074f1c3f68935475d6de6d4eb9644c789"
      "tg"
    end
    language "th" do
      sha256 "528f41bed2e9f8c391b52001da868fb0d0fc5a8cbeb6760d017c46a2fdb57f52"
      "th"
    end
    language "tn" do
      sha256 "00caa59d84cef89cfd48a5c79ce131c82f0567542356fe04a9d92d603c30f779"
      "tn"
    end
    language "tr" do
      sha256 "c52bf169ad5ad0624010b824f8c1ff5269492c8244d5ec3d50d1577caa945dc3"
      "tr"
    end
    language "ts" do
      sha256 "bc98f591d58d8a87bd20cbffe678f771cc0d30ffdf86af3877259f77a02a9cfc"
      "ts"
    end
    language "tt" do
      sha256 "7a65c41a476c3e19d60f6acdff73975d3187473df0be4be47a11aa64e468bce9"
      "tt"
    end
    language "ug" do
      sha256 "6f844788f749c5fb86155c46d7fd7a5f45ea2ae0b17b14317d8bd519eda62812"
      "ug"
    end
    language "uk" do
      sha256 "19451d893232f14c570b0290375f87d2e962d23ee740c5591dd1a4bf7f2532ad"
      "uk"
    end
    language "uz" do
      sha256 "e3ea993559b1469e021675562664aaff277c1e90c799adda781266cb1a9d8ee1"
      "uz"
    end
    language "ve" do
      sha256 "ed4a854f5b9b71dc13453d4de1e83530eb4e4aee9a13a746823a62841c549bd8"
      "ve"
    end
    language "vi" do
      sha256 "e9527b630314f0789d7d0b6654fbe40c2344d932285680eeb47ddb4322c37f4b"
      "vi"
    end
    language "xh" do
      sha256 "403f41b5b88711b877e80ea7651296e2e5ea4495ec04e604521ba00799be90c7"
      "xh"
    end
    language "zh-CN" do
      sha256 "f65313eeab2fc1d7a9fd5b6bd0181a2014ee8675e958e79cdb712e7527d34725"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "9ce1716f3fd71f04aa5fb7ce2d7d47f5af22f67d96cb56e27952303bd23f3ead"
      "zh-TW"
    end
    language "zu" do
      sha256 "07669d5140b39d376b0886d09faea02b21ff3d0a5b8d6e6a66661c0519bae488"
      "zu"
    end
  else
    language "af" do
      sha256 "b4e8835bc6d88626f4ec8fe23640ec8ab435837af5e40f337070ae6c1a7efca0"
      "af"
    end
    language "am" do
      sha256 "3813c369166723ee86bd736598aca2d9f91a99810ef403bd9ae46633835964c9"
      "am"
    end
    language "ar" do
      sha256 "b3ca8da94b6bbaba7a5e6aad834817c84cbc588cebd80b01a88c540465a40ead"
      "ar"
    end
    language "as" do
      sha256 "3ed1f8293787561ca8bc2db5de049901c9c933f4aa53da66ad9cacd545d09a21"
      "as"
    end
    language "be" do
      sha256 "d8eecaf65746ac6f1804f61bbd295b0fb0a755aeb297339add141b9af4cb918c"
      "be"
    end
    language "bg" do
      sha256 "0e9a09dae23dc0084f824c15f3fb7b80f9d9747e9dcb0100c6dfb346b76385b4"
      "bg"
    end
    language "bn-IN" do
      sha256 "66eddc43082c51a099d462a925fd5c2a1c188d578172556a89e94b0462e91cb6"
      "bn-IN"
    end
    language "bn" do
      sha256 "1df15f2da381a8d4c2b4fbf753b933688954348d4ad38a407fd94d57622e1c37"
      "bn"
    end
    language "bo" do
      sha256 "97825573fcd30d4616c654aea35ab2006926863af70ca992462a66e9d8224811"
      "bo"
    end
    language "br" do
      sha256 "90650357614edfdeda55a00a73cbde6bf3da040bb37d3aaf9bf41c16dcf7cc3f"
      "br"
    end
    language "bs" do
      sha256 "2c074fac5624f4b4707d9087df1523b4a3b989edf0f8dac67d3565cf8c973bcf"
      "bs"
    end
    language "ca" do
      sha256 "f390262a55e63530e84841c708ee3178bb6c8d80a7703f9682f8af7408bbb4d9"
      "ca"
    end
    language "cs" do
      sha256 "1a4bc571314b768f6daf98bee72a522994cfafc1d5dcf891d9ff080222f14c06"
      "cs"
    end
    language "cy" do
      sha256 "69260e05452d1ecad6596f4318cd9851ec355adcdcfafc3bc690c9e4de8437f2"
      "cy"
    end
    language "da" do
      sha256 "3a099e568f6ef9de4b539fb005c6294a7e450207e45a3ffa9ce240a7266549d4"
      "da"
    end
    language "de" do
      sha256 "0ab5f6bc03a5360a6469ecae038296509910427e41748fea6d32ea6c1457170d"
      "de"
    end
    language "dz" do
      sha256 "bd4915d11d4f096275fdd714c297d2f361137acd3b8864670a2006d74d18d02b"
      "dz"
    end
    language "el" do
      sha256 "2dba158e652e1bdbe22030947e86b4749c0dec516a8ec5053fdbaa3dd9c417f9"
      "el"
    end
    language "en-GB", default: true do
      sha256 "bd8470707d7b45c5d2229d936cffaf73ee095665f942c22a1daaf17932f776b2"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "9da7ba1082d7aa5d741631eba3a1577603d8b0cd6a547b2eac9e44dbe2205058"
      "en-ZA"
    end
    language "eo" do
      sha256 "8344d8862db85318f0e3e9dc74a4881dccbe678577517ee173f98a119b622bd1"
      "eo"
    end
    language "es" do
      sha256 "5419cb7eecaba8471f896c81f2d8d72c51a3d5670fbcf83d24376294a43ca73c"
      "es"
    end
    language "et" do
      sha256 "e1fabe4d44b1b06bce2bcccb578af6d443e9a575a345d8257497cbb18a3294d4"
      "et"
    end
    language "eu" do
      sha256 "9a5908dc6e7ccda6d164a07ed1e1b03fb60b049c88c068e201a7a645ee33528b"
      "eu"
    end
    language "fa" do
      sha256 "9bf3dd3e89fa5f9944e49761ff274a35465f39469d1675641ce541e16057d6de"
      "fa"
    end
    language "fi" do
      sha256 "e4dc0e57b0e25f8bafab5e9f1a4e7bf6a3a3184af5474adba579317d5fb14298"
      "fi"
    end
    language "fr" do
      sha256 "21acb2188a32249431aa7a7035b5986177a6f86fe7e0e82df07dcb084d3f9c6e"
      "fr"
    end
    language "fy" do
      sha256 "0487f40510e2a0e0fa56283d80f55457eba1e79a5d8439fdeaf6aafdd9cd3946"
      "fy"
    end
    language "ga" do
      sha256 "cce357afbbdbda6f14d1147570c115adae3cbc1685a3432ad648369bb5c10865"
      "ga"
    end
    language "gd" do
      sha256 "af2a273733b06b5cc82ff083c32d7ee0c35f1feab96187a86b59cd4e7b9d5f07"
      "gd"
    end
    language "gl" do
      sha256 "a371f379a42c9ed6fc4a03f900fc72adff72468705dffcd71d475d66599f7108"
      "gl"
    end
    language "gu" do
      sha256 "5cbcb2b4b468d8c516c2c3f63c9f5bded35ba04f904535e45ee53d70959957f9"
      "gu"
    end
    language "he" do
      sha256 "e678131a36693a1703b93e3252d48fd4c1716ba3e7010afbfa0967633c8d67b4"
      "he"
    end
    language "hi" do
      sha256 "b4d17a09eaa5bd85d31c10bb97a2454bb445a8f1a55808599eb58a9dd96f7eb6"
      "hi"
    end
    language "hr" do
      sha256 "c6cd556b8fb2ed88766782f0d5f99f67aae39dde30c08756ee11ead8381ca047"
      "hr"
    end
    language "hu" do
      sha256 "bc82d01c0d54172fd774fba79375a3a28f632556ee51d1c07ce765eb1b6ec983"
      "hu"
    end
    language "id" do
      sha256 "16680af21e7025b7ca22bea2bdea299a85eb9e128b78f3e06b26d4317cba5b1c"
      "id"
    end
    language "is" do
      sha256 "55949b5ee96628bb9a720a777ec966f365c0066f72b0e0712850d770c9802379"
      "is"
    end
    language "it" do
      sha256 "c563a1364e9b13351c8dee0ea4dedaf6921d2a8891e8e40a2e82e485528183d0"
      "it"
    end
    language "ja" do
      sha256 "71e6698eb04ad5223af728e277bd2577b4fddda76a9b730ff8f1f714d0a9eb7f"
      "ja"
    end
    language "ka" do
      sha256 "9e540c2a8d6de75844dc8d6008c895dac7a0b047d80cf71eef8bd35d7fcbcee5"
      "ka"
    end
    language "kk" do
      sha256 "e6dae7f4a0de773be86f6deedea8aaec267b669419c7f5d4cb9fdd56069d8ff6"
      "kk"
    end
    language "km" do
      sha256 "6b4ef6d9e3bfcd574d424e6ff291149bef7c8782c6d4d1464918dbc6a9387e0f"
      "km"
    end
    language "kn" do
      sha256 "37ad006f783c884fad397ab087e729001f180c5fdd7a5b6665153680deb64f1d"
      "kn"
    end
    language "ko" do
      sha256 "68e58776fe69e3c8258129428449595627ac6bf6dfa66347709987f621ba3ed3"
      "ko"
    end
    language "ks" do
      sha256 "4b37602e64f77a63203032df78bcc41a623b4781556e9e464f47204213636bc7"
      "ks"
    end
    language "lb" do
      sha256 "075a01d98750d20a1df9e9edefc26600150e8f86eee8d90ec3f5d9d6456a43e5"
      "lb"
    end
    language "lo" do
      sha256 "dd5ce62e8667447c1de3d8ce10bb7796161ebfeb7ee739278b2788fe11425820"
      "lo"
    end
    language "lt" do
      sha256 "91ad967b09143f965e1a6110612361dc0f98e69c4438f78c5118162418b4c5d7"
      "lt"
    end
    language "lv" do
      sha256 "44347a4de2519bc7cfe7752cb913c2dbf8b970b56f3e042e3a345dd8f93949d2"
      "lv"
    end
    language "mk" do
      sha256 "30113d14c318ca4083b3de342f1339cf13aa190c593b1e9f88d90f8c3e0f146c"
      "mk"
    end
    language "ml" do
      sha256 "6a4be6bb9d085b236e210b574d51bcdf2e1d0671db78c7249ac4f31367b8a641"
      "ml"
    end
    language "mn" do
      sha256 "9b642a77ad8385b201030828765df4e4525d07b2d61b54f33994de184b02eff0"
      "mn"
    end
    language "mr" do
      sha256 "d55e8436fdefa85594ae4ee69cc2cdbabd2cb31356a3c076d2e114b190571e5f"
      "mr"
    end
    language "my" do
      sha256 "c8626168ab3f1c02eb36a99639dd4500c431254bbd8d82034dfd3592c2b3850c"
      "my"
    end
    language "nb" do
      sha256 "5b9770e86dea462f79e02a9d5fb9afa332fc768dd3a585b772559a40f36d65e2"
      "nb"
    end
    language "ne" do
      sha256 "7f8a2500f5b411447f99216198bf0735aaff3b877218f12d94f300db6d89113e"
      "ne"
    end
    language "nl" do
      sha256 "c0e261d66bd02fb3d4339611cf229318074b65bcd43e75e49980710cf90ee27b"
      "nl"
    end
    language "nn" do
      sha256 "4faf6ec14e38b05f10434b2d5f980993304e63354ce7a86e548050b7aed196e0"
      "nn"
    end
    language "nr" do
      sha256 "c107f9cf5927c663a032520e1eebfb61cb6ca4231816122f4dcb41ea1076573e"
      "nr"
    end
    language "oc" do
      sha256 "59d658b690597f8e2e918fd210db394d526096c56834693d3b18aa1973ad9316"
      "oc"
    end
    language "om" do
      sha256 "9cc9a73cf037b8c51558378ccce8cbe9b4d1862990c47eba67b839c54c987fdc"
      "om"
    end
    language "or" do
      sha256 "a0eff1a8f564bfb8c32a22c170853df8f5a7672099f2768fec6bdc3c2c11dd94"
      "or"
    end
    language "pa-IN" do
      sha256 "721d8b7514533925023264c86028e0a038bb76fd438aa5974571be4f7703d110"
      "pa-IN"
    end
    language "pl" do
      sha256 "347e3f1d9e31ffc20a7e950b7f24c5e0bebc4af3e1e3886d6362aa334c261731"
      "pl"
    end
    language "pt-BR" do
      sha256 "6941128042435e7552c28e70221da7ad6b7ab6a2c48680bdea0282bf8f685d3d"
      "pt-BR"
    end
    language "pt" do
      sha256 "27e1dbc9ccc1598a12a1fb61260cbda985edd6993919ddaea3a6908b93cf2a55"
      "pt"
    end
    language "ro" do
      sha256 "67a7ff5a0c4340698c5a70dd654ae2b03578d018fcd70c06cd663a9eb89e49e2"
      "ro"
    end
    language "ru" do
      sha256 "b15c84106ea1ede592e13e9cb1a0ba6e7f994b45dc5e9f5ca5cd7150a55e63a5"
      "ru"
    end
    language "rw" do
      sha256 "abc484bbe85ca5f5afd41e6c4813e81f124ee77038883e9308a5f683559e711a"
      "rw"
    end
    language "sa-IN" do
      sha256 "ab674dd35f7d72531489f0cd46c2a0bf0605b24d3931d1a715eae7d627ad7f49"
      "sa-IN"
    end
    language "sd" do
      sha256 "e706f1d85b1ecbbce2f806d6f39922edec0a6c82e891d09f79e131b9535f05da"
      "sd"
    end
    language "si" do
      sha256 "a3f80b1ad9b75b99ec5b6a78529e18a2be55d773a0af7a4e2a2a68f1f809d282"
      "si"
    end
    language "sk" do
      sha256 "6738d5f3d6628e326c43ad6fef92fdab9723330c8f1477bbc1efe7a514bcbd33"
      "sk"
    end
    language "sl" do
      sha256 "b9f75a0ca0c6006ca1f21a123c84fe9b8ea23cd80cf972fcb552d15f64350be2"
      "sl"
    end
    language "sq" do
      sha256 "8b605bc9b3b12f57bea1a202d235daf37ba0b3e3ea8c99c76baa6fcb255b3fb7"
      "sq"
    end
    language "sr" do
      sha256 "623481c829de709d3ebf0a96cf261af15ebedd615d000176dda46e54067ee1b5"
      "sr"
    end
    language "ss" do
      sha256 "5f02bd607bac695e9f6e8da105024096a05f88f29c6b5efc5dcc32d329d9be73"
      "ss"
    end
    language "st" do
      sha256 "395ddbb77ac018187663c645abbcbc16760fc27c92a9b36bcd7ef780beb17099"
      "st"
    end
    language "sv" do
      sha256 "9f606c6f053fe8386f8655bc6c6c30e5110199a2538aecad37748b2c7c170cba"
      "sv"
    end
    language "sw-TZ" do
      sha256 "981fd41645cb0b9265f7e87157e8ff28e1f1565a9c1cda2b5c608ca1b3bb2241"
      "sw-TZ"
    end
    language "ta" do
      sha256 "464e33d1c29a612d0cc6b118c9e2838192cbc64b202a2dc1629e50a62482b02d"
      "ta"
    end
    language "te" do
      sha256 "61be9de71912c758abb65fc2a918a6e93b2cfcbf0d5f97773e995d45afc4cb75"
      "te"
    end
    language "tg" do
      sha256 "5c2b396f81c760e1d1d4964ac273522a7b58c81896a8042383a58b9ca931ad08"
      "tg"
    end
    language "th" do
      sha256 "e328b5c3fd2e047827539ff0fe9dfa3754b5d1dbd3e1b8481e51f8f98a076fa4"
      "th"
    end
    language "tn" do
      sha256 "3fc7c97ac4f9118358f1bb4232ffd46c28c2d442490faed603e53194f9990e06"
      "tn"
    end
    language "tr" do
      sha256 "b8a19eda42d3b0fa7f686e1bd8942173b903f58c859a334e35140316ab904a8e"
      "tr"
    end
    language "ts" do
      sha256 "d9ebc4aa9fef19a49a2ff55e7d9c7bf1bdf92754e604a3fca4b26db1c107d5c5"
      "ts"
    end
    language "tt" do
      sha256 "37147f1471b6f044933c05d8ffffe7bbf9a6c5d35939d0ced6e0c1f2c5eed2c5"
      "tt"
    end
    language "ug" do
      sha256 "4e0e60cc738ad0e7c0a761a3d848a4295446656997f2793e4cab57d78711837e"
      "ug"
    end
    language "uk" do
      sha256 "d267ee754ecae2e4a741b362ac5a2cf2bdc3d7c3955b5d14c20468cf1f99e8cd"
      "uk"
    end
    language "uz" do
      sha256 "429cb6fca700bd65086404c4fd70c5d68f6accda8d8830273b85901e31913310"
      "uz"
    end
    language "ve" do
      sha256 "e8c1a487fb7fda4e7dcd0b6260067020edb2164067e47feea4092fda9f547665"
      "ve"
    end
    language "vi" do
      sha256 "4b1c6aeb75c4596becdc22f40bc192672da58f3db10d906d7d9a2d2c144b5a37"
      "vi"
    end
    language "xh" do
      sha256 "c83648c3d6912cc1afab16fedbb87ddaaf7fda695bd868af3d412fe9a0f44515"
      "xh"
    end
    language "zh-CN" do
      sha256 "e9be08afd75299552255dedbd24be3efbe4546007a014f4bf364bf7ff86cc709"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "c087be2788b0053b0afba792555d36a3065a7b96bbe9b0d6099bb0681890a38b"
      "zh-TW"
    end
    language "zu" do
      sha256 "2be00aa99f077600518d4596e64c8a7b72f1942af1caed68d637e3e2fcca49a1"
      "zu"
    end
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    url "https://download.documentfoundation.org/libreoffice/stable/"
    strategy :page_match
    regex(%r{href="(\d+(?:\.\d+)+)/"}i)
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
