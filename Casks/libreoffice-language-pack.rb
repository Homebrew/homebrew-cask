cask "libreoffice-language-pack" do
  arch, folder = Hardware::CPU.intel? ? ["x86-64", "x86_64"] : ["aarch64", "aarch64"]

  version "7.3.3"

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
      sha256 "07f2e4f6bed620b42119c0ee6851db41d8b31a64d9a4dfda1cde972d32ea91fc"
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
      sha256 "30b96b50bdcdd01dfdfa8687f5e90f12258b0c70b397866033c0b2baf1da7e67"
      "af"
    end
    language "am" do
      sha256 "7a44cd668191a43f4bad9fc62f5d344f8123e4a62c2759baa8b29f707f9147a4"
      "am"
    end
    language "ar" do
      sha256 "6100fea2f969117fbc3fe5e9f29a75145b6ee5154d044d328fe8951f4dac637c"
      "ar"
    end
    language "as" do
      sha256 "db6ac65a6deed95fcb6d9a7e7f77a0f27b4611acaeb9664e39efd1d57c62a0b0"
      "as"
    end
    language "be" do
      sha256 "6bb06f58800a8deb722bdb372dd698a0baa4dd04f6aaa7754c94c3527cc235d0"
      "be"
    end
    language "bg" do
      sha256 "8bdce62d0bbfe62ebcb1ea62ee1024d4be103efab61758862a35ccf3f88bd678"
      "bg"
    end
    language "bn-IN" do
      sha256 "e0882747cc1fce66bf59a16ba2eebfc958bbd1ee212777addc212f10224ee8b7"
      "bn-IN"
    end
    language "bn" do
      sha256 "d64343b90c5a4fe204fef0cdac61898610c7ed6c93b3d743549a9ae58beb8bef"
      "bn"
    end
    language "bo" do
      sha256 "61b1dac9049bda184cf9921e7456d8e54c527b1f8702405fccda167b1500b268"
      "bo"
    end
    language "br" do
      sha256 "c27c36408d8f7240f12b2274c12a635161f9947307205f3abb232e8af8b5c0f4"
      "br"
    end
    language "bs" do
      sha256 "aa74a0bc93d31960bfd3c3c97f6f68a3e49096cb0a03ed6e9d945309fcf31e30"
      "bs"
    end
    language "ca" do
      sha256 "7b238ec1bb01c28a79f1bc0884c4e8baa4b282b9c05d36eff25e6790985a6893"
      "ca"
    end
    language "cs" do
      sha256 "8680572cbc616f6f2aa102bd37e5b9a5af703197cac9e5c59e155cd0d40f7663"
      "cs"
    end
    language "cy" do
      sha256 "283312446e1c8945b2c5f39002bde8c210308302142e5131707cd52c17ac3f74"
      "cy"
    end
    language "da" do
      sha256 "7a3c6c86eef25f4f51e0ff942404c90ca09d376daaa3fe2b9baa60ea022d3b55"
      "da"
    end
    language "de" do
      sha256 "ca87025e62bb87f28831d9a3593102559a710be0b0195193d94baf96c097a1c9"
      "de"
    end
    language "dz" do
      sha256 "7ab45e042d2cbbd4de3081d3cf59afad96498cb060243c729672d425d4a15d2a"
      "dz"
    end
    language "el" do
      sha256 "f556867e07f1109a687eb572a445aaba9ffcc80f7fd4a3eef6dd05a62780fc6e"
      "el"
    end
    language "en-GB", default: true do
      sha256 "3629f41a633573110e30e5bdb6d001327099bd7cdc963d610cbc32fc9ee97a7b"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "b01c911c42db2184d6cce20ef7eba8f130a8c4dbf25ee7b5bacfe552fa092d61"
      "en-ZA"
    end
    language "eo" do
      sha256 "bf7fd23ae84c9c59b6d90fe5891084c836a4323149a0c85bdaab616fb8b4a484"
      "eo"
    end
    language "es" do
      sha256 "dcfae17de8ae82f2949c8bc20af357f7e3336cda80841ca8014a20c22842519e"
      "es"
    end
    language "et" do
      sha256 "a497a7422a0ee5c6977144d249f91462a26f28dbad40b220cb895bfd60c1f5ec"
      "et"
    end
    language "eu" do
      sha256 "35c0c905f8f0e1ee529fab355c90ad82d7f3199372e7538c98e20a2795cf20d5"
      "eu"
    end
    language "fa" do
      sha256 "529aee7395f3f6ebf06353d9397846a76e7fa019241e8b3810df9d81aed48ce5"
      "fa"
    end
    language "fi" do
      sha256 "09d421f97fa8ce4136d819245f6af998eef081e7cd0b8b146bf162fe03429522"
      "fi"
    end
    language "fr" do
      sha256 "a8fe2b8864aea881095edfd4dbebb4fe16391e55e53c8abdccb41447fdc9db8a"
      "fr"
    end
    language "fy" do
      sha256 "8e077bf4d2e1cbe67793b54791537252c3e78e327e19365b76af786cb30f5013"
      "fy"
    end
    language "ga" do
      sha256 "0d6f66f4d4f5138e5d3fb7a7539fe98c3b2355ebe2844d539ba4affbf431ba77"
      "ga"
    end
    language "gd" do
      sha256 "8d906b09b9e65b0bc53a918f513222904d07747723c361a956bd5f53c01c0a05"
      "gd"
    end
    language "gl" do
      sha256 "402c24ae35f1e6a5bea560ae9a34a041da506699327a00482a1786178ca6e57d"
      "gl"
    end
    language "gu" do
      sha256 "0e2225a2d0c95d3f84a88fb86561770840cda2962bed1fce626e5db6bc7626e6"
      "gu"
    end
    language "he" do
      sha256 "f2dfa0b45c0abd2e3bda287f7fdb3f7188d1843ca797586fdd69065b0acee6b9"
      "he"
    end
    language "hi" do
      sha256 "caad72c12a5a8ec916e6c4531fc446fa8fdf53c4b9b598c6b27c1830d0d7147e"
      "hi"
    end
    language "hr" do
      sha256 "a9672904986bc019ddc7fd5babe665df0e336d6f4a27692a4020e3e4ab687a3d"
      "hr"
    end
    language "hu" do
      sha256 "32eac30c92cfc70708067f27bab1ea690f891ec927faefd58a84bda1bb882dd3"
      "hu"
    end
    language "id" do
      sha256 "56bdf18fae82dcaa64b3c27e731ec771b6d07202535a549177c39f3ce09a4460"
      "id"
    end
    language "is" do
      sha256 "aff6564549d626483d337c299b607d8ec610cfeb890159e74f03c30e78d5dfdb"
      "is"
    end
    language "it" do
      sha256 "9a2daf7ef51da773b07a1111246327cc97b4cd1d0906741a3391f38b0cb299ff"
      "it"
    end
    language "ja" do
      sha256 "10461a236936de715f93a0cc20489a42d93c22302d6ce5a79d87556900bc23b9"
      "ja"
    end
    language "ka" do
      sha256 "8f4ce9ebc5678dda78441260baa1b08469430f34b154218db02702fbeb9e63f5"
      "ka"
    end
    language "kk" do
      sha256 "7bfa5b3fa4de5618eaec4b616f1796670a7ab4fa7c676b28dcc05269313edc95"
      "kk"
    end
    language "km" do
      sha256 "64c6ca232a41f150951caadb00103e04a5eb88370a2bb5b7ca5feec977c71d6c"
      "km"
    end
    language "kn" do
      sha256 "2a9ef51d34da5796784e6ba2067ea58116dbb2a3a49e476fc29cdf4aa7aaa39c"
      "kn"
    end
    language "ko" do
      sha256 "033aa5287a4892543bf08e0f9c2f281f43bb008a45fa441a49c375aeaf0790e1"
      "ko"
    end
    language "ks" do
      sha256 "2b497da8cf632aff2ab49010107be2a01b0dedcf237ababdcf3e5ff53c78e673"
      "ks"
    end
    language "lb" do
      sha256 "a8720d585b1bab4ed86d8d35e3f319d9f5616ebe7e2baedc14141eca523e199e"
      "lb"
    end
    language "lo" do
      sha256 "8e8d07b43e0c13093683a8bb92f96408974e6b44e124b2abf091a4b0c727874d"
      "lo"
    end
    language "lt" do
      sha256 "e97e6a11e97c038d25f57eb65e4ccdd9b9895b2c6f4500b52e651ad9c3414cb7"
      "lt"
    end
    language "lv" do
      sha256 "fbd0e62617ae12efe3c8054615db90f645185eb444fb6adf391713a20e60ac3c"
      "lv"
    end
    language "mk" do
      sha256 "6371cd5cec9690ed31eef7a8bdd552f5e98ab1534d285bfcbf0c848ab8a8fcff"
      "mk"
    end
    language "ml" do
      sha256 "0cf557500cf58ea8cee91d4e58f5a5f15ec83c2895181f55a96c57ca332c2be1"
      "ml"
    end
    language "mn" do
      sha256 "b94a1e3b564395976eeefce75c6d961d6ebf0e6d29eddc5d8eba6dff990de949"
      "mn"
    end
    language "mr" do
      sha256 "adddadd9a0e1a79972f4e24ae5dffe30f76e5e549335ca3c2f7dd7407820504f"
      "mr"
    end
    language "my" do
      sha256 "b380fb68127312d81af5256d58d350c143cd264a28c58417a7736251d1acd6f7"
      "my"
    end
    language "nb" do
      sha256 "e8a14915d776cae070b67677d0de504bbe9417812f00c9fb4f419448e99c80c6"
      "nb"
    end
    language "ne" do
      sha256 "ff1523f988a3c836c9601d2624ae4563f9b40ea548994d51791b053c8f90449b"
      "ne"
    end
    language "nl" do
      sha256 "b906badcced0d92d076b14a234a9d2f80380bc889250f61c6d5ac1bd739924a3"
      "nl"
    end
    language "nn" do
      sha256 "02cde3487f2c759dd71da2d1802f291fc5114cbb538f9bb38b023f8764213ae1"
      "nn"
    end
    language "nr" do
      sha256 "fad03faf5c009e1790a782d6e3071c1f115eeea021e7f452d0361d4057de413e"
      "nr"
    end
    language "oc" do
      sha256 "9117c809034939932801d1a6c24a355e182e7c61285fa4d9260d7b49cab09c55"
      "oc"
    end
    language "om" do
      sha256 "cab279ddf7fa201162d8da797c705d0aaa4fb02e5a1572e0992e7ed34db720ec"
      "om"
    end
    language "or" do
      sha256 "24eb3d98bab02db3158bcc65a3e09527d79f5c744ba74ea585c5f35c2197e8c8"
      "or"
    end
    language "pa-IN" do
      sha256 "9b51c7d7c1fc6cb8f82d7e2f3bc4de3f91b8e5ce755b2132c8055d756d94bc5b"
      "pa-IN"
    end
    language "pl" do
      sha256 "5982a932b56cab892815485cc3b2ea51bfcfbf58607daf06a125989d6a340553"
      "pl"
    end
    language "pt-BR" do
      sha256 "02eddd659bc021a5bb9a0419bf99487a148efdc88437ba0f4fb4aabd387697da"
      "pt-BR"
    end
    language "pt" do
      sha256 "185174880c4f8846b3ee6f197bc0115088d4d03f4e1f25db0677d815c44e78c0"
      "pt"
    end
    language "ro" do
      sha256 "13f6d274a464656f150b6c322d741c1344af33aeba22af8ec0d6dc06f59a314b"
      "ro"
    end
    language "ru" do
      sha256 "9947b732e4dd219e6ef9bc37968f49cabfacce153274fbad316a95bfe1a27909"
      "ru"
    end
    language "rw" do
      sha256 "8ff895ec4e4454084b8643ff332c077483d52cec38ffa07b74beac102911501f"
      "rw"
    end
    language "sa-IN" do
      sha256 "9320f36d64f5c0e679c346abbaefb3732bcbe6af6ee9155c0ee4e2f85b5f2b6c"
      "sa-IN"
    end
    language "sd" do
      sha256 "2635ec6311b92d247a987fbc4695d615dcd8efe7159ce00e634468b88e9f4942"
      "sd"
    end
    language "si" do
      sha256 "ae6db3da2d50c77014b65460461ae87b44b7f493132688291109f3034ea463dd"
      "si"
    end
    language "sk" do
      sha256 "d38696c946d62d13f83ee69ad259944e8197d9d692528baffaf23504a24614bc"
      "sk"
    end
    language "sl" do
      sha256 "205ebc4a8998772e20edd5bf4444fbdd02872ecb3ef6b4a64a6fba80a1f53ec1"
      "sl"
    end
    language "sq" do
      sha256 "9f7df1c600367e7be112b88204077b62b2cc6c599e3f9a1a3b943a7a036ec99e"
      "sq"
    end
    language "sr" do
      sha256 "ea6f1ff1d0400ed53b69974c954f9e2ad80755883bfdc0a577590ff109e1a99a"
      "sr"
    end
    language "ss" do
      sha256 "df763f5f24c838eb947f49ec8c4a9f5eca26e0f8cbcdff5e61662738568bf9f9"
      "ss"
    end
    language "st" do
      sha256 "dda244e2ef4bcb018fec742afba96e3bf303cb0a3e4e26ecfbfa4a079f63e4f7"
      "st"
    end
    language "sv" do
      sha256 "f9436e3fe9b9667120e3f4c6f724698a5bced1186b613f3df4995ab4b5e9aaa6"
      "sv"
    end
    language "sw-TZ" do
      sha256 "415d5dc16dd2691ccccb034ef90c8908266b48a93c5b420381b23b028136ff37"
      "sw-TZ"
    end
    language "ta" do
      sha256 "9e2a19a15bdeabf7737f090ea3a1ec3ffedda6493618c25b1b15795a2e99466b"
      "ta"
    end
    language "te" do
      sha256 "67bf5c4c307aa490404acb718d2adb11b24e433b9714646f32be1be89743bcb0"
      "te"
    end
    language "tg" do
      sha256 "112a419e7f1a43a35f5c30808fc442b6509098e1fd2b91c7264d23caf5b2da33"
      "tg"
    end
    language "th" do
      sha256 "3c443f628b4f788db1e97f9270ac50ed76fca0f14466804b2fa8bfd1350895f5"
      "th"
    end
    language "tn" do
      sha256 "1bc1f1f13ff6e87670d1c2b28baefc2dd4f04698110414a6fb2bf412e7ed2e83"
      "tn"
    end
    language "tr" do
      sha256 "9ad5f2d0244c5fe56915aa0bbcf7e2103d2679cc718a1110c9f7dc764345b445"
      "tr"
    end
    language "ts" do
      sha256 "c8657dbb0649e6e9b877d5d400c116d7dc5553a1d5fc569de6ce5ec5a33e95dd"
      "ts"
    end
    language "tt" do
      sha256 "0043ae6bd67f3c28b80d4735fcd39cbed86966ca65c9d986da6c03e3dd67bd3b"
      "tt"
    end
    language "ug" do
      sha256 "04235e604d1999668805904422b2a4948c1e747a3d9e1e60699a19b56a7d13fd"
      "ug"
    end
    language "uk" do
      sha256 "678658f8589aa02bee5112eaa279a22eba61ae336636cd3e5f6a269ad0bdb6bc"
      "uk"
    end
    language "uz" do
      sha256 "ad40b7769c5200988c5c219332967a755d7c83101100bd01c10cae1abe99d444"
      "uz"
    end
    language "ve" do
      sha256 "cc7d534923de834ffe883d44f565ea0ab18681a1107fbc04dbd231ce17b4e12f"
      "ve"
    end
    language "vi" do
      sha256 "825ab9405bfe1ad51b033e894d83426793ba08a30b904a7cdac0b7d4940cc7fc"
      "vi"
    end
    language "xh" do
      sha256 "71989ba3a096ca64524a998cb6b36ee9222b0a3c0ee3e8854c26f6736dc00a66"
      "xh"
    end
    language "zh-CN" do
      sha256 "61437333561e27292c49b373f8619a417c7f9446e8ba9dcd7e16311cba8c8e95"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "09cf83213957cf983979e712a95e22e0010b4e0ed4bede19bedece02cc02815c"
      "zh-TW"
    end
    language "zu" do
      sha256 "db000d316323d41ec7dda76dc053062ce4943e7f9e3f84003336a738e20dacfa"
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
