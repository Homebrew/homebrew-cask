cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.2.3"

  on_arm do
    language "af" do
      sha256 "878cd59addffce3c33afbbc638b8b0deab92528f82da40dff76f1bb9ec66f2c4"
      "af"
    end
    language "am" do
      sha256 "cbc2c13efb2b895c686e5b78e5f2ad1213d461a486379c630b8d131851777a9f"
      "am"
    end
    language "ar" do
      sha256 "464e63d6c8cfbc5be843854d50d0dc28c7ddf9185a8af5ec52c3e3a5ad5f7f96"
      "ar"
    end
    language "as" do
      sha256 "9098b9f3dd38413908c109b72076e43fc5252c7551fa33ba09ea9a8364bff70e"
      "as"
    end
    language "be" do
      sha256 "ef20489e2b2b61e1a01d8d60868e90728d480c26615b31138ba56d99bf33e75f"
      "be"
    end
    language "bg" do
      sha256 "712e917c5f5fcb2cd64364a4e295cb3ff4ee3579d5d0e32c68c39c88904145e5"
      "bg"
    end
    language "bn-IN" do
      sha256 "2990e6b59f2d01efe6c3b383caf0ea65bd41ce313fe56215631e897e0f1d1505"
      "bn-IN"
    end
    language "bn" do
      sha256 "a8c9c52cfbd0270b2989fdfabede908d75313794f74cb547dc3b9e18faee75e0"
      "bn"
    end
    language "bo" do
      sha256 "d017b003c2b08833d017bd1de9099219b60102e935ed14dc95f32d05c6c9edbb"
      "bo"
    end
    language "br" do
      sha256 "e8449d3f01336c494f35c577ea0d00a2fe1b16841ce55c129ace4088382b60aa"
      "br"
    end
    language "bs" do
      sha256 "28f8b82008eaea204fc18d69f4e1a88435e427ccf4ec1006cd719a21f1b475bb"
      "bs"
    end
    language "ca" do
      sha256 "5cdf22b14dbc2e4ef274e90d2ac1e26869d062d46812617ecc20d352564a4218"
      "ca"
    end
    language "cs" do
      sha256 "ae9f472193704a3ae7f3d211ecf1a7a476af3802b8ccf25686ba31da9fa9efb8"
      "cs"
    end
    language "cy" do
      sha256 "0121b29ea4045cb9d2d1d649d3ddd10a63bb65cae708034fa8a9bf858e61a0a9"
      "cy"
    end
    language "da" do
      sha256 "e535ce0e37a315eef3311ce1bdddb6d147f645c43792800ba4e8d33794180b29"
      "da"
    end
    language "de" do
      sha256 "6d3e251ae5988d9d4322fa01a46b6e8ea948e6bceb5e4203d85a1233f21367dc"
      "de"
    end
    language "dz" do
      sha256 "8fc83cf889585dc5409b556dac690952b3d4067b57a1623a1ad90b11e390f760"
      "dz"
    end
    language "el" do
      sha256 "a687edf9e741bb03730fd6a590a14398e6aec2c3e06809b41d9915ea35e42499"
      "el"
    end
    language "en-GB", default: true do
      sha256 "2a8cafa73c4fdcc700cfaf678ad26d71862178d821a8299c2ed2337f8f44a44e"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "41cb5b40da44473aaeaafd5d45115b3eb472d386003f486377128d247fa434c1"
      "en-ZA"
    end
    language "eo" do
      sha256 "f6673a1b148d909bba616286f5f6aaf24755a59f48b7d80dbe1adc4242092f24"
      "eo"
    end
    language "es" do
      sha256 "f2ba06315b2ff0b0de47025c92bf169a696d46d3129fca7e85287732c89e93e4"
      "es"
    end
    language "et" do
      sha256 "39f0ffafeeed0d0e38480c979c966b5c81074d246c8c8c2fe9c7f4bee2d30c36"
      "et"
    end
    language "eu" do
      sha256 "65fa2d3f92379a5f42d28e050cb75c08b475f57ae5e58db5c9f93f07eb45d7f8"
      "eu"
    end
    language "fa" do
      sha256 "af9a974c88a6a726645deb836b44114ecfecc1fc4232f8eed8d891e18ed9e357"
      "fa"
    end
    language "fi" do
      sha256 "8549ca6bce53cbe3ad935bd624c58d7624356bb4c67af6938de9b113442e6f15"
      "fi"
    end
    language "fr" do
      sha256 "975267f86db7132dc0bf01250d7f1f93f751fbb98a731528a796e62d2ffedf78"
      "fr"
    end
    language "fy" do
      sha256 "e8b92c59a3c034fe8cc25cb8d22890fcff4e5e5f543a0947b6f165fef052818e"
      "fy"
    end
    language "ga" do
      sha256 "19b548be37347965553484ab2157bfd699639ee9bc50dbca420528e0ffb50cb1"
      "ga"
    end
    language "gd" do
      sha256 "1d326651ad0f080b3596e550606f30f8b5584dede435be12d7028425a3780f45"
      "gd"
    end
    language "gl" do
      sha256 "df572980f061b3241fff22ab62036a3a561939dc3dc5d03f3f63044afa0c4b90"
      "gl"
    end
    language "gu" do
      sha256 "cae1c84a60199b07f703b7d526e7e3abe67b4c1da11e18fa6d18be37055b2365"
      "gu"
    end
    language "he" do
      sha256 "6c74daba1a1793dc42cf7e325b19765d1fda2de16692b877720c31064086deb9"
      "he"
    end
    language "hi" do
      sha256 "cafe4d6280a31be19c778ad2a6bbd1fc08e34cac66c8baabdc0603cb08394916"
      "hi"
    end
    language "hr" do
      sha256 "9b915f9d52bb7c88082e399eaf9423368d3c760159c72226c3d886d282160119"
      "hr"
    end
    language "hu" do
      sha256 "a41f144bca7d32153bd828c5830ea8604aaabe8112a003d3a3e645ea0b17e68a"
      "hu"
    end
    language "id" do
      sha256 "b8780dd96499561ca7fe9bdb9af3ca909145a53b41ac5c06db72088ef7fb27ba"
      "id"
    end
    language "is" do
      sha256 "9e304a2c216cde5d4c5829a9b959e14e37e1d95bcd9d217fb688f3f472d2a4a5"
      "is"
    end
    language "it" do
      sha256 "0f2e5e91a8973599b0b76b220e42c6f14e252ac23e9dee384bd629e908973b38"
      "it"
    end
    language "ja" do
      sha256 "5a6d09c2954bdb6c0b274c5f0edb26187e4732a97e25414d8abcbeee35a7bfe7"
      "ja"
    end
    language "ka" do
      sha256 "a9eef744f90f5e872f1d2456f0b6d5fe8b840452cd4152b4bc879a203ce396fe"
      "ka"
    end
    language "kk" do
      sha256 "9326f68bb2f017bcddb67b2c11668e96d7ec632de7135ae8773cf6471d840d0a"
      "kk"
    end
    language "km" do
      sha256 "319ca124bf2df927cdfa101a13dd916baf18ff8846ef3fe7d9668bc28350765f"
      "km"
    end
    language "kn" do
      sha256 "678c32f9aca8192e4a21b9979dc6ff2e432e2446357b79107f6bee814d8f5fa4"
      "kn"
    end
    language "ko" do
      sha256 "66ed22f6efb18bc5c310e5d44b09e8968e00ab6ccd7fbb5a9927b0155641ee93"
      "ko"
    end
    language "ks" do
      sha256 "9e6687eb14ce9616f7ea397302de593f858aa16d752f7ba4b246863554d70a64"
      "ks"
    end
    language "lb" do
      sha256 "0f0a185748221cae07708f3ba8b0a633af3a71d115ac85cb08ca69430a2268ba"
      "lb"
    end
    language "lo" do
      sha256 "b92c64e800eb9b05102d4f68138e9ba0eb45481aad2ade00036248af5a31dced"
      "lo"
    end
    language "lt" do
      sha256 "7177d28366849a6cded181b3dec02862dd973daed7a8ac014876fb8d54b2f752"
      "lt"
    end
    language "lv" do
      sha256 "90b73466b354ef261d771212e534b5129c418d74454e8ee8935c98b0d0fe4d6e"
      "lv"
    end
    language "mk" do
      sha256 "901981f7fa73d15255608adfdea0076e35f2aff5aded351545c9e41634d91ce8"
      "mk"
    end
    language "ml" do
      sha256 "a338169467b5de22cfffdce3571dee01cecda7ebd83a872e247af96e59a2b551"
      "ml"
    end
    language "mn" do
      sha256 "3ea3663124d78f0fc4be51d9ba496ddd9245e0c20227dcc6879087bd79c616b3"
      "mn"
    end
    language "mr" do
      sha256 "e276e2879fa1efe8dd942a84a412716d1a044fe2be43f8af8b2871380d3748cc"
      "mr"
    end
    language "my" do
      sha256 "e5306259cf8f2ff9573da52dc0c3a8d50874460ca755a7c815456fe1d03c52c7"
      "my"
    end
    language "nb" do
      sha256 "7f30e81f4f603900d204f0ccc229699dee15b129393f9995d0cc05447bada98a"
      "nb"
    end
    language "ne" do
      sha256 "61cc7427a4f4ad02141b739ad6cce9d0d6ef4981d94ac9f3c6c7b753fe059a47"
      "ne"
    end
    language "nl" do
      sha256 "feb68adab5d9c4e96ef9fce9fc05828a7fd7bc2784e00e59722b75cf06b0570a"
      "nl"
    end
    language "nn" do
      sha256 "773b866487fe4aa35050de8ccf00b6884c655faa91d4797aabf363cee839155c"
      "nn"
    end
    language "nr" do
      sha256 "6d968e4ce52c2c80fef7dfcac17e9ad5a8b6498fcdf6c485a3b8a1fed9bb5bd9"
      "nr"
    end
    language "oc" do
      sha256 "6452cd2dfee81cea5e9ae6848d930858229f604e48b8c0cc46e8c397e5bb667c"
      "oc"
    end
    language "om" do
      sha256 "3f18368d674ce4bc2c59b37e3c5228d004f65a9e2642e87027f2a45fdaa7e62f"
      "om"
    end
    language "or" do
      sha256 "913023d1e7446d92a852abb33760f3498183d3edfbdad2bcf0c272148057b6d5"
      "or"
    end
    language "pa-IN" do
      sha256 "79c9480bad9ca952e82bf5c630e054b11a3b54349744f7d522beca04eeaf04f9"
      "pa-IN"
    end
    language "pl" do
      sha256 "c2fcf1f6c6f96534f314e1257f490cc1f15986b95ea03f208a5804b91bcc3203"
      "pl"
    end
    language "pt-BR" do
      sha256 "f11be22818ad5768dadf1bbb37820cbf34810a854f49b401aeb699c6e97031bd"
      "pt-BR"
    end
    language "pt" do
      sha256 "8737845369c13ddbb7ef11e0484414a0f12a571d7c185a7d1af58cfad4091b01"
      "pt"
    end
    language "ro" do
      sha256 "c9e5b4b00f800d9f2a96fdbc1332b56986282305f7c96008f91247ac39caf59e"
      "ro"
    end
    language "ru" do
      sha256 "b6f8ed64f7ba7c05bdce79c7eeef9bf1f8cc1e37c895f0a7b8a6021cdf1e752d"
      "ru"
    end
    language "rw" do
      sha256 "5701a0c96af47dd95aa1a49a40eb0261b9a3f99e88a779b7f891bb08c7e40b6c"
      "rw"
    end
    language "sa-IN" do
      sha256 "a1c263c2c284d6d91e40b831d13380860d18aab802bc6ff92f0028aabb8b9190"
      "sa-IN"
    end
    language "sd" do
      sha256 "2bd3522e8f3de40f22685e91062335faa56765aaa58d74203c1b1a750b751538"
      "sd"
    end
    language "si" do
      sha256 "154be02e6125cac753bc3b17e5801484a46a2c7c5cce937842447bc659cbb530"
      "si"
    end
    language "sk" do
      sha256 "5cdb7588d8a759f2ce003f2dbaa2462e7aa8c53354272a414029f108ac68d047"
      "sk"
    end
    language "sl" do
      sha256 "afd8cbbdcb5cc3222296dfd9d54327336a53aa3ff0ac77678c0920479dab99da"
      "sl"
    end
    language "sq" do
      sha256 "d539bd79bfceaaa7e8567902d48ac3ab8a37b45dcf67d8220f76705a3dc80955"
      "sq"
    end
    language "sr" do
      sha256 "dab3ac0beaa2053df4c180d52e14ce4e50bb5c8a85f576f8e7867ee5e9b98998"
      "sr"
    end
    language "ss" do
      sha256 "2b6cdada2b11c065ae83c63d72f5d911581c5aa4b90ffc26fb1b8dd009ffd900"
      "ss"
    end
    language "st" do
      sha256 "a8c5014e3a2858c3abdeafa64a66a8a13fce65b993c04a50fb670b72460155d9"
      "st"
    end
    language "sv" do
      sha256 "b1ed3f65a8f7059b46f5ac220912a6f4b852309edcb254564b7fb2123f628766"
      "sv"
    end
    language "sw-TZ" do
      sha256 "1d0cb191d72f4eec39a6e45d8ad10cca7fa5f2f10e36bfe55a87173b6c391454"
      "sw-TZ"
    end
    language "ta" do
      sha256 "d6ba2eb86542430758e65030955557a76a163ddd98756cc6d655cb2d1832faf3"
      "ta"
    end
    language "te" do
      sha256 "9c1850bff2195a7d80b014aef4dc6db00e5536c1637c59d03ddac59678676b41"
      "te"
    end
    language "tg" do
      sha256 "749e5c476b1d2accbc333c23ee947feb0d97daf33c81efec13ab060fda22ce7f"
      "tg"
    end
    language "th" do
      sha256 "fad8bef11e049fd5d3fe638e57161fb60146c87302d341cfc1564040df788b3c"
      "th"
    end
    language "tn" do
      sha256 "a4478ca3f70f42954062b52e52628ce475fa178125cbf654d69d892f955bdbb5"
      "tn"
    end
    language "tr" do
      sha256 "5435dbb7385da4f1123967ebf647c57338f3684e2cca91522c3afb4511551801"
      "tr"
    end
    language "ts" do
      sha256 "ca2a19ebe7874ab97e6393df97f65c44a5731a95eca9b831adb301c4ef5ea749"
      "ts"
    end
    language "tt" do
      sha256 "ed36458ba8e1a90032d820f73041643bbed4f76bbc8a0fc0c09ca29ad0682620"
      "tt"
    end
    language "ug" do
      sha256 "76a3a6147a34aeb86ebe181be85a3310929b5c25d2d4120954fba3ade376badf"
      "ug"
    end
    language "uk" do
      sha256 "7c021880f71071d632064820a8d49319f56477141dc8da5f56d9f687fd928096"
      "uk"
    end
    language "uz" do
      sha256 "ffbdb11aba5a80f508d28a930f53b199e738a7519cf6937e2cd13f60ecd20e0b"
      "uz"
    end
    language "ve" do
      sha256 "5c1494e141205aeca49360fec4f8c3bc7143039e7b1449cbb42ccf407806dc03"
      "ve"
    end
    language "vi" do
      sha256 "1eacd7dfa81e854b9d26c2eb9eacc12487eb9fc5d2fa5f62ca78ecd96d9bf5dc"
      "vi"
    end
    language "xh" do
      sha256 "bda4956426f87c7dd87872d54b2e8121dbd1d8c4553572a1e4d03d7d4fd934b9"
      "xh"
    end
    language "zh-CN" do
      sha256 "3c02d9da6dfb68db1b6c40c74a2a4682dd10ffb9a40c703c8f4bb7b5c778e511"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "eb29e9fae1d1697ff0c13993641aa721b447b092b083d87be8ac03b4dd8cdb4c"
      "zh-TW"
    end
    language "zu" do
      sha256 "7726f01c20b60ce1d43ffddca0cd27b03029a80b6d4c975422bf9eab087f48dd"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "d73d92ac91796490e7b2e4f0900e9c803fd7df9e8ab3e44ffc28be6b3de7489e"
      "af"
    end
    language "am" do
      sha256 "b75114e32e1c474a18089c4274092bea6ceec8ce06c78e65e2cc9bda0915fb96"
      "am"
    end
    language "ar" do
      sha256 "b4b696ffe68376c022a5798a01cb5febeba898e58f2e87aa412c9c6264dd1f83"
      "ar"
    end
    language "as" do
      sha256 "e0fb078c4767e6f0296c18551a5db00e918f043d64147ae73fa66224a1197a54"
      "as"
    end
    language "be" do
      sha256 "37b07b2365b3523c7ada92b8206a9e05b2144562572a078ac9122dac9ceaca6b"
      "be"
    end
    language "bg" do
      sha256 "b667f2bd097d5d77f901764f9cf9cdf907967a60829cf8f84e9de30ec48c96a4"
      "bg"
    end
    language "bn-IN" do
      sha256 "1eb220b555ecb40a597505a13489451cdb383160d13c5ea7c4f72cc937134b0c"
      "bn-IN"
    end
    language "bn" do
      sha256 "e5c3e579736e0cc47031fa3daa948ec15bb18154571dea3ca217d6846881ecfb"
      "bn"
    end
    language "bo" do
      sha256 "dfa036bed6761f15b7cce80bee6c1a59406224d9519434887e5704f2ef858835"
      "bo"
    end
    language "br" do
      sha256 "00a88e9a596981be32a8f797720038b4824b595a035f7e9c5e4c5b362c7c20e4"
      "br"
    end
    language "bs" do
      sha256 "def5aa9164a204057f8df7b9bad4c890903e91492262d23602acac627c91d2b2"
      "bs"
    end
    language "ca" do
      sha256 "5070407878cd4fbe6b4dc440f46e72aca95211d89bf027f301be17d7bbf1b955"
      "ca"
    end
    language "cs" do
      sha256 "e32a77da0311bce8415648428dc43767d4c1520afae021419d19ee64ef497307"
      "cs"
    end
    language "cy" do
      sha256 "b5896238cc199c956d2df5ee4558451f6dbf24c93922173de43640f7b8229c7d"
      "cy"
    end
    language "da" do
      sha256 "ce12ad441b72ed5d4856af8e18715259679266cd09ab11ea2e08bf2b7a79b293"
      "da"
    end
    language "de" do
      sha256 "4cdae7aa8e12fc024b0b7d1869e5fcdc2640771acbb9252f9f55ea1ba14606d8"
      "de"
    end
    language "dz" do
      sha256 "8b95c68d6d09f92386b6ee59819df2aec3ad09934aae8caa005afb718da70bc4"
      "dz"
    end
    language "el" do
      sha256 "cdf6c15af38088838be270cce2f3c282de8148f71ad1d9fd4bc3fed81bc474d8"
      "el"
    end
    language "en-GB", default: true do
      sha256 "6eca5ab5478e3b219a981e6d00508b617f7227ab6e343b480433262ba6b7a26e"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "63fbfea6fe13dd8be5b5820987325a3b797fcc6b11a6580b83c35461c52264be"
      "en-ZA"
    end
    language "eo" do
      sha256 "583c833ad66a50c3565e12d37e18fe18bf499c8f99317f54c4a06a945c7ae98c"
      "eo"
    end
    language "es" do
      sha256 "800a7b72ccd0537c169db7d46eaf23c3b2720a66432fe256660ee31dc95636b0"
      "es"
    end
    language "et" do
      sha256 "e467bd25e415dcc78ce3bc54ea1a7fa34465e2299f32d3d1767f5e6b4b5a31d3"
      "et"
    end
    language "eu" do
      sha256 "218bc8ce48d872b5685e98b94eb85c4d0506a3ad486785334875453476848d22"
      "eu"
    end
    language "fa" do
      sha256 "f845c2bbf1e791c0b8b0fa017fcddac625235660efd4489854d77fcdbe579849"
      "fa"
    end
    language "fi" do
      sha256 "181d910c95326280d2f20a8f5a5d8299639ef857c542f8febc22a951ba8bdfe2"
      "fi"
    end
    language "fr" do
      sha256 "324b6e23ae7576864340e05a830a4345fda3ce425e70c730c4b844decb5e5c94"
      "fr"
    end
    language "fy" do
      sha256 "88efbd7c6da3875347048acb15e938e2cdf20cf502654994721067f63951e16b"
      "fy"
    end
    language "ga" do
      sha256 "7e098e2c9c9ac7572d4f1208a3e0d2b9469a6836b4703eaf340127b811b4f4f8"
      "ga"
    end
    language "gd" do
      sha256 "acf408be2601ad4e72d8f7e2126e6718a97837187b287a04f685b031caec8d5a"
      "gd"
    end
    language "gl" do
      sha256 "aa6274b84a8818a3e2ff111bb8535f41f5b971df54b1ae1aa62c999fc2aaceba"
      "gl"
    end
    language "gu" do
      sha256 "aec0f2e16ee6a3649083d660259016e70840ac736a1d2b6dd83e5bea116cc165"
      "gu"
    end
    language "he" do
      sha256 "9bae24e5ee4f5b87c0e15e113e6d38fb4f7480422154a7fcf20eb5acbd9894f5"
      "he"
    end
    language "hi" do
      sha256 "d2a843178acf0de77b37fe017873e2a9958159262ad660b074e6c829d8922add"
      "hi"
    end
    language "hr" do
      sha256 "199bc98f5788c0362fbb9637080b1e3347f120566a260f9f699309bf6f9ae7b7"
      "hr"
    end
    language "hu" do
      sha256 "1870a80c471549e800612161a295cbbb72aa02c6536d9ca5d5909fb5b2c2a5fb"
      "hu"
    end
    language "id" do
      sha256 "fa24bcd5614973c63de81c3bb98f41dd63e1872fb785fde6e82dd3e40b05966f"
      "id"
    end
    language "is" do
      sha256 "e265e5053990afae64fcff8963c4b6ddcb283b77313dfbd574db0f2b62156a86"
      "is"
    end
    language "it" do
      sha256 "d1d5592417caf5473c0bd15297691872a7a5b2b9d54313d6d6df88538dc9a160"
      "it"
    end
    language "ja" do
      sha256 "9aeafefc4a4ee634dfa360c148b061dc2a38784ce579503acd510c20328f7e29"
      "ja"
    end
    language "ka" do
      sha256 "6556bbd490a86ef22fa6ede384cf12a109eb15a9fad6b77dd6f175de24de9284"
      "ka"
    end
    language "kk" do
      sha256 "add273b8eea93b218d2ee9862cfe59b3b426d37ace33b9a7be756e2321244b00"
      "kk"
    end
    language "km" do
      sha256 "bf22ad97874a75537ba2ce487bdd0bd6e14d80cf8754eb71c8c606a009c31a8c"
      "km"
    end
    language "kn" do
      sha256 "b712c6c6f81f873baeddc649b7b02030d6201ae578dc251f9cc5a1a76337cf1a"
      "kn"
    end
    language "ko" do
      sha256 "96265221534068615da3f3c2495bbe3d282d831ae4c44b88687c061a1a82c46b"
      "ko"
    end
    language "ks" do
      sha256 "f888c8b756d2f2ae5a9a479edab3ebdf7e6214713b12614f4cd8d353bd4b85ad"
      "ks"
    end
    language "lb" do
      sha256 "583718c7cbc042987d0f2f5c6e2a09406f95eabceba56dabfd8b9a21c95f1422"
      "lb"
    end
    language "lo" do
      sha256 "3d5385d70a1b30226d6f626a2eab744ec2c86c15cab75f3826fd2046e4e02974"
      "lo"
    end
    language "lt" do
      sha256 "48acbd3064ccee0b70b0c5cbea9b8e9f446e408116330e66a697d72268d154b1"
      "lt"
    end
    language "lv" do
      sha256 "d11ce7cf1695900a07afdd2b759483a1d68ef8a64ad17c80c149647cdd5bbf06"
      "lv"
    end
    language "mk" do
      sha256 "736b2439f2446620f869ed2de65d327d46368ce0f5a6eb3006c630c8a0efbe4e"
      "mk"
    end
    language "ml" do
      sha256 "228b26077f7160d4d928145b4eda54911f7977bbecdfc08ae1a27c6a0bd6df31"
      "ml"
    end
    language "mn" do
      sha256 "e97fefc69adb072f32088d187deea32690605ea57174fefe93811ff1088d5d85"
      "mn"
    end
    language "mr" do
      sha256 "38545776c30ac74a9f9064946ba7bcc810daa986651171c4c843c5216a40ad8a"
      "mr"
    end
    language "my" do
      sha256 "ea52f2bcdd98d62d6cc359661d3a869e935e2a65cffc5f1ff2af942876adafb1"
      "my"
    end
    language "nb" do
      sha256 "b2b4af6393f15ccbb50604e3eea7ab779e6668a55550eb9da5163a0e0b0ace68"
      "nb"
    end
    language "ne" do
      sha256 "112b9a57dd0c0161b0b7a71eead1e9b8f7497b323414154b9f0637bbe34b1c2b"
      "ne"
    end
    language "nl" do
      sha256 "5265836cc786bfa7f268a60da645936647bbed5b5d05a357e732aa0243cfc2e0"
      "nl"
    end
    language "nn" do
      sha256 "207d3f5884b0fe46fa630ae9355b6a3e0f1aee8e166c2d4bd45153fe1282c892"
      "nn"
    end
    language "nr" do
      sha256 "6483c25e9c912d1ab2ec75de3fb50a68003651a6ffce70a3b2ab599c3ac99426"
      "nr"
    end
    language "oc" do
      sha256 "e5029ba50178fba5d6851184441c71073a4b8179928c22bf6c50ad8ab3ed82f0"
      "oc"
    end
    language "om" do
      sha256 "cd70580ba0cc6488ef30b9fe84ca08ee0d38908e3bf68294662ef92cde72dd70"
      "om"
    end
    language "or" do
      sha256 "6c3f8aa207c21c4ec9cc4859165c6e7fb01d53e0d2e2aa2ae32f03cfa538b287"
      "or"
    end
    language "pa-IN" do
      sha256 "6bd4d113fbfbb78949488f347f97743d6298b05f13fc59d744081b5c067d0932"
      "pa-IN"
    end
    language "pl" do
      sha256 "5af32ac0193700822d98f85f803ce7f4772353e09b2c75a9cf7a609714cff856"
      "pl"
    end
    language "pt-BR" do
      sha256 "f8fe259e6ae1f111ed83d1997f0a6763dca541b4c7c5fa00e1816f7ef5af23f8"
      "pt-BR"
    end
    language "pt" do
      sha256 "c5d5ec0b2fc1d6ae7ed2e963d4f406dbd367bfadb3e6f60c17979240bbfe8403"
      "pt"
    end
    language "ro" do
      sha256 "50534482732859e2dae7eeac79a009d6b5e5a3649dbe653233ea12c08586da53"
      "ro"
    end
    language "ru" do
      sha256 "e8427bdc0be0ae46724ac05017f610250675f430205aefc0ec80ac9c0e987eb8"
      "ru"
    end
    language "rw" do
      sha256 "b4002d7e1938c91a17b95b959236fdce5136f64b6598128f3c4a55d61e9ffcb8"
      "rw"
    end
    language "sa-IN" do
      sha256 "db9ded8300549283ecd1bce0751c48432c12a0f57418ee5a526ef40248f535bb"
      "sa-IN"
    end
    language "sd" do
      sha256 "f44665f6b16c19d92221fb9206f6d5e3e7c6b3c8c31e18b45e5afb7c09082e59"
      "sd"
    end
    language "si" do
      sha256 "d68058f8ab243d711e880aa8fd1e92801dd21f3ce36100494d48ebb4ee74d297"
      "si"
    end
    language "sk" do
      sha256 "7cb504d1e9b2f37bcfa20d142d42c7942ac7357a8862ed8dea272fa3ff32fac0"
      "sk"
    end
    language "sl" do
      sha256 "0cad356ac59ad9ee072fa6a9fbbc0a4abfe3f36eebfefb7d5a5254289228d244"
      "sl"
    end
    language "sq" do
      sha256 "f1fa1fe30f05549f5cdc21c3a8412e1358e630eaba695645b66eb1ea3602c505"
      "sq"
    end
    language "sr" do
      sha256 "ddf8dcf5f3fd2378f464a1532d269b888f2cae1ab15cd2c1b2add41b54809832"
      "sr"
    end
    language "ss" do
      sha256 "3796788db7b1578d6e8f55c7db2b5d4657f4f870a9812489f3f6ee5f95a0a0a0"
      "ss"
    end
    language "st" do
      sha256 "589fa4d467269ae04d72ef430cfeaee4af0dd41cbf5a3834b7d3e9c7522369a2"
      "st"
    end
    language "sv" do
      sha256 "db8898622d2ca055e19b2cf5190e936fab61842d969f3f9653832b2ff0b41199"
      "sv"
    end
    language "sw-TZ" do
      sha256 "027431fb73fe049444fa86477e25f5f3aad9f44245bd120d7ae7822a010419bc"
      "sw-TZ"
    end
    language "ta" do
      sha256 "d1ecbdf439298833ed26eea4023a7225321d3d1390e8ed24c456030f96695dc4"
      "ta"
    end
    language "te" do
      sha256 "526d86727c1993cfdf241501793a8a43577ba1b36e2110cfd4b8d3cab853cc4a"
      "te"
    end
    language "tg" do
      sha256 "982d786928c16a65001a3c82d01578823e770548e1956f81ac80a712ce4ba74d"
      "tg"
    end
    language "th" do
      sha256 "76de8b96d3d204cd284588b351a27654eec8e54e8e48e2399f589a8141a205a6"
      "th"
    end
    language "tn" do
      sha256 "daa6314677caf76a379f993f8d19ed1d9896640b4c7a35ea1de034da5fc1582b"
      "tn"
    end
    language "tr" do
      sha256 "78192bace66b06a3a84380ff25ccf53cedc2fa3c87f0221ec7923e24916808dc"
      "tr"
    end
    language "ts" do
      sha256 "8a6c8aee7ac593e9a3e9806ea65359e0377c40f0dd6629aff83e663ff79c0be6"
      "ts"
    end
    language "tt" do
      sha256 "0ec0a21c0f84446ca0f9a9b90e5f726172e2b71afd1cf84ba9fbad27fd0f5fcc"
      "tt"
    end
    language "ug" do
      sha256 "a72c622d06221ca7cc190a2d962886a1105f36dd74dc440cb8ded2cdcf4a4ed7"
      "ug"
    end
    language "uk" do
      sha256 "e978027c723721006d8a54c13eb7d5c07aa1772ca8264a668fb76fa3e7cea73e"
      "uk"
    end
    language "uz" do
      sha256 "ce25972f7543d63394909e44c25454e1e0d8622545dbb252b9b630a221e725e2"
      "uz"
    end
    language "ve" do
      sha256 "9e3370df7ef6a917ad25823dd359494a887e59a3a6e26e198e6d134ad038954b"
      "ve"
    end
    language "vi" do
      sha256 "2480f641090c50f8d32f58ba0ef6325ac66b820016413c8ec4b447154bbc23c9"
      "vi"
    end
    language "xh" do
      sha256 "e380f6a054f1b9a54eb70c9da4ac953cabbe57d8efcf509884b5d013c2c10514"
      "xh"
    end
    language "zh-CN" do
      sha256 "2c623e092ecb438997929ad88d70d114a45eefd353c77ce72892d2486f56e43f"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "1c5f71a7b9f08753fab5acf0ace000e8b68080e2a86bc1ef3ec507c47e7ab8b2"
      "zh-TW"
    end
    language "zu" do
      sha256 "fdad0c19c82d86caf058733d29d78f7e98b5d19d991cf915285ce2dc40efb579"
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
