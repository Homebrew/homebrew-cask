cask "libreoffice-language-pack" do
  arch, folder = Hardware::CPU.intel? ? ["x86-64", "x86_64"] : ["aarch64", "aarch64"]

  version "7.3.2"

  if Hardware::CPU.intel?
    language "af" do
      sha256 "e7cf19eac44dcde21e62ae2087b81021f771c0c59501cff36bfc2191bd07622c"
      "af"
    end
    language "am" do
      sha256 "4178e0d30b0da328ec0c2770637e3cb9563443b76e6e6ef5d581e97243d8cdc4"
      "am"
    end
    language "ar" do
      sha256 "3aa57a1ceeba17913199299dab871183b5e84ab35ec482afa0d586ac87c19453"
      "ar"
    end
    language "as" do
      sha256 "6319c78d3ebf43d14fee26a98132bc4e273172e83185f07845e06c953cf26a91"
      "as"
    end
    language "be" do
      sha256 "1f483ebb95f1be87be94f189acaf27aafddaae2b8b9dd1b4230ec7fa25ef1fa6"
      "be"
    end
    language "bg" do
      sha256 "2a7c2dfcc5d9f3326e48d8b020f45a7a4eabe134ea4532faac57ae4dbd6273b8"
      "bg"
    end
    language "bn-IN" do
      sha256 "ecb413b5419ce230d42ad4fa04e531d7328faea15cc0dc98d5f5086e5969198f"
      "bn-IN"
    end
    language "bn" do
      sha256 "5a0f049ee162f090401defdd33278fe0b3e9d78f17a4ffd39ac9b3c9123c502e"
      "bn"
    end
    language "bo" do
      sha256 "1f9d9256ad6fa601d1867931571f9f976a3e42cddaf258cf34fce875a2540de2"
      "bo"
    end
    language "br" do
      sha256 "fad3aa0a09446ed939f6a1fc51d025aaa91c382ccf86e0485e5684c0be5093e3"
      "br"
    end
    language "bs" do
      sha256 "be8442ffafc66a9009377bb7a36000e3c24360847540cbaff2cdbd91c4d63b22"
      "bs"
    end
    language "ca" do
      sha256 "ec999e9db61a35ceda12078aeb63b6b9384fa39df084af59abf82ba1fd3ae956"
      "ca"
    end
    language "cs" do
      sha256 "2ff884ad4d39d575c5cf030b9044476b3e6eef8c7b1454153216030c972fa629"
      "cs"
    end
    language "cy" do
      sha256 "7d4cba6ea2c98a45ff937ff68c1014d75a4d9acf5607a0aaf81579030b5f3e54"
      "cy"
    end
    language "da" do
      sha256 "29e0791db8c936ec04558471ca6f8588f13e54c76bf7397d6d0016710f16fa20"
      "da"
    end
    language "de" do
      sha256 "491ca080605f05a52fc2c2e48c98e63ccc86685b507bc0ea08cfb1a6baa53748"
      "de"
    end
    language "dz" do
      sha256 "e5fbd16cec082644d4d5c1d2ffc83edba130384dd27b23f32b7a78c450e8727d"
      "dz"
    end
    language "el" do
      sha256 "fcf35f23f3db17edfbff23237041a9e657e375684f3981f73f0ac8a1a4ff43ae"
      "el"
    end
    language "en-GB", default: true do
      sha256 "2c80d5db67464c5a71d4b5afbd4efc006f9a75d2ecfd5c5df99dea722db13cc4"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "51cf57c17d7341e4fee5a50fdafd028b50d6d8f38001e72c67f09ce25ca90c3c"
      "en-ZA"
    end
    language "eo" do
      sha256 "f4d14429d6f1c00aff7502e9ba7b2bf3bf29a7603476f116290dc911647653e8"
      "eo"
    end
    language "es" do
      sha256 "7c1834c1a72d4d30af7393c774cc39febc0edc18a85246216998b705cc5c8c1b"
      "es"
    end
    language "et" do
      sha256 "a92b7217131f7bf358d488d3e7817c292c176a26c079f81597eaad666a3f0d4c"
      "et"
    end
    language "eu" do
      sha256 "0d93bf70026e87803102105902a55c181b8231a0bf0ec2b3da1956e2b08e3a04"
      "eu"
    end
    language "fa" do
      sha256 "e91b77c67b6c765daf119206cca3b061e1800c4587a0fa010ff4e18927a18c5a"
      "fa"
    end
    language "fi" do
      sha256 "52fd2c3aa30e8202f6cf7271c0f0a9137006b8861f2f50fb2d4fe48df61422f3"
      "fi"
    end
    language "fr" do
      sha256 "36f96cda645d1aa16c966a1bb645ef3a717d25187d0c723b4eff015b91f66a20"
      "fr"
    end
    language "fy" do
      sha256 "de2195e6e052ede8bfe0ecba5693180d21c5f9d5c0bb3934ef9708e225b25c02"
      "fy"
    end
    language "ga" do
      sha256 "7cde5d0cb8262460816f35ef81a04e60ada6758e987b6a04417f6953f8c595e0"
      "ga"
    end
    language "gd" do
      sha256 "615e56b18517b93c9dc8af2e199a0ef2064243809ec2e153e08e13e6350fd938"
      "gd"
    end
    language "gl" do
      sha256 "4fe84c744e2baf28e76827f42518f5923cb00a4950bacf5947377338aad9c8d0"
      "gl"
    end
    language "gu" do
      sha256 "4de30be53e9949043c154eea56aa34dbf936e6384f3d81d28a245b8d1b423878"
      "gu"
    end
    language "he" do
      sha256 "4c870fb26b7a4f03e268253fb36b180b58135c5f65cb3176d6659f1b72bbd702"
      "he"
    end
    language "hi" do
      sha256 "07d4c90c39b0c3dd00a2789351f8dfaaaaab3d3c30432e7792824ab9609ed0e1"
      "hi"
    end
    language "hr" do
      sha256 "dc7c06ec9893dfdba3a0fa38815b1803fcb7b0aaf3dedfb1f4be617f8f0a949f"
      "hr"
    end
    language "hu" do
      sha256 "e3780824dc36a186edda8cfc59d535a4b43c6e7784ab4a4e2aef96a435df59e0"
      "hu"
    end
    language "id" do
      sha256 "6e9890f5905689b52a827fbfb5119e7c4da0fdb4be5ee427c28c242d8186e974"
      "id"
    end
    language "is" do
      sha256 "3f7e173f9efe2ff0c659263438b68b84b79bca4ac9620169d0d7ce1cfde9a2c0"
      "is"
    end
    language "it" do
      sha256 "4e0b2db06860e8aee4d79d8caa4a4876508699f9f19fd5a0634e58e6742cc537"
      "it"
    end
    language "ja" do
      sha256 "b2016399feeff9a9ddfa205a6203ed986b9a8e3ddcb1757609694c9c9ded088a"
      "ja"
    end
    language "ka" do
      sha256 "8071edd12dd0a9fdc47c746fcca7b04514cc38308e2f279a4d26e17652f50cc9"
      "ka"
    end
    language "kk" do
      sha256 "d039f3b5675d5884c38716cd481bd5e6ae2e039dd52e2e86777ce03273dae7d2"
      "kk"
    end
    language "km" do
      sha256 "a8199d195d645c15965b4048f6e232cc22ff62698390e2d6c27407ac2cdbd582"
      "km"
    end
    language "kn" do
      sha256 "5d7f46fc9ce6d2a19933ea21bf3efb0a9ccd978d4bade65f33673636b1fbf210"
      "kn"
    end
    language "ko" do
      sha256 "c53582b98efba33b861c51df5116a59e06b530bf06f9b148a366324109c59b82"
      "ko"
    end
    language "ks" do
      sha256 "9204b8648c0b53f29524e891a989faf0ae25e1cd3c391dd394587e0d4a4a214a"
      "ks"
    end
    language "lb" do
      sha256 "4fc12901b3160dbc5c42fc4ecb94bb3f9481d277130ae777e2e8f18cb24b86c6"
      "lb"
    end
    language "lo" do
      sha256 "f8c8b557329399f98aafa0f93283823e1eb25cbfceea21cc70500b8883e8c0ff"
      "lo"
    end
    language "lt" do
      sha256 "0f01ec05d707ceee8e87fd8143c424618c88f6c4e87eda5114820232b2707b47"
      "lt"
    end
    language "lv" do
      sha256 "bf21bb257604ce5ae4324ebe7f56b7d18fdcea9fb323aef0c2e3b744f4dfa6f2"
      "lv"
    end
    language "mk" do
      sha256 "3a34b98c2e778f8bfe2bac0576cbe3c13e1c8c827d932070f29d1878acc935c6"
      "mk"
    end
    language "ml" do
      sha256 "f240bf6566943f65e9119429c7c6a553c765831162183e4b301f3113fabb2662"
      "ml"
    end
    language "mn" do
      sha256 "9ec5369005cb90d85740c637e08e4cd951e004bf828e2d282a2d0ddc019b1880"
      "mn"
    end
    language "mr" do
      sha256 "5011979af2d564746e3259a617e90720a7468a6ef06cae265aed978b01cb69fc"
      "mr"
    end
    language "my" do
      sha256 "e6a10baa58b52428e6dda759bdb4b8e3326eacad92d92eea221eaca590730727"
      "my"
    end
    language "nb" do
      sha256 "1c5d452d6be78756b06766dfadbe7f6473558dd1e75e3a999e87ac1de2b65444"
      "nb"
    end
    language "ne" do
      sha256 "b0119a962ffa8aaf3ce0a6e27c255ca0055dd781b618f43fcb6496bed712f993"
      "ne"
    end
    language "nl" do
      sha256 "d697e98fcf74388fae67aac2e0681cc490b20b3bc9463fa04dad377d97160bb0"
      "nl"
    end
    language "nn" do
      sha256 "a10792731d3bcc8cf8caf8423c64e3441aabc57fe3dc28fa76d0bb530df895c3"
      "nn"
    end
    language "nr" do
      sha256 "835f3c2026152b2183d9845438a7a043d617f6d01911f30c2c4b554a5aa405e1"
      "nr"
    end
    language "oc" do
      sha256 "882bcaa04907ad5a7a06fce3fb343e265fdb6f72eb95eab5308a938ea9b671ed"
      "oc"
    end
    language "om" do
      sha256 "ecd7561e50686f0706edd46e7eac3a708683581ff14aa4cb8d3032df6c82d0a4"
      "om"
    end
    language "or" do
      sha256 "1f70e361f5265c8a64ea330bb94610d2136c0602f4d35dc4f003a768a982f3b4"
      "or"
    end
    language "pa-IN" do
      sha256 "438a2fcf571ee45291b9f2ee1c47813333c442fd40f2b90729e31b1e09f1b21c"
      "pa-IN"
    end
    language "pl" do
      sha256 "2832cc755a0bffe7926ccc24baf01ecf91bfd7b3d54c129a71e3bafc78589ee7"
      "pl"
    end
    language "pt-BR" do
      sha256 "d4b35fc7ea2155da144f9233e9ea6cf6603c35dcbdf815abad5ea68923a390ee"
      "pt-BR"
    end
    language "pt" do
      sha256 "4404979c3de042cd6ba6f0fc2a16e2723bfa76cd7fba24c8e2841435a716a4ed"
      "pt"
    end
    language "ro" do
      sha256 "bf1ae29b5df44ee86a5aca7cf9fca3e97e2d6ef8befce7ed37df21d7d74f0095"
      "ro"
    end
    language "ru" do
      sha256 "27133488632477b1637d5b4274a82e51fdae3cac76c76cb3f108b5215572fd8a"
      "ru"
    end
    language "rw" do
      sha256 "570d662464a2bf72cfb8bd4767810587f7f979c4d5cbbfa255fbef7f2a84f279"
      "rw"
    end
    language "sa-IN" do
      sha256 "1151fdc85514bf864a30d1450aa11c59fc8ae8115219abe0f20bbe4f418c10f6"
      "sa-IN"
    end
    language "sd" do
      sha256 "9fae74c649611968983d234d9e2510a1bb53aac3c5992aba91bd4131d4f6f6cf"
      "sd"
    end
    language "si" do
      sha256 "64c306f0d0cde554d9b5235aa1a00084856e27b73a2374473cf74fb1ca7bbab4"
      "si"
    end
    language "sk" do
      sha256 "bec7171e28fbbd29378bda99d6b47f0da4e10629c4e0008583375b07b6227aaa"
      "sk"
    end
    language "sl" do
      sha256 "ab148c76f0de717409054dae49c602b86990e9e22c5e5326f63a34e0aefa8107"
      "sl"
    end
    language "sq" do
      sha256 "5d4a15644773f07d09b69d1f39cb0b3b05ce1ae25f3304b937964bb7520d5ec1"
      "sq"
    end
    language "sr" do
      sha256 "8d309a925931677292bafdb79c8b64d936cb162b0f4b800e9af978ec383df06a"
      "sr"
    end
    language "ss" do
      sha256 "251d2df077cb435ed5dad6a297b68314d49beee17f8474ecd7687c3f6ea28421"
      "ss"
    end
    language "st" do
      sha256 "bc83e3f5d3fabb42c72c50cdb0c0918bf7d40eba8f11fb5dd142d71f2c5e3564"
      "st"
    end
    language "sv" do
      sha256 "9e015fd7ec34574283fd82bc9340e102b798ab2a9a4aef6e8ee1198dbec89fc9"
      "sv"
    end
    language "sw-TZ" do
      sha256 "bc29130d46a53fecd27abdf31ad6d201954a8480656a575aeecfa6e333cac0b5"
      "sw-TZ"
    end
    language "ta" do
      sha256 "f1f342e52f1c8bef63caf84ecf4b38a98c38940b4e318bd3f5612212651937ec"
      "ta"
    end
    language "te" do
      sha256 "eb324c2cba82f7db296bb31532d6767f63377b731a2be8e01697a9645efe962c"
      "te"
    end
    language "tg" do
      sha256 "a4d60808aa17618b4ba8173249b81faef3c697dfb984a14349f1dddf8cc1a69e"
      "tg"
    end
    language "th" do
      sha256 "34c9ce0f86288dddbbc24f9ffd2a6639559ca230621c2a4d952aa29b07e28185"
      "th"
    end
    language "tn" do
      sha256 "6480578c6b634aa80133982f60a819ff41cb325b556089b8e22541f2a5a93737"
      "tn"
    end
    language "tr" do
      sha256 "b01f3191ba10785d2f36db1e1b353f5765506948e2f351a5e63dc4dc93d923b4"
      "tr"
    end
    language "ts" do
      sha256 "1095cabef2d29df5c73eb6e9f6bd4e03004f3f1c116ac7e244739da616d7ff33"
      "ts"
    end
    language "tt" do
      sha256 "9ed9b32d2be537e51f033230df332868fd72a106cb68b737d842c7d8d09f6b91"
      "tt"
    end
    language "ug" do
      sha256 "9c10eb0fcdbb40923bd380c4c0dd295abeeab7cb9a1f21fdbd989793731b3b4c"
      "ug"
    end
    language "uk" do
      sha256 "600bc9d5b20c44180cc3b611a09bcdd38911af0c4b650e5d7bfcbc0efa9980c3"
      "uk"
    end
    language "uz" do
      sha256 "641ded09c9c18caa76efa40b6f57f9b79ce132e1a377ad0defb039ca6040c5c5"
      "uz"
    end
    language "ve" do
      sha256 "f15870a72e816c6c71e4c18b9504c79e9e95c0c75938ad7f24c47a0ce5f1cbe5"
      "ve"
    end
    language "vi" do
      sha256 "93ab4fa7135d1da354444fd5627f4302726de02226a9413e02f7caaab30ae89d"
      "vi"
    end
    language "xh" do
      sha256 "5c784451bfdb4906e500232cfba42ac81e21d0480da1c779d45217b4d7c9176d"
      "xh"
    end
    language "zh-CN" do
      sha256 "8a1844d06208e72b18f8283395807ccfc8059f85557147513677c138e1409d84"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "9c5de7c5ce87dfe78a861ec243ba8d686818f027088f6b48d6d0ee3f66a3508e"
      "zh-TW"
    end
    language "zu" do
      sha256 "85ea04e0740116ad03185b39f2d7ddc58bcbe48e6f84c769c37a66d5ebee2cf7"
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
      sha256 "f6796c52044e8f78c27ef876655e863ed08011c2607e9e0a701f7443e4da0133"
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
