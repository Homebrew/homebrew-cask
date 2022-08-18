cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.4.0"

  on_intel do
    language "af" do
      sha256 "7cbbc1e53601ef3260dc3ecbf8e22f4e64b40f8cf472f18239ecbd34b7202cdd"
      "af"
    end
    language "am" do
      sha256 "9343d309adf5c2a1e195f949c32a060e4eadab4f96a9557357078052f8daeeea"
      "am"
    end
    language "ar" do
      sha256 "dbcfd7e0c32531abe2eae93849c7902d8230cd968737ad9cdcab773ecc611d9e"
      "ar"
    end
    language "as" do
      sha256 "718901a018e405599a5ccfbb91d463ded70915cd0a558b1b0f65196bd3d5bd30"
      "as"
    end
    language "be" do
      sha256 "233769550dd87a14c285f94519ebf51704375c052440d99b462adbce63463121"
      "be"
    end
    language "bg" do
      sha256 "ade08e8eeb025b09d118b8eac8f3b8476d94181815d33218fd445f0717effd5e"
      "bg"
    end
    language "bn-IN" do
      sha256 "1c5814910c1c3f26f80ea6a69e6c26a4b854d229bc865c9f02c61f7d107669d0"
      "bn-IN"
    end
    language "bn" do
      sha256 "e7779ddab6c9458c58cc8152f89549ea81fb8f76d91c70fc6c7b0ebf8c8252d3"
      "bn"
    end
    language "bo" do
      sha256 "77c4dc5f706dd218c36a97d212ee4751492a65a9ccfd9903fca238c8a6098499"
      "bo"
    end
    language "br" do
      sha256 "081648f592fe9a1f3ab6f366b0fe03344a03f857ee505333230abccd331d8c75"
      "br"
    end
    language "bs" do
      sha256 "35da12799ffc393822651ba191523b3703eef74ff67e192759b41ae0467ef44e"
      "bs"
    end
    language "ca" do
      sha256 "ee276162a99ea8818bc67ce90adb4449523e86b9143155dafa23d67aae46b10f"
      "ca"
    end
    language "cs" do
      sha256 "cb1f563fdc961fa5d8906a9f15e78407e9ebb76bbb1eedeb1e40e8caeeab0dee"
      "cs"
    end
    language "cy" do
      sha256 "1a4b27b601a1c66b2240a781c0f525ac8643d5754942591fc237bc73b35204b2"
      "cy"
    end
    language "da" do
      sha256 "9fdf6c106c54e810c8ca43609e635d2ae9bed4c5dc08b245b399b5f1500b36bb"
      "da"
    end
    language "de" do
      sha256 "9b3ea183b9c5b3a0dc444f2be4d20e53ebc953dd1c36428e119ce3bb6b8be440"
      "de"
    end
    language "dz" do
      sha256 "67547f5c633bf24c0df8f7e8391ab5fd9e0096db5e0a5ee8102173c934dceb67"
      "dz"
    end
    language "el" do
      sha256 "85b7a439f7a2d44fdde9d817cce8f96657d19213815df9acd2a5c80733874b01"
      "el"
    end
    language "en-GB", default: true do
      sha256 "0d9fad0d8cfb102e04517cb5cf71c092a46102203db35e8eeae4daf4bfa449a6"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "af9a4bca549289a4b2163555fde8de3a61bf91309c2d974dd4155a64f7054138"
      "en-ZA"
    end
    language "eo" do
      sha256 "2d223938659bca349153481e31e31bc927ed141ca96de36a541580d5f8061417"
      "eo"
    end
    language "es" do
      sha256 "d4dd7bab52d456047aeb5fc672ae666c1a761c1dea385609511dbf38212f884b"
      "es"
    end
    language "et" do
      sha256 "0e3e28321274c18c074db3ba5c80b77462545516e2f5e5e06e2e3e6fd527afc3"
      "et"
    end
    language "eu" do
      sha256 "e5389e18d587376fb5aedc26d54ba8dbfb94c51269da4f5b34846dde7fb471dd"
      "eu"
    end
    language "fa" do
      sha256 "fd9eb2098ba5880e38ca079249625b65805aaa129466ea43ca2e28f650832477"
      "fa"
    end
    language "fi" do
      sha256 "2d389e085a8586c811eaa259e0079190ae4925866ccfee42ca0ab8e9cfc0ddf4"
      "fi"
    end
    language "fr" do
      sha256 "ff18cb6e5817f8b14549a22cb519d3c4a4f4500dcdf4806985f5dc28e70115cb"
      "fr"
    end
    language "fy" do
      sha256 "32146307c3ba46f3ee17097a4956c63ee1a3e6f3f8631330defbad7295388d49"
      "fy"
    end
    language "ga" do
      sha256 "32924b7ba696d54e682b95366082b47bf6fad052a380bc8c7d280fcb3ae2aa0e"
      "ga"
    end
    language "gd" do
      sha256 "df27ffdffcd95ed70f5c93b8673c8fca45a015ca39424d94fb852aeb9c089771"
      "gd"
    end
    language "gl" do
      sha256 "0734a5c3b5770d7f7f12cac7952a87647031b2323b3221798c94284c277ded6a"
      "gl"
    end
    language "gu" do
      sha256 "3bfbb667c1e71a931e9d7110c7eeeb49046a04a9eb9dcb24bee6515a3c8e3005"
      "gu"
    end
    language "he" do
      sha256 "df1457ef932e8c2d6f31e1ef2432585ae769e0f1b0d376b4b97ddf859ffe43cd"
      "he"
    end
    language "hi" do
      sha256 "754e74e33475e001dceada5368004045467bb07d72a8595e57d3fa181847f5fd"
      "hi"
    end
    language "hr" do
      sha256 "f5bb7c02de730244f8ab9a1dd27abd6e30cac9f68bb19ce2d0c9e2e7649a811e"
      "hr"
    end
    language "hu" do
      sha256 "fdf3a371061c80a7bf670bfd67213a0d80ddd8a530f3e5eab5a2a2f496f7baab"
      "hu"
    end
    language "id" do
      sha256 "b84fc4214ccbf54376f08ded726482155663242153346f6749fb6b5fc41e806e"
      "id"
    end
    language "is" do
      sha256 "c8749fada99cbb171c4773dac1468565ef07bca45fe1ba8b76573269e2c4508d"
      "is"
    end
    language "it" do
      sha256 "eb2f400cc21ecc4228611e767f1f9546385ebf53170127974f1fac385535a9cc"
      "it"
    end
    language "ja" do
      sha256 "dc4a50c8e78fba8949a67af48e49dabc3cf8b835c570f75315d9245670fc1fa5"
      "ja"
    end
    language "ka" do
      sha256 "4e0f2b63798f42cabd7402f669cb2b189257a16ed19f0de6e9e65dc8ec2723fc"
      "ka"
    end
    language "kk" do
      sha256 "b378d3a3aab6dba95d42509bda84251631e148464136fb62f4f63d7009ba5e31"
      "kk"
    end
    language "km" do
      sha256 "d2a4313941a4d542fea5fdd2dceab8f23e646ed1cc3e3f74dbc863286ee50e11"
      "km"
    end
    language "kn" do
      sha256 "b94b24418b21048cccb7f6c50c7ab597d3da297e2a6cfd13f0262ff4cccf2129"
      "kn"
    end
    language "ko" do
      sha256 "8270a6df4da53f7765666c482ae8282ec2f06ac1472ea690926673d598b82d5f"
      "ko"
    end
    language "ks" do
      sha256 "8fd8003d89d0773da250137676069d1237cc724e5742e9f80275af0f79e9a629"
      "ks"
    end
    language "lb" do
      sha256 "ca1f08d9fe7c11c5b747d86adaf506e1cb616e40f00f5bfd77f682b7af8f777d"
      "lb"
    end
    language "lo" do
      sha256 "de863b27a5e17c65151c0ac1553aff9fc5e767d5b6be87027e3c37c54ede8341"
      "lo"
    end
    language "lt" do
      sha256 "2d8e34a9280e0a692fdbf9ab65878d0f8c2d56b5c5a857abc7b3ab8711409ec3"
      "lt"
    end
    language "lv" do
      sha256 "9c392e161001f434a46470da128831592e0d65468711caeb5eb28d94b934df3d"
      "lv"
    end
    language "mk" do
      sha256 "7bf221c015c63ca8d4f5e93f48ec559bc116f220b1a1d967d593a46dea48692d"
      "mk"
    end
    language "ml" do
      sha256 "f108aceaf4c4ddae9b5bf8dc392ee02af508b1ab8034c60b4c023130ba91f341"
      "ml"
    end
    language "mn" do
      sha256 "89df1e4be500b575c24289b5282a511d8f3c63e4ce736641f7fd4984c6dcaf34"
      "mn"
    end
    language "mr" do
      sha256 "6ab0cdd46575a279e3d57a14d813a819696b8346f16bba425217818521a1533c"
      "mr"
    end
    language "my" do
      sha256 "df4b08d09cf9c09a4a6ade877b9f83aea9c49386f3a2f4060bbdb6032a2eab14"
      "my"
    end
    language "nb" do
      sha256 "3aade01f30057a990f2f3a099a59b12f6bf819d072f5c3296468334f003ff838"
      "nb"
    end
    language "ne" do
      sha256 "007615540e43de818a8c82f91f6b62884e1d772a1a07687895fd9e4b33391b14"
      "ne"
    end
    language "nl" do
      sha256 "826998c1fe26e80aeab9198725bb131adaf0ebd5931b356408fce62c6356236f"
      "nl"
    end
    language "nn" do
      sha256 "1bc90a158543d9ff7435109bf3dc801015d188c3283a2293cb382c0084a04ec1"
      "nn"
    end
    language "nr" do
      sha256 "4404b121842958661d50efc27e28665f183ed34af25fe3027fe4cca4674b4ae7"
      "nr"
    end
    language "oc" do
      sha256 "6e4aca1d2defba24fad41308ffd843e597afe5f8b4b69228d88675970f810e71"
      "oc"
    end
    language "om" do
      sha256 "f539be15447371147a69c560132b9649819d8dd9e2c059cd516e6c66f0c3f452"
      "om"
    end
    language "or" do
      sha256 "0e49a1fe3768e7215202c3c2986dc89e57c8aab60abca3ae6628017581a49ae8"
      "or"
    end
    language "pa-IN" do
      sha256 "2328f6ac1f54e83269d885dbd35d769eed5d00c336a56707bdfbc4dff0ce0022"
      "pa-IN"
    end
    language "pl" do
      sha256 "6db7ff941de8ee1b224fe80dc76e2be0df9eb5e47cce7b53e49be3f5cce291ff"
      "pl"
    end
    language "pt-BR" do
      sha256 "8beb3f57e7046012c9854cec2b1f2caa4b60d9be631ca37ee38570bea9910a53"
      "pt-BR"
    end
    language "pt" do
      sha256 "9845050e6ff3c72412ccc549f7d91e89c25afd9367bb0ae92fd18fed560b9a30"
      "pt"
    end
    language "ro" do
      sha256 "aa4b9d16b0e7cc56804a10180b1181509b6c7c25b399caff757662bca1280982"
      "ro"
    end
    language "ru" do
      sha256 "fa07ae1349d4bc55143a432c3bc0320314b1e672bc58acee55ac259390d5693f"
      "ru"
    end
    language "rw" do
      sha256 "2839be587d0b6fbe3f3c22ec75023d660637b7af71fec0c448cb74fe10c52308"
      "rw"
    end
    language "sa-IN" do
      sha256 "af4af423f13f0a82562a49e95f35d74bc67125c3abf3b77c020216343c2f8c26"
      "sa-IN"
    end
    language "sd" do
      sha256 "13fcfe3281f978e1a63b25f78da6369df318c5324f7db1e6aafe04bd33db923b"
      "sd"
    end
    language "si" do
      sha256 "d711bdcdcd02eab51be0f26aa569782837afa7053fdf71c9340916c7eddb066c"
      "si"
    end
    language "sk" do
      sha256 "1a6ea03265930251b3c2245e66b97581cbad5a9b717db366f0e109673a6919e4"
      "sk"
    end
    language "sl" do
      sha256 "95523346f30186f87675a5ee82ef98b1f2b721947246edf964e7e8be195cdc59"
      "sl"
    end
    language "sq" do
      sha256 "a7a47d1648ce84ef9ea018954d16a7e1abf2d212c9fd033354cf0fd14f598bd5"
      "sq"
    end
    language "sr" do
      sha256 "a589740ca8f96d09991c1c27f9c609c5d264b165fc385277d85118d2bdb3f2a9"
      "sr"
    end
    language "ss" do
      sha256 "6ed75cb2e699522553a3ba2d67a866e609be1b24011244f613795748bae91237"
      "ss"
    end
    language "st" do
      sha256 "d7caf6209720b43364f93683307ea2c976e01be539e836a9a1cd8a0377725426"
      "st"
    end
    language "sv" do
      sha256 "d6150459fa0492dc5cacd97b502bfde50890bb41d3626ed69ccf1e9033cfc179"
      "sv"
    end
    language "sw-TZ" do
      sha256 "696d0ecb0689bae6eb85e6ad4470b14ff97bf77121e5380cc3b7a51b1891682a"
      "sw-TZ"
    end
    language "ta" do
      sha256 "6c0b56ba4ecbf20be2dda637c6e6ae1a35c38d719274156a273f3e3a3be6a018"
      "ta"
    end
    language "te" do
      sha256 "e5dc86d09d4fe22738920294675860438f7f2423ec922c7a3c9248230a07e154"
      "te"
    end
    language "tg" do
      sha256 "0af6bd424a798c8030cb1ec2a6951e320bfa76c7bdd880fdbbb863741dbcec4c"
      "tg"
    end
    language "th" do
      sha256 "f84ea6bedf0c5ad8ec685e697d28937874f11ae524ed3808d3118aeb58c2040a"
      "th"
    end
    language "tn" do
      sha256 "77731dfbe1120fcca9b25bb4584532ad9e5ab8bdfb84e09ce358b4c4228bbf32"
      "tn"
    end
    language "tr" do
      sha256 "82cc87b4cdbf90952bf9a434f9328ad6fc20607580c14fa348010c41a225c8ac"
      "tr"
    end
    language "ts" do
      sha256 "38cc01aedf028dadfbcd58a4cd729f30320c79827d602ba8141f232686ebfc42"
      "ts"
    end
    language "tt" do
      sha256 "cf979be280e390c6f88f68c5e2707563c9641d05df75fd610af8e87dc4b6fd46"
      "tt"
    end
    language "ug" do
      sha256 "cd49b90e84b22457da3bf9c5477e45b0c6c3aedb0d444b9da51e9c6b5b02a2c4"
      "ug"
    end
    language "uk" do
      sha256 "81108285d9ab8db98d558e8219d96ff8013fd2b30869560c9ba8eddc1a0d4c37"
      "uk"
    end
    language "uz" do
      sha256 "6da21a06e2171e6332d28c89ccb123e930354e4c75826cc403c3a08519b461dd"
      "uz"
    end
    language "ve" do
      sha256 "38d8562104542237f4f76e84eeb0196f3e698779c68c8445275b0fecc4b7d8e4"
      "ve"
    end
    language "vi" do
      sha256 "84b5aaccd8732b165cdc38b4a22a6a53c9f7e1a9cd97ee09956ef0cd204c55a5"
      "vi"
    end
    language "xh" do
      sha256 "4b813db08dd631e303c2b9b1e70acd9e00cd94b51bd5b378ad749c1b297d0559"
      "xh"
    end
    language "zh-CN" do
      sha256 "3a77171e2b4ead6ba730491c0eac19a17acc6e4b260e7a21a4482c8464cfd2a6"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "f54bac8fbd2c67786e51259151ab124a38c6efee99403da7e720cd180d3f2c2f"
      "zh-TW"
    end
    language "zu" do
      sha256 "6c62c9905aee0c707e62887354f36a6b77bce2efa843bc96e6db60950d3010bc"
      "zu"
    end
  end
  on_arm do
    language "af" do
      sha256 "c4050fbef8a123afaf0e73b7ab65ed3756628de34befea7a7b1a6e28ff9a713d"
      "af"
    end
    language "am" do
      sha256 "fe5cab9da4560d65c202d092653997d01226fd9a3c4192a4b820f397d162be5d"
      "am"
    end
    language "ar" do
      sha256 "479289f12a31cc1c4efaeec5e0bd86291c3807972adf5ebe34f7f09f3d138e0f"
      "ar"
    end
    language "as" do
      sha256 "e1a3a61477e62ee0fe376b1ec46e9f1ec1954017f1b9a99f8f68f41f5eb1e0a9"
      "as"
    end
    language "be" do
      sha256 "e1d10ce598213ec688424d770a85ab35d04724e9068ebc0cddee2a7258d307a0"
      "be"
    end
    language "bg" do
      sha256 "acf3cb26c2a4090e9cf11b0f5ed7894193d9b56f32d17874f3aa62e2a0904899"
      "bg"
    end
    language "bn-IN" do
      sha256 "cd6dd1792cf5c044a82049e580d58b8ecbc9ba51e1284b547efe568b677dc1f7"
      "bn-IN"
    end
    language "bn" do
      sha256 "f7cba95551dbeac8b95a8f0cd73e96badf4d9fdaed0f8607cc969d75b67c15e6"
      "bn"
    end
    language "bo" do
      sha256 "4922d25b1b3ab01992477539b372c674e4752785625aea23a7b0bd56b5dd1a46"
      "bo"
    end
    language "br" do
      sha256 "0b5b70335e7a5a88daa0394a10ce40ea9c6b5832ca5d8c5330a0727223fa7a60"
      "br"
    end
    language "bs" do
      sha256 "3901b177703b1238264059c31a46cd8ebf556bf90d46e90a89e86dfe7156ab32"
      "bs"
    end
    language "ca" do
      sha256 "24cdcb8b905f133e494d0be7b2f4ce91bd70f1d7b665759a678c065c9f6e22cd"
      "ca"
    end
    language "cs" do
      sha256 "1965e77eb0ddb5b6ea97e958f2caa168bb7d41bcde84cc4742773d7e40976998"
      "cs"
    end
    language "cy" do
      sha256 "55759826df38c94dc8bc89e25f72280639fee766ddcabdca50fc639fb1be1b1b"
      "cy"
    end
    language "da" do
      sha256 "c4c901a75febea12a87a26b2e9c55b6ad52b29e05c2873da4bdad4d4d0fcd52e"
      "da"
    end
    language "de" do
      sha256 "0c25ef1e70f1b09db4cbf763928e996e8bbf5bba8cb6ca87a8fee113f2a6018f"
      "de"
    end
    language "dz" do
      sha256 "4d46228d03f08acdd74a30493f7c7c71b7472a64782bb4182122541292b59dc9"
      "dz"
    end
    language "el" do
      sha256 "8948e4a823bd4289898b06279e5294be049d8136b95b0471545e0871bccd9ae0"
      "el"
    end
    language "en-GB", default: true do
      sha256 "11ecf8f5becc8de22645da8718e8bece17b0a0961debfef5963ddac9acda5e10"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "1c2bc5036c2c06292b137cb68b8a17f98c291f949a0d6103f77deb938e1fb85c"
      "en-ZA"
    end
    language "eo" do
      sha256 "39a1177055692260d8d609be9af074e68d47bad18e855e39f3fe31fd2e2c6736"
      "eo"
    end
    language "es" do
      sha256 "e34430d29a767b33675ec7f3ae62d5dfa1c08dc8b99ddb49518f4e862c3321de"
      "es"
    end
    language "et" do
      sha256 "3745c5e40106bee933f9031560824897aaa6800d2a520a77d5d0b777e199d7ad"
      "et"
    end
    language "eu" do
      sha256 "87da57d6c93daf506313be32b16983dbe8804d1c4c1b3eaaa0ff68b3277404b9"
      "eu"
    end
    language "fa" do
      sha256 "6a9304a9778a2c3ade164fa0c7681835b219e14554e12e1287477fde64a42a73"
      "fa"
    end
    language "fi" do
      sha256 "c67b108f0cf33262709196d00c0c0a2ebd57d4e81fbfc401bbeee85c527edd4e"
      "fi"
    end
    language "fr" do
      sha256 "f32187179a9a45481d6b42208feb8911589e8da6c4b18028ee52d2d493594dc9"
      "fr"
    end
    language "fy" do
      sha256 "9162a5709640a0f35c39bec44342a593951c42d72c1a45a82f3953d61d662028"
      "fy"
    end
    language "ga" do
      sha256 "89f5fd9d9a5735312cb20506542a729ac07e36009f39128ba06e58cd1e5b72fe"
      "ga"
    end
    language "gd" do
      sha256 "9d1b24b61db4093e41f848d6b0426ea3666c0cc945c2864d93c0725fdf4c0384"
      "gd"
    end
    language "gl" do
      sha256 "041f82c325e7cb91f5c629d08be7adcdadcf1baee7dc2d150ec7431f31680533"
      "gl"
    end
    language "gu" do
      sha256 "99172da1095cf37a77337932298272e99cbdebb8878e283c120a2801df00984f"
      "gu"
    end
    language "he" do
      sha256 "01d180763576f7c621dcb93d78b5379bf51c6e3877f2298c91f7fb3189faace4"
      "he"
    end
    language "hi" do
      sha256 "b54e892db6eda57d965bf35ba14fd93d651da284989c6d79defc22ab93b4cd28"
      "hi"
    end
    language "hr" do
      sha256 "1ab4f5b76c2252f71027bb7c9e205bfde0741b033abb010f406e8997e051b27c"
      "hr"
    end
    language "hu" do
      sha256 "013b1bc8ad0afb5ebd0ead461f15dde49232ba8c22c22405491a19b073fcbd1a"
      "hu"
    end
    language "id" do
      sha256 "3cac7d76aa3d3935765c57833aa6731689f6bfe6fd7a00c310dfc0e0640e5d6c"
      "id"
    end
    language "is" do
      sha256 "27621d088e12bf7c4340f6ab069b9b3c5824d5392e0c844df2527f4066312742"
      "is"
    end
    language "it" do
      sha256 "37e8555f4385ba56178b7bbe48e47d563c62d5c40e97853dc2d49d5f87eea806"
      "it"
    end
    language "ja" do
      sha256 "b3d09f6b26c5d5ed5dca8ee7eb5575f74933f7222a428f0497bbe350e66a7b0b"
      "ja"
    end
    language "ka" do
      sha256 "a5295d06fc8c0f9f93ff99cf140a4eca26096af53350be79a7f1345ba123e7a8"
      "ka"
    end
    language "kk" do
      sha256 "84f9fe176598be9ac68837a9d612fcf4d0c35d3fd75b8ae852fb75bdbf1f5d56"
      "kk"
    end
    language "km" do
      sha256 "b10cd1c247c75f0c5a333e90d24d4e73f0a4384cbdfc9e55051e8c25b285c9a8"
      "km"
    end
    language "kn" do
      sha256 "34d6312898986016aaaa9964a879be20ba44f63faf4ed3ea419c6134ac29a130"
      "kn"
    end
    language "ko" do
      sha256 "2fabb1cae5875105205af5b57e0f7e4c4be06cb4fdc2f1bd9763f1718bf928c3"
      "ko"
    end
    language "ks" do
      sha256 "39a151b284c1110d9aad91fb82786c67823e66b4297f8a340afa201d67dac86e"
      "ks"
    end
    language "lb" do
      sha256 "41a36aa11273c0a5e3d30b9aad7509f2abacf4256a618635713c54f32eef6c41"
      "lb"
    end
    language "lo" do
      sha256 "7ec764adfec6877dd644b69bb75a6dbfb25f19e07d3912fce0ab183dd7e085f3"
      "lo"
    end
    language "lt" do
      sha256 "febd12a45e5a0aefdde43cb007e5e29f881dd2ff7706e86d328ce1aadd996a73"
      "lt"
    end
    language "lv" do
      sha256 "9101be0a9a703050c6599dff58aa5e3e95a20f1fa57675099e05f597d976bf01"
      "lv"
    end
    language "mk" do
      sha256 "7a8af0551462e228f9057f474cc5fdbf38f4b625fb9370dc7bda32d21e30ab98"
      "mk"
    end
    language "ml" do
      sha256 "8f40db762a22d35cdfdc67d7cc2c7fa78dd9350db26ca23ce0ebe45e0590fa24"
      "ml"
    end
    language "mn" do
      sha256 "f3e64adc7415a5f8b31e557963ae03e4eced86292d3bfe73a601916ce06efc7b"
      "mn"
    end
    language "mr" do
      sha256 "6b71e428fee928e649e07499a7665ff944b5252ab4c7acc959cb428f781ff390"
      "mr"
    end
    language "my" do
      sha256 "299de9053ba50a2a2b300bbd924c716aea9eeefee193d71d7f4ca15f793a2cc4"
      "my"
    end
    language "nb" do
      sha256 "b481a481e51ea484f532e54d763fa5ed210a08de1b60433a07d2eee991141e70"
      "nb"
    end
    language "ne" do
      sha256 "2be2a93625d01298912cef6ded32982256e5f7e147161ffed548cdfa1d9e6060"
      "ne"
    end
    language "nl" do
      sha256 "359bf543579fca36c1b7c03f173b35e11920f03dd80a42b944420a5ae20043af"
      "nl"
    end
    language "nn" do
      sha256 "c2ee34972c3dad2eb2fbea07acc29c4609c71940a947791c54bd9f513a4e24a5"
      "nn"
    end
    language "nr" do
      sha256 "3b1050bac5e2970ba08f1aeee97debbad30ef46fcc0805719763c227df6d4aee"
      "nr"
    end
    language "oc" do
      sha256 "3f89610c31df639ba562ddf31c32cb974d9a810b28908e32fe1117d39cdcbb62"
      "oc"
    end
    language "om" do
      sha256 "38ed8cb4377a3d79a648e2ca9cd24650f7a0a2644788841a5201aafb4b2db31a"
      "om"
    end
    language "or" do
      sha256 "af0e3666b9305d11c15b0bc0d6559e008af0251c8c8d68e5a2fb9fdcb4fceab4"
      "or"
    end
    language "pa-IN" do
      sha256 "f4303997d5913ecd1af4cfe8f0b90738aa60fc90cc520030d6734325b43eda59"
      "pa-IN"
    end
    language "pl" do
      sha256 "031feb8b97456308435bb18d6d17a3cb9e460b22342be984ac229035191bc662"
      "pl"
    end
    language "pt-BR" do
      sha256 "63ab4f24b21afb6724dfe23ad06a919e3558644837e046f66b3fdaefd190483d"
      "pt-BR"
    end
    language "pt" do
      sha256 "df72ab37fc4d7defb3c02cdd17c2c81a58219771e086c95644de5e944e07989c"
      "pt"
    end
    language "ro" do
      sha256 "1fc7e9d88c63516078465d71f7157d46acddc57b738d3adcb2f1f41b86b8d899"
      "ro"
    end
    language "ru" do
      sha256 "5ffc7fd04c005561e7b529c196c4111e9068e50d5df6c8d45ab58f08dd2fbf9b"
      "ru"
    end
    language "rw" do
      sha256 "24e60b8ebeae2a20fae9ef02df8a2b299ee24f9452200ffcc9da62e14f360f1d"
      "rw"
    end
    language "sa-IN" do
      sha256 "7001d75b87decc5df37e84648bb1201821766705557c4c45a18d07e27130771e"
      "sa-IN"
    end
    language "sd" do
      sha256 "7c93d2046951d7e5bd32e1bd7f9599fb44e042677ed1cc4bb3292d98dcb97642"
      "sd"
    end
    language "si" do
      sha256 "2df33656674ac6da024722ad765f7cd653ae13bcd2ac7eecabaa3bbcfebabfd7"
      "si"
    end
    language "sk" do
      sha256 "32f68d2206c69da8152d530c983dfc866a8770a39498c1170601d0b91ee0dd4b"
      "sk"
    end
    language "sl" do
      sha256 "d8e771eacafc948324a4303431a147ceff62f141681c10d227091cf84ddef68e"
      "sl"
    end
    language "sq" do
      sha256 "e4d585fe8d732f06115d5e0a0217b82204204a92999a79089956e27bff29b156"
      "sq"
    end
    language "sr" do
      sha256 "c5df63fd6d80d9f60b6a4b01bd9ec478dba06bba72c57184d76f7e1dc4d3128d"
      "sr"
    end
    language "ss" do
      sha256 "e6882c9420260ccf0d09eabbfbe13e366a553be1fd192927b58a9a75447da01d"
      "ss"
    end
    language "st" do
      sha256 "0f7d0c817fce6a1f89e727590b22051ca387ba3e49b733c90edce2b5577a3cb1"
      "st"
    end
    language "sv" do
      sha256 "cb5b3fe19838414b39fb410641eab81a25220d7a8c0b44896253983117a30885"
      "sv"
    end
    language "sw-TZ" do
      sha256 "0b85aec3f592acc4ada2dc8d1c6831a561db70dd762026d7aace3631833c571d"
      "sw-TZ"
    end
    language "ta" do
      sha256 "396d11ccdf008b70263420a5b79b7306743563ff168b0dcb75a19b96cb359a61"
      "ta"
    end
    language "te" do
      sha256 "fdb999821f36ff92709c162194917d2ac57586c6705aad511d830ff4d5641b34"
      "te"
    end
    language "tg" do
      sha256 "882355c555469403fb5a2fb70981f0976115e8aaf050471c32d84f9f150f3026"
      "tg"
    end
    language "th" do
      sha256 "b53b95d730d30b7870a628a859412620b5a15fb6b21048ed64585e63a660facd"
      "th"
    end
    language "tn" do
      sha256 "2fa6e1398400d664d89a7b5a28fd3143318de5e542740826fc80cd2c7716411f"
      "tn"
    end
    language "tr" do
      sha256 "b81a9f39bb2189f53a6203a141483b50ba2fa314321837954775aab930426bae"
      "tr"
    end
    language "ts" do
      sha256 "a094fd66a3fa79613a44744b739ddabd0838f280e1e8d0ed36331bbafe874c30"
      "ts"
    end
    language "tt" do
      sha256 "64172853fc99215f6ef10fe787c0deadad53c85c662ed19765ce3e5c6c7cafe3"
      "tt"
    end
    language "ug" do
      sha256 "0124c358b5c69db96a777e6ac7df4e21131e0376f2fb0e578de1a0e720d37efa"
      "ug"
    end
    language "uk" do
      sha256 "9220900e853e08cc123b8d213c6133a36752374a48108137de711bcd2f5c5858"
      "uk"
    end
    language "uz" do
      sha256 "80987b4a837079533262867574167ac0eea61eeb00f77f4982a6f299d8a4b59d"
      "uz"
    end
    language "ve" do
      sha256 "27520d5cb30148808c84dd83886df16d00228b25c95d1de87a727d1ea8e61001"
      "ve"
    end
    language "vi" do
      sha256 "3dd0da5cb2a5124a81f0ea0fa268407e9858f09d06984df296c3a2b722e0438a"
      "vi"
    end
    language "xh" do
      sha256 "1e568ebe7d3344a56de62cdeb3059b905cd3a5d03467d4c57e4260b149a00e9f"
      "xh"
    end
    language "zh-CN" do
      sha256 "c07579a645f535c69ca3cb03315d444e7dbd562e6388bb58351533922fab21b7"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "87cfc163df989325af9439c30ec4e1f96eec1e85e03c8fe7b874236450db5d45"
      "zh-TW"
    end
    language "zu" do
      sha256 "7f16ddb6c1d13e4dce409c21a9680ea281e7c620adbc11e4236d3223c91c5b05"
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
