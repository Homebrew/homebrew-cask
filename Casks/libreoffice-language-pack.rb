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
      sha256 "da4124251d870fd7a685acae1a80cf5deed8720e4c3caa7d5a16f0fe83ddfd93"
      "af"
    end
    language "am" do
      sha256 "8464d3b2ff7d1e7ffe82539b1db62de633bb1527b3cd318a2f88f416165685b1"
      "am"
    end
    language "ar" do
      sha256 "c0f911b48f4fdfece360a6e92924f5a2eb5401065c053ad977f18f89336dbbee"
      "ar"
    end
    language "as" do
      sha256 "1fdfae67741f8fd06df3700890046127e1301f5a18c21857f04e9e2b6c428c28"
      "as"
    end
    language "be" do
      sha256 "b8cc0f79183c5a5775ed7ba520f00f2631e6a39c6ba6d1b7158b499c75abe1ff"
      "be"
    end
    language "bg" do
      sha256 "e21b940748c6205779cdf2476a04a2f07aa03af5df86dac3c89e747f8e24658f"
      "bg"
    end
    language "bn-IN" do
      sha256 "96877fc627b68684e257af0ccf27a58e72f049acf4e2a9dd3868bbb86379939e"
      "bn-IN"
    end
    language "bn" do
      sha256 "ed011d2bff11dc5c18af57550bdf2ec957b20ee37418c47b2b0fa28f8053b28f"
      "bn"
    end
    language "bo" do
      sha256 "ca66a87e7eab2d60b38833f0e421637acbca6a1d2634c38032015c493fe40369"
      "bo"
    end
    language "br" do
      sha256 "ffa1d3f93f8b62a62ce0ae9376aa84e79019eef79c4c6b85be4861ffb6d72537"
      "br"
    end
    language "bs" do
      sha256 "722db39345567e2adc519d884af1452b605735b48cbe73e69673847d5005de71"
      "bs"
    end
    language "ca" do
      sha256 "3a9621983eeb0589730208d3e5e02ad5e3dd3dc4840a2140007ac604cafe6c5e"
      "ca"
    end
    language "cs" do
      sha256 "3ab7b5e5a4c2bb4901140daec034b70db444830683eda2a0336a375ed0d16ea8"
      "cs"
    end
    language "cy" do
      sha256 "2ef0786def2ae41e7e2f739c79bff7e8dfe1cc459204627fa3eac61e71ad8843"
      "cy"
    end
    language "da" do
      sha256 "7216b0106019f6eae3cf0ffecc6992a36782847f4f5b7deafcc125fd2b5c6cfc"
      "da"
    end
    language "de" do
      sha256 "f6796c52044e8f78c27ef876655e863ed08011c2607e9e0a701f7443e4da0133"
      "de"
    end
    language "dz" do
      sha256 "926ae3e1e08f83fdee4d222ee2b9f47e5f9aa235ae6810ec3b846f705e01b277"
      "dz"
    end
    language "el" do
      sha256 "3cd04bac63b56770d3de4840340a7a1bbf0969185b21d47379e9894ee2a7999b"
      "el"
    end
    language "en-GB", default: true do
      sha256 "69620c25b69289b3c22e6d1489eeda562a05aab8a4606d2d70b16ef1edcc05cd"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "e139f0d3c7542370602c5de097fc8e153f407e38f018333c57ef0c9b56ffe2fe"
      "en-ZA"
    end
    language "eo" do
      sha256 "ca970ea48a37320fa4aa6b6418afae6bd1d57c74d8321051196ec2889dacf4b3"
      "eo"
    end
    language "es" do
      sha256 "551e6e5cc19b8b8ab0e1c79fc7caa5f0f1316ec1a87f88c3ce22a2df3a41fd80"
      "es"
    end
    language "et" do
      sha256 "11cd0a98097238f5ec634f7bfde44e0d58ea37d0adf4add65a2efcd8be357e67"
      "et"
    end
    language "eu" do
      sha256 "a383027d9fafcb6425a8cf2bbb280914085f4daa556a14a292c20cafe088d28a"
      "eu"
    end
    language "fa" do
      sha256 "121fc6efe0474b3e9ed5115fad28c79bbb029141cf5141808fc2d0ee4a4d6d6e"
      "fa"
    end
    language "fi" do
      sha256 "3b4c1cf3247ccbb2382ac84101fe17ffad2f93f063a3a88c439c543b2dfed898"
      "fi"
    end
    language "fr" do
      sha256 "cd32a24c7cdc695df59feb930a7db582cd25d9304f383f5b75a02871e15baa17"
      "fr"
    end
    language "fy" do
      sha256 "339e415aa380039615986d19cf9f260482b09594a0d86511413433d57432baeb"
      "fy"
    end
    language "ga" do
      sha256 "1658ba1c6326e67a0ea797bf428f73615a49ddd49cafbc285b6261a926550acd"
      "ga"
    end
    language "gd" do
      sha256 "a01647ae165ea3da406c424f7351024cf565e9e286f7365717c844f1ac14b420"
      "gd"
    end
    language "gl" do
      sha256 "562a691131d3133c191a9b8e1ae2f842bb195aba6564b1202cf50dd4be9f59a3"
      "gl"
    end
    language "gu" do
      sha256 "1d5368136514b5b7600f5ef1200ca874ebae65d9a160f2f8bfb2991b2ff4a207"
      "gu"
    end
    language "he" do
      sha256 "ebba071743b632e2ed444f264a348a5c6679baf05f2f3a31367db5a08c184f00"
      "he"
    end
    language "hi" do
      sha256 "f6e1c0c8929f6c03eaba6881021cf827e597093048f39526e70d83dd9fdd0c4c"
      "hi"
    end
    language "hr" do
      sha256 "90c233ea542850a8294e4bf02ccb363753534e185b65b44efea3572e54668209"
      "hr"
    end
    language "hu" do
      sha256 "1803390ecd7646fcacfb1188af90a2d6a1901a13d507addb186c5b66240e35ec"
      "hu"
    end
    language "id" do
      sha256 "db817d950a30c569b01ade3dd12a0dad7621c89ddd436783bfbf8c9be91c8e70"
      "id"
    end
    language "is" do
      sha256 "36a8ed14851af08dbd5aa60136ca7139f96e69793a4647672c4dce4a36b7adf8"
      "is"
    end
    language "it" do
      sha256 "2bfda47bed0dd4deac9f88aa0b4604f6ca889855678aa9697158a8ffb8a3495d"
      "it"
    end
    language "ja" do
      sha256 "ce5491daa91d335fb053165c7b70decc0768aae1699d3306ada09738108985e3"
      "ja"
    end
    language "ka" do
      sha256 "ba29f81f72a3380887e5e6827c0331f2bf6b361c158f365058acc2be04fda179"
      "ka"
    end
    language "kk" do
      sha256 "caff3474b40ca9a240f1ee64eadf57fabb2c6dc67fb6989a3249d970c58a37ff"
      "kk"
    end
    language "km" do
      sha256 "9ce779a154f25eb9a80e394305cb17b0989f92bc57accbca4bb8af3c5ceaf780"
      "km"
    end
    language "kn" do
      sha256 "c1328ee879f9471024c72f4be23e79fab2feb3ca41ea4d395bc4fc548adc9ed0"
      "kn"
    end
    language "ko" do
      sha256 "c587e81728da10970c9b7c7147ac3fb7debb48e5d51f8c73d15d135d33c98fe8"
      "ko"
    end
    language "ks" do
      sha256 "48e12e3863d8f4fe5973de612c3f8ed51b63d597a7238d77d07ca9c283c02fda"
      "ks"
    end
    language "lb" do
      sha256 "25d0c1e1e99a9455b3f659b4f1835da91df948855743b49fc6909ba758730f36"
      "lb"
    end
    language "lo" do
      sha256 "e1152b661a57eb8fdb57bebf0794e351188aa4255b345b16a7ac14bf683f0195"
      "lo"
    end
    language "lt" do
      sha256 "2d79e08b72621038aaac1950bcb48736beb145f52e8245c953c5210498bc9e7f"
      "lt"
    end
    language "lv" do
      sha256 "cafd048a1a2f74fbcf1fb321e8680b1f4abd209bd4c48f77ae81a765f2d4f8bb"
      "lv"
    end
    language "mk" do
      sha256 "aeda1090a433d3fc1ae06768dea828718b5629497eea647c7590ba55c27dc3b7"
      "mk"
    end
    language "ml" do
      sha256 "ea82cb4e8be79f2b699dc26f9c14f857cd62d4ca38ec55fe26c6957899014cff"
      "ml"
    end
    language "mn" do
      sha256 "06d7caebc272af2672ff5dec744d1b284b93b52e2f9cdf517e440964674f548f"
      "mn"
    end
    language "mr" do
      sha256 "e657809f4c28c993f0003ca71e4e3e872593dc89a6875a4471a8cf8cba846407"
      "mr"
    end
    language "my" do
      sha256 "14d3120998e920e93600ae10c9993ca1deeb7579de29d6935975f7b6f058f2b7"
      "my"
    end
    language "nb" do
      sha256 "a2af515f952c618c79fa048754301de329c4356924c7f81d85609f8371300f46"
      "nb"
    end
    language "ne" do
      sha256 "d815c961c6136eeea058dcb30e35f2139131a03f921b08ca2192ee5763436f89"
      "ne"
    end
    language "nl" do
      sha256 "3fa2fa6af62b9ed3610c0452a89de8d98589ed2697281ea2f15b2484676ed18e"
      "nl"
    end
    language "nn" do
      sha256 "0e5ad22c4e5edbbd3e2575d234bcf63183880173429ce0e5ae8bd1e45b5c9571"
      "nn"
    end
    language "nr" do
      sha256 "43f221e36d55ff06e75ab0ae98dc023b5cb5a90b036094f6d65600e831408b4f"
      "nr"
    end
    language "oc" do
      sha256 "125c2556922920483ca07a5dcea3249f550ba708b43a2b38ccd28ec172b50286"
      "oc"
    end
    language "om" do
      sha256 "811575541ee3f2c46a4eb25d15a6bde56a00522660ca4aeb8a9df58d4e7404f9"
      "om"
    end
    language "or" do
      sha256 "7758da67d318bcc9f3463a247c960b83acf0b7012dc0d756398420c75d7cb519"
      "or"
    end
    language "pa-IN" do
      sha256 "0e822275df281f341838a57f23189911d8cde13a86cef8b529d079a6c2451d76"
      "pa-IN"
    end
    language "pl" do
      sha256 "a4e510a8e926648587d5c3a84101555d9a138cffdcdd320aa336bc52305995c6"
      "pl"
    end
    language "pt-BR" do
      sha256 "b01a8d27dd79d2bfebed4ef8d276f6a85c152bd8022d24cad31d3c5dd0f71aab"
      "pt-BR"
    end
    language "pt" do
      sha256 "6846226376193c59d00c21ddac85bc0e6ec1f01b681f1888382de5fe6e98a0e2"
      "pt"
    end
    language "ro" do
      sha256 "6652f356a4a642104e9a5b1914e14c87c9bfaf01eae0f08a90d9d3a7e6b7e276"
      "ro"
    end
    language "ru" do
      sha256 "7e26c47da0657a94eccc02a012900ab1606cd754d3bf7e6f2f61e625e30f37cf"
      "ru"
    end
    language "rw" do
      sha256 "992bfd1fd8072aeee38e604738090a2ec666c55d730444adcfa053611cc91852"
      "rw"
    end
    language "sa-IN" do
      sha256 "49b854ceab62a1a741417088f47f56738cf871257389e1cf7f33fbe6fc302b44"
      "sa-IN"
    end
    language "sd" do
      sha256 "579961e76ef3681a06273491bbfa825b4a5c5bc148d3871b08d86bd0d9d3e2f1"
      "sd"
    end
    language "si" do
      sha256 "3f69cd885fef340a1bb8edf2faa154a429060d2c2f951b9ca7e20974d59aa68f"
      "si"
    end
    language "sk" do
      sha256 "181ad52f0c8c9714dc3253540dc0a010a5ee794de35a2defd4e42ac7567959c3"
      "sk"
    end
    language "sl" do
      sha256 "36b0cab1b04e4aea954297b4ddbe9c3c5f730f5a4bfe8002b9760a5de72d1764"
      "sl"
    end
    language "sq" do
      sha256 "69b0809555b1deb389dd66d52db7de83991c5322a68464408388c70c9b886ccb"
      "sq"
    end
    language "sr" do
      sha256 "dacf2f3f462f4e4024db73316236c0860ebdd6f0b33bfe570a17dedc7cb484f1"
      "sr"
    end
    language "ss" do
      sha256 "8075cb9fb9d30d1d951ad7fc2076db2794e2ce9f2efbb573d0ac0cc9c5b205d8"
      "ss"
    end
    language "st" do
      sha256 "04e8549bfb5550a648977dc9abd2d2ed85947463a3e90c87686edd88b8688d73"
      "st"
    end
    language "sv" do
      sha256 "abcb7952540076237118282340f2763461db58226ab83821433be85f72822547"
      "sv"
    end
    language "sw-TZ" do
      sha256 "956049b29ddef9c590e9458c38e4bd62531ef620f9a48e96813c60f194630559"
      "sw-TZ"
    end
    language "ta" do
      sha256 "616a6df69a3709d7acdc8ecc9593da460d5aca9214adf9b7caab8daea177acc7"
      "ta"
    end
    language "te" do
      sha256 "c53670597177728bf3049c2d46f74d9240333182a6393d2789524dae55051992"
      "te"
    end
    language "tg" do
      sha256 "1828b65227d1e679dd38e13fe20337595ff3972837269db6a7c3fe60308223eb"
      "tg"
    end
    language "th" do
      sha256 "420bee12d93968804c9e8d98376f321f720a0a75b130ebe2c33e111f0fd2ac88"
      "th"
    end
    language "tn" do
      sha256 "d155863a75a33bbcb722a7580a07a4f3252fcc47a0ca99dd36dd75084400b833"
      "tn"
    end
    language "tr" do
      sha256 "5fb48fc6690dbcaa0246e9142fbcff64eba507f310bc3eb64e19a948f96769c0"
      "tr"
    end
    language "ts" do
      sha256 "9b1a35569faaa8af74eaae6466e4c375d56238bd86fc7c657510abd3675b0eeb"
      "ts"
    end
    language "tt" do
      sha256 "85bbb4807fb297ae71cda37281cb8e9d513a2767ecc81305eea6c82868c00a83"
      "tt"
    end
    language "ug" do
      sha256 "377bc391383b26df53c1cd0750d9d7ffb9a1d2d5193694b009990c4fc01e8919"
      "ug"
    end
    language "uk" do
      sha256 "8eb92fa4bdfd8422e25821386cfc019e3b2adef51e4ee58c190cf1678d8e625b"
      "uk"
    end
    language "uz" do
      sha256 "69342d096348bd1b16cb9b420c351b965b5cb287c463b3bf57189df451882478"
      "uz"
    end
    language "ve" do
      sha256 "e908195f20fa7db4538f6c2946d5a85109506c78064f1b3767c99e0f9c96b16e"
      "ve"
    end
    language "vi" do
      sha256 "00211dc1442c1940249f428cb980de70cd5bc32caac5b89dcb125ad2834929a9"
      "vi"
    end
    language "xh" do
      sha256 "233a6352e64c99d9982803ac20080d94d5b46e7d58f82f249cc9728e849938cc"
      "xh"
    end
    language "zh-CN" do
      sha256 "155b96c4a1ba0af040e91c335fbacb47fa46703e54485574d9fbca843dcf1e8e"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "a1997bf77c9dd008e88a265de156afe579671f6634003b5e8a44e525adf53a12"
      "zh-TW"
    end
    language "zu" do
      sha256 "0df58e9937188a7dc674a5aa009e5e1bdd2835c6ffa26a3610c34a1a40eca41d"
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
