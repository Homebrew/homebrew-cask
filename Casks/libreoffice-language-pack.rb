cask "libreoffice-language-pack" do
  arch = Hardware::CPU.intel? ? "x86-64" : "aarch64"
  folder = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "7.3.0"

  if Hardware::CPU.intel?
    language "af" do
      sha256 "8d1489b8a8797551ee04e92949bb58e674984c3ef950477096b02ee42bba6cd7"
      "af"
    end
    language "am" do
      sha256 "84a56d1dd772ae39b73d0fa5996685af8852d609f3c6bea72553c41db7a264b2"
      "am"
    end
    language "ar" do
      sha256 "077ee3f944b0977043cf6c192201784118dd06ded10a410ad133ebe4243737a3"
      "ar"
    end
    language "as" do
      sha256 "cd865fafeb057d92077834fe73b29b42cae31c7b057d5f83ba151112a4667b80"
      "as"
    end
    language "be" do
      sha256 "be85b324c5bdb3ae23f428779bef664f4899b0e550eb0512ea8103f3f2bf2beb"
      "be"
    end
    language "bg" do
      sha256 "e3568a9ef9a3dfdd671a2201884919e6e1b4b51a7e3fa35e21abbcec70052878"
      "bg"
    end
    language "bn-IN" do
      sha256 "589ce6d831d04aa1c469e3f0fab4622ba293430f7c005ff989c63d6ad2e552a8"
      "bn-IN"
    end
    language "bn" do
      sha256 "1dd39fab9ef8ca211bad4893a481af1129abc3a0b846ee06914d82f9c15ea43d"
      "bn"
    end
    language "bo" do
      sha256 "8070f1ed6138d5ec9b530d91bf32473e0f6251bb0816eeff654edf8f86278b29"
      "bo"
    end
    language "br" do
      sha256 "b5549974ead0d08c1be83c1d56445f691a41c8ac21f64e4f460befadfa0b5234"
      "br"
    end
    language "bs" do
      sha256 "3b75d3a41171b1a6c9e12340731771d6c65300146df52fa0b8ca66b6dc8fa950"
      "bs"
    end
    language "ca" do
      sha256 "fdd4dead78600b64a5c79a3b142283b7b8f270650e5eb722db66aa5ae5b7c8c5"
      "ca"
    end
    language "cs" do
      sha256 "f619ef90fd35064bd645f6325dca2c4f75032781b6d12e3243fda5bb1b396de3"
      "cs"
    end
    language "cy" do
      sha256 "9b67beb2ce43cba2e8e127463c49f76c96577f8366edd1c5993c72149215a4f2"
      "cy"
    end
    language "da" do
      sha256 "7f715735a2894d9d9cfabe0d43e554b360a910a7cfc43b4c070182d8582072b0"
      "da"
    end
    language "de" do
      sha256 "e4799041ee7ca35fec745c1ab38c45a93016d9bcea106c91fec8e2ce0f39f1cc"
      "de"
    end
    language "dz" do
      sha256 "36c7536123f20fea50a710f8c7baf67c4ed868e4744946b6193449995aa8cc43"
      "dz"
    end
    language "el" do
      sha256 "e4734ad7fbef8275eee88d926327ee6596da992dd88e15c51d592afd0c8aaff3"
      "el"
    end
    language "en-GB", default: true do
      sha256 "8f44ac0d53aa348dcb59a58cc81853e83413496b6a93ca28bd746b096b6992b5"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "fca9c299681eea2dd2ca3471d82d7820ee2401d31386e50ae5f7ba339006c95a"
      "en-ZA"
    end
    language "eo" do
      sha256 "29313a7f4fad988dcf7456517c96ce2f70bbe3cf0bdee9928bda899780337d20"
      "eo"
    end
    language "es" do
      sha256 "38f4cf28365cab42c0c3a518b5e5819216a6253553305deae4c0b869ce7a9b82"
      "es"
    end
    language "et" do
      sha256 "f16f62f503114e9398ce560e5809fa3ef850d965f38a0e8a15873e7aeaa1992f"
      "et"
    end
    language "eu" do
      sha256 "33524022a953e0ec2c4b3bc3badb718f8968411fbaf9c5c72122a5e045579420"
      "eu"
    end
    language "fa" do
      sha256 "16439a0e5a3b5bea13a536ee4c2670cba469ca67f6ff1c868a4d5552acc1624e"
      "fa"
    end
    language "fi" do
      sha256 "e0071708f27b7c53cf01578b7ce5b42bbb467da8a98bb62f0a42f20d60402486"
      "fi"
    end
    language "fr" do
      sha256 "e2f6f90256fc20fe73a75698aea0a43107f3bc85046a5aa869b141b88bd60b67"
      "fr"
    end
    language "fy" do
      sha256 "fc38b6914cf2f4f9a101b67ad7e40da2cb50fca466501a756aef6d5457cdfde1"
      "fy"
    end
    language "ga" do
      sha256 "858959b4947ce7d588effb67f424b117f8aeefe5f627e3d1e9414ca3242a44b5"
      "ga"
    end
    language "gd" do
      sha256 "f3a7c298de75ff973caba58d464f94ea2884c36b206587f978dbe5643f920a1e"
      "gd"
    end
    language "gl" do
      sha256 "5ca6497f3e04693437f26c59749fb137be74407a415392397fb86265552da016"
      "gl"
    end
    language "gu" do
      sha256 "1f2fb0271edc89187ae3c62f8bf9fd4b5c08cf7ed15f315df0eace1e32f6a602"
      "gu"
    end
    language "he" do
      sha256 "e0fca8530c3468b1bec8c392e8b8e57d606d5b6043bd596fcf77d5a43116619d"
      "he"
    end
    language "hi" do
      sha256 "6116026989fde91329689cef0027ee0b0e70dbcbb0c06f0e1dc3e677c0a5c943"
      "hi"
    end
    language "hr" do
      sha256 "c53edd54f829b96e9bd3fd71de0fd3b7e6cd6a89f31bdd6af164d07555c7a5fb"
      "hr"
    end
    language "hu" do
      sha256 "0f4fa472622db6d591c3f7ee58eee7e48e0bdebf0ba77a0c5e428f0f212ea591"
      "hu"
    end
    language "id" do
      sha256 "1d674e9e87037f14e5571c446654ecef8ec90bd4d6abd33bbc941bf533e6798d"
      "id"
    end
    language "is" do
      sha256 "6244739fe054af0720ddb5ebb09510a253a50ab34b601215b36952465a00961b"
      "is"
    end
    language "it" do
      sha256 "8f4ebeda76478ca50c802be708e32abb0b05caee049c1eb56d41045072001c1b"
      "it"
    end
    language "ja" do
      sha256 "985a1f12b5529c10063c307602c07fb21b7c7292627b743fa578938bab345b65"
      "ja"
    end
    language "ka" do
      sha256 "ee376cc970b95ccd470ea7796dafb22dfde2dbef04bafb489754f4e9fb9ce042"
      "ka"
    end
    language "kk" do
      sha256 "225430160c279e143ee58533ed5f6474dbc238451c0cbe20e46e69aa1c537f0d"
      "kk"
    end
    language "km" do
      sha256 "8497666e25255d01b054b22c0c2ea922c3bb2cc59c4dfed28d4410f032d14726"
      "km"
    end
    language "kn" do
      sha256 "6ac0177288c4c484545558cbab0525da1ff583b68c890c9e5fff58cfb6c88c2a"
      "kn"
    end
    language "ko" do
      sha256 "edb3cd7a07426d3790914e3c50ab43038860af5bf9f6a2121e8c6c1e60975c45"
      "ko"
    end
    language "ks" do
      sha256 "d9c7770e842225d169149c199037f55f0a4dd63f267464e4dec8ef7ef5e101f3"
      "ks"
    end
    language "lb" do
      sha256 "a8402a55215f37dccd27f58434a2c9b09d8a1d0e20af87c84bd7e2a810825e53"
      "lb"
    end
    language "lo" do
      sha256 "885a73e5fcfec7e26ed18baa0c4cb4fe0d838af94a8e16e43a3daeacf92d4249"
      "lo"
    end
    language "lt" do
      sha256 "87d2b34fe81311310aefba9f8b4682f4afe1bd0da971f52c4ac3b18ebd51b677"
      "lt"
    end
    language "lv" do
      sha256 "7f16e9940f06cfa191f6eb1f9d25f4863f7ee20c97c5af4e02ae2352e241672e"
      "lv"
    end
    language "mk" do
      sha256 "7e255e30262b7329390a79a597265d21201f8208b0d1ce140f53db587a29be1b"
      "mk"
    end
    language "ml" do
      sha256 "fcad8e7eef28b320153cda73badee3088bd40e91a050fa13517f616434edd5c6"
      "ml"
    end
    language "mn" do
      sha256 "6d1677b3048de6c101450a3b12bae4954af340857c54a69e1a4b99fea09557d4"
      "mn"
    end
    language "mr" do
      sha256 "a7b4488736af1f90559a796dbc4505de272e4bf6111cbee8ebfc9be32a0ab470"
      "mr"
    end
    language "my" do
      sha256 "018bd5b8fde7af36e24530792cc15746102823b53fd8c98b07a9f241934dce0a"
      "my"
    end
    language "nb" do
      sha256 "f421af03f24146fe02d626d7ed4c63e0038feccd1f29d5ba8063858f3a1d725a"
      "nb"
    end
    language "ne" do
      sha256 "31fbe6c2e800bcb1b7980c550697d9bc9968a8c1271d0fc910b9058ed8a9aa39"
      "ne"
    end
    language "nl" do
      sha256 "a5e7437e9b97b59f47a445621fcaba7314c84b95f9562ebc1f967e930c12af3d"
      "nl"
    end
    language "nn" do
      sha256 "c6ff829da31b5ec6d80034a638ee5420c2ff3635805ac6b867559fba7cdedc01"
      "nn"
    end
    language "nr" do
      sha256 "8687cb0ae78f2ec98d5598fb6eea79a0c68a3ca0704f72e6a2bf45cb317b2e24"
      "nr"
    end
    language "oc" do
      sha256 "c59c0ad78be3a8173d2eb97259d70bd8cc9bbbb1c0ccb708b150639f6aacaee2"
      "oc"
    end
    language "om" do
      sha256 "0d1d045c34248a841cea971cc1f395a505a206d5c19a8d5879e5ff07c2c3b66e"
      "om"
    end
    language "or" do
      sha256 "bb3d6939b9c103c1c20a8a8ea8e790f236a53413315d4a2dcfa2a63b7825c5bb"
      "or"
    end
    language "pa-IN" do
      sha256 "a12a1477ac41cc65eb3f75a59cfa16a8c83b1211d1727bf51ddfb6acfd8d686f"
      "pa-IN"
    end
    language "pl" do
      sha256 "a4284426e4c5dc42e495753777ef4586f72dabab1685cb5f6434a88936bdd0a2"
      "pl"
    end
    language "pt-BR" do
      sha256 "e41bd9388ac42f6cb6d337f49533577066f3f48dfe9aad50e6dc5de8ce9a2e0f"
      "pt-BR"
    end
    language "pt" do
      sha256 "ffbca1a600387c6b9b3a0e3b7c141a03575259958a4071d482f12fe80892a76c"
      "pt"
    end
    language "ro" do
      sha256 "fc233582f6a028927ce475b57ce1d9335ceffbcc2fb5f5698c6c211dd2acf739"
      "ro"
    end
    language "ru" do
      sha256 "56d33eacdb77e0c6adba55efaeae199debd26da8339e5bb5a07c7ddf39b849e6"
      "ru"
    end
    language "rw" do
      sha256 "e5f9fa042ec0e51315f94aab1a1329596c2d305757af857777cea1ec558e9298"
      "rw"
    end
    language "sa-IN" do
      sha256 "62ee432f9bdea0435f656fb35adb0bc7e0c40767bf1122594912bf470115f12d"
      "sa-IN"
    end
    language "sd" do
      sha256 "ea362e85460004cf73098e859bd0c930ac266f2aef1abbdeaa17d232cdb592a7"
      "sd"
    end
    language "si" do
      sha256 "e206cbacce4da22259444c3f29f97f77b8b11c0980de2881fd187b04c60f3788"
      "si"
    end
    language "sk" do
      sha256 "1b1d5507a31a53e77b43f785b8242ac2c27695e81afe8f64142272082f2a1e6f"
      "sk"
    end
    language "sl" do
      sha256 "94f7c160291157d8b849f0881022ae5d956cc651e89ac6fca21de2778ac6bbe4"
      "sl"
    end
    language "sq" do
      sha256 "3a01911bd076ce3221a3860bcb3dfcc406764fdc04a4ee1dbe0750d94ed48e5d"
      "sq"
    end
    language "sr" do
      sha256 "4028948bb2c2e0f453a233cedd1b0d6bf7a09d73622b9204bbdfe1c7acd4bd7b"
      "sr"
    end
    language "ss" do
      sha256 "a3a9540a78c6f5a530e9d26e9575562280151e9fa3d3447606136103151fa154"
      "ss"
    end
    language "st" do
      sha256 "338438525fe7b3f7ba1fa819b79150f135956e63bd32a680055e91c08f34a048"
      "st"
    end
    language "sv" do
      sha256 "d4565f7f4c647b587e0fad564c95a585bc58a7814728668d6206d2c1c5bd4c0a"
      "sv"
    end
    language "sw-TZ" do
      sha256 "3b4ed05af61ffc3123b187fb0255746d2ab965f0ed3006b2d18e8d8dfc91f9c5"
      "sw-TZ"
    end
    language "ta" do
      sha256 "bd5804ac4e2b7c375c7db555c7b36b9b1a58a3a14e0ff1aa759caabd15f5c93e"
      "ta"
    end
    language "te" do
      sha256 "5da196f885f8a878c09852854871242bb0123175f97f592e048e7c3cf1a9a8d0"
      "te"
    end
    language "tg" do
      sha256 "cacc0b10e8498fb355d6b397992882d5955c7ae04d8780662a08d782fb649bd3"
      "tg"
    end
    language "th" do
      sha256 "2583465dbd1987e694bfdb0d1a91d87c67085badda22278cdffcaae31359b67b"
      "th"
    end
    language "tn" do
      sha256 "99b1ea4728d604aba49dd98490355e691a776faee90a80b43cbb8b49e77dc9b8"
      "tn"
    end
    language "tr" do
      sha256 "d8af87c366c1e9db5fc3a9794f08ad26aac3193d44e6522c1a63bdd7178537ac"
      "tr"
    end
    language "ts" do
      sha256 "22c544947d9eef16bed8bf8d068ad8c5c124cae34c889aedde09e12ed9b975cb"
      "ts"
    end
    language "tt" do
      sha256 "2e25bb5fd924f9a774fa60a31979b81e93ba4642f6bcfc14df95899761ca0e0d"
      "tt"
    end
    language "ug" do
      sha256 "b98868c800df4e8bb7d6dc19a251183d9d9b29510da937d42417794be074a9b2"
      "ug"
    end
    language "uk" do
      sha256 "06cba73f9ea6fe4362ba74d715294f03719087873a1b968e284517babd3c1fcb"
      "uk"
    end
    language "uz" do
      sha256 "25800ae956061fa3abe3ab454b5fe22f4cdd9eecb0e006d62707674302760ca9"
      "uz"
    end
    language "ve" do
      sha256 "e2310783b3d3f441b6675f1c429eaa6a7e8f30059336aa10328693629e9f99d4"
      "ve"
    end
    language "vi" do
      sha256 "d6e4db61a9a4f87289517888504b4f44751e139b9376b88f9c080a2016abc553"
      "vi"
    end
    language "xh" do
      sha256 "da30170d842b074ce25dcd4fbf44d9c33d2c928e766133485e8e01ac51336874"
      "xh"
    end
    language "zh-CN" do
      sha256 "07857db1f89bb30bbdedb5aee5ba34050284cb7ffc528e70d0c3942da65f7d53"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "49504657bf135a76690cee9e9c55ede9b6ebf2a85716424dcdbed12063487405"
      "zh-TW"
    end
    language "zu" do
      sha256 "68e4cacbdd3a6982d138db46af632a39bf210979b20ed60b5b96bd3182e49bcb"
      "zu"
    end
  else
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
      sha256 "5acbe47951ef7be1dbe1031e702a56e5c3bfc4749bd334d7c36a67aae6ba0777"
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
