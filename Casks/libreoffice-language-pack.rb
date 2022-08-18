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
