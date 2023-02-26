cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.5.0"

  on_intel do
    language "af" do
      sha256 "5d50d9d9df6096907ac818694846c079b2a35c83daae73b5c30a395d1b8f5554"
      "af"
    end
    language "am" do
      sha256 "1ca28145b874b72c2e760b049bf58f493db0d318af6b4d9d9bf5cb9eb745b8c3"
      "am"
    end
    language "ar" do
      sha256 "ce6d3bc2b1b3317c604aba47ef6572757a4503ba0da50a8bdc9d1ff9bbd87ab1"
      "ar"
    end
    language "as" do
      sha256 "3290b9aff71f737657f712ff813ef3ac964e30b3fbbcaf853b644f931180f0c4"
      "as"
    end
    language "be" do
      sha256 "d9e72ecb8c07177a90ae9877ba41c595cb3145841057a6f088518ca17b67052f"
      "be"
    end
    language "bg" do
      sha256 "75d548a8412f0ca5dc430745efb9a2d7b44147efa5befbeb8b106333fc0dd2e5"
      "bg"
    end
    language "bn-IN" do
      sha256 "49d21bbcf96600b48aec375bfb0aff6d8e758c2ceaf8e2900f914219a619e68b"
      "bn-IN"
    end
    language "bn" do
      sha256 "a993935fda9da30ee1f66e192225dc4c3e42c0cf767cd082c381852afa1ace97"
      "bn"
    end
    language "bo" do
      sha256 "792e325d27e1cffac23ab854648b883d12f8f500f3174f1ec65ca52746b08c84"
      "bo"
    end
    language "br" do
      sha256 "c1aeb84e9dd9537274e19b0dceab6153f567f3b03f14d7692100d1d6f9e66717"
      "br"
    end
    language "bs" do
      sha256 "28f5a330e2b311b952f3433207a787a9a9b76df6afba8d1fb382b098dc0aedbb"
      "bs"
    end
    language "ca" do
      sha256 "91d2c0b77704ab1416ec4d6f20998a6f56042bcad0b4bc9a52bbd03d2cf27567"
      "ca"
    end
    language "cs" do
      sha256 "d664c9d55a884ce3c89513be46a570a9846352de1ce367a01d82f21299e0a6b5"
      "cs"
    end
    language "cy" do
      sha256 "2d2b33898519a7f1b24fa90f7676cf7d07d553dc2856c080d4a15b0315d1ab81"
      "cy"
    end
    language "da" do
      sha256 "41e1e4d50956817604fdf4fe7bdfb09886185815521c18a886e9a7bd4caa9715"
      "da"
    end
    language "de" do
      sha256 "1104888d179d76eace88efdf8b66710d0dec429380ba7e9a33e74bd0e4991e9a"
      "de"
    end
    language "dz" do
      sha256 "da13302576ac24b0704b325f497c6b92e6e8c696f6aeaf3e9d8e21c7b2bb9514"
      "dz"
    end
    language "el" do
      sha256 "268cf7e456b78f49688b2b822206334caf5f9f482e43029ea15044025c76f533"
      "el"
    end
    language "en-GB", default: true do
      sha256 "e58eab4024fe0dcb1201970174d6a3d5b9b7ab9083a701330f81a5172d14951a"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "3dcbc7877ec6a36620ee53a99a102b280044198182270bd96385d2dcd3739f7a"
      "en-ZA"
    end
    language "eo" do
      sha256 "85cabb1b05fcf0b8384da060a51c11d78c35fc0429753854631926ad5b9dda6c"
      "eo"
    end
    language "es" do
      sha256 "a178d50f792db2a2c5a0e9963eb28762043b0abe0801ab8ec25c883f9833437f"
      "es"
    end
    language "et" do
      sha256 "aaeb59da32e5e8f3532cb5596f92381601b85d09ff7560dda04b8ea55363bbdb"
      "et"
    end
    language "eu" do
      sha256 "e72874c50edb5eb5ac5c1c11799f87b810e7e350b97e94e48e70bc9cbc21019b"
      "eu"
    end
    language "fa" do
      sha256 "2522e756567ed15547eeb31769d84de81f5778aed6c60b437b2d6f74bffe495a"
      "fa"
    end
    language "fi" do
      sha256 "b4c696a67f71be280ec7d024dfc4f2a899892e21e43421199259c6e5edc86142"
      "fi"
    end
    language "fr" do
      sha256 "7227de53b37e2f25a8a5997722e04ffac10aebf027095f48d344b4075d6de2f7"
      "fr"
    end
    language "fy" do
      sha256 "e014135325077f2ecc1c0e65c99abce450c5b15125ce51832f0457f85276d99b"
      "fy"
    end
    language "ga" do
      sha256 "2dc159c5b6f0ffde6b6ed53153231e5f3e74eaabd54d44d649f9443a3f96ff9a"
      "ga"
    end
    language "gd" do
      sha256 "4e2abbeb6d03328f87f2cd2bffa3d98ff33dc52069936bdb37dd81e1f51fb941"
      "gd"
    end
    language "gl" do
      sha256 "4353cfca7a5093c3e10af1ea7d04b0bf1f27a3a5505052b68e4bafb8272331a4"
      "gl"
    end
    language "gu" do
      sha256 "27f51cd000b9f551d46551a51a4900b0770a1838d1425eae121c91286c4799f7"
      "gu"
    end
    language "he" do
      sha256 "87a8b85ec579f5ba37c1870977639592cc3a2f42a33af8d05ae5de3b57908642"
      "he"
    end
    language "hi" do
      sha256 "cd850a12f42851babfefa3754677a86333597fc9cce668b9c579b1f6b1f7977a"
      "hi"
    end
    language "hr" do
      sha256 "4ce75862be080eb4163b09c7b01485929d0f964e37e9832e502e348a5c4fa85b"
      "hr"
    end
    language "hu" do
      sha256 "aa83bb82813577158f0a265dd27c9028310e2dd9f568083d378ce84edd8a7daf"
      "hu"
    end
    language "id" do
      sha256 "d3dc43088fd2e6271c25c81b322bda2d91271929adfc8fb61e6e0245e2482fd3"
      "id"
    end
    language "is" do
      sha256 "d74091f07024b209cd3d53edf95e0b03a85123b8d80dba5b9a5528d15986755a"
      "is"
    end
    language "it" do
      sha256 "c77b2ed3ac874e2226c3179aae3606ee59e5c248b53fb7062a07fb95f6914521"
      "it"
    end
    language "ja" do
      sha256 "47b7e6ec59ae6093a76c55c009b6ad50b64118871522469a1d5a72d3d51565c8"
      "ja"
    end
    language "ka" do
      sha256 "05f8f5481da70e0ce2c5827b7bb0244f09349b0393cc4474cb9a0a39fcd6fc82"
      "ka"
    end
    language "kk" do
      sha256 "3854cf9293d8dd7d1f27dc334b2af23653bb7d554d16169b54ebeca4aa5bb47b"
      "kk"
    end
    language "km" do
      sha256 "9f5fcbff6e1cc3acc3f21387ba621d4d9693549aaa8b1645ab298f52e954706e"
      "km"
    end
    language "kn" do
      sha256 "cb1072cd4dc1c977dfb658367d3a5049877c52aa86868eebd018020a6e01ef2e"
      "kn"
    end
    language "ko" do
      sha256 "39780cff945cc1d1aa01294964bacc7579044b8bc6d530eac8242bfff7d16071"
      "ko"
    end
    language "ks" do
      sha256 "d43c121b06bb426e841c36234cb67de2acf612edf80f6cca0efc26436ecde1cd"
      "ks"
    end
    language "lb" do
      sha256 "a921ac19e0f50fc718c92c9a252937d3baeb1bfe0b0d0678bd71b960a46f40a2"
      "lb"
    end
    language "lo" do
      sha256 "1068c05a2c5931df8bec57efe46273b35888b91387ae0912f36d7138223beb33"
      "lo"
    end
    language "lt" do
      sha256 "ee2307dfd1d8a0bd12db88be76140f652e9bca2886bd3f6bb8fa9cb3fd3a536d"
      "lt"
    end
    language "lv" do
      sha256 "698064b736dbfd2c9ac1fa48faf8bc1c1759491780c1abc1e799c239a53ec6bf"
      "lv"
    end
    language "mk" do
      sha256 "f35ce28b4970ef7de9991941ea54a8b62047fe59c50feb472193ab5296d401fd"
      "mk"
    end
    language "ml" do
      sha256 "ccec31cda0be2b1e92b7698e5f3d97409c4c61ae342060cceae6d14a2b695f67"
      "ml"
    end
    language "mn" do
      sha256 "04473428c873aad25c89104fb9109beee89061689e93cf55f4cdf426d2c9530b"
      "mn"
    end
    language "mr" do
      sha256 "81c73900026203da93964cafaf8a1c70247d2b8130dafd06fd98a384690efef1"
      "mr"
    end
    language "my" do
      sha256 "abf814ba4205c1385b71e1c0c47d6fd1498beeea4f085d62e6ca7352c66d5ee5"
      "my"
    end
    language "nb" do
      sha256 "e67f2cbb776b04c071d77020b34c039980ce767aa61995971b923e4204432adc"
      "nb"
    end
    language "ne" do
      sha256 "a024226764aa477cd705c16edf5ddec1ed72083883f800d5bd788d04bdc19aca"
      "ne"
    end
    language "nl" do
      sha256 "6fc2c7673049a84c402dd602b4bab36b5a219bc63f94b8ef70315b250348f0cd"
      "nl"
    end
    language "nn" do
      sha256 "7e7ad0396eec842c08fd5eac075c043f7036e0263c710a68be950655c1eb8eb6"
      "nn"
    end
    language "nr" do
      sha256 "9f46390aad63e30826039cd7d5e95c55b8accb2b3adf110199bd1174d23a7464"
      "nr"
    end
    language "oc" do
      sha256 "7d21910e0daba4c43f8037c218930e529c23abec7903b9088e09facd75d254b0"
      "oc"
    end
    language "om" do
      sha256 "9753b94985291c9d43de8e5f928ae6704ff80a2b76367cc053a6459b0be3f32e"
      "om"
    end
    language "or" do
      sha256 "91ca9a6bf866d6c542c69c8f96cc1fb46d3c5aa2f30e0661de5c3c9ad7b9c4a3"
      "or"
    end
    language "pa-IN" do
      sha256 "b2aa1b75740b41dbe7e0788b8940d37f695c66c3ed20e102c46e72cf070c86e7"
      "pa-IN"
    end
    language "pl" do
      sha256 "12661e45e6cf122e61549696f2848a7171589253f8e1e14b6dfa4a917a636213"
      "pl"
    end
    language "pt-BR" do
      sha256 "f9eecdfff2b9c086d39af8a624b7fc2ada43e5cecc514fe82153ac33a6964e8a"
      "pt-BR"
    end
    language "pt" do
      sha256 "f96827341f07d34ec219511407f1843d5663a52356d765179d3c457e4b2ba53f"
      "pt"
    end
    language "ro" do
      sha256 "efca2c9cf254837017fc9353c33b8f388c26f4788dedd0393ce58ababfb7a26a"
      "ro"
    end
    language "ru" do
      sha256 "1bdcd7a3ff0e899d0650ab3c791a6c19fd7ec5fb8f101d5732bfd6ac20ab7322"
      "ru"
    end
    language "rw" do
      sha256 "e762d8a7148c1fe349eef1e73245c7eb9ca7f1c0617f438d6a19cfd33ea13922"
      "rw"
    end
    language "sa-IN" do
      sha256 "49117bb832bbd29762f0f917b44fd60a411cfd898c4b1da257a220dca44ed127"
      "sa-IN"
    end
    language "sd" do
      sha256 "39b72bfc80b79ac92ebee9a68326e8209dae2d0496edc69aa2ae34151c6ded7e"
      "sd"
    end
    language "si" do
      sha256 "4fb721ba95db090da997641beb6c180f46dfd1dd4b9e898bf8e2adf67dd1968c"
      "si"
    end
    language "sk" do
      sha256 "feff1cdd548913ec1186abd6c98a520f048018a2660bb5cb383208486a9790dd"
      "sk"
    end
    language "sl" do
      sha256 "0ac5124899e39e590534bff306fc46c16a33610e1c2ff3dd0f0f9d5181d3f5ea"
      "sl"
    end
    language "sq" do
      sha256 "ffc013c853006a7a13233436c191e2f2e5026a9d2a3efc3bbea69b7cd9aa3d84"
      "sq"
    end
    language "sr" do
      sha256 "a6860b672a0e4b66ccc522b2dcbfa552572f6e5d4281df8b8c4e921e32f2bdf7"
      "sr"
    end
    language "ss" do
      sha256 "b92b1b9a8f878dfd6906934026e9e58c922d12b3d8c286126039b9cfa994c197"
      "ss"
    end
    language "st" do
      sha256 "b840a1d351d37e4455a64557a2b1694e1d4f771d9056e47c5e201b67bb71b9ec"
      "st"
    end
    language "sv" do
      sha256 "34ab96011ad4d623b2749b20b28b1152d33e986bae35fc56dbeac28792f58ed6"
      "sv"
    end
    language "sw-TZ" do
      sha256 "5dea198ec6adfa5e7287902dd0859131ac6e254c01271dfec4664021fa9f2973"
      "sw-TZ"
    end
    language "ta" do
      sha256 "ab4c1e61ba08ffc60b13ddf76273ffbeee4848c971ca008f661454b69e0b16ee"
      "ta"
    end
    language "te" do
      sha256 "9abb7364acce36e9bd4d13741e2f828043fefaa9ec623d79daf7f9c4bf13c97b"
      "te"
    end
    language "tg" do
      sha256 "88a04f2e81553e9da1dd2dd5b4685fc3fdcc1854602b648d55a165a77f03f2f3"
      "tg"
    end
    language "th" do
      sha256 "779ad1952b9530072dc7b05af8b862caa090c7fc564f2e7fad2d33eb520c6bee"
      "th"
    end
    language "tn" do
      sha256 "2bc4536c4c755d8b6c534b81b363bf7894e35d34667dc72b919f64dc4aadb277"
      "tn"
    end
    language "tr" do
      sha256 "cc73aa3910550fc78926d36870e0d08c8836fac81e15b11ff93ed6de9fd9bfb7"
      "tr"
    end
    language "ts" do
      sha256 "c92d96ae0fe8445c69b7fc23bb29cf3e0bceb1623730682716f7ab67f4b18ee5"
      "ts"
    end
    language "tt" do
      sha256 "b1c5fadebf1309b6f54ff5596ea580544e4712df82cc1e87e624167a04972fe4"
      "tt"
    end
    language "ug" do
      sha256 "cf209917042559981e4580a7074c5a68800786c7b58f9128aa652a883664999c"
      "ug"
    end
    language "uk" do
      sha256 "dea940bf676f72c28bf5c422e41a26917b0d879d901672fc7431860c7533cc3f"
      "uk"
    end
    language "uz" do
      sha256 "41e30c63634151ee348e1e9128877ef253a7023f596a462f2ba4eb9bfef79067"
      "uz"
    end
    language "ve" do
      sha256 "1f1aff77397ecb7b05885289d0f0feda1eca891a51ff04ef493ac129182bb81d"
      "ve"
    end
    language "vi" do
      sha256 "d8e97010f846391944c57361e1dcfca1aae3b8b2244fc7ac08e47a72a0d4f6c2"
      "vi"
    end
    language "xh" do
      sha256 "8f67f66ab2089e8cfac066f20b7ff544145a0e96e0fadb95307ca0982d66b081"
      "xh"
    end
    language "zh-CN" do
      sha256 "63d1282b9dc481f3917f5536d8d66c94d22067c704549bfa14c70ce7f7da0ce9"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "79030228abcac804164dfd953725a92bae0f22cd92ffa9ad3aa8f7c5484e2c51"
      "zh-TW"
    end
    language "zu" do
      sha256 "034b47a9f539a3732956c95ac19becd974841b53a17facf6d598bb7ea3f9714e"
      "zu"
    end
  end
  on_arm do
    language "af" do
      sha256 "c372ff1029e4124e1cd112a97c41598c5ce53fc57a2051589c026ab8927effd4"
      "af"
    end
    language "am" do
      sha256 "f4628e8412545a8b43bfd3b9dd548eb949fe1bf579fbb08b1e1a64038b4ad267"
      "am"
    end
    language "ar" do
      sha256 "1a09cf0766d9e589f1927e2d486d2c0e3fa7fb3b101e1ea8e95f614160e660f3"
      "ar"
    end
    language "as" do
      sha256 "384ebcfd879d5dfb1fa4d6559b40fd6c2b6f793e6ff132eeeb6b90ada9f3d65b"
      "as"
    end
    language "be" do
      sha256 "549fc9f7d3b54893301db19872fa8a460f1360facbd7931e68642516646b3ab9"
      "be"
    end
    language "bg" do
      sha256 "172510520ee874b4d5b64a2efe500721e80c03fcc8e930da3025dc24613840ff"
      "bg"
    end
    language "bn-IN" do
      sha256 "f8f100e3845d084bfdfde3dde057247b3b56d7fd9d951c66f5e893f1c80bc8fa"
      "bn-IN"
    end
    language "bn" do
      sha256 "80facbae349de47b3e88bce8affd6ba4b755b1b1a1fc104ba6b4a9622795d1f6"
      "bn"
    end
    language "bo" do
      sha256 "b481c5124312cbe3423df09ad88fb6bddc2b37e4ba5d840ce87f0e72da4ef2d3"
      "bo"
    end
    language "br" do
      sha256 "b3f50c94540069de1df5ec7a1fa621776d553c25b0af642495bf2eb6e17821ba"
      "br"
    end
    language "bs" do
      sha256 "26d90cdda0f80704d50cf58304f5dcadf63a8579a10fef22c83868a98e6fa790"
      "bs"
    end
    language "ca" do
      sha256 "ea43311544e204e277be3a77104f8c8dd5723f999f4cd066c13e65934a160248"
      "ca"
    end
    language "cs" do
      sha256 "a7e0c074c785591ea9bf4ea9ff19e2f162fb6d2c3bc650d400f824920bbb99ea"
      "cs"
    end
    language "cy" do
      sha256 "5c34d9c5b655b879def976288a99fca3a10880bb71761fcaff64ac59ed222dcb"
      "cy"
    end
    language "da" do
      sha256 "730f94dd9d3551218f6eeb69e2f5f2c1731ef2410ec8e636ada6568bb3699b94"
      "da"
    end
    language "de" do
      sha256 "ed6fe94a125167b741c426fa103b1a4de9f73d479f753a725cb4f92518aaef08"
      "de"
    end
    language "dz" do
      sha256 "e4edbd185e387707549a5542602aab54bdaeaa048794947ec5c2a38c7b0f82d2"
      "dz"
    end
    language "el" do
      sha256 "9ebd93ccc90c163e15dd05b10471203de3eba7315f08a2943c82489ef3943a5f"
      "el"
    end
    language "en-GB", default: true do
      sha256 "eb813c2ee4481fc3b00b51407b1ef3dc9432d4cf3c25c3f881bff7e84ca6237c"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "2e14ba7dc5272f27b551d6e5768193f4ea2dff9d813b0221b31898536cfcd0ae"
      "en-ZA"
    end
    language "eo" do
      sha256 "b11a13a570940d753f5e21f87401825373cd2c475d126bd38010adeecf94394f"
      "eo"
    end
    language "es" do
      sha256 "ccbaf759ec6ba4c68dc43909228d805bd33174f26f83e6d6eac6c4a4976fd4c7"
      "es"
    end
    language "et" do
      sha256 "ebdb9a50d578ec30b48ab545aec8a2457557026ac32e5939e5281e9accfbde03"
      "et"
    end
    language "eu" do
      sha256 "f9c6155e034917b05fa948e2a0652cfb3665e793ff750fac3dfc1b1a4af22b58"
      "eu"
    end
    language "fa" do
      sha256 "114cbb1643a7c71cf0d1781e22ff21f49f142bd2715a88a1701bd4d8c7efe81c"
      "fa"
    end
    language "fi" do
      sha256 "3b76491c7444989aabe34c84723201040f912a4d8616c4a7f21ad9b6c33c2855"
      "fi"
    end
    language "fr" do
      sha256 "a8c43e42f2683d11478c3548a2aeef5b35d41941bcc7958a7895e1a2168a62a7"
      "fr"
    end
    language "fy" do
      sha256 "3e90f238d3a748363e66f6bb678deb7f63c010190f20b5776ae731b72822745a"
      "fy"
    end
    language "ga" do
      sha256 "f59ac47ab1c4b4a48c2cca54e0782ea794bed9e4e2be4a2c0e5015173c8e1d59"
      "ga"
    end
    language "gd" do
      sha256 "d13d36d9818db1a8741ff0653f1327db6a69b5095ca6eba3adf114f7f9ae4f1b"
      "gd"
    end
    language "gl" do
      sha256 "200cd4e73d33f4cf3e578c01d0e23c523afe7ee4ed87f3df8fd20d8e0745aae2"
      "gl"
    end
    language "gu" do
      sha256 "d38b66dce7221bcc2d1642a996052e66dd6595f25ed8726fe2748dab5b3a6110"
      "gu"
    end
    language "he" do
      sha256 "a047efd6bd50ea2a16bfcd0effb1e18fed3f16807c749d11c795ad737e237c81"
      "he"
    end
    language "hi" do
      sha256 "0d257ff344be9023c765f65454e164a70850163cf728ecab5832a0d9bb7105bb"
      "hi"
    end
    language "hr" do
      sha256 "abebb85aa3ae1ea4a56a18955985c7e21f68497a536adbd3d3fdfcf5f1adc884"
      "hr"
    end
    language "hu" do
      sha256 "1d0ac1ede4e9498a9464cafee587f7639429416d4cd3e0468cd5498512e6c33a"
      "hu"
    end
    language "id" do
      sha256 "a5e59a983b0594b0bc976537c68e365cd2ea966140fa5db770a70406d813ac79"
      "id"
    end
    language "is" do
      sha256 "5f75d617c0bcafa68faa8ed0f6571812c0b9335b50789baa2483d58146219a9f"
      "is"
    end
    language "it" do
      sha256 "3a3a837859d4e62badb4f2b60c422ebcaff9330b6b48b65a783de7560c53fb1d"
      "it"
    end
    language "ja" do
      sha256 "9b3f3806ac0a5fc348255ac89c2063c24ecdd78ddffefc65ccb7bbba79f20021"
      "ja"
    end
    language "ka" do
      sha256 "67565f45a25ff123846ac72aba51077cc46d6529ef8dc1036cd3bcacc64f3d30"
      "ka"
    end
    language "kk" do
      sha256 "339a622ec1f03e4f7fdcd042b0659374fe8afa4f3724f58b10136dd81977f6ee"
      "kk"
    end
    language "km" do
      sha256 "194e9c004435b5c644d301f8217dc2dcb2b2e4058865b0b29358fde709c20197"
      "km"
    end
    language "kn" do
      sha256 "75e0d93a7a088da60088fa1290d21359eca789e2a9b47cb81a288165c2814c78"
      "kn"
    end
    language "ko" do
      sha256 "13e0d242a5e79374476ea88962038432f609920b53bedec0225540832211b009"
      "ko"
    end
    language "ks" do
      sha256 "6663625154ebb0cf40c1b459caf95608f7e808a5bd0e7e442d53e9e96ef95b33"
      "ks"
    end
    language "lb" do
      sha256 "20cc9afe7cc745380fb71737053dd587a7be0ea543b2080ca0048ac31dcd28a0"
      "lb"
    end
    language "lo" do
      sha256 "5b102dbb1913c21b558b98da8729c82aa636749518493762ddb80fa6a0bee050"
      "lo"
    end
    language "lt" do
      sha256 "5174888433a9c23e8b5d4f25d440bfc984b5e276ebbee0f8b2a7d92e3a4bf315"
      "lt"
    end
    language "lv" do
      sha256 "cdabbfdedcfa55ef155e33e67cddf53df54a11a19af3057ca2fb9d5826c40f69"
      "lv"
    end
    language "mk" do
      sha256 "f59d596fe61c4ffe8bbb97984e4a9240a4b661bccdc5d82e68e23bdc88bf0f00"
      "mk"
    end
    language "ml" do
      sha256 "88d7cca7dcf818110277297c4d6afe156552284a4d220b2f164f86feb217158c"
      "ml"
    end
    language "mn" do
      sha256 "8103bb56df683c9b6ac488e9205b4212685b9fea01c46bdd00ac4ef01c74be23"
      "mn"
    end
    language "mr" do
      sha256 "993242009ea94503b6223ed5d745bc488a295e6d912cf1e55332fb700b41f538"
      "mr"
    end
    language "my" do
      sha256 "698accadd1a0c4a0cb0ef77f0f3ed9afc0e050a4b461012236d31d470abff12a"
      "my"
    end
    language "nb" do
      sha256 "0188a1ba46b14aa11fae5dbc493cb0131b527a74837dfb0fea2ce33ce0ed9874"
      "nb"
    end
    language "ne" do
      sha256 "2558945f312c2525aa829f90a53526ae80c3b0c24d84e592ee2e0573ffcb9975"
      "ne"
    end
    language "nl" do
      sha256 "d755b5a5431940eb4607f28e34dcca65c62b77c179317cbce02fa2888541604c"
      "nl"
    end
    language "nn" do
      sha256 "180644f9aef07b6cf1648445e4d120478b25290cb9e94f02bd07fc42edc9d10c"
      "nn"
    end
    language "nr" do
      sha256 "59860638c80a16601502513a0036dcab7a2a2ac7eeb19efcce214ed2dd9840a1"
      "nr"
    end
    language "oc" do
      sha256 "d173bb8adfa85b0b1272f1add4f189a394cf94290113799955cba4c9b43f3865"
      "oc"
    end
    language "om" do
      sha256 "50f68baa7aaf224226cc0183d497418c494f49efe0549db4cb694a1cdaf7016c"
      "om"
    end
    language "or" do
      sha256 "352d2e6e0c7b30b28a46936f16039b7c3ae19b82314dd41afb2dba16f93c6c26"
      "or"
    end
    language "pa-IN" do
      sha256 "9677dca7285188eb0a4618d8b9847c3f7ef516c2e94df95040610a9463336cbc"
      "pa-IN"
    end
    language "pl" do
      sha256 "6bca42994928f34ba691c27430cb4119264bc353cd7f1fdf406d5a0fa9f1edac"
      "pl"
    end
    language "pt-BR" do
      sha256 "b0ee98a6d0f086edf069f5116637668e25ea1642fd1ff9048e987988b9d5acda"
      "pt-BR"
    end
    language "pt" do
      sha256 "166d3005ece85bb3a18c886d5968e684040ab3bf3a0cfdfc786d0cff1afd4fa3"
      "pt"
    end
    language "ro" do
      sha256 "e9a17eba74630511904e9f1941b11f05e2d957d7097454ab8cdf6ab783e34d93"
      "ro"
    end
    language "ru" do
      sha256 "fd3c3acd10898c51ed3de0dd7dc5443998c3435d5b9bf46c7866aebccc1b4f02"
      "ru"
    end
    language "rw" do
      sha256 "b223825c4035b3c270e37e22e3f5647946ec2cac887b873c06b40a365fe44e07"
      "rw"
    end
    language "sa-IN" do
      sha256 "8e65757bb594b1e1b885d93a7aac31d366a02e19a89bc580cb44aaa30384cb49"
      "sa-IN"
    end
    language "sd" do
      sha256 "541b34db445e74925e5318c1100326475efe234055b6313ef5ed7e299eb625e1"
      "sd"
    end
    language "si" do
      sha256 "7c4956892fa42a02ee2e9bb8d8b9d15774bbc1283ad3c5eaabd77faf80deb071"
      "si"
    end
    language "sk" do
      sha256 "a68756360d59fa7914071d84ca28956b953e93adcdd308736cc94a7d61a721f7"
      "sk"
    end
    language "sl" do
      sha256 "2c5942c25d5183ea93e1ba381a4c9bc87361fdef825bd9a382cc6a7c6a193333"
      "sl"
    end
    language "sq" do
      sha256 "2924038ad3a3408e394b003b54415ef6cd7f65cdffcca6bfc9050fd7788d80b2"
      "sq"
    end
    language "sr" do
      sha256 "1cdb706f99ac8dccac5a610f5bde0026253df154b2274ac40290dcff970959f7"
      "sr"
    end
    language "ss" do
      sha256 "fae81f9d25d3831bf4af4f68abddccf5433d05a14015d32ca8796045dd6727a0"
      "ss"
    end
    language "st" do
      sha256 "bf1ad2b97c6413c41fb2d89c62d1f2b729e3f2634001541cccc4ba4f8c03416d"
      "st"
    end
    language "sv" do
      sha256 "1e3499bbd6fbd7e2dae79bdad1576fde4bc931a71f0e96822fc22dbae4a4b4a6"
      "sv"
    end
    language "sw-TZ" do
      sha256 "39f56319a6dfaa3aded494bbd775a3ee4c785c94aadbbf5e7b3b5df5371ff5df"
      "sw-TZ"
    end
    language "ta" do
      sha256 "eaf509f82ccd46611417c8c6c43f03eee7a01efa9a08f599f0d2202f7c64b6b3"
      "ta"
    end
    language "te" do
      sha256 "9fae2a14b87b960eeb0b47fb45864b54b8708ef5ea4d49800e8bb6732de9317b"
      "te"
    end
    language "tg" do
      sha256 "c7a8aa15aa81fa9149f9db62658be165f4e0a9dfae9d0840dd61e9ebd1323e05"
      "tg"
    end
    language "th" do
      sha256 "22549db36c24ab84c82e3c314a5fbff5bcc0a5a5c6eca081220c4e448c7f6cc4"
      "th"
    end
    language "tn" do
      sha256 "0bc851926547af5b081f6784f56e009032a521ad2cce495cf8ed1ee99b72b71e"
      "tn"
    end
    language "tr" do
      sha256 "2112c9136016af0d24e11ba80fac8328622538e4f79b5b78a68197bf89a30962"
      "tr"
    end
    language "ts" do
      sha256 "122a74a9b1ec629c590c9b5a9c60be347263a7906570394010574d9042c7c7ce"
      "ts"
    end
    language "tt" do
      sha256 "827e2bbfb96554d73ef1fc919eb571173b29079d619fe9b4da084d8eba9d97ec"
      "tt"
    end
    language "ug" do
      sha256 "327650471a1aefbc1a607b6538ddf3dbab930d952f39d688ec8b20acfbe1ff3f"
      "ug"
    end
    language "uk" do
      sha256 "fffddb17100179c2689e898b7942861d19275c5156077c6aeac0fa3fc40b4adb"
      "uk"
    end
    language "uz" do
      sha256 "5a179c9cf1231fd2b07e9ee746057eda13e0d4ac85677bd0a4c19caea904da7c"
      "uz"
    end
    language "ve" do
      sha256 "b4f6225147812423427e06b8fc744a0135017a8344ddd688de41de8ae7eff7a1"
      "ve"
    end
    language "vi" do
      sha256 "62fd3b260fed80c650f83ec996af0d49d48ad742a19d95f423fc623c0a3ab13c"
      "vi"
    end
    language "xh" do
      sha256 "729c550052cf8389a73835b435688970ee603d49399fdc284bb31ec9a205f955"
      "xh"
    end
    language "zh-CN" do
      sha256 "b51620a08056c8c69f4154dc239fa62a0e9bdff331271453ffb92345dc70b6a7"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "fe6a50b264f0c93a273aa3c0c359b207fa574873270a21fd223e4a344134b96e"
      "zh-TW"
    end
    language "zu" do
      sha256 "c2fe03c171ea70264f3c973b53938308ec841dd053d6ee3d99d411d1686a790f"
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

  installer manual: "LibreOffice Language Pack.app"

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: "#{staged_path}/#{token}"

  # No zap stanza required

  caveats <<~EOS
    #{token} cannot be upgraded, use brew reinstall --cask #{token} instead
  EOS
end
