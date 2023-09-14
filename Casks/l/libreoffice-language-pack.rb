cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.6.1"

  on_arm do
    language "af" do
      sha256 "146bd51c1b3c6827180a4be571ff1ecae356c25f225057f7c60f736825d062d6"
      "af"
    end
    language "am" do
      sha256 "8df21c07203b6143636ff8872f35899e3e5d9bdef566b81ef7d289d9b80bee0a"
      "am"
    end
    language "ar" do
      sha256 "1e55f72da4903b1882338b06a4537acaa8713f1fbcb2d466739adc6667bbf54c"
      "ar"
    end
    language "as" do
      sha256 "dc619ca5702e7b2a1c5fadf0c0dbd19d72d3b9d2ae37d5508775f64198b3f361"
      "as"
    end
    language "be" do
      sha256 "fe4d6691d896a776e1455dd498e51319c79e33becac7a2ed9efcd4a8fb2d37cd"
      "be"
    end
    language "bg" do
      sha256 "1ad4785de8f415fc4ca60fcff30141ef5640f5f125e8a92b133b5dbc172ec983"
      "bg"
    end
    language "bn-IN" do
      sha256 "c47940dd95f11d2646cb822afc187c61f40ba35de76a0c3ea3ecf4d5afac66d5"
      "bn-IN"
    end
    language "bn" do
      sha256 "30aadf15706acadc37add4f68fb75f2d8a032f471b794fe50aaf05b855459f53"
      "bn"
    end
    language "bo" do
      sha256 "010f32706050068add88d954698fed02a20520eb2d7d4c47ccfc1270a3287749"
      "bo"
    end
    language "br" do
      sha256 "cc745d165cd66ab62be2535988904743f805294c74d83f5b379070a56c71cbb8"
      "br"
    end
    language "bs" do
      sha256 "78feb4beb1d79e59cfd3d5293fd295b22a1d0ef6d76f17371a9930e7794a831d"
      "bs"
    end
    language "ca" do
      sha256 "220cbbe1066611c5372bb79d0ef56d4ff3d4987a4ac9062fa0a00d92d08fc806"
      "ca"
    end
    language "cs" do
      sha256 "606770d1eb011e865172b6d32dcf19fff7046a4765156f4c13a451f6b6b7cef7"
      "cs"
    end
    language "cy" do
      sha256 "b865b79d4cf2651e649bd720775c2bab6438df63cb12a60f1d8ab89ee03f7daa"
      "cy"
    end
    language "da" do
      sha256 "90ea872885111866c2327abe7ce0a003fb90aecc344c6a79fcbccacc75192e66"
      "da"
    end
    language "de" do
      sha256 "dfc5d1d03851c882dd22929ed671c5d4d532dc4827a0d81c9402e26c92c07d14"
      "de"
    end
    language "dz" do
      sha256 "f479076c4cd513d3fc8b8d73e724fd6f673d32a9bc21a288df93e10162ac8366"
      "dz"
    end
    language "el" do
      sha256 "5f195166742a4feb61f4043e92295632ac467442e6d8b56d7693d478d76a0fbe"
      "el"
    end
    language "en-GB", default: true do
      sha256 "e5c6106d0f749d18eb345808a14af55165584e5e07b5f0b6dc0b29108856946e"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "b57611610afe633b1dc023f1fd080150198698fe563ae0cc6ee97e7a51f5ba03"
      "en-ZA"
    end
    language "eo" do
      sha256 "9fdcb005176d7493f52f97434cdd761ca33abe638b828e3d7e66999e241cf464"
      "eo"
    end
    language "es" do
      sha256 "41cbdc0cedc953ef99ab1b9b90f6a4212180df87b035399f326e677b83a02834"
      "es"
    end
    language "et" do
      sha256 "1e6dfa0f9705b1f7a85e1a0dbedbddf519fec2c563ea5f0966656576d1c444d2"
      "et"
    end
    language "eu" do
      sha256 "6a9a0ddd8a0caabe13a92c8c548db0e46f2a243c137ced3d91279902ec715e37"
      "eu"
    end
    language "fa" do
      sha256 "a60e8582d392562620d4bac71f9ad68a9f584ce3db25f86864e834c5f4ab1f06"
      "fa"
    end
    language "fi" do
      sha256 "878d647b5767754b97e63674c677a71ebd31d063ef0ffa36cba95e026083c7c9"
      "fi"
    end
    language "fr" do
      sha256 "cc43ae391dac4d082b7f29185a236ca7915b788c7f46bb6dae853e5850ac3c4c"
      "fr"
    end
    language "fy" do
      sha256 "479adf4a7f1af449326c021c2f2315365e4985da873c563917da94f4700b6e3f"
      "fy"
    end
    language "ga" do
      sha256 "80ab15a2051114d46186300c94c72b7394406eda40bebacc16e638a537a5d4aa"
      "ga"
    end
    language "gd" do
      sha256 "aaa78a5227ebed365229d78301bcb761384959e9aa3469c092f3a160e1c79fd0"
      "gd"
    end
    language "gl" do
      sha256 "33a157448a1e609d03e20dbfdf4069fde53faea400adf9ba3c0c1f4edf45c15e"
      "gl"
    end
    language "gu" do
      sha256 "9f028af9d2c16341f1ca12c9587f3613f316bc4b0113959fbd3e6c44e07f14ae"
      "gu"
    end
    language "he" do
      sha256 "a108d121b3253cdfe07f0a40c24d8bf603b13558bd2c0420ecf17eb69edf5588"
      "he"
    end
    language "hi" do
      sha256 "27dab87ec399fc51224a92ca27275115cb597aef2f8128cac5455cb6c314d6e6"
      "hi"
    end
    language "hr" do
      sha256 "713aa46a5033867273a4b3ea7261002c8af8408637124b57901e174062f96b26"
      "hr"
    end
    language "hu" do
      sha256 "ddedfee61f61fd66afe54978154b53f73aef57e0d531da2ffc43883a9918f2d5"
      "hu"
    end
    language "id" do
      sha256 "a6c8cbeb328d2ffbfd002e8a7ba03121f35ff784637c3d12c5d0fe8b9e77310d"
      "id"
    end
    language "is" do
      sha256 "6a00a025e5b40518ae173bee0c80751814bee6cf236945fe1122c7bbaa8758c8"
      "is"
    end
    language "it" do
      sha256 "c4162d1ee7caed100c77de62e585eb3fac91069a717735ecb9fa52f7f7d3e7e7"
      "it"
    end
    language "ja" do
      sha256 "12db08de44738c651f999321523009318de1920e450cda571165ef119fdd40b5"
      "ja"
    end
    language "ka" do
      sha256 "3fd305e0134c3125cba29ca39cb08bae5ffda78945659f088b21bb3fcc27b466"
      "ka"
    end
    language "kk" do
      sha256 "68ddbd3af0e3e299e8ef0b5513acca5a7727d7f762102246cc1af543d110e161"
      "kk"
    end
    language "km" do
      sha256 "e849affad6f8a1e951f08e4bb463be78f93561ef5dcc3ac7a8093421e8824b94"
      "km"
    end
    language "kn" do
      sha256 "dd02f6474a01997bde2a3abb11b505424340095034b20c5d98b490d7b23259c1"
      "kn"
    end
    language "ko" do
      sha256 "5f36b4b60e3503fedae536c46e771049ca1014559f85b736534a47dc9bd0da54"
      "ko"
    end
    language "ks" do
      sha256 "4c9d79afba8c68e3f95458ccba55d0fbbb7baf49e18cea34e1c746e41a6836a4"
      "ks"
    end
    language "lb" do
      sha256 "be38bff1bf1ec2dac7b76e60292f6bc3de1a46c6214dfe26a29826a4f77510cc"
      "lb"
    end
    language "lo" do
      sha256 "4f7ec5f3558605e6e87cbeb6a15ac15146d1a32bd054eb3dc49b3bac18cd7173"
      "lo"
    end
    language "lt" do
      sha256 "83cc6737168eec6955cda16a1667a242bcad42dfe7d419f54a2398d26d8fbeee"
      "lt"
    end
    language "lv" do
      sha256 "6caee1c2c36d2c1242b168109a6cf3f54c4ef456f3f553a31d4de5b825e00db4"
      "lv"
    end
    language "mk" do
      sha256 "acafbd595cb191a69b5c933d531343e944fb261ad209fa26c247cc0ca7cbf1cb"
      "mk"
    end
    language "ml" do
      sha256 "3ffcb68f7940bae504d838c13940c75c386462962e55f1b0762b1dcc0726cb8b"
      "ml"
    end
    language "mn" do
      sha256 "6379f2771f6b53acf8c2e09d703a4d408ef9fc0a8b58fdeaefef17d35d5ba23a"
      "mn"
    end
    language "mr" do
      sha256 "6d4cccfbe91b1f32136a66f7f3034195de9cc66421c9e2b7c417798d6beb6fca"
      "mr"
    end
    language "my" do
      sha256 "101d634aa09a568edb300b7bb2d2dc7067857b5d3d147ac7eea9424ecf7967f9"
      "my"
    end
    language "nb" do
      sha256 "7130c08a2374b0aadd8779611a5ef373246a55c4612c0575b891f9bf0a6f1895"
      "nb"
    end
    language "ne" do
      sha256 "1c3b55aea2a60e053ef21e0c075c0b7794c09da91801126aa436fbf3a60febc3"
      "ne"
    end
    language "nl" do
      sha256 "d4214db3ba937175a7e2b22cd2390f11e08aee3eceaa6a2d68bcf4b0cf3774dd"
      "nl"
    end
    language "nn" do
      sha256 "508a23f4e565af6e6cc2605bfeb82ee3df55c39275e12f7a477b98dbef3e10ea"
      "nn"
    end
    language "nr" do
      sha256 "0d116ea49974e9f79638cff425bb9546d29039467d90596cd75d73dd38f3db82"
      "nr"
    end
    language "oc" do
      sha256 "d9bf956282494fc1877f6be111d4466355a3c82a4cea26b08ec8f980cfa0052b"
      "oc"
    end
    language "om" do
      sha256 "67672e6fbb9e99b7880d267971b77c6d78afe1f7faf5d47ac8529b1a4edb7820"
      "om"
    end
    language "or" do
      sha256 "cb3d705ad72b961679df13e7de6d006c85f61abac92f5a3995116803399a8c3d"
      "or"
    end
    language "pa-IN" do
      sha256 "e3598ec3d448462be5396f4b0b2ef0ccd77393ffba208b9e614bdde70cd65aa3"
      "pa-IN"
    end
    language "pl" do
      sha256 "2a28739830fa2491d38816a2a1178935656ec578e826c8b58151f90a1714ea56"
      "pl"
    end
    language "pt-BR" do
      sha256 "2e2a2316cb59aa5f34a55fddae19ffdbd0525b4919d8e96b29b58e6646a20c98"
      "pt-BR"
    end
    language "pt" do
      sha256 "ac810400cbf56e714cd7cba737b7dfc5d166f90cae98931fb1d9714b56cffa84"
      "pt"
    end
    language "ro" do
      sha256 "54be837d53ca63fee3d8e9ca46501e53774e3467fa2e3df05dab99f83c128ac6"
      "ro"
    end
    language "ru" do
      sha256 "206042d3c35d1bb75cf18d4724284d2892880b1bc2237bf751febf3efd8478c6"
      "ru"
    end
    language "rw" do
      sha256 "0e81f80d107e0a2597e6afe117464096f25d6e6ac7b4f726c3137e0cd02d93af"
      "rw"
    end
    language "sa-IN" do
      sha256 "c7766280a4640382ae6ac2e70e1f8185967fa63baba91d65809fa256fbd6f0cd"
      "sa-IN"
    end
    language "sd" do
      sha256 "584d0499a3777fcf32220af6cee4fd1d2d0530fd45c7b84bf9c1eea2a5f2cfd2"
      "sd"
    end
    language "si" do
      sha256 "586867905acef166dbedc56a4011a449ece482c30205ff4a54310c05bc258b8c"
      "si"
    end
    language "sk" do
      sha256 "a197d32329253052c8f3c43738af4a60bd0723fa10f8826c69ce106e6bc3b78e"
      "sk"
    end
    language "sl" do
      sha256 "30ff347c2acf546cc26fb8609af07d117d9ee33db193f849af06ab5256e2b473"
      "sl"
    end
    language "sq" do
      sha256 "ad83557fe5b453c78900969338c76993ff4c3b4e0ae85ae161595dbde3d5a882"
      "sq"
    end
    language "sr" do
      sha256 "c0e51415d04c6b0850e1ef41ded5fc1dff3c1f21859105f559bc384e0f410308"
      "sr"
    end
    language "ss" do
      sha256 "3ee2e5fa151e07381cc1c76a708a1d917e044a089de132227f2104bd968797ae"
      "ss"
    end
    language "st" do
      sha256 "cc52fc6ef2242483ea2c1525d168cbb374eda0bc280cd79ec90edc95b49df97a"
      "st"
    end
    language "sv" do
      sha256 "4566efeb732641fb495656c5047827ffa188fabf79d23410807d01cb38326f83"
      "sv"
    end
    language "sw-TZ" do
      sha256 "decc1b736df606544c3966167df23fe58e9e12a9b69d9c61894c5a19d5861d5c"
      "sw-TZ"
    end
    language "ta" do
      sha256 "e31ff5626f71cdacaf4e044a471a3cdfc8689d5b9425f8ce7d5a8f8263af6ed0"
      "ta"
    end
    language "te" do
      sha256 "cba5a33198717fd85da1debd653f27271b57f346601b0ee35dddec3d388f4a32"
      "te"
    end
    language "tg" do
      sha256 "febb1f8466704c0e1a2f5334f828473e1142cd0f4e46d3dd5b50cc9d89e4f183"
      "tg"
    end
    language "th" do
      sha256 "0c087b1e29654606c76d95803626acf711b8551650647eabdb4967cc3f693962"
      "th"
    end
    language "tn" do
      sha256 "91aa2ea7c7a6f112192fd4932f5cfa461c30d26e1f4f6ab1a0c04eab1a145aa4"
      "tn"
    end
    language "tr" do
      sha256 "e339e8c14ce35d196694cef452dde7f430692c4523ccbd525bf81e5801234b38"
      "tr"
    end
    language "ts" do
      sha256 "344760f11c07b0905f67c2cd7d50acd9780c3e82e01a48c81251f03ea4853e8a"
      "ts"
    end
    language "tt" do
      sha256 "8fa890bf502086abd8fe56bd8c9ae5a295149377a8e7abc84aee58f1ecdcd45c"
      "tt"
    end
    language "ug" do
      sha256 "542e63a6bbaad76ca4e4bb804236e38c8627d53be6b809d4452c26b8be44a91d"
      "ug"
    end
    language "uk" do
      sha256 "17282f3a4ecfaa1d63fd4e8ac106b65a7b2eccf2da4bcf8f780425fe364981f7"
      "uk"
    end
    language "uz" do
      sha256 "d68ac5d97b97466f722dc35030614348a97b54cc675af289e1bbe9ee1dd6038f"
      "uz"
    end
    language "ve" do
      sha256 "6e230e3c50d3d2213361ca41631f564a68086f49cf141263e3c0a724798e9e92"
      "ve"
    end
    language "vi" do
      sha256 "5841a24ec5f8f4a1a8645eb67eef5a4d2a6df90aa78f0fa078f50ff85a43c180"
      "vi"
    end
    language "xh" do
      sha256 "e0070d31abbdf6ab56d1b5a86045a275b410bf989ffc1a81302856deffba8d86"
      "xh"
    end
    language "zh-CN" do
      sha256 "a37ade071936b9307fe172cc9a59e273f8a69c38f467f29c4c37acf3ccf30775"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "81c2b83741e7bac953cbe50f391641d948b0918bae4e76b354632ca5b195f8f9"
      "zh-TW"
    end
    language "zu" do
      sha256 "89bcad333044790797993618eafe07c7c99573f081571e09b9167f5c3b61350e"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "bc78279f4fc1b95278244662bd32c4f3634c8422cb5b3f67498d10de40f7095d"
      "af"
    end
    language "am" do
      sha256 "615b314a0519362a54bc4d3aaca432d72fee12f0fcc64e9af3b1b1adc67d10f2"
      "am"
    end
    language "ar" do
      sha256 "a13ef6e91496f8523d97a33d61ec78f631be73dbe596d34ce12c56fe01f8c7ce"
      "ar"
    end
    language "as" do
      sha256 "aad6a0acbad4e95145f98ee4ae5fdaa83b34e3af5620fe175852d79334e8c20d"
      "as"
    end
    language "be" do
      sha256 "991c9676aa3378243c9fd10d8829cc97ccf60cf66f3ec0cac1a12a4abc2a7bf9"
      "be"
    end
    language "bg" do
      sha256 "31a024a74d7bbe2b97067a8d39ced16de11d3d534e33944b4cddc54a8b00704c"
      "bg"
    end
    language "bn-IN" do
      sha256 "ed201c017f55739395cd3cb4ed20504dc20b2c399c4c3450bb8f63d39777c76f"
      "bn-IN"
    end
    language "bn" do
      sha256 "eeb4208378f8ea43e95d8eb586a7d2465e2daf2a934f6e0b85c9bd0fe493e6e6"
      "bn"
    end
    language "bo" do
      sha256 "779f5ad26d4afac9c3d3412389e3d49fb518df7a30b6e690fc3c28b5ef9cbc5f"
      "bo"
    end
    language "br" do
      sha256 "bb3d0745ae5fb66ca26433b5a145077278343f36d6ddb2257f6f9d508d1963e7"
      "br"
    end
    language "bs" do
      sha256 "ede1bcc66dc75fa609f7eac7f100eba7dafeeeff988f598effe160fd2b515c56"
      "bs"
    end
    language "ca" do
      sha256 "e8f8b19b95ee6f9f5fceaa2621156cde86c98f1d7e3bfcbc26bd8271139dd0e6"
      "ca"
    end
    language "cs" do
      sha256 "edd46a4cea4e86489bd92a8b69d5a1cd355ad563bdd80ad9c949aaff20502584"
      "cs"
    end
    language "cy" do
      sha256 "89977e8b92edcd92e6cf5224d873ce0636782593f2d696a6995e5abc3462f606"
      "cy"
    end
    language "da" do
      sha256 "4d1a2f57510ed5b15c6d918071815fde1712aac0811041770b5894d2a35acba6"
      "da"
    end
    language "de" do
      sha256 "378c39ebdec6a590fa942323c503145e41e3f8ae95a84ae886bf4f8b55ad7d9e"
      "de"
    end
    language "dz" do
      sha256 "a9446f99f57c38293e5bd9106cf906424c17a6b71b094490ec4a7ab0d567633f"
      "dz"
    end
    language "el" do
      sha256 "67d4927ba5611fe4e1fb1fb43fd468d45c52ee419411ff0fb32699c93b3b2b50"
      "el"
    end
    language "en-GB", default: true do
      sha256 "b421a188004fff220fdd8d4b28789a46d58b6d581d02405d8a3f72e93fcf852d"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "8738046090e6085c51bb8bc0f74d18f834c7c997fb96ceff6529edfd9a4b7bca"
      "en-ZA"
    end
    language "eo" do
      sha256 "5cf7a89358ab08fd7b4bc6b17d81cc6b3d9424bc70ba77fe145256d367d501f1"
      "eo"
    end
    language "es" do
      sha256 "ad47578555f1331b281eb9607aa0c73d676abd71670140b92dcd623568a37b2d"
      "es"
    end
    language "et" do
      sha256 "e4a8d9ced63dbec8789e0c5176c8fe10442f86f30e818c48849b978025ca3014"
      "et"
    end
    language "eu" do
      sha256 "e89989f6e8fde316ceae43185a43eacb2aab4fb040487e38b90fff036638d9df"
      "eu"
    end
    language "fa" do
      sha256 "35e433052b69db8ed5fae511f0066ccac90ecb1d35ba7d61912b2df83611bb17"
      "fa"
    end
    language "fi" do
      sha256 "1de1cae47b959042e95d8995d54e2e2b281f4c976213d1d0c5c6d03cd13de29c"
      "fi"
    end
    language "fr" do
      sha256 "6961c29f77f22d93a7466ef155e3cb5c3adcc05329ad0ba4e6ac3040aa8135c1"
      "fr"
    end
    language "fy" do
      sha256 "f8ea3e93a4366f5231f7a0d500b2ca8c6d2ba7cb6b14dc00ccce54e256ac8519"
      "fy"
    end
    language "ga" do
      sha256 "ae5442f8f7ed6cc651c86cbeb2df9d660c38747c44a97b2f86c31415c3e901a1"
      "ga"
    end
    language "gd" do
      sha256 "292bb873299c8046600acdfac4c83b17d32343b32e7a074d8f2a888ddd98fdbb"
      "gd"
    end
    language "gl" do
      sha256 "3ed4bab2c41dd3efe3ee0e462ade357e1933abe0e6e2ec762c4fa7b1a1fab0bd"
      "gl"
    end
    language "gu" do
      sha256 "184075a31096142ad1ebd37833c52556669069f83223d8383a7952632a26b3cd"
      "gu"
    end
    language "he" do
      sha256 "d0b1c6545ae05235333ccb1680bb25ac81bcf36f505bcad6de488cb5bfdb95ce"
      "he"
    end
    language "hi" do
      sha256 "8b1895e81a4fc76c41348a7e897e2259c214a18042d73082fdc4caa4d103205b"
      "hi"
    end
    language "hr" do
      sha256 "c59ea40ef2fcbe1e643cf7c2f6b98c42f921c3f51cf2178dd1afd20f9ee4c4a6"
      "hr"
    end
    language "hu" do
      sha256 "484c8d7f458728840c074c2c22dcd7c29930cf759ff50979b3e98f05ad631a70"
      "hu"
    end
    language "id" do
      sha256 "0f89de3b52a8badde0eeafb680dfe4bd9f99062e175ad3f154b03f169be3cc82"
      "id"
    end
    language "is" do
      sha256 "d0c184c6dec39731adb39accf51ab4008a4471cfb477f66031699c7e78784f3f"
      "is"
    end
    language "it" do
      sha256 "2a20d4acbb6b7db061c8f632a404002ab8c92d9878e39ffa7e57147df8fdc10b"
      "it"
    end
    language "ja" do
      sha256 "72dd46d0dc9dae80515e7708b8a5ae6f7820d4a58f865157bea8028f2fc56455"
      "ja"
    end
    language "ka" do
      sha256 "87f07fde8d4a8fae07836b94d375f08deb52a2b89b89ef76ba8cab2470c7c5db"
      "ka"
    end
    language "kk" do
      sha256 "9c697a84cd5065c382eafd39583b6830f6d57984144ae5a0011fac4fc9c224eb"
      "kk"
    end
    language "km" do
      sha256 "dc65008b734616bb6f8c8254037385827543b969c7f76c126a234ad85ff80624"
      "km"
    end
    language "kn" do
      sha256 "5f1b77d60f1ae230cebbd76a2a53e2009884f6a9daab3475f96eb41f440507de"
      "kn"
    end
    language "ko" do
      sha256 "1fe7727f49f4e9a663505f3ac2341fbc9d38ae937f78861aa5d59bbe6388f1ab"
      "ko"
    end
    language "ks" do
      sha256 "76ca6416534b95567db155464cef0b24bfbef26c22208033496de12e98b25661"
      "ks"
    end
    language "lb" do
      sha256 "ba497dd8044ee8a415ba3ecf3a3880673f35f4a3fbcb7734005673d3f8b226d5"
      "lb"
    end
    language "lo" do
      sha256 "77522780d03a46b349624786283382e92f91130dc7d70af51743960c72dc31ec"
      "lo"
    end
    language "lt" do
      sha256 "f96d56181ee545cc30617b9fc8d161fa40004cee869f6c4eb8b25b1e2f86bbe1"
      "lt"
    end
    language "lv" do
      sha256 "bb52ef963006763f6d4f9646eba21d3ea6b80d2b3ac3472cdd3d6eb8c29c9ad8"
      "lv"
    end
    language "mk" do
      sha256 "40ac93402424b0960827bc61cc80fcdbc0b36c837f6268eee0649eacd9ca5d45"
      "mk"
    end
    language "ml" do
      sha256 "0b0bd868fae719a19688f31eb94513da35348bbf4f6e147e218e27f77c9f1c2a"
      "ml"
    end
    language "mn" do
      sha256 "8731b3bedc8157a8eb73d524bdac540ddde06267b007d899c8ce3908860e0d7f"
      "mn"
    end
    language "mr" do
      sha256 "2b38f0dbb3e65a69e8107cd078e61ec00898363ec91946e80f7e2aa7f6cb2739"
      "mr"
    end
    language "my" do
      sha256 "a60860660c6fc39884c74ebefee8fe9b3f6aaf63c9fd2dc41cc667212418a12b"
      "my"
    end
    language "nb" do
      sha256 "7f263fdcd823f848094a26705303a80ba721c34af13561a903f8887f53051c6b"
      "nb"
    end
    language "ne" do
      sha256 "ffc01df538f7305a3cb4143bdb04a8b8076b82a57ae19cb86e2f005749d57552"
      "ne"
    end
    language "nl" do
      sha256 "6a24d29c68507993633a834149dd309a5f294585fce9dd24e75ff7c5cb1736b3"
      "nl"
    end
    language "nn" do
      sha256 "c67a86c7b9c3526ec43343d046309258526e90f5ea897c2bad91b3fe5f1e167f"
      "nn"
    end
    language "nr" do
      sha256 "3cd255251564152e0120c2f3c1276357f7299e3bc481e0a6f0be0cb929a7f9f3"
      "nr"
    end
    language "oc" do
      sha256 "237c2777ce9aae40fd721e2d57384e27cc89b2e42e0dfe26de6db9f517a9da3e"
      "oc"
    end
    language "om" do
      sha256 "7a9daeea214676fdd6c5646ba3391df80d4e23fa763b111e0f3cf20919062402"
      "om"
    end
    language "or" do
      sha256 "0eebb0f9393807bea980906ad5fa7459c4c9f6a57f7faba69326c05a5b7e782c"
      "or"
    end
    language "pa-IN" do
      sha256 "970e79d6bc1f3052279296ba17973635456c1bc1b80465ae92da6fdd39f64227"
      "pa-IN"
    end
    language "pl" do
      sha256 "b077302d6fd5d0bc63b4c5cb39055545848867874e8229deaae42c20ec6d9734"
      "pl"
    end
    language "pt-BR" do
      sha256 "1a861958700dcb77ee143e39c8216a3e481894b01768c7eef55f97d84e24aaca"
      "pt-BR"
    end
    language "pt" do
      sha256 "949cf9db83a10f08ed9aa9b53dca5d9bc7428b95c1ff944b72318f3a3757591e"
      "pt"
    end
    language "ro" do
      sha256 "45887676b3d509df38df81a1e749475f409e2569b92ee4a7cc3e15ca4d4ede90"
      "ro"
    end
    language "ru" do
      sha256 "cacdab23eb7c5b12831cb6f1ebebbbca2186e27c0541d182a8bb99b24affe4d9"
      "ru"
    end
    language "rw" do
      sha256 "fdc8247740172e98d1f406b92b9f7492ede50a48c50cb316173dd55c5309eae8"
      "rw"
    end
    language "sa-IN" do
      sha256 "8446fd02b97962ce6f5b227f291cb452124248357a159ea12174a69265c7331f"
      "sa-IN"
    end
    language "sd" do
      sha256 "cf45c6f7d55c1a6e00ce64ee4a1b143f48f30a6ff0f5555891dcdd99b516f37d"
      "sd"
    end
    language "si" do
      sha256 "c6eab48c4c06e2fb4e951fc5a4bf65764d5d4f29198b5087ceb9168eb246e646"
      "si"
    end
    language "sk" do
      sha256 "d84b4d7ae6fa99800b3169ab1c315cb703d0f053de0d259d5344b9a29dc5646c"
      "sk"
    end
    language "sl" do
      sha256 "60c07842471eb97146684c39f436f92f09cf1bdbf89877d64617a02175dfa082"
      "sl"
    end
    language "sq" do
      sha256 "459ed6186305aa05fc26c02e70512d643db0d03c156121bfc69deba8ea69f96b"
      "sq"
    end
    language "sr" do
      sha256 "4be7e11c33c503df19510b2c180ce9460f2aaad661e4127863930307a7ff03fa"
      "sr"
    end
    language "ss" do
      sha256 "199214a359e6e45823802643901d81a51cf3127943d2cc21099f6c883dea2334"
      "ss"
    end
    language "st" do
      sha256 "a7a8a858ea8c3a401f29b5c19a0098239bd9ef121e3519eee51089f183cbc869"
      "st"
    end
    language "sv" do
      sha256 "993a60042ccfa77d3cbd964e3dcdce459cb42463d86f010295719604b1a13a08"
      "sv"
    end
    language "sw-TZ" do
      sha256 "56aad23f1c3d90374ba375ea9bf403088433675db4cb6d460845fcc19aff567a"
      "sw-TZ"
    end
    language "ta" do
      sha256 "ad763fc077bb8f9fd17a18070775567f6518d3ee7781578645dcdd0d4ed1e842"
      "ta"
    end
    language "te" do
      sha256 "34581cc93f729ac8daa98dcf7a253199c70b56d1e607438206248749f967470f"
      "te"
    end
    language "tg" do
      sha256 "7f56d86ab9a1f041dd052159b03184cbdf40b3b0968e4330596ee07fb46c259d"
      "tg"
    end
    language "th" do
      sha256 "25b4e8fb2847ab6432e79ed598ee9eec73e25730f5607faf0c41261d5b27a90d"
      "th"
    end
    language "tn" do
      sha256 "69f134eb15c00d3a54eaccc9d305a974a38619f2f580ac5d93dc79bd561e080c"
      "tn"
    end
    language "tr" do
      sha256 "d08c5d30053db8bd9382a8a86cd71012641c73fc1fef5077065deb83a285f9f8"
      "tr"
    end
    language "ts" do
      sha256 "c4fa333d7f5759e980800d7369dd5250459fe582b510ec03254b08e9290bdf94"
      "ts"
    end
    language "tt" do
      sha256 "60993d5b63b2cba9baaea23128da4f12aa4a4c7a7456365f30f602514217b637"
      "tt"
    end
    language "ug" do
      sha256 "5e0f480d7d914907b135f762ab37285b217404331c134a01eb67286bae6c4a8b"
      "ug"
    end
    language "uk" do
      sha256 "c736a4788c4563e1ebd9571c516fa1f8e13d9ed54953a026eb7a934f0c8b21bf"
      "uk"
    end
    language "uz" do
      sha256 "05c40949b165c16644d98a2e6a6220184c846aca5bf022e60c1bc49b0b89f096"
      "uz"
    end
    language "ve" do
      sha256 "2eb3b2fca5946c3645de65eaaa63ba00c1586091b4676f2e5825318d320404cb"
      "ve"
    end
    language "vi" do
      sha256 "3df8ff1b8237a9183a924e03294df31eec6b9d93e5585507b2c8bd170e7ba001"
      "vi"
    end
    language "xh" do
      sha256 "c02e2960fbe888bf63b97787d3bb9d6b6b512ae0f32c73b9a285d16adce09741"
      "xh"
    end
    language "zh-CN" do
      sha256 "7bd2468e3f1613331823a8371f4575e31b3c5abab1a7a5c9c057f08c004a789a"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "5077078a3a987d7c480a68ce6b9462aa14177f72eb6b51ef118e0e86cb935cd7"
      "zh-TW"
    end
    language "zu" do
      sha256 "85d528ac7c6cb78cbd90e7d22c4ddb8c6a62e641488e319ee31bbd454e0edef7"
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
      pathOfApp=$(mdfind "kMDItemContentType == 'com.apple.application-bundle' && kMDItemFSName == 'LibreOffice.app'")
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
