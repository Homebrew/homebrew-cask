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
      sha256 "dc0313d11f60af313eea2c1d7b6dc6af4d83ec57acea155c884d8d8fab9d7496"
      "af"
    end
    language "am" do
      sha256 "643df5d90bed3bac359cad6d88cd857adf795aa122a5b3501c0661e1655ea99b"
      "am"
    end
    language "ar" do
      sha256 "4d141bba22f3c849f8f81006e1958e03397b7056c18b7c0b3c4359a3ab89c0ef"
      "ar"
    end
    language "as" do
      sha256 "c083b5979c1a0aedcfbb7ee91ec530ef789f6063178fb12aee4a4a2cd9b92bbb"
      "as"
    end
    language "be" do
      sha256 "5e0dfc3abef2b7b2d1e61148282acb05bcd44a555e95d3917a77f8ec0e32b17b"
      "be"
    end
    language "bg" do
      sha256 "930fd5de8a39f0d24425d345dc4bd6df37ab6f34bbc2a421813c11e2606fd66b"
      "bg"
    end
    language "bn-IN" do
      sha256 "cdedf2c954a5f6594b813d182a1192f628c15689ef44bd5cf69b592e95b245b9"
      "bn-IN"
    end
    language "bn" do
      sha256 "204dac64e53ca58651030e8f184c1b9ce605512e663a932d0099b7740a77d9a1"
      "bn"
    end
    language "bo" do
      sha256 "e60d9e1bba088fdf7c477c9d68fcfb61891d10b37bb8619d319871a0e85fc6e3"
      "bo"
    end
    language "br" do
      sha256 "009127a1e53b6b0181ef6e54e7f588fdcebc58f583934c45e37832440818636e"
      "br"
    end
    language "bs" do
      sha256 "86e1e6c85332ef62b0d977cd7537e73490a5059d65758a5102341e0e6f4c829b"
      "bs"
    end
    language "ca" do
      sha256 "40c195a7aa20303fdcf95b3a2a533db592f3858fb6b7fcec804d9508d28ce577"
      "ca"
    end
    language "cs" do
      sha256 "c4e087b044942f2868087561bc23595ad5245b975d341470c0b432bd27f709ca"
      "cs"
    end
    language "cy" do
      sha256 "96a41e969c11dcc25a072e9159005cb5f3cbaa17c24063d31d183a1f334a5903"
      "cy"
    end
    language "da" do
      sha256 "3fe9f7daf7522674a47506c6df3c9099434592e8269f58972e532b885d990560"
      "da"
    end
    language "de" do
      sha256 "6fa4351b0659680c9f55509fd9f06cef937aad874f71aeeefa16afa6b07105b7"
      "de"
    end
    language "dz" do
      sha256 "a58dd9ee46c0ec38256720ee423c71535b18c4b1fc9bd61ea9c08c3cbadda485"
      "dz"
    end
    language "el" do
      sha256 "b215a7b0138eedb1cf7fe93d0a7117fc5bf5450fc1396c974997dbbb10b58681"
      "el"
    end
    language "en-GB", default: true do
      sha256 "5acbe47951ef7be1dbe1031e702a56e5c3bfc4749bd334d7c36a67aae6ba0777"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "36f8e0a9cbfea670ce7b35a18d88942947788fcca723b463672416ecdf06e1ec"
      "en-ZA"
    end
    language "eo" do
      sha256 "d585c84e8e8c968401a0f7a991f18ead9b93178dd28cd393771269a5faf5fd6d"
      "eo"
    end
    language "es" do
      sha256 "2f3357fa9ac4443cc8827cc595b9ca7223da3a5dc93aff0c8944eeba9784669e"
      "es"
    end
    language "et" do
      sha256 "a48d54f8300e95bb8f0ec7ae73aaeefed365035bb4959af26c1706e49082ac6a"
      "et"
    end
    language "eu" do
      sha256 "98e7fd929a6b40d36cb6c8ac23fbd49f56636c972de78f57fe50dee5fb3abbc1"
      "eu"
    end
    language "fa" do
      sha256 "49e45ab1be2f9742119bd875e04acf714cf5f2234f83bde6ed607822ee5ab44f"
      "fa"
    end
    language "fi" do
      sha256 "3069e70dbacf4283985cde26c8e084886b77faa70da32d5fce8a710806843e87"
      "fi"
    end
    language "fr" do
      sha256 "8f2ee0c1cfd8b16d315a7dc277092a08d79d03f9ffb72667c9b906fafd342e5d"
      "fr"
    end
    language "fy" do
      sha256 "645367a30ab8cbac4fe7c2bf6efe0978030eb2101084d80c463fd079fa36c253"
      "fy"
    end
    language "ga" do
      sha256 "e84da7e4dd33e9cc5ee80809d4b66f5019c5bfb8bfd7353e26d249488bb9d9e5"
      "ga"
    end
    language "gd" do
      sha256 "0f4e8abb999a2bd9ea46cbd9957bd65a2a6d663e3c5eb3ed304e56eac9ada26f"
      "gd"
    end
    language "gl" do
      sha256 "907fd1143dec893e10f8fc25f90be57417800881741bea20eedc72fd0293fdd3"
      "gl"
    end
    language "gu" do
      sha256 "c9755bfeeea15d694e037c7bf537b03839bc42fa1fcbcba66970c47319944a03"
      "gu"
    end
    language "he" do
      sha256 "34df10502a947a924690797370dd893a721d353e1725906739b9300a8984d32f"
      "he"
    end
    language "hi" do
      sha256 "0f0f99011f14e37053cdbed33a9bbe9d86bfb95285732809ed9303d5e4ac6cf3"
      "hi"
    end
    language "hr" do
      sha256 "103f3a459d59018900d6f59175c18c4756a98b6e88e992d63095866aef2858ce"
      "hr"
    end
    language "hu" do
      sha256 "1e68e7efef055e23af794fd03ed86b3a7dac7a57e41898c2fea31aa6898c7686"
      "hu"
    end
    language "id" do
      sha256 "20e6c522bc8a7a5cf69c5dc3164acc3e0ebdfe5a61378bf9d92fcf39cf74504c"
      "id"
    end
    language "is" do
      sha256 "fea4d2701340fc862b29beb47398120b678083d59c0b1012a15e77bffa7372de"
      "is"
    end
    language "it" do
      sha256 "25b2c96f11351c3a268d70a3ab9d0f71d45f9bc435d1c4af853df15ad26baf23"
      "it"
    end
    language "ja" do
      sha256 "75dd6bb99819e1f6c1ddc90cd4735b47914ce3824f5d311e87aa03ff25bd741c"
      "ja"
    end
    language "ka" do
      sha256 "892254e6f0cad9451a1bf8bb6c2faae75a6155a1a9640f1594c16a6312a1e509"
      "ka"
    end
    language "kk" do
      sha256 "4a3aff8bc2f81f9c1fc916d4351f10e1df554066dfb27f46de51cb201e06e527"
      "kk"
    end
    language "km" do
      sha256 "9dce142738e39d9564fd757d9a084c61689816e4e8f762a73c0d0dd083543bc6"
      "km"
    end
    language "kn" do
      sha256 "4b28cc0214c0494f4da06645799d24c1b772867fdda78d9bb28c0a6140c37833"
      "kn"
    end
    language "ko" do
      sha256 "4b7a8d9988fbe76ec7a4f7d472d21f4dded205ba9002c22ff8b8cda49a179d37"
      "ko"
    end
    language "ks" do
      sha256 "2a500be1896626dc587b3b12e29aa4abaf4fc916674a22f2f246a6bad066e53d"
      "ks"
    end
    language "lb" do
      sha256 "9e65cf09f150c4127e49a1fb6d3a39fbf4b3d225f8bf893b45ef96a02b2dda18"
      "lb"
    end
    language "lo" do
      sha256 "8e8d424dd41bc2f362c9449ca4c6952a5c0e923b5124562fc85bebb9f4598f10"
      "lo"
    end
    language "lt" do
      sha256 "a835c58f10ee850441de526e66216e4d9f2cd90525f92aff701c65e73897ae74"
      "lt"
    end
    language "lv" do
      sha256 "566353bab3a30bea853e7e23f8cb5feb01b66caf0cc773a7694f89ff802c8102"
      "lv"
    end
    language "mk" do
      sha256 "e7e062440efccc751be6ec547781e42d3d0810d66ea4201ab0904c9ca6321122"
      "mk"
    end
    language "ml" do
      sha256 "506276b5b84504768e31b53c829d154197159366145b5fc44255b8688d7f6515"
      "ml"
    end
    language "mn" do
      sha256 "a93d974545922a4c915f13cb7cf2faf3e130a818a5cd07d3a55918e1f994f1f6"
      "mn"
    end
    language "mr" do
      sha256 "db0df4da59adb9267a6a208f36defbf7a1ec3d420aa5ef780d1609d611b0d56e"
      "mr"
    end
    language "my" do
      sha256 "2d6f7601694d1591936606f353d486b8a6a7dfbff645df6637db0a1f473a915d"
      "my"
    end
    language "nb" do
      sha256 "59cf92f0793e0528bdf39c61f1bf8fe5e69838feeb9115149430514f0b705abd"
      "nb"
    end
    language "ne" do
      sha256 "b30a80d348e734e36defddfce070affa2c99cfd03d1e38d7aec728864fa79f11"
      "ne"
    end
    language "nl" do
      sha256 "c1f32d1993680e7e448657486693922e9946c7f69c3924d16d2d94d98b6ad462"
      "nl"
    end
    language "nn" do
      sha256 "2ebb60dc4cb0a00aa84a96bda265b539824fc187e324c3666e696725c3f16860"
      "nn"
    end
    language "nr" do
      sha256 "1f6fffe047f0395270ff82ce225f851ec3864aa86e638516822b2c66805faafd"
      "nr"
    end
    language "oc" do
      sha256 "ac46207307055d0d9958d257dc82712a54b0c1c53081f6114bd29471890134fb"
      "oc"
    end
    language "om" do
      sha256 "142958e1241ba0d83ebba7deb35f558cde34d3eddbf8bbfff68f0daad1a05048"
      "om"
    end
    language "or" do
      sha256 "aa4e6e52b5a8baa8baff1cfa59cdecc33ba2eff4254b019eccf92bd036c944d3"
      "or"
    end
    language "pa-IN" do
      sha256 "7a3e8639bfa9b8e68ad75df9f04c661e6eb93148f84c5f5ce3ecade5035ed848"
      "pa-IN"
    end
    language "pl" do
      sha256 "6d2f00e23bfb66b7332ed8cf1dbb888771b8b17644ebf98c890fc1637a0b2316"
      "pl"
    end
    language "pt-BR" do
      sha256 "04638fd9927a57b9c48b5df2dfa4941dcb29a5fdb715070b93978d880defbf41"
      "pt-BR"
    end
    language "pt" do
      sha256 "8e3a025f940024348da05066a571bd2c21077c5f31412e57359378036427f62c"
      "pt"
    end
    language "ro" do
      sha256 "bb9ceff4a0c3847723d46eb2c588431e8f514c045f624470c44dab968802d8b6"
      "ro"
    end
    language "ru" do
      sha256 "f9c3e835f336e0cbd68d7e8929285d23235f65dd6334045baa3de5bca37a80f7"
      "ru"
    end
    language "rw" do
      sha256 "86a62b3d64871f1d57158ba54c599dc080c185d9262169b06294c3bb34d2eabd"
      "rw"
    end
    language "sa-IN" do
      sha256 "1d7b729d98f93b67e341629ada26c32c4f887eb1e797fc4520d5122cc012601f"
      "sa-IN"
    end
    language "sd" do
      sha256 "327e363c8aaa6e4c2fe413aefa3e81ab4f0836ebe412870d41cbeaf56ff0a49c"
      "sd"
    end
    language "si" do
      sha256 "ea19d6db9cfc202088d4fe17b6dd3392429e6ea44553bea9cc60f8eb61a2d8ea"
      "si"
    end
    language "sk" do
      sha256 "ef9048a926f93c8b05ac7efff62a9f81408cd41fe8b0acf8a520d62357cc17d4"
      "sk"
    end
    language "sl" do
      sha256 "63441bb68e3c63b655f587dffe41e725aac409adc7136c26667c153c9ebfda3b"
      "sl"
    end
    language "sq" do
      sha256 "7390c02d1e71630575919d2390915c50646494750b9d6dd9203cea2bebcab702"
      "sq"
    end
    language "sr" do
      sha256 "c6789966681c1c67164548d4f1fea5801e861723a0d139fc693fa2144c549e82"
      "sr"
    end
    language "ss" do
      sha256 "6c2a9b54ec65c5be29d9e7960fe403c80255df0f2c13f3fa0742bea3ff0144a1"
      "ss"
    end
    language "st" do
      sha256 "0ab7e95cccc0dd99cb1fe4c559a8550983179b0400d8950cc1fb0079f557613b"
      "st"
    end
    language "sv" do
      sha256 "d9efb1da4863a9b616ecff43f3d6536318c0dfec6df4dbafccf942eb619f2616"
      "sv"
    end
    language "sw-TZ" do
      sha256 "b18f1e7625d1764a3b4206c81eeb93f8a9dbfc3d742dd1f5670c780e3cf8b4a8"
      "sw-TZ"
    end
    language "ta" do
      sha256 "bdd8f0000e3fa2d31bc574402cd4f598cedfc029da051f7c5bad8177680d4a07"
      "ta"
    end
    language "te" do
      sha256 "599f6a95313abbd69bfe45be037d54907dc3172f3572ff0aeefcd4cc8c22cf43"
      "te"
    end
    language "tg" do
      sha256 "1bea5ea22f2eb83dddb9eec96e97772ce029963e9a392e23b7ed4668a77f9221"
      "tg"
    end
    language "th" do
      sha256 "e87014ddb9f3a815d903fdc5b07d453f0c6c3e6adc62fd1e4247399b18c0913e"
      "th"
    end
    language "tn" do
      sha256 "259e2194cfe689ca47164ead52f4b842d656bb6622a3342a58c2c7ec2fc9e7b6"
      "tn"
    end
    language "tr" do
      sha256 "834176048c7f059901a0623af178ff1d139b8c93b42cc2d673de3ff808b4164a"
      "tr"
    end
    language "ts" do
      sha256 "b54dd854c727e97838a74fe35aca56c177c71313b16ce0d373660d22dbe1ca7d"
      "ts"
    end
    language "tt" do
      sha256 "1ca5601a930c1627e721492b0ddcb79310aae6c39682a1191b8359fee2a07996"
      "tt"
    end
    language "ug" do
      sha256 "03bad188ce2a994ffb3c8f67b41a5fe307f3ebd3d965294fc756ade1569a6800"
      "ug"
    end
    language "uk" do
      sha256 "fb90ea82034858921a5c772ea349f2455e29c184be3448da0f295f8687097c92"
      "uk"
    end
    language "uz" do
      sha256 "a765f8964aeeceac8d591e6ac6df648f89c78bf519bbec2b810270f1a6a53206"
      "uz"
    end
    language "ve" do
      sha256 "aebcb371f1d07226d1ed672f5c1a65c2e483833ae51376fd535b7266bc5b5432"
      "ve"
    end
    language "vi" do
      sha256 "f598725005a23a17e8bcf16a63fd99222688cb153c4e660fd81efb5999aa2489"
      "vi"
    end
    language "xh" do
      sha256 "4b3698f897a4df0e7b20914a2bc6809e2a5fcd1dc501491c58ff5ddf69a6b2f0"
      "xh"
    end
    language "zh-CN" do
      sha256 "0f49736bc4b28bab57f828ad035e86a073d31f234c83efd93df410a43e55e22e"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "ffa3d1f8bafaf9aa93366c78b8249c18e0b7948b2c2f33ae16ee47a296430696"
      "zh-TW"
    end
    language "zu" do
      sha256 "26f9850ab54e20e93693522868a772cdc0a9d5bc164a59e9f3eb84182c9090c8"
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
