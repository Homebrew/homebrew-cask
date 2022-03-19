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
      sha256 "99300e2add6534205cba89b2b01ee1f7620af8984e936bc49d2ea60429626bd3"
      "af"
    end
    language "am" do
      sha256 "dc2bb4ef8d9b1b2f41c1c5670bb24105c37daf59b43bcb3747758c1bcf1d95c9"
      "am"
    end
    language "ar" do
      sha256 "9dd8f4ddc4ff8ae9f80d36f17a1ba2c5c5d2652b30734f85fa9c9668486f3ca4"
      "ar"
    end
    language "as" do
      sha256 "2e3d4f9661e846fab1c00c5fbc40fcce9ff01bed1346506c6ab290a18418bfd7"
      "as"
    end
    language "be" do
      sha256 "353d6e31be18755dae7bfae2cb01de0f32a708e603619f8ae0687f1b8e29c9ac"
      "be"
    end
    language "bg" do
      sha256 "ebc6bfdf98320d023d368da4afd78b9f13b476b1c075207c04c079f661b0d22e"
      "bg"
    end
    language "bn-IN" do
      sha256 "61a068510ccffe5906e7608007b5841f21539cea864ff36c63845829bd2d2171"
      "bn-IN"
    end
    language "bn" do
      sha256 "e71b243db0808f18630377a979814c563071421876b93495147a46aea1fd615f"
      "bn"
    end
    language "bo" do
      sha256 "6ad2c6d14cdadd2ec549c2d33998d56e2e9ba081642861099194b19dbf864d76"
      "bo"
    end
    language "br" do
      sha256 "419ec145ea0308996c57b55df74e1b1f3d8d6ac81cf9075ba5bb5bc8f7b2ea70"
      "br"
    end
    language "bs" do
      sha256 "d832fbb43c41899697fa46cd39dd59b96485a8bd7909dc8f8476e394f58a70b5"
      "bs"
    end
    language "ca" do
      sha256 "4598bd9d203e429f7f1a9a5e4320228ace213c15f28782b44f5e41dc07f2546c"
      "ca"
    end
    language "cs" do
      sha256 "d6916eb08ebf00bf18946d881787098efc00c8ebe7535209a4c49b4fe70b018a"
      "cs"
    end
    language "cy" do
      sha256 "3eb5ca8fd1f2efea44b1ed57695c805941a17b9e290fd082e2c1fc03056334ed"
      "cy"
    end
    language "da" do
      sha256 "bd694642e02c23f7a7aa8ebb71f25b6509f72ece96c509f60be90adfda72a1dc"
      "da"
    end
    language "de" do
      sha256 "71031f555801ba8f00d0a47f1c462e9e5bec9d3c8ecb16d08c75f84758902ab8"
      "de"
    end
    language "dz" do
      sha256 "b03aee683f5d7cb0311de0df77874c9e7dfb1b1395ae4eea950576de072e3d90"
      "dz"
    end
    language "el" do
      sha256 "23dc2fbd3bf700831e2503ff9f74638f7f1ffccae4ff305cfb0912c79c0a56da"
      "el"
    end
    language "en-GB", default: true do
      sha256 "67f2a4e014d3e5173d384c732757a432eb27b4c30824faa996aef29f602adb81"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "73bc3a398ea239be2f6ca43aa85a29ca1c9f08573369d3a4392f9724266e6c20"
      "en-ZA"
    end
    language "eo" do
      sha256 "1e00a64b12a3095b66d4c042fe71a03c4b9be58fdd807aac09e397087a708485"
      "eo"
    end
    language "es" do
      sha256 "e9dc7a1724344491914fbd556f2f04a2f84d6ed4417b15c465d499c2198b9648"
      "es"
    end
    language "et" do
      sha256 "10c1ba4b998986e110e07f2f440e9679bcceabbc0bb522c11e266fcae34fbbaa"
      "et"
    end
    language "eu" do
      sha256 "da1ce5734dab49ba68edb1424c9dad51299ed3da97a0475be1d6e7aa0cd3c729"
      "eu"
    end
    language "fa" do
      sha256 "4ce21066f5e733321acd75fad62859e4059bda2e957ae32f360ecb09112b8678"
      "fa"
    end
    language "fi" do
      sha256 "2a110ba389e5b57825bf94229c811b838470081b6bee60f84e1be17faa7b17c9"
      "fi"
    end
    language "fr" do
      sha256 "abec191abc7a93c2a2d91827443141746f5a99fc49f135c847e96843de1ebe03"
      "fr"
    end
    language "fy" do
      sha256 "901585e01a0c8660ab96b2c731eafee5f45e54c92ec503a3b21191cbec53a6bd"
      "fy"
    end
    language "ga" do
      sha256 "79f49d315f08022459cd301bf80c910dc19d7aeee6cab77f35bb6dd66fe4085b"
      "ga"
    end
    language "gd" do
      sha256 "090b82e001e343dffc12b92ed046034c6e237272b5622acf3f729cb9c7a0404f"
      "gd"
    end
    language "gl" do
      sha256 "b3b99c1f33efb7c6e906b60389dbe8a0b367ed76668dedf8aa0b131d53a92743"
      "gl"
    end
    language "gu" do
      sha256 "3a0959a434bfb86327e0882ed7782d1dbfbbe5f4615c1e697c5ad51f611f1106"
      "gu"
    end
    language "he" do
      sha256 "2ed6ec28eacf1f08e007b72153332d1e926180ca6a79fd9ab03d8491563a51f5"
      "he"
    end
    language "hi" do
      sha256 "3cd88b99ac7b592603b1e814780dab8fe554f16f6958caa489c5dac77344cd56"
      "hi"
    end
    language "hr" do
      sha256 "8cc50abbfd291d7ec8b057a1e106e1d1b6b569fc61b0c3ec8de93f830d4f3980"
      "hr"
    end
    language "hu" do
      sha256 "9c3d98b50dc86ae2a4d064cefe5cbce497c0d661ce85a8930e7435ac53bfe626"
      "hu"
    end
    language "id" do
      sha256 "6f7fff00051f655deba50fb7328fe23947a1c0ca928e6126073a24c734b8ba91"
      "id"
    end
    language "is" do
      sha256 "ffd31ec46b015be3e4f5c7128275cd87dc77fb0291a53ed59030211dfbd13c7b"
      "is"
    end
    language "it" do
      sha256 "5e2e5cc43ac02ffe553d61d297bd20ff09c324be4538fcd5a2ddab46aef53bdc"
      "it"
    end
    language "ja" do
      sha256 "0090838e6326e7914c85ab33e2131ea6a162e05508457db0f9eb34befee24474"
      "ja"
    end
    language "ka" do
      sha256 "68c422ea8987c9bc040c3c6ba0fb81d8379d35f01130387072aaa842461ba96e"
      "ka"
    end
    language "kk" do
      sha256 "a2310d2c41a0f9339a8756595fe8ea0f086d88716e30ab5f673247e52f0aa54a"
      "kk"
    end
    language "km" do
      sha256 "806467ebaa02b4531041584c9b53be79370e58eb8f9225dadd311b1a0b55339e"
      "km"
    end
    language "kn" do
      sha256 "f2edc5360817e35f949c4008bc074884c7c355327eb9cf12e09fe5bf2fd9bdc1"
      "kn"
    end
    language "ko" do
      sha256 "66da261a5aa73268bd48dc4316c671a9020a0beacbc8c7dc0eb87706b6adecc6"
      "ko"
    end
    language "ks" do
      sha256 "7433db1392ec96087124482cc646cb0109d6858610f0269e8e9c88d0bc1d4d13"
      "ks"
    end
    language "lb" do
      sha256 "dde046be9ae256aad24a97ec183b0829007ce902346da59a359aa55f9a337c34"
      "lb"
    end
    language "lo" do
      sha256 "8fe272318182859af750afe9751ef513c882a1e148f3e3ed5881f54418971815"
      "lo"
    end
    language "lt" do
      sha256 "9d11b9b658a555333bce48af9cd760edc362a3666a3500c757ab91ef1ef0d320"
      "lt"
    end
    language "lv" do
      sha256 "cc79d4e44d4f5c0f5e2f524b0664e200c5d95487518ab3a4c20834bc0f661aed"
      "lv"
    end
    language "mk" do
      sha256 "90052e843bce12249948d2ecaadce0196ac9d811a45fd75d5cc7d9f1bdbaae17"
      "mk"
    end
    language "ml" do
      sha256 "4a4efc158e648a9101d2782790a9cf507d9c6f3c6ee8d32ab6aa02f8aa55a6ad"
      "ml"
    end
    language "mn" do
      sha256 "ac53265b259804f1a442b1bdf30bdb36ca5f455430209661508d171e1270b1fa"
      "mn"
    end
    language "mr" do
      sha256 "8a3f86874c44a077429961fd3b450f52edb4c0d8f2c22f6e46a2846ae786a4d5"
      "mr"
    end
    language "my" do
      sha256 "d32b31dbcd75ea65a39614054d34349a4017e3d2a58dcf8b098e541159cafc06"
      "my"
    end
    language "nb" do
      sha256 "2ddb86f60ac9be28652c67be246bc48bee699ea979c98274579655d8fca28f1b"
      "nb"
    end
    language "ne" do
      sha256 "c8dfdfcdac8ea8e6098760e9cb61b4bbeb2612f1e3eee1a2b811a17769cb45e6"
      "ne"
    end
    language "nl" do
      sha256 "f094f6afb1e77fd86fc05a1079b007bb89fc3970a05c0958f6a2b0f2107f270d"
      "nl"
    end
    language "nn" do
      sha256 "9eaa5ad7309c833ca1af3750707597f92a96ad96cdc0b95d16086b79ddec1691"
      "nn"
    end
    language "nr" do
      sha256 "ba5d1232bcbd4da1c5fbcc64d0c2460a46a5998980704bb87c94b862106ca5cf"
      "nr"
    end
    language "oc" do
      sha256 "a0823523aa2c09fb53d3525fa8a90f44246c1f5f4f7142bc37d1ef4f9b6c5222"
      "oc"
    end
    language "om" do
      sha256 "7513d89c94709d15faeab3203367ef0e975c59954fb35fbc4c552705665c3f4b"
      "om"
    end
    language "or" do
      sha256 "fba8cdeb4cdceb4b3414ecd40dc28528a8c878965729aa94dbf1a0b2a683fd98"
      "or"
    end
    language "pa-IN" do
      sha256 "41c1ebae440bfc7a0fdf60226ef086c47329372020154055a557387ad2e6506d"
      "pa-IN"
    end
    language "pl" do
      sha256 "0150087cc605d191d2139e8e5cc31e0c78c0497947e58036bbed551b88a92247"
      "pl"
    end
    language "pt-BR" do
      sha256 "48536eb8f911fa76b8dcbe072069f8f863501dece7983f4676811480830dbe37"
      "pt-BR"
    end
    language "pt" do
      sha256 "3148162d21ece0bab5c2213ac314e2588be2612590703bef1ab89dfbd9a1b6e5"
      "pt"
    end
    language "ro" do
      sha256 "7af4c68ac0fb9a5843e52fbc9276eab1a702262622394fec417de37ddf583f75"
      "ro"
    end
    language "ru" do
      sha256 "eb6ef7410dde59f78c27f14a5d32c240e3b94fcc0c56fac3efc07645ce3bf797"
      "ru"
    end
    language "rw" do
      sha256 "d036aecf13d3aae49c7d742ab7a8a623c0600a2dc55d1e24eb1c59157c3149a5"
      "rw"
    end
    language "sa-IN" do
      sha256 "696349059061f25a5b7a63f113163c65f273a0e873af2009058fc783784ddc50"
      "sa-IN"
    end
    language "sd" do
      sha256 "17a49aed999565bdd0c7a93ddc4b8a71fef61f19d55da5ca385a52c59565e6c4"
      "sd"
    end
    language "si" do
      sha256 "5a74bf1d9c9f34d6cba35591da324447958412b764ec99b3529406ce0b9c321e"
      "si"
    end
    language "sk" do
      sha256 "01e8c031d03df15517de9091260565e908e78160b576b09bd620c3552923eec3"
      "sk"
    end
    language "sl" do
      sha256 "494716d240823101edb95dfeec0d03fce5121efadf2cd90cf7d06f04a7de8f0b"
      "sl"
    end
    language "sq" do
      sha256 "2d9ce4a5f65a65a688308a1896f56b5d362459e0996e235a92837c1d9be6ec0f"
      "sq"
    end
    language "sr" do
      sha256 "6db741e990c4c50c61d17147b0a5996d825673188f5817dc0c1c6066d7aa5689"
      "sr"
    end
    language "ss" do
      sha256 "ee7f92538a1dd5388ac6005685a6fa6e3db6859b7f86e0a5132a00023228e0b6"
      "ss"
    end
    language "st" do
      sha256 "0880c02853c5b907b7afceeaaa60df62106eafd0cdc6defcfb3962cd3e0b2b5e"
      "st"
    end
    language "sv" do
      sha256 "a9836d08a1a3270016cfe251868b76675c8b1aca1c8fe08a343c0da699c461a8"
      "sv"
    end
    language "sw-TZ" do
      sha256 "24ec9eec63df4af9ebbbc097c0f7c173c9c96d8a4b55abdcaa078c94c33e519c"
      "sw-TZ"
    end
    language "ta" do
      sha256 "944131ab600233a53ab0db9474ff1695a34961ac5364c91fa45c76f9ffe56545"
      "ta"
    end
    language "te" do
      sha256 "da9f0cf28ff8eeef2f078bbdabd5cdb2dfe89d23d2097a6512f210675585b879"
      "te"
    end
    language "tg" do
      sha256 "043dcc9ab1de067c35d206674c369b4fce8c8f0f5005d3e96828959aeb6eef21"
      "tg"
    end
    language "th" do
      sha256 "3b9979e1e002d05601710d5da30bd57040cb37192946d6552a443d0805149c7f"
      "th"
    end
    language "tn" do
      sha256 "dd885ac1d5975ca170fabb7dad6d3801c845d60e7d07b7ce49c19cb32a401a75"
      "tn"
    end
    language "tr" do
      sha256 "0bdd197dcb7df67c11298a6d19794252884fe0b9fe7b8d7683ec3b25efc1430e"
      "tr"
    end
    language "ts" do
      sha256 "6aaa22d2add7440fb63234c0668cd7a3c72487ec1546cb6fbe960df0a2b432bf"
      "ts"
    end
    language "tt" do
      sha256 "cd786f2438278f0e1f55999b3d9d8e85366c29b5bd2a03ac363d19cfcb28c097"
      "tt"
    end
    language "ug" do
      sha256 "a40d32ca89d614688612480264709eca07ad9b61d837bf6d8215898a74f99fb9"
      "ug"
    end
    language "uk" do
      sha256 "a5880d96aa4735874338996b2eae1a1542e012982cb0eb61223bd1f0e1a48d35"
      "uk"
    end
    language "uz" do
      sha256 "f129feea24413dda668be5e8c85b93e3dacf3611339a1950b4b4a11c22d568f3"
      "uz"
    end
    language "ve" do
      sha256 "075c43dcbf14761038ce70e4df3d1f2fcb96abb319a569d204821af7094ca5f8"
      "ve"
    end
    language "vi" do
      sha256 "73b0d44618ab36bba3f91a99703de22159e8cee69b07108952d7ec6291dcf5c7"
      "vi"
    end
    language "xh" do
      sha256 "33ccdc17784865d5c868ad69275c6baf6eea5d3dded722cf4bf1b33011c70302"
      "xh"
    end
    language "zh-CN" do
      sha256 "2c5a4b36a4ed7b88022730cf1c543057af41230e508d74c177ae7b21c14ae308"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "14a09c7d97dcbe69ed9919080f315b4eeafb8bebdad7adaee92eb30734c38c18"
      "zh-TW"
    end
    language "zu" do
      sha256 "aa92229700eadbc31c1e5f86f8553920d4181e7655411aec4ae50d78cf0569d5"
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
