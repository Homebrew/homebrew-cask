cask "libreoffice-language-pack" do
  arch = Hardware::CPU.intel? ? "aarch64" : "x86-64"
  folder = Hardware::CPU.intel? ? "aarch64" : "x86_64"

  version "7.2.5"

  if Hardware::CPU.intel?
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
      sha256 "d326ef14ea21e709ed0adc42bb68cdb30a9394748ff7fd4d45ce74f0603bafaf"
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
  else
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
      sha256 "5e2c82f20dca9fc75267e106412afe89c4207d5a799b9e15fad2f0c8a8fcac52"
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
