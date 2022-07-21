cask "libreoffice-language-pack" do
  arch, folder = Hardware::CPU.intel? ? ["x86-64", "x86_64"] : ["aarch64", "aarch64"]

  version "7.3.5"

  if Hardware::CPU.intel?
    language "af" do
      sha256 "0e56ad36785bca79296966c0eb0eadf87fd3918f27165cec9ad73447a2238e38"
      "af"
    end
    language "am" do
      sha256 "66f880ce181f0cfa02216cac5a80891bdf927b54fdf0c15e28c5aeea5aa33c8d"
      "am"
    end
    language "ar" do
      sha256 "326e28979a5bb582000c07b73b49cec4024d8a539f68da785c032db09acb7407"
      "ar"
    end
    language "as" do
      sha256 "11c1c0e1f2fbfc7bc62240aa21cde75759fe1b16eefcf7d215acbe84d14138e0"
      "as"
    end
    language "be" do
      sha256 "82c2961e38b6ec5d212e819e3fd9db49cad17fca8e6f12049657dd7ce80f744d"
      "be"
    end
    language "bg" do
      sha256 "4e4cc1e29de47a01f3594f98f202f95fde3c69f15db1d16b8aa80c2617f64f99"
      "bg"
    end
    language "bn-IN" do
      sha256 "5a6730ab59d2d64aed493862169ba5cc2cbcdd7fa0c04e2a57e3ec57a3fe0ec1"
      "bn-IN"
    end
    language "bn" do
      sha256 "54645fca2dae8b0c37778f06653678f190cca6234fd315937a38d0338e4560d0"
      "bn"
    end
    language "bo" do
      sha256 "b8358b2ad5eb13cdaf50e521ef68a4e626bf98b78cf270fb647c5bca366fb189"
      "bo"
    end
    language "br" do
      sha256 "e22c17106dcc70a96b8b5e820fd75dd671fb424a0aa0c743d5014d2338874ad8"
      "br"
    end
    language "bs" do
      sha256 "582bd36d97523266be69f83b705098ca176237718f8e7b602b8e420f473bb1f2"
      "bs"
    end
    language "ca" do
      sha256 "048650e452197054b4a64a64d83965e530fe0ff37b7f17b47aafd2109493f3f9"
      "ca"
    end
    language "cs" do
      sha256 "db7f87fd0cce737673294318e51c0adac6dac6e04e1e88a9c543c193725e17d3"
      "cs"
    end
    language "cy" do
      sha256 "ed28afb83d3a0df7166acab24d7a1d4a691837e9148e39487aea6a411689eef0"
      "cy"
    end
    language "da" do
      sha256 "643bacc0b5b9c353881b00d84b75e71b4478a3fa3515617dc95a0d7bbeb5211e"
      "da"
    end
    language "de" do
      sha256 "be6f99ddddd745f00b4ccb75b4024236b5d956896ee1c2eeffddd530feb3295f"
      "de"
    end
    language "dz" do
      sha256 "4f32b7a00ebf2d65401464f538705c04d2423f349672e96a640b88c041dd4de2"
      "dz"
    end
    language "el" do
      sha256 "24c28d7775d9610c0dd73d8a7ef0997e16724620f82b059fc8f4165afd632f3f"
      "el"
    end
    language "en-GB", default: true do
      sha256 "585a1709e90fd4cc502848ef0985a9f2802ebb6a87819d31867e4670f1283adb"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "2173f75e8ef11f824fe3d93d344407a1ff20a2a734b8d158c4d2884a1d926874"
      "en-ZA"
    end
    language "eo" do
      sha256 "d65ce094cc25127e60b48997b6410a41340c62b24269584fee402857f61e6e5e"
      "eo"
    end
    language "es" do
      sha256 "b1dfe96d563e108438ab76cfed3e816f1b32fd25dc0397241d666c9b101bd6bd"
      "es"
    end
    language "et" do
      sha256 "daaebc6c8d52bea7231ae2cc435e76b9088b7763d890c575588be9f0d2939a68"
      "et"
    end
    language "eu" do
      sha256 "929bb824340cf50875f8b1748972a9d665f6e24203df8333d31d8381edf45cd5"
      "eu"
    end
    language "fa" do
      sha256 "c3b0b3e587fc1b6c41e27ad85c85fea80bdae7f28f909582f75b561e1297cea1"
      "fa"
    end
    language "fi" do
      sha256 "d9f28f391a7f50996a30e5988cfc6c4075a1a0582e095b282e80452389b0a580"
      "fi"
    end
    language "fr" do
      sha256 "e7714727dc3ceb5e6fc7e7dd9b6629fad318ef50da12110527de6083be173f1f"
      "fr"
    end
    language "fy" do
      sha256 "5be64e3f95214476ab5d365a82be53990569f3b1dc00b8103ef31c8cd296a980"
      "fy"
    end
    language "ga" do
      sha256 "a708453bcafaee6f90e46fbe7c6d0f4a16fb98d0e9d1208990426a0b8b3abf09"
      "ga"
    end
    language "gd" do
      sha256 "6d61181d2836122acd5a1bd4705196e3f3732de4875e9d32b9991b0effbafda4"
      "gd"
    end
    language "gl" do
      sha256 "0a129914ab0a51bf9ac558c19256ec4ae482633039c3185f59db32d8f54523d6"
      "gl"
    end
    language "gu" do
      sha256 "87d99933688f4e0ff034b8c55b29a3367295c88e1b6cc3003a9256d6ba3c53fe"
      "gu"
    end
    language "he" do
      sha256 "3b650e03d0b679e8bd7b4f1e2e66ea12e7c46e28c1a350551d1f555ee0759ba9"
      "he"
    end
    language "hi" do
      sha256 "8d02fc9ac29f29011d6824df9b67e45e9d8be0093cbd5d90883194d1779067ac"
      "hi"
    end
    language "hr" do
      sha256 "85745cfa382ed0da1d99e6f0cfcb381607c13055e7e8f7af0296ad29e0426a69"
      "hr"
    end
    language "hu" do
      sha256 "2db6482f2a4f259300ac77a2c313d6797525cbe5f04542c18b3ac2e86f205933"
      "hu"
    end
    language "id" do
      sha256 "5db582a37b256732fa9429de353433830a71e2946d73c78274daa5be5a6a9164"
      "id"
    end
    language "is" do
      sha256 "8fc4766902d9e9c8f44cc8882f1089443b6b3eed7063b37fa6a5f55dbb3a526c"
      "is"
    end
    language "it" do
      sha256 "ec8c6fee48ae5c23d97b46fad943bc746d39950eb047b45c98a7898697a7292d"
      "it"
    end
    language "ja" do
      sha256 "eb5881e4cdab249c2eb97ea5618be206887bf8c53ba9840d3ccec58c5706a8ac"
      "ja"
    end
    language "ka" do
      sha256 "80aeea0fc007a30dcec68bd3dd982e90de371c4561b729ed663fe589975ef676"
      "ka"
    end
    language "kk" do
      sha256 "657872aaae70dadbf3aea71b092782ee13493e49c9ae63a56c01f4811896e9c8"
      "kk"
    end
    language "km" do
      sha256 "8422c6bb0040a098c09face73c838429cf415d862a75de343357ec4c94679f12"
      "km"
    end
    language "kn" do
      sha256 "d5b2de5d6daf1d61053f9e4d4161c1783794a93d212ed7a30eaf1558fca9a139"
      "kn"
    end
    language "ko" do
      sha256 "20cb5f0ce41da9cb6d08e31fbfcd9f81e2b6dab3b09aa2f9e9fe972f53482429"
      "ko"
    end
    language "ks" do
      sha256 "80489d14b748b667e1b9957b8d73a73b831bb8980675ca854efa6a48cfad1b8a"
      "ks"
    end
    language "lb" do
      sha256 "242a029b1ea61257d88d131e7a3bbf224df8bcf8f254623219f6f8a3cc5b5de7"
      "lb"
    end
    language "lo" do
      sha256 "e3bae0402c9750d396f497e9c53b073bcc1459765df5cd6f6e39d4c4a20985fe"
      "lo"
    end
    language "lt" do
      sha256 "d3e2f9d61601ad1ce689c20c1786e9e9103046c3ba2efb0014a294ce3267a381"
      "lt"
    end
    language "lv" do
      sha256 "2a1aa5486d6d64dd6f8097b7754ec0a968b474463315230c83095f5034522466"
      "lv"
    end
    language "mk" do
      sha256 "48ce842d4c168b53851465e5c8b445b16afbe4489b50f1d513e7c96cb76d8ce3"
      "mk"
    end
    language "ml" do
      sha256 "aeac83f2b8a16dc5254b8237211320280ce5ca160f5101aae0c8685c5b384145"
      "ml"
    end
    language "mn" do
      sha256 "acb29b99e8229ac9201818002ca3e55e5de426081e8736feffca230c658af2e8"
      "mn"
    end
    language "mr" do
      sha256 "ce73f30fc39b35bf634827fe36afdaf7d256975e7d5a76ae96ba0ff03a3dc936"
      "mr"
    end
    language "my" do
      sha256 "4b5ab01ae85648976db436a24f62746a51d5670a103aee99115ec3ec69ba1b10"
      "my"
    end
    language "nb" do
      sha256 "3717665837680898e235dc3095de20ae5bb21e24e7887c55a0e94c9207f21d33"
      "nb"
    end
    language "ne" do
      sha256 "cba5c09bb882da29a731d8c759885c6f5b67874703ea41060dd20a828f11cbc2"
      "ne"
    end
    language "nl" do
      sha256 "4174357c2689c0f512866016372633c90dc2cfcc69a214d3a29ab6d0bdbd91dc"
      "nl"
    end
    language "nn" do
      sha256 "012ea45084175a6b19324a467532e2a0f6eb0e08177bde3248846e1f883a3d91"
      "nn"
    end
    language "nr" do
      sha256 "7fe7a844166023ac05399538ac58f878d98f71bf0d8ec96e19f5a186199c57a0"
      "nr"
    end
    language "oc" do
      sha256 "cd0bc990d852f8254276e4e7926073c7f9b6b55f0b661dd269751e9899a02a40"
      "oc"
    end
    language "om" do
      sha256 "6a220194b828a54999f9157e0fe9ff4e0f5ba9f01ba78f1d5262a8d49c033241"
      "om"
    end
    language "or" do
      sha256 "d1f8efa72e9eb3c292a43e35340c2545e17676dfcdc0f381d31c473d771d5b3d"
      "or"
    end
    language "pa-IN" do
      sha256 "f33d1d96eff24b4d0c905493e0fc1a2bf3fa107e87d6a619a6649131c7eb4cce"
      "pa-IN"
    end
    language "pl" do
      sha256 "d1972ad18c8a5bb623a6c79d233a966a87311c8101a7f19aab19b330e2bd486e"
      "pl"
    end
    language "pt-BR" do
      sha256 "070c49628f28afb573297bf184cb3c18ceecffe2e6920bb7e950dabec2ee6d76"
      "pt-BR"
    end
    language "pt" do
      sha256 "0babc4b6f9afdd1c7577071cc6f1f1604fa428ca5bd38602c53c3de163c69ff8"
      "pt"
    end
    language "ro" do
      sha256 "539546e8adb5e8ba50b2a1cf76587b430bbee26960fa65fa8ed2729990123be1"
      "ro"
    end
    language "ru" do
      sha256 "15eabf05eb0052f300d5adc10242209ad5c7bccd79dcf0d82e628936ed0e14bc"
      "ru"
    end
    language "rw" do
      sha256 "ed4806e9ee52ef27e13d849ced2b7bd6fa1ca32ddcd00bc84fb0235a920710a3"
      "rw"
    end
    language "sa-IN" do
      sha256 "52ab793d192cc459d9d1772d4d8969fc12d260fdd1dae439802db47684c0a379"
      "sa-IN"
    end
    language "sd" do
      sha256 "a66e07359d8cb51cfbe1fcdf77afc640b2d409133ac6dbad467663ecb8b51277"
      "sd"
    end
    language "si" do
      sha256 "787847e748b81e3c9d485dff9ed69d6cf6b1ef144748391d67b777c9d894a2a4"
      "si"
    end
    language "sk" do
      sha256 "696c403cbc9d1b3e0eb3989981ffe79e2dcfe0fb853b49df6cc1a91aba52079e"
      "sk"
    end
    language "sl" do
      sha256 "5b18128287247f7847630ffe3ea1ec4b4edf851452446da9cb3f22522182d08d"
      "sl"
    end
    language "sq" do
      sha256 "e026aa8e8cd5484696f42fbf547e8c2e15e5feb7936d233609d48928573939ec"
      "sq"
    end
    language "sr" do
      sha256 "d8cd9a61795a85e47bbf5d6c55589a8f0a91060f06d488eb72bf5f2e18729f22"
      "sr"
    end
    language "ss" do
      sha256 "9e973285baa66cb95600bc6b6a7501d01533f391de916d520d9d26b90acb145d"
      "ss"
    end
    language "st" do
      sha256 "7c90d1bf40240ba452e530e4f177966e473748fd1758acadf8d9e089884baff9"
      "st"
    end
    language "sv" do
      sha256 "f0b3d1581c207b3453ca4a173ee9062336064f67fb591f8639d3fc8c1ba11cfd"
      "sv"
    end
    language "sw-TZ" do
      sha256 "ef2153056c618e13fbea3cef52016412ffb2dc41463506f69e9cf59da089a144"
      "sw-TZ"
    end
    language "ta" do
      sha256 "d7c7b57aa068201901641bbd2ea0c46c12e6ae2f9518ba0c463b1cf8fb2468c1"
      "ta"
    end
    language "te" do
      sha256 "57da0933315c4ed3f5c6c3c315bb14dea66910a132a560134311407839dab1e2"
      "te"
    end
    language "tg" do
      sha256 "6c21c2da8093fc4d192227bbd738f7514dbf522824225bf973283945d8d2c07a"
      "tg"
    end
    language "th" do
      sha256 "0dd70ec676be735ffb1fb28324839b2a30289241f1e9d01d267f1fbd1b7220bb"
      "th"
    end
    language "tn" do
      sha256 "5763567badffb723aa30940efb77b65352316afe818de66dac8836d252098947"
      "tn"
    end
    language "tr" do
      sha256 "e88f4bebef6dcb1303944292e09194d239ef0aad6a6791da41560117295a5db0"
      "tr"
    end
    language "ts" do
      sha256 "5fe8312f51ab21054580ae4c2f56dc1025c3d7e4f5267aebfd0171d018b8d42a"
      "ts"
    end
    language "tt" do
      sha256 "87d0dcb7ab95093f15818900f28fe17614e0379093d12b9f792d2865ccbf470e"
      "tt"
    end
    language "ug" do
      sha256 "9802dfab4a283133fea8f7ce60f948b11ccbec5c0535d02e669dbeb36d765c64"
      "ug"
    end
    language "uk" do
      sha256 "b3e6ba020b45d30019555ad43f9532b3d471e91532a7a17b390691d2e8a9acd5"
      "uk"
    end
    language "uz" do
      sha256 "8be082725b6ed8f7264a7d944497b74c6f978fe20e1e3f8b62dd84184c52412c"
      "uz"
    end
    language "ve" do
      sha256 "438792af4b202f5f3ada2ae9bf08e2a2cabbe5134a88990822eefd7f5351de3a"
      "ve"
    end
    language "vi" do
      sha256 "4d5855ffe8b06e6e1fd78c342bebf8dc76b7f3707027a8be0dc8127d4cec6f6f"
      "vi"
    end
    language "xh" do
      sha256 "ac9b4a93484c4bc1321760cc0d728beb2d74cdb23c48b7a703056ace89d98f8c"
      "xh"
    end
    language "zh-CN" do
      sha256 "6e4b72b971921b72f8a460d067c3b7c51d7565b2acf834db58d063eac4090c44"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "61c4239c022ee8a38f42793a697368d39d2cad5ce10f933cef093fd674731a03"
      "zh-TW"
    end
    language "zu" do
      sha256 "872f52ef73bab8f1de22bfdce094958afc2c65095cc59e5af28e7f5324d0cbe1"
      "zu"
    end
  else
    language "af" do
      sha256 "399c9307d68eb4640a6be2cc0bf3547ba7839a1ad03268f5bea32e4d43392d33"
      "af"
    end
    language "am" do
      sha256 "e294a633f8aacab050683ca7a14dcd9b5ab7d5809f61f001f3ee310cc98632fb"
      "am"
    end
    language "ar" do
      sha256 "d84fa26ea428a97a8bc8588a2f18c66ea2724eeb7b4a600437214d971ee507ae"
      "ar"
    end
    language "as" do
      sha256 "e5a2a40ecb463dd35379e2b523d6fd4e7142569212b3c46202c709aaf3006080"
      "as"
    end
    language "be" do
      sha256 "200ccb901d6754c867f235e97f268547e5ba264966b21bf43254c9f250c79044"
      "be"
    end
    language "bg" do
      sha256 "e815e6936f7813c87f4678e93825b2a90932bc0fd89c65ac7ac9b6c831136695"
      "bg"
    end
    language "bn-IN" do
      sha256 "cc97e6a0afdbac9e1d4818c4f749473ef7c89cd08e224a2582b6a65227eceb51"
      "bn-IN"
    end
    language "bn" do
      sha256 "f23133a4d2e8d22bc0eaf9fb86092cb9fabb5d828fe50900c71ce8d388194b64"
      "bn"
    end
    language "bo" do
      sha256 "9f2a9f2dbf61f994dcf78783ee155f6705acf3021e177a386403168b01b3eec0"
      "bo"
    end
    language "br" do
      sha256 "e55abb77bbdde36268191f1a2163b22941715cec22969308c2c7409abb9259c7"
      "br"
    end
    language "bs" do
      sha256 "0a1a6fe4f39f6cfab0581d8e3688f61fd2ced3883c4a1c0dcb2e369a9674107b"
      "bs"
    end
    language "ca" do
      sha256 "309653ab321b0cda2a19b3506729d223d847c59083d9b1704371f8a113f6cbff"
      "ca"
    end
    language "cs" do
      sha256 "f5de53524045e3365ac51670636b7c2959720a89c9b513bf91620c90c2e1420e"
      "cs"
    end
    language "cy" do
      sha256 "61e43a07bb5aa41b55276c656c2275a12ef808d45f71fe24eb12e406f1b3e9f8"
      "cy"
    end
    language "da" do
      sha256 "66566d352ac2ef03f4f8d0f480c19a63c92819438156841c0e09dbd83bd19351"
      "da"
    end
    language "de" do
      sha256 "975456ffa96433658ba031cd6d5bfa8054ae996fb398e8b4411643a9d52ef123"
      "de"
    end
    language "dz" do
      sha256 "a23a9eca5608eb7e70dcfa7a87e8709a4a6831330eba442e9dcf348a431fb4b1"
      "dz"
    end
    language "el" do
      sha256 "b4a7e60ef6951a2dc5ce68c71e94c48c08658804b2c0c43f95bbb76eb1707dbe"
      "el"
    end
    language "en-GB", default: true do
      sha256 "df570e4634c130f8fca4951a3a27d06b2451adeae5149b5ba41e1d25d5246513"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "64b32d6a8432d6a27574deb74aa43766b4c233e6b9c1a239eb307a1ebafcd1ba"
      "en-ZA"
    end
    language "eo" do
      sha256 "ee19186d2ef3ce354087c4027946e3f4bad8bef059e10fbcefe3d8810d4490c8"
      "eo"
    end
    language "es" do
      sha256 "f122d25ff4f0022a261103b3203b7126218960951dd19b8a9990c657c7170f09"
      "es"
    end
    language "et" do
      sha256 "1d6920f3515d90424732942752b8a00ea3caf3c2ce23ad6c7ab1701be6ea8563"
      "et"
    end
    language "eu" do
      sha256 "492901b170ed37770aeb6b62ea817f637db78d6d9b1cf02f4713cd43af213fd4"
      "eu"
    end
    language "fa" do
      sha256 "0149b833c111e288a44a82471628cd3cd753d275bf171dee81a132d84b80f6c8"
      "fa"
    end
    language "fi" do
      sha256 "07111edf6ae14e747c133a07bb9caea797d8f428b52e7c660a9fb782b509ea6f"
      "fi"
    end
    language "fr" do
      sha256 "1b15e737d7e3a2852a98ebbb0ae6e03f566fd8254c3ea9f92f711ba39031a6e6"
      "fr"
    end
    language "fy" do
      sha256 "28212f2f86bda18b0bc85123cd9f3651a14ecd0a8bf812340aaaf8af199faf0f"
      "fy"
    end
    language "ga" do
      sha256 "ba00176b34d65cab102bf5b6d564c4945ea225466584153fc74605a0e8d3ce26"
      "ga"
    end
    language "gd" do
      sha256 "376dfafd7ad8fa7ec5e572b2471104d10a6bb524cb462be52d67f122ca5c4ca6"
      "gd"
    end
    language "gl" do
      sha256 "889e5e946d69d1b17acc16b2fb9db42fc6cbf4725337b9878db277866ddaf64f"
      "gl"
    end
    language "gu" do
      sha256 "32bccd11198742f47137ec2871acebe80f068006c58a2edf02ce3c7a7cc747af"
      "gu"
    end
    language "he" do
      sha256 "d1d2f8f324ef26cdd2207efe7b31ca3bcc3b76174dfd8eda22a3b74c067bbd0b"
      "he"
    end
    language "hi" do
      sha256 "8b53279b2e9ead61b3274d4de6d341f1dc396be83ef9bd1a13fb9ab26e74f792"
      "hi"
    end
    language "hr" do
      sha256 "fca4f25bc5e0201f7ea422d647dfa269820bfee7d651b00ab52195db23bb0076"
      "hr"
    end
    language "hu" do
      sha256 "cf9eaa8842a455a2b89a163a0ca601c64bfbc50f163870c90c3be88d3e491b4b"
      "hu"
    end
    language "id" do
      sha256 "40d2eb3afc8020769c4f806aea0a59b6c7615b48ea316e68545d1bd176fea87b"
      "id"
    end
    language "is" do
      sha256 "235a443ad4d13f00b05fc545c8ed3ad6742556923979e075b5b500bfe223020b"
      "is"
    end
    language "it" do
      sha256 "b88de40e90ef9006e7ac2ca59299f81cfefd5f065c5acfe25cf03c7c2d876665"
      "it"
    end
    language "ja" do
      sha256 "0297a4e662a7467ac5afbd3634719683cdf6d1fc77c53c6beb67439a160553d4"
      "ja"
    end
    language "ka" do
      sha256 "ca3523965126e3901a13846be0e225f11d2037532762fd71952b394e2631fa01"
      "ka"
    end
    language "kk" do
      sha256 "bdd818ce0d423b4334fb4fce1fd14b24beffbf0a4a1952dcb46e197fbb411bc4"
      "kk"
    end
    language "km" do
      sha256 "bf5043d20410a8d2bb9374414ac1331e1578788ca66f6dd0e786cc59f1f64a64"
      "km"
    end
    language "kn" do
      sha256 "180163df8e89128090eddf35f2e82c5bda0cd62db4939c91884a409848df05ec"
      "kn"
    end
    language "ko" do
      sha256 "c6cc6591037ea6161cdd46f04b87c017a47118c4c03c9fc435a34cedb2cec90a"
      "ko"
    end
    language "ks" do
      sha256 "a6322833338ae72a598eac7801453c59072093017c8a9af55d2fa026ec2af160"
      "ks"
    end
    language "lb" do
      sha256 "f02b1b937ba31042c6c88041c72bb129c9762ae4c1f2a355d7b1812d2bfda4e6"
      "lb"
    end
    language "lo" do
      sha256 "b67e30e64fe6cdb35abaaf579369fef63e46687c5d2472f882a1da323274bb78"
      "lo"
    end
    language "lt" do
      sha256 "e48a5379aba73b7754cdb3db5eee0873cdabd1cf7526c499e0603168f8407e73"
      "lt"
    end
    language "lv" do
      sha256 "ce739d0b6494b0a9c6ed483b8cfa98b5d390d51c6e93c8e8cbb04f3cfcf20512"
      "lv"
    end
    language "mk" do
      sha256 "5a2abd3206917d3f9aba1ead48b27953ce635ee9660dedad0c9f1931d6588dd3"
      "mk"
    end
    language "ml" do
      sha256 "2f3ac724066d632a14f74c9fa6c9d19b0bd95548ef69a9880b4f3285e98d2d4d"
      "ml"
    end
    language "mn" do
      sha256 "cbc449fd43baa0ba3653313c249070e9da82e018fa98c6579d6a1fc27a56c2b0"
      "mn"
    end
    language "mr" do
      sha256 "e990cba6edfa27f8b87b80bc18af1f57fff3e261466900c1475444b0192b5086"
      "mr"
    end
    language "my" do
      sha256 "605eb9a9cce7999e014bc426df0f0313228041197a9276e8826ceefecf3772e9"
      "my"
    end
    language "nb" do
      sha256 "2d5ccb94ac62f4f28558cd319a6b852f744c86832aed2dd8ebd5d5eb0ef94fae"
      "nb"
    end
    language "ne" do
      sha256 "80c5322334a9e9ff98d7824bfbb5ef53919ff6e49d1d41015188d3b06a839f18"
      "ne"
    end
    language "nl" do
      sha256 "1bced37132bf9d536a1eb52e72863042d7eb4e720965e3185b844b49e956535b"
      "nl"
    end
    language "nn" do
      sha256 "de58e79d4e4e7d63fe94481b1f44e1786a7ee71468137675c1ae7b85d6a2eece"
      "nn"
    end
    language "nr" do
      sha256 "75b39fbc353aa67a947852fe61c68773ec408802f253001722c7b440a55f3de9"
      "nr"
    end
    language "oc" do
      sha256 "5d8ec41f4014bafe8868beba74a2d825d569e44c13f90e1376c0d9a554275e90"
      "oc"
    end
    language "om" do
      sha256 "2f2e6920ecb63b1edc7752be29104104242a8ff2a02f39f3fcd99fec4d607a19"
      "om"
    end
    language "or" do
      sha256 "a6bd649410632a1304f48dce4579826913b3347dd2378751f2793f41d658c7c9"
      "or"
    end
    language "pa-IN" do
      sha256 "2e6b5cba30cb5b8f24ce02bb05b4fd79d2164131426b7356813128de8afeed74"
      "pa-IN"
    end
    language "pl" do
      sha256 "bcf9c4b470908bd65e95a6436e0f0e4b2c07f375da908e4d4853011710d66586"
      "pl"
    end
    language "pt-BR" do
      sha256 "19c6c1df60ed2b778410755128dd95253468c98a820948806c27b7975ed7b04c"
      "pt-BR"
    end
    language "pt" do
      sha256 "674664b4156674362011b28e4f4af9a1d82c43c9ea85b49d31c2a9e06685e502"
      "pt"
    end
    language "ro" do
      sha256 "d10497f607cf0b5fb845ab48cbc6adb62af48019caae9cf5bb6319cefe9574a4"
      "ro"
    end
    language "ru" do
      sha256 "5e63979a0b05bd9bad65ba0b181d0d9166f9585d90e59701bb1107c31e868247"
      "ru"
    end
    language "rw" do
      sha256 "73cc296492080b6e1041555b9ff4c1083aa9632409222031f965e845cac63ed4"
      "rw"
    end
    language "sa-IN" do
      sha256 "641b64e8e00b4ecad13ad7826bc491f9dc186a06977f3cddc902b25590b3f404"
      "sa-IN"
    end
    language "sd" do
      sha256 "121936c499cbb1140af0c85db55ea0b1c227c18db5aa5f41c06495f282a806d9"
      "sd"
    end
    language "si" do
      sha256 "518b6666cba2f80240ef3248ec38a5698eba69af53dc5cb4fd95a30179e6fc59"
      "si"
    end
    language "sk" do
      sha256 "4633804fe53d9825dd4fd6ddc80b946b6e72a0aad28176c8d68f378e79ed1c10"
      "sk"
    end
    language "sl" do
      sha256 "89439760eb41c738214bf33bca19b4a7b78f1125b01d95c04fc4dceb212ddd8a"
      "sl"
    end
    language "sq" do
      sha256 "50c17e0858f23ab041ee60252bf2481dc24e6f584d5ac07075694b1f2c78338a"
      "sq"
    end
    language "sr" do
      sha256 "285627c06b335ba379575043f57621d4648e25dcaac4b985f40c38bb6c6fbcef"
      "sr"
    end
    language "ss" do
      sha256 "d053ca407523e016572dd418c4a53a3fbc8f4725d7d91cee5c8db3036c9772f1"
      "ss"
    end
    language "st" do
      sha256 "b74a1f5b0c41666e74fa9dbb9c2022bb04f845b6e37a299d92cdf44bdecd1130"
      "st"
    end
    language "sv" do
      sha256 "9415165aa377392ae027e498055acc839d4bffd7648779ade94329004ae16047"
      "sv"
    end
    language "sw-TZ" do
      sha256 "9a20c4d19a805ce97fce0e77356262b978bf6895c135c4e09e1ca1d19c060c23"
      "sw-TZ"
    end
    language "ta" do
      sha256 "ebc36dec573addba55961fce49fd979fdf3a56925e4a0ee8f1c486227e17666e"
      "ta"
    end
    language "te" do
      sha256 "974f4c2aff98878fb936075985a7c435a27ff102d3269d3810a10d31cce654dd"
      "te"
    end
    language "tg" do
      sha256 "b0b7d6926f6818a0967610a0815581b4b124bcd166a8d26e50d674e528e32b89"
      "tg"
    end
    language "th" do
      sha256 "8dfb74f6a45884bb2b0642df8679aa9ffe35d4dcbc566773ca4881d04f87db81"
      "th"
    end
    language "tn" do
      sha256 "f99e5b2f8ad3a24d4bca4a4822ff2e77d93b8bd29ed48addc3b0946f74f0852e"
      "tn"
    end
    language "tr" do
      sha256 "41a19d7fad91a532cdf0840c79bf3159667096f3c8dde2f24b68fa084b5138cb"
      "tr"
    end
    language "ts" do
      sha256 "42b8426802dd0d1eb9fabd326cfa07e8c42c4ee8bb12fe9a7dad72f810fd8f8e"
      "ts"
    end
    language "tt" do
      sha256 "0ef1e63672c7adfe6e70a0a10680de4ee1a9171eef37dd26a5a42ddd702a49ab"
      "tt"
    end
    language "ug" do
      sha256 "a6fee07bc96e5ba90ecaa30777c744a08f1b6894262bc647a058e92096621b9b"
      "ug"
    end
    language "uk" do
      sha256 "dc21b9a9dae82587be49fe8a40e6fb840f82d7640522984091e7c729915c4658"
      "uk"
    end
    language "uz" do
      sha256 "e99aed386893a2d9b7933a5887402a9a4c3dee647462cf3a3e7caaddb6e1682f"
      "uz"
    end
    language "ve" do
      sha256 "a15647efd1ac4bf768c79100c1d5419709816ffc59c80251e2767c0cd78944cb"
      "ve"
    end
    language "vi" do
      sha256 "c46c87a926bdeec166cd2a3362975da0f248b51889db655f7963da845ffad794"
      "vi"
    end
    language "xh" do
      sha256 "b065e28566f79df18d7ade7b4520b58129f4d836e7cd90a93bca00f9461c6c69"
      "xh"
    end
    language "zh-CN" do
      sha256 "5105ab8e76090db8a2888f51850fd235433d8fc0076f8a1e132eb5bec9340f22"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "4aa6af6b9f5dd4fcebf87fde15b35d22196962433405fc03f791beb660ecb042"
      "zh-TW"
    end
    language "zu" do
      sha256 "6e3c264d3a43e7f909521244ade2f70170f3301c997470031cb9100deb6cf4a3"
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
