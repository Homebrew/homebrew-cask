cask "libreoffice-language-pack" do
  arch, folder = Hardware::CPU.intel? ? ["x86-64", "x86_64"] : ["aarch64", "aarch64"]

  version "7.3.1"

  if Hardware::CPU.intel?
    language "af" do
      sha256 "20f5512574d6dc2474315408f56b9554839c5ecd8ebfa45cea582e1aa7fc124a"
      "af"
    end
    language "am" do
      sha256 "a0d3643000bba39e8aae3469c4b79a3ec091463aba6420751c7bf515b1ebb3c2"
      "am"
    end
    language "ar" do
      sha256 "469ac2197f3613a2f54002c775a5eeed6e32bc8bfbe2f7beae629dd9f546e3e8"
      "ar"
    end
    language "as" do
      sha256 "0aa003c88e01f2ce8df9d80e86ccee25eaea159108c70541df3747e7939be26a"
      "as"
    end
    language "be" do
      sha256 "5b3034c06b8b3970c9c10c2c1d9b4b80f414c09e2bc9e6d8ee2e82bb2002d928"
      "be"
    end
    language "bg" do
      sha256 "ee81df99af8aec00117274f616f2b4fa17f7a4368ef8418ac13de1ba47e18e08"
      "bg"
    end
    language "bn-IN" do
      sha256 "7995e6b701e575da9b65e692fdfcc8dfda1b94e44f8e7e5cc872a54111c60943"
      "bn-IN"
    end
    language "bn" do
      sha256 "462f37122761c47e083a7663cc61013c88b71fa4aa42f0a104addbd667fbf746"
      "bn"
    end
    language "bo" do
      sha256 "cc3563175f4bdad43e0fb166baf8b9fd29c13858c0b3e1e3576df09007be4647"
      "bo"
    end
    language "br" do
      sha256 "ed0a91c1856128bf5d9ee32af6d34434f425f719aaf003e2572cf495c26375ac"
      "br"
    end
    language "bs" do
      sha256 "6baeb15733d0e60d426c0ce6882c1ae11efe8579a5b85fa21475a4abb187f077"
      "bs"
    end
    language "ca" do
      sha256 "49963d35d48952ad2d2636d27e693cb8dd318cf294b0683d35056aa8780b692e"
      "ca"
    end
    language "cs" do
      sha256 "a619d99e8bf37a6723c9b103824813b1d2da683bea6a1ba5e3530afa20dcf17c"
      "cs"
    end
    language "cy" do
      sha256 "c2f25a7882af438e56381bf842dc5a1922e32ed99af20701b2f8d6108db13b4f"
      "cy"
    end
    language "da" do
      sha256 "7df7191bd08b2ec58f1b372d934fa518c32ea9cdf1e4057983f62db972fcade2"
      "da"
    end
    language "de" do
      sha256 "ab02eff039e6413fb5ba51271225d0d84e63319931e8e006d2592232cda74b5d"
      "de"
    end
    language "dz" do
      sha256 "97e03e211e9e776e32e98f56890f0aa68b406f3202284fb896964cba8d38df70"
      "dz"
    end
    language "el" do
      sha256 "25dfc7588997348e47f2145a9504923a695bcfa5c9bfef6624da9ddfa7bd6445"
      "el"
    end
    language "en-GB", default: true do
      sha256 "96429d15e93ec334df242a35620964a7b052660d6a9d77b6476e4c9505401301"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "4790d5d3f806b2225610202532d53d0fe173b3e31312027d7e6589773c5c7079"
      "en-ZA"
    end
    language "eo" do
      sha256 "95c8eda62928d7c69feaad0b6e01534c383a3515574ebc54688a5329dabec5b2"
      "eo"
    end
    language "es" do
      sha256 "4c141f394ffd75fb8c3ca69dcbc694919634bd3662a993829e69da50940c6d16"
      "es"
    end
    language "et" do
      sha256 "17ef9b106f3a51c8ea1b1b3a962e5002c037f7d9b840b9add9764433f77fbe88"
      "et"
    end
    language "eu" do
      sha256 "05cbdd0b8dcad4bc574f79454b0ae629b1a0ef43de88e1e6a244b05db4d1abfe"
      "eu"
    end
    language "fa" do
      sha256 "9911fb86b4804463cca23e7621914850b9fda61810e208d27763d2290236b239"
      "fa"
    end
    language "fi" do
      sha256 "78492871026e48322ad6118c11392e503d744e0c5c7814a6fe00a66f70f955c7"
      "fi"
    end
    language "fr" do
      sha256 "9f3ede282b6ec81e5432952dc64336e79f519007134f690447a43dfe651b837d"
      "fr"
    end
    language "fy" do
      sha256 "54054cd1e6ad57cb97f9699daf2f3866eca733ec6f3e05690b58bb7a13993058"
      "fy"
    end
    language "ga" do
      sha256 "ba3b80250676554c756f7cf59a826ae56e620055483e4d98b5f9fd6ebe57ea94"
      "ga"
    end
    language "gd" do
      sha256 "ee99a33ef5c915d91fe890f1c1e58515c6f8255e88fb9cff1a626c8a81be8cf5"
      "gd"
    end
    language "gl" do
      sha256 "4ba73d275e8bcba3171f2f27ffbc7ca8a7b77dbfc195f8c837555a5a213514d0"
      "gl"
    end
    language "gu" do
      sha256 "e174040eaa9f01507d630b39a85e6113fb4f702e61c102be1efb8070275b7e5e"
      "gu"
    end
    language "he" do
      sha256 "a91cf4f503b1ec43d5af19d0541858d1890d68d7d59c30f88a35528871cca10c"
      "he"
    end
    language "hi" do
      sha256 "cf06398d55aecca5a567d267112da261fd6fe2b7bf7ba0c5534e900b002b0852"
      "hi"
    end
    language "hr" do
      sha256 "c190241c285fe9e2ab364eafec49c03f42221bb47180c2f8e16cdbf835b68d7b"
      "hr"
    end
    language "hu" do
      sha256 "308f371d1208ebe85c3442396b47aa2ca57c1d25b8156d038807f05da092d867"
      "hu"
    end
    language "id" do
      sha256 "5cca1ac020662aa5bfca94e96b8170ddec73d5d5dd1de2b5762e58d0c8bea8d2"
      "id"
    end
    language "is" do
      sha256 "7458376afbcb88d426c20c38540e432777919b8774de1c57859ede3e85e0010b"
      "is"
    end
    language "it" do
      sha256 "9799e5748264608191b6fef2224dca2ec79fbc238b9cfade3f2184c1771b9cf3"
      "it"
    end
    language "ja" do
      sha256 "ec0ff7ffc12bf2fe4af390bc347befcc83c7f4e6495cd49c982673a212afae25"
      "ja"
    end
    language "ka" do
      sha256 "b1fea4848968357db2eb6d7a21b277e548a5011e2e7f0aaec91ed83c1d539f62"
      "ka"
    end
    language "kk" do
      sha256 "a58d293153e9ccb67dfe2743ac863972859047df77cbe0f4d23c4f07407192e4"
      "kk"
    end
    language "km" do
      sha256 "5aa69c0eae6dfd45420cec6a97fe8c2abba10d2386e76fb8b21709888b84e6f8"
      "km"
    end
    language "kn" do
      sha256 "7f7ddbec4c85e02010d0d8237bb27ebfbe6bc62f1f90090690b16d13dee78602"
      "kn"
    end
    language "ko" do
      sha256 "25e07e919bb18fe890f2f95b8bd65ceddf20ebb69f5fa3167612bb2a6624d1c6"
      "ko"
    end
    language "ks" do
      sha256 "f0a7d28d8c5b3731c02ba15b338ceefaee57d1dc551a6aadd8d400b57ce1f929"
      "ks"
    end
    language "lb" do
      sha256 "1d4893043a7b0988125744b05dcfafa8f3c089d98031255d0f7bd9c225c7838b"
      "lb"
    end
    language "lo" do
      sha256 "8149646f342faa335ef32e9f5a8050fcd66b96e57ffeb8a8de08b3c5265e04b7"
      "lo"
    end
    language "lt" do
      sha256 "fbf4fe73099b895c34b266ce48ff49a68116e62896a711228eb0ac667df2ebcf"
      "lt"
    end
    language "lv" do
      sha256 "c3dc0851c6bb538173e44569d69a154b00afeb1327ba9412ee88e86a7f16150d"
      "lv"
    end
    language "mk" do
      sha256 "ccd17085b8a0034e707765610cdc21a9a04dafa4c16d974149f83792f4c24cec"
      "mk"
    end
    language "ml" do
      sha256 "41aafcc1abdf236d5e1e00268204150db68b3db2d22e3a320984c6eb4f7e8d37"
      "ml"
    end
    language "mn" do
      sha256 "7063e2896e2ab6f8628cb6e8db4f125f3b6f3184c6883e0686744975ee054f5b"
      "mn"
    end
    language "mr" do
      sha256 "a2d7252a236982381ca20fec1283c3cca2592c6a18b19f3a25455a28df7fb713"
      "mr"
    end
    language "my" do
      sha256 "8ee266478177e81e3b71d42aa7f7b60c0a445cdc70f4756d2005c5c8d638568a"
      "my"
    end
    language "nb" do
      sha256 "0b9dc5b3c1db0be24fecddf7f23e8f865edb3bc3eb970ad9514bab04e9670111"
      "nb"
    end
    language "ne" do
      sha256 "24d8d0f2911ffe8f1385794ffe7ca719fcc30360229da3e71b2953a00d2dd5c0"
      "ne"
    end
    language "nl" do
      sha256 "0aeef84553f54a2740db4f50cd712f4e7fc61154d952eda3d8aab82e14d11382"
      "nl"
    end
    language "nn" do
      sha256 "58edf63273dac0c18c8e04ca191d491ef877c2a2820e0473e04cc9f5493136ba"
      "nn"
    end
    language "nr" do
      sha256 "a2d3ed51f5536a85cd4be3feb2e4976571650cc131e8fc17d0824102dadab0f5"
      "nr"
    end
    language "oc" do
      sha256 "c3cf14127b636bfc1ec432ded222276777ae5be8178984526b9b1bc7835a7356"
      "oc"
    end
    language "om" do
      sha256 "85b3d16e6635fd9f14aab0dd9f66c4453eabda310760ae608c033498a7e5a318"
      "om"
    end
    language "or" do
      sha256 "a02ab30849e98747f3020bdbed4b1d9778c11952e956192a18f0117211ec617c"
      "or"
    end
    language "pa-IN" do
      sha256 "4c6420a07b886b79ab415fe76ef300c05290c1b8e09231e043d0660b80c9a2c6"
      "pa-IN"
    end
    language "pl" do
      sha256 "651b4618543ccc1fe2f70e7ab4743392fcf8b3b1111f27e7aff477b6cbc6e453"
      "pl"
    end
    language "pt-BR" do
      sha256 "bb2a875a81f0348d309127ecc7bbd746007e394a387125f3ebdbc8159cdb2702"
      "pt-BR"
    end
    language "pt" do
      sha256 "05ed267c66ef37cbc3432de0a3adb443877d18c7c33a16a9bb7ab4c7e4dee9e9"
      "pt"
    end
    language "ro" do
      sha256 "07128864703e9e89350caafbf70b0f9791547b345d9e12e4109564a2bd3ba3b4"
      "ro"
    end
    language "ru" do
      sha256 "867894a55364c3c2ab198c86eedc8652d41dcd4893f43ad7ca865c1e37a85ddf"
      "ru"
    end
    language "rw" do
      sha256 "74e3611aa44e0f3f28f0dfda028d7d7576f93097a60c3ff639fa0cb0de75fbda"
      "rw"
    end
    language "sa-IN" do
      sha256 "6a8eb7a04322caf762e0aec894748ce222ef503b69d39047ba9603f11117cd3b"
      "sa-IN"
    end
    language "sd" do
      sha256 "9fae733ef59e7cd6e8cf7971fc74eb13b01584525304c4c7c814ff318fea3f33"
      "sd"
    end
    language "si" do
      sha256 "02bef5da5131514e9a958aefe04d90650f36a00b0625759a31e89bf2ddb01040"
      "si"
    end
    language "sk" do
      sha256 "529533574ffd6269c6ebf64994328bcc99944748b90293cf0ea92dc9d81ffed2"
      "sk"
    end
    language "sl" do
      sha256 "b173c0f19d5fad9f87eeeda29b549e83abc3689335f61eda7ff1f25036ebd580"
      "sl"
    end
    language "sq" do
      sha256 "c805bdc6849ef8a55eb4cdf7a9a28ad8fa07c828eb3ff1049e3ebac454285450"
      "sq"
    end
    language "sr" do
      sha256 "36163f175163afb270b8f21ffecea305d55bff7cc799c5c1bf56ecbfe5a523d8"
      "sr"
    end
    language "ss" do
      sha256 "1374fe72243b64d1ff2f79f2b1cedd898ce088de75b516405eb1e929132a784b"
      "ss"
    end
    language "st" do
      sha256 "69f48bcd2e25929c5bedf8c28818559aaffb0fae271beaed1ed35dd08651fee4"
      "st"
    end
    language "sv" do
      sha256 "3f23c624d9516acf552ce9c6d5204d681b237f9a28953931460c9c6b814164a5"
      "sv"
    end
    language "sw-TZ" do
      sha256 "a1a1c1328d0ddf65bda3e9bc9f14fc32deab5e3e39446eca9cb7b22bd2cc55d8"
      "sw-TZ"
    end
    language "ta" do
      sha256 "58d00b8994e35925ad7efa1dc60dedf26fbfbc34cd081b4719eb171d78f22d11"
      "ta"
    end
    language "te" do
      sha256 "b930bded621aec39e220452d5b0440f1168ecd2140aceed255d9e6006eaab760"
      "te"
    end
    language "tg" do
      sha256 "205ae6ba83a962dae43d3083969508d5084581f0933b2c4b421f935ac9c60a2e"
      "tg"
    end
    language "th" do
      sha256 "f0f8f65b84b85df0c7bd83f4c73662b0a9986c0f90119e59af1307dd0a2ef534"
      "th"
    end
    language "tn" do
      sha256 "f05b12fa7a4d3b8b0032070f7715e39c0b48ce33023ecd2683534494de5ed456"
      "tn"
    end
    language "tr" do
      sha256 "5a030b136684772e6aace436c368873d53ac4926112cb14af0d3db394df6204a"
      "tr"
    end
    language "ts" do
      sha256 "47c51c1e4d227d849380281515ed81fd581ccd3986953a361cb32d9f682b471b"
      "ts"
    end
    language "tt" do
      sha256 "9a521ae8fe5151b244770aaeedca65934828fe3baeedb523ab129eef5d319a78"
      "tt"
    end
    language "ug" do
      sha256 "77c76453bf152bbaf4cbfdd52693f5c12a70acf22f9257df7e0fa1e18086e4ea"
      "ug"
    end
    language "uk" do
      sha256 "725b4e1ed6f1d0877f8c801097d2ff0815e338041029262cdaf9417e47f2b07f"
      "uk"
    end
    language "uz" do
      sha256 "23e94ed4891e68e3d480a3d11bc71773dd2d3e30cb0fd518594095ae1a753902"
      "uz"
    end
    language "ve" do
      sha256 "01245ead28f14672ea860f7d18ea2b292a23d3810df20a598cc9b3b78ba43cb3"
      "ve"
    end
    language "vi" do
      sha256 "173282c5be9d543d47baf902993ee5aee6bf0feb18ab6ff66f176dbfdb7efb7a"
      "vi"
    end
    language "xh" do
      sha256 "8c00cb9e6f7a6163c0b4fb05aa188d4bff3814e5ab539b6dca00267361f1c8cc"
      "xh"
    end
    language "zh-CN" do
      sha256 "467cc3269dc0aad722a2e3841128639efeb9db3d2d7da6a42f7105304d2a4c93"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "abd7985ce9f22477fe0d00eae3c2b8e6ee43ad0b4f697c563609c70bda035446"
      "zh-TW"
    end
    language "zu" do
      sha256 "15bd68f9c94878461bf5037ee1384c90d5e0c7e938b7e1f22990e41daaa1cf61"
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
      sha256 "71031f555801ba8f00d0a47f1c462e9e5bec9d3c8ecb16d08c75f84758902ab8"
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
