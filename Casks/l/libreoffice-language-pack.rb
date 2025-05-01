cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.2.3"

  on_arm do
    language "af" do
      sha256 "902d183316ae009cd88db2945466f2bfa1e468ee64adba96d050cf3581838f6e"
      "af"
    end
    language "am" do
      sha256 "5a91816b2d5b797670e35816850980baf55951a0cbd080467fad498cbddbd88d"
      "am"
    end
    language "ar" do
      sha256 "dd34c71115475c4c33413d37ae70b7e50caf7d3c4d2dd023e41c82e57b8fece8"
      "ar"
    end
    language "as" do
      sha256 "d2e2aaba06dbcc305dd280a2d570fccebb46409c99be829108aa891a18411bf6"
      "as"
    end
    language "be" do
      sha256 "859b1f8c30420eecf10aa0fb8cbfe7a9c74bdc3738441b8fba2e5a9195c4b179"
      "be"
    end
    language "bg" do
      sha256 "afd8a95491a8927ef511cc78633ff6665f9d585810027676b6e73e496568314c"
      "bg"
    end
    language "bn-IN" do
      sha256 "ddb866f2cea35424d4779dd8c2429a664607e831fce2fc158df32ae68feb9294"
      "bn-IN"
    end
    language "bn" do
      sha256 "bfd630fe65246d425df6284b747a317cddf9950c8aa368e9f0d148a64f3e6712"
      "bn"
    end
    language "bo" do
      sha256 "7127d5a07911af65f02301a4e878f54d95445f55df04bab988a679df567be4f9"
      "bo"
    end
    language "br" do
      sha256 "c4989a2ffeb6285abf36f307b5629a3454f0a7efffaf99ccf91a1767ebe120f4"
      "br"
    end
    language "bs" do
      sha256 "4ec1c14ca3cddd792e89d16e8800913f13f1d2c023513cd0c83f5f862af82a7d"
      "bs"
    end
    language "ca" do
      sha256 "c4b3fb262e7191929732f1bebde0baf32e89210e78f224901ffc3618fbb640ce"
      "ca"
    end
    language "cs" do
      sha256 "f1841ad7686a5c266761773b6082dde2145676de9bee239293430af75afc7c51"
      "cs"
    end
    language "cy" do
      sha256 "21b60f73d62313241e7972427dc041f613341dfa0203bcafef1fc18af010e215"
      "cy"
    end
    language "da" do
      sha256 "0d42791d9d0bfe87d93c3629f1ea484f6264c141d0c09ce33796535a352ae863"
      "da"
    end
    language "de" do
      sha256 "68e2e3d9b4206e82022c784bae075c7c43486c5036682f928e7b5256c2303865"
      "de"
    end
    language "dz" do
      sha256 "4ed2448baf5f344c7b9dcb8d64ae5d7d5351bc87ff63c78fe8c698f3c624631f"
      "dz"
    end
    language "el" do
      sha256 "44642fb79ceafc86da4ce144a7e28301fb8cc329b98e47cf5e03761fe1dc9a61"
      "el"
    end
    language "en-GB", default: true do
      sha256 "ab723438e7b454e82836d3e82b45dca20867e5c3b2d006549f017da852c64206"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "bc9eeb8ba4311daebd80ebeb6d9f04de437dd53f1b48f9a7d6af6cc479f16111"
      "en-ZA"
    end
    language "eo" do
      sha256 "85b343bd35f826a2d9bc47407106e157d9432bede9475ff128d410fcc7b681e7"
      "eo"
    end
    language "es" do
      sha256 "6194ea8563bac38c4311c2952e7c284540d637fb2fa2ca2a976b1f4f4f300c98"
      "es"
    end
    language "et" do
      sha256 "d1a078163af3512bb2d8478719b2b76df630f67dae1e23cc4642528a464a1152"
      "et"
    end
    language "eu" do
      sha256 "19dbf498e93b6c1911cfffcdafb1186f716eae4263a885972efac070b1bdd884"
      "eu"
    end
    language "fa" do
      sha256 "6f8053d735cc336c91c4d35a41a8df56740144bc329d41323820a7543f93ae16"
      "fa"
    end
    language "fi" do
      sha256 "7f6992530fa9471fc136fb359444ee5b4746594341261ea1fa8d649ced12f523"
      "fi"
    end
    language "fr" do
      sha256 "67097f9279730ff86eadb2c46f1fce6aae10a974277e16a5272d1c11b9ee65c2"
      "fr"
    end
    language "fy" do
      sha256 "16fb357ad5e6ba094bb0ceff48c34460b0e063d2fd3c58f8343b12bf554d6a3b"
      "fy"
    end
    language "ga" do
      sha256 "af785ef522ad99348c3ec32cba380c84ab620e18b1905cf7d1c289d67d4ef799"
      "ga"
    end
    language "gd" do
      sha256 "056ca063b86d139c209b273dbaa9ebbf31445b19ab3b9e0a9536d491e52d1620"
      "gd"
    end
    language "gl" do
      sha256 "e087f35025328c2feb83ae0c2bdc6e548188dba923c0c0f26610e09feb1cc78a"
      "gl"
    end
    language "gu" do
      sha256 "0a772ef8fc0754e9c608e473946a8d0a8634ade5d820374fae2bde4cbd7f95d7"
      "gu"
    end
    language "he" do
      sha256 "976fd0df9720d1de44f776a6ce3eace2cbd563654f3d4a9a34b3cce824691ddc"
      "he"
    end
    language "hi" do
      sha256 "f16347db126ac390199681b379584a49d76bed8c90831f316314b7527a654a4f"
      "hi"
    end
    language "hr" do
      sha256 "0170c58de0b65159671626b8a97fa122bce6f50b338bb8f489c4aa1da2389b4f"
      "hr"
    end
    language "hu" do
      sha256 "47cc767a1c1743d25499215339e023cbbeef8ad696c24c4d04a58ae35de83fd7"
      "hu"
    end
    language "id" do
      sha256 "49d79d9020f647abd564bd0faae0b0f140cb8901245606fa4da2c0cd6d3a82f7"
      "id"
    end
    language "is" do
      sha256 "718d44f568750da9a98d81e5cce7054292ff1ee05131ec612722686cb05b4822"
      "is"
    end
    language "it" do
      sha256 "e6dcb0ae86e287459a29d965d64959516cece129ece0b00c30da6dfe2d369261"
      "it"
    end
    language "ja" do
      sha256 "d2f620b04a81ce696cd577dc4f2f4ab1714d5c5de91539e8fbb3616e67d41d08"
      "ja"
    end
    language "ka" do
      sha256 "f5c351198588e6d5bda351baee798e88c7bbcbb6c652bfa2b12d5cdaa154dae8"
      "ka"
    end
    language "kk" do
      sha256 "b4f2ac3200d9f570190d081f040c24bcbedd32bb2b75dce24d6f8b92e4dee8f0"
      "kk"
    end
    language "km" do
      sha256 "0a0c819268f63a605a6e143b956e1a520002e270a33df89aca3bfa00637a396b"
      "km"
    end
    language "kn" do
      sha256 "a83e85d59d2fb34738ccd4fca893faee554d890dcb6494676353817b120d8059"
      "kn"
    end
    language "ko" do
      sha256 "ccd0487ec0aed079fd93379f83b700fe7bbc5413f566ef6e61ae2799b20d3dbf"
      "ko"
    end
    language "ks" do
      sha256 "ee0f67636e3be7ce5796f7fbea3de09b6790ce7e4bd66af1fc77f5f3aca06853"
      "ks"
    end
    language "lb" do
      sha256 "2ca7d7000fe3d7e428eda289df0a9ce3d434285acf52349825ed13fcd8df41c7"
      "lb"
    end
    language "lo" do
      sha256 "204a02e7aaeb8b392a5919084ece2422386ab10a3e2f37d232cf17a252c56839"
      "lo"
    end
    language "lt" do
      sha256 "3e0cc2a9a8b0206115349064386470b1be87233893c201dac1bceae460a0f6c5"
      "lt"
    end
    language "lv" do
      sha256 "e599bc2b9d93001c7677105ac556a5ca6652f5920461abb06480b8545c502091"
      "lv"
    end
    language "mk" do
      sha256 "d52f36f7e8986ee96325a7fbae310cc24c1d5379f0edd8ae39ab3b158f901460"
      "mk"
    end
    language "ml" do
      sha256 "d04b23dc97a028b4afaeeb36d0dc2a3306fd702490c2cfa71d907b3ffe15c8ab"
      "ml"
    end
    language "mn" do
      sha256 "1003c061dc8d644903ae291a21e71237ce548dea3010420de394668ac6d66d8b"
      "mn"
    end
    language "mr" do
      sha256 "eb5129837fa0903dd6e58cd39530ab48b050de765caa4603381e6e2c5071410d"
      "mr"
    end
    language "my" do
      sha256 "030d9fc0e1d91d3def1793122439dfced9be22111b6bab5cee23e28e9b9327ed"
      "my"
    end
    language "nb" do
      sha256 "5d9a4e22d9fb3f05d03f6e2edbbcab3ae044b71778f435690aaa53926c551006"
      "nb"
    end
    language "ne" do
      sha256 "8ab67546ab8bdcf2f9db0c14d37d86b330413eb86975351c501c0e9930878d07"
      "ne"
    end
    language "nl" do
      sha256 "ebd7625803e990fcebcb782ef308dc09ebdb15de67e1bee17b72b6153a84f901"
      "nl"
    end
    language "nn" do
      sha256 "bf8c09f1981de4cd02909b7310dfc08171d39c959a8a38d8350233eb8da605bd"
      "nn"
    end
    language "nr" do
      sha256 "e5bd23a09298a3eb08726144ce8b873ecb2d99d5096fd3133937a9907dc6858d"
      "nr"
    end
    language "oc" do
      sha256 "02773d8e409596815f6bf76f8344deb678049c84e65c814491e2682b9a92ff45"
      "oc"
    end
    language "om" do
      sha256 "414d1e2a6ec3612b51e2df7307a4f9476e8760556476baad34bce752fd5b8323"
      "om"
    end
    language "or" do
      sha256 "ef31005d677331d7a64625c2308f1f8978826c1d84784df38cb3b4ec2eb14cbb"
      "or"
    end
    language "pa-IN" do
      sha256 "787e140956284b50f637688a7c210c9dfdcd1d6808e2d569e78b965d49758b55"
      "pa-IN"
    end
    language "pl" do
      sha256 "6f3cf23ba2f71ed02ae4dd7712979c6326f25b04d72ccb4f4698e336a66cf98d"
      "pl"
    end
    language "pt-BR" do
      sha256 "ca00f114d3dc4502d24f374642399e5296ad3445186c56afa720fe09d74060c2"
      "pt-BR"
    end
    language "pt" do
      sha256 "351ca64840de5677194b338e8dbf2e6b3c4abdb158c7ebf8340c8ecb80b737c2"
      "pt"
    end
    language "ro" do
      sha256 "0156ed3eddfbdc318c71d2cad8a0b1a00e5c0b3fcf6c5d1f5501fb004f7ae00f"
      "ro"
    end
    language "ru" do
      sha256 "4aa5ab0ed0227d5f65257badffc07970ab0c8d0bcac77351559992e06d8b4817"
      "ru"
    end
    language "rw" do
      sha256 "2fd6c0c3ee91a0f440a4f190c3086960a7fe38e4844550eb941f8bfa78b79923"
      "rw"
    end
    language "sa-IN" do
      sha256 "297dac29f46abcf4cd0907cb774c5215848aee4c132f19f05042201cb9d06558"
      "sa-IN"
    end
    language "sd" do
      sha256 "487f2540ecf7267ae9a276e408686ecd5403286be714e65dfae0f2d55c0df41e"
      "sd"
    end
    language "si" do
      sha256 "466121da7688251b9a4e449ec8bb01fb41e9150dc87838ce1fd8ff5312c0dddf"
      "si"
    end
    language "sk" do
      sha256 "8d20ae3facb04498100cc05a86b7b11b93723a83463e9b2bcc73e6dc864fb782"
      "sk"
    end
    language "sl" do
      sha256 "c07995bb8913acb76bf3b0dab080e53cdd4229720601ab6a1e64b133af42b46c"
      "sl"
    end
    language "sq" do
      sha256 "03093856370367cc4314f74d6130b3f772bee0d46d3f41ef6249fc6e2d6da949"
      "sq"
    end
    language "sr" do
      sha256 "b5cfa986f49f9fb2122b290a1fa82af78770085b310b77c5190c21b788990788"
      "sr"
    end
    language "ss" do
      sha256 "6366683366aa9fe360175a69402aa71731e2ddfca37a18cb29531914e095eef7"
      "ss"
    end
    language "st" do
      sha256 "78f67b3d3808a5f217fceae5bd05ff67fb957a159b46cbb8d01dd344e68545f3"
      "st"
    end
    language "sv" do
      sha256 "9ada611b2da3b411256012731fc34f4ec062a3d5cd7f75a6b5f77dce8b11e2b4"
      "sv"
    end
    language "sw-TZ" do
      sha256 "13f0bbfa4926f05744a7b78a3f8f834a734eeff5e4fa573d1117894268e19ffe"
      "sw-TZ"
    end
    language "ta" do
      sha256 "ca522964cdde36c40bc2db46f5a85bdd6b5d05d3ea76dd46191cfee8f8b61597"
      "ta"
    end
    language "te" do
      sha256 "fd02ac6003b6928b3f27dc6dbd7f6cd12d9c398cbc727604404444cfab8f19cb"
      "te"
    end
    language "tg" do
      sha256 "890ec109c33d636648faf02ff9509bd54ad06d6dbf2060f8f1bf33c8297c5745"
      "tg"
    end
    language "th" do
      sha256 "ca864f0d8eb848ff37473e4719b45194b6553da818ea73da63bed37c74fadf64"
      "th"
    end
    language "tn" do
      sha256 "1cac096383f3ffd76a2e314eb343b5da760a138489a397b9a314cdfaa570d6e5"
      "tn"
    end
    language "tr" do
      sha256 "007e1d4c3469fd1f54a4589b10ea8bcc588b4d452302cdf3a297502a2ad68845"
      "tr"
    end
    language "ts" do
      sha256 "12983ddcc2914e6affb9081f3263673a93845992dd4ecdf232c037f348a47e7b"
      "ts"
    end
    language "tt" do
      sha256 "9612129b785b7c6a2aac506a7108e476f149f45e5262a41520ea8ebb603c7f3c"
      "tt"
    end
    language "ug" do
      sha256 "dc9199fca80b4722654010ee015283de00fccaeceef885ecfecb2c4960fcf703"
      "ug"
    end
    language "uk" do
      sha256 "a2ebbfc620cad7c1ff0bc0ddcfeeb39140fc3cbdea2e35858f968cb0615303b9"
      "uk"
    end
    language "uz" do
      sha256 "8316b5b2f393ec4f86df6d118462b3b4cada593fdcc64880d8bfabfb2583bb6a"
      "uz"
    end
    language "ve" do
      sha256 "cd4bb5eb73aaa502a104e78fc0c1c1bd8f731a5029efd0b2df79c919ea85547c"
      "ve"
    end
    language "vi" do
      sha256 "3c6469e3f7e94bbbe27180866ddac9e788d583274e859ffb61f3096532a5ba5a"
      "vi"
    end
    language "xh" do
      sha256 "1f5707ef5061f93fd358abd81a154ced8faacb4f9ffd40550daa37ff849d2661"
      "xh"
    end
    language "zh-CN" do
      sha256 "d727d547104d1f32cb2de446d034a9426d1c0592bcfccbb89eef66b6d4ea67c7"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "d421a0ae2996ad0af84ad4c1f499a5b0d1bd7ab762fec8109a7bc3c74debc581"
      "zh-TW"
    end
    language "zu" do
      sha256 "fbdbff65397893c548e85e3c252793e4ece26f8fb801ed33f4b596e4b750f17f"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "342381c8215ee24c433f039d4ff0b52f65df9863add02494c60803417f70a567"
      "af"
    end
    language "am" do
      sha256 "b31ce7a5ee5a9c839d24a09bb6c4ca5cde8781269b992fe8bd597d81262ea1f3"
      "am"
    end
    language "ar" do
      sha256 "5bb443769496361fde5b0eafb174415b21ec39a0c2cb69bf0f9547baf761d588"
      "ar"
    end
    language "as" do
      sha256 "05ce55975bdb4672b3552812fc6828102e08f26fd849bf8703504fdc9001d8a8"
      "as"
    end
    language "be" do
      sha256 "7168625a16acf0dd2c6e4a4bdb248c03656cd8e1ea03007a7761a6b2a2074e0b"
      "be"
    end
    language "bg" do
      sha256 "8f17ec02fd93eaf0f78768de4ac9914bd581156a3a52493610ea92ccdc3824ef"
      "bg"
    end
    language "bn-IN" do
      sha256 "a573223af1b19ac617b29c0341af4a6ade307172f0a72c12e4d0c0cb90aecf65"
      "bn-IN"
    end
    language "bn" do
      sha256 "c55593b012593172097e9e34166ed0110ddeccbf5bb48eeac2ff5fa431dfa8f7"
      "bn"
    end
    language "bo" do
      sha256 "73cad20775b8aa63a52b536d53d42382617b45beb0845923e96fd7187b4cccd4"
      "bo"
    end
    language "br" do
      sha256 "9b40d6efcdf68899aa5dd94b8aa30084707ef76bc4879ee1756e243cf254a2c7"
      "br"
    end
    language "bs" do
      sha256 "1cdcf1f9c1a3fe45a461e18055cf98a3ef41483d72c16be88935ac5311479ae1"
      "bs"
    end
    language "ca" do
      sha256 "0a5cfc9a71b0efc3611284dccbe4beb922901d8f28231e691d9898e288cf2a07"
      "ca"
    end
    language "cs" do
      sha256 "2581bcc2fa414d2a9564e05bd44aed80dc9a6a791fc7ec9de700bdcb85d95d52"
      "cs"
    end
    language "cy" do
      sha256 "f8b68088dda8ef3cc6d4ac6dc976806874d94feef2a60f3245e09aa8e59d1ab1"
      "cy"
    end
    language "da" do
      sha256 "a367b6e1f5eea2acf5c3049c105ef5bc966c507e032f99311206d45bf07ead87"
      "da"
    end
    language "de" do
      sha256 "cadac0482d467b29214191cd999cd5bc5f71aa2b49d36914393d53a4ca402dfd"
      "de"
    end
    language "dz" do
      sha256 "6f6f7c281a1e909c1e8fb664507fbd285c0c2d95dd75089b4a9d23407136c254"
      "dz"
    end
    language "el" do
      sha256 "2cffde7d39923b9e7d80cb9fef25ebf6715452004a25bf4046c27c102a09e6d4"
      "el"
    end
    language "en-GB", default: true do
      sha256 "a9c33608267995ed6813563cfdb1ae9c638bab8a3013704a283f8f09fe027ca4"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "7f0206f74e6ac13ca858a794bd1440879f2e342f9f19374f9fc624eee7ca4e5e"
      "en-ZA"
    end
    language "eo" do
      sha256 "b6d91bfda9c504410f761c324c5753fa93a90e91c6a8d31781fb805f40cd712f"
      "eo"
    end
    language "es" do
      sha256 "687906bfb7b5f7e2e21e0ab0cd458c570a74267a27fe0ab6080d142143037408"
      "es"
    end
    language "et" do
      sha256 "b6b0712029bca84e730ee4eaa2177f9c247736b47a185481483b0c75a940d5a7"
      "et"
    end
    language "eu" do
      sha256 "fa41a120eeca3b61990fe70c3e3a695fda47e0f32493c09ffaccc92ea6956ed7"
      "eu"
    end
    language "fa" do
      sha256 "672e181d2e50581e9fe6e32edc46c2a0292b4826e0696c95d001d90cc4838a33"
      "fa"
    end
    language "fi" do
      sha256 "e3f638f70895324885ac91d50bf0a5b2fdb2427699f891d52e26d106328d0779"
      "fi"
    end
    language "fr" do
      sha256 "f686453d83627441dc26c8db48bd21d2f73c362d45db2b787d1e6e7802dcb703"
      "fr"
    end
    language "fy" do
      sha256 "e9fd0431142136d0ccc105c23aed6fbd10ffd8f6d4724028f0da461eb3b9d704"
      "fy"
    end
    language "ga" do
      sha256 "d260658cc75135282ca7c15f05c6b67ac6cdcb230bf9be8bff3641b2c97d36ca"
      "ga"
    end
    language "gd" do
      sha256 "c4a4229da021f9e97c178c384cb9a415abcbd78619ea62d7681a26f280ed2b79"
      "gd"
    end
    language "gl" do
      sha256 "e86673220b1bf6ff8d92a0cb5818b3a3363512caa479581b8d284026fd7c1a1a"
      "gl"
    end
    language "gu" do
      sha256 "58b8d98e39ab85141acf7b920e196147b83194ac52eb99f526ee0515f05ed47d"
      "gu"
    end
    language "he" do
      sha256 "bc74bd621a0e020268ccfabe9356375e975ba9ed3a3e1cf99165013e50996cf0"
      "he"
    end
    language "hi" do
      sha256 "9e1b4ca5e6d8ef9e264f72a6292b8a805018f9e5489c87cbabc5e109f040852c"
      "hi"
    end
    language "hr" do
      sha256 "9edb801a16767a0c2d4a34431d2bb336597bd546337291430d048fa154af7a33"
      "hr"
    end
    language "hu" do
      sha256 "60fe7f6420935c91f9c9ab87c6e88a2b11cea502d1164aad37e9f5068a299b46"
      "hu"
    end
    language "id" do
      sha256 "99009be9098b836694d22ecc543a76a21e9b7d1044a009f781af15fbf25742f5"
      "id"
    end
    language "is" do
      sha256 "0eb84d5c8d86211e8ef774fa220b7ba41585bf9852afc9400513b01580f9ee38"
      "is"
    end
    language "it" do
      sha256 "2d2ac8efc1da27b0d20075cdbf11ac2a0e87a3cc4f0c81b323d35ea414884334"
      "it"
    end
    language "ja" do
      sha256 "21a487a5340ba39250196c55ff21737339077ba838ad41a048a07ec778fcf52f"
      "ja"
    end
    language "ka" do
      sha256 "fe80244a0dcf710699637e30a47fa3a4625d5b3c7b149e329983511dc2408c76"
      "ka"
    end
    language "kk" do
      sha256 "4d78c75ddb7ce2f699bfd40cee10fbe91b242cb95ab6f7fdef2ab3a602b8dcbb"
      "kk"
    end
    language "km" do
      sha256 "83c96112104e37d7c6ca76ea067921c8a4690870a95d60ab16a099f718c6f29e"
      "km"
    end
    language "kn" do
      sha256 "72f6fc3ebaa7fc2038166eedc2bd5f5f1bfafb35a8e9aba7d15d969fce943836"
      "kn"
    end
    language "ko" do
      sha256 "97b62849c8a06e119b5a76275f2e1c82b98f9c29c29bc7e31dbe684bbdd1d1da"
      "ko"
    end
    language "ks" do
      sha256 "790b7acdc1d0607ae3ab93d20812b231c953f27fd2a7181654c823551538d7a1"
      "ks"
    end
    language "lb" do
      sha256 "309ef4748c406243961e99fafb3c806a1e2b3727240c77e00a2249cab748055d"
      "lb"
    end
    language "lo" do
      sha256 "180b5654155d292f63d7ee2d0f61e086a4ab8d2a012d844ba48bf768ed95121b"
      "lo"
    end
    language "lt" do
      sha256 "ac1807c7caa8cd880da60a7ed9363690e8bf32ab5c404fd954800b74f7330ab6"
      "lt"
    end
    language "lv" do
      sha256 "f73a0cf3c8d30915bcf371374eaa24dc734d31672f66159b73b0c11c45f068fc"
      "lv"
    end
    language "mk" do
      sha256 "901fec9c0feccb9d64fe62ab8e3c13a0f1e5632198d2b55817b7305172994589"
      "mk"
    end
    language "ml" do
      sha256 "11edab5423ed347d752fd237262312b90fd66f473d87548edc122e378894986f"
      "ml"
    end
    language "mn" do
      sha256 "afafdadc5bdbbb655e2551ee6106c77d7af72f3928c7f942bc2f7408ddb62d2a"
      "mn"
    end
    language "mr" do
      sha256 "17bec658525f212a1575f5036aee5a8334145f500c31e46baf49d3cbd0810410"
      "mr"
    end
    language "my" do
      sha256 "f410667f8e5ddf91d13e19c13ca0d2fe2a8fbc8e73cc604bf68265ad4ba7fbae"
      "my"
    end
    language "nb" do
      sha256 "1814c5ea290c02ce6de8b38fcd174eaeb18e4b6a74290f7c2f82d8d59b5de8f0"
      "nb"
    end
    language "ne" do
      sha256 "97773d37c793c1efae52e1b14118b90e2bfa3dc53c84dd701c8b52c95b81ed8a"
      "ne"
    end
    language "nl" do
      sha256 "18d5a1c8faae30713549c3ef2ebc37ce3a9e06998393631f5afb8ac34228ff4a"
      "nl"
    end
    language "nn" do
      sha256 "e2e78092ebb31f9f80f98acbdc7acb7aa7c4ad8750e22a7242a9c970eab8729a"
      "nn"
    end
    language "nr" do
      sha256 "2977750db0234e81b763f1457a46bb8c791c1491dfc50b7cef3d716d43b97d2e"
      "nr"
    end
    language "oc" do
      sha256 "dbcee62329b55fc4fe4056d9a7ddf55287ffdf65e602b0a7fa5ce789819d9a35"
      "oc"
    end
    language "om" do
      sha256 "9cecba18b6a32f775c3fa5a9f395bcbe0038741c4b98164a44bff0814bd8d45f"
      "om"
    end
    language "or" do
      sha256 "6b9cffbdabb1d28ef71c9c754823d7673dd3f8e42d73cd11272313412136babb"
      "or"
    end
    language "pa-IN" do
      sha256 "eef7f61ced87e2a6be4e0ba7bd8c775ff72fea9a7672ae81c8543eb741d74135"
      "pa-IN"
    end
    language "pl" do
      sha256 "2324f7bf9e900e520c7317ff3a076bb84902a0263b37b520c1694b74f0cd4c90"
      "pl"
    end
    language "pt-BR" do
      sha256 "dd27a7e2d6a4fd079de205519373eb4cbe2095fa96b91de9aa6062ad6de4dad5"
      "pt-BR"
    end
    language "pt" do
      sha256 "eacacf38d495a833d6d61bc890339b76a26a09ac0598af354d5ad143da9c204c"
      "pt"
    end
    language "ro" do
      sha256 "aabe9f4dcd29f421772a74bb8830891890e2c9778c78db9aa5ac151f42297994"
      "ro"
    end
    language "ru" do
      sha256 "6a3d106f78435ab7acc8b124cf501f4912295b4b0408adb8c3cea273cbf9396d"
      "ru"
    end
    language "rw" do
      sha256 "b6ef5209c71c4d7de211afa0a2f5af0e3af65cd635570bce4eac19df506763a2"
      "rw"
    end
    language "sa-IN" do
      sha256 "22fd72f3f62eff9e24244331a9f2a5db17d3783ae370b2dca38e205efd25ea58"
      "sa-IN"
    end
    language "sd" do
      sha256 "230ffb9e6b5dcc9cdb766ade781dfa23053da9a7d882c68c3bf682f8dc1d068f"
      "sd"
    end
    language "si" do
      sha256 "0b20f464ac12647316b658f47820eec35cec7e0bf8aeaaacdc7de2304a197ed9"
      "si"
    end
    language "sk" do
      sha256 "1aff9cb4540a2af09d48bf53acaa679ead0af17ceabcc0301e065b1d5d1f1f5c"
      "sk"
    end
    language "sl" do
      sha256 "a7bf819b6298f932a743d6f4ea4cd114aad34ce3606f6d4b58750bad382402b6"
      "sl"
    end
    language "sq" do
      sha256 "f53e8cb67de695a51d71d2f065e479c431d4c871e097a47b5d7b8799e1e5867f"
      "sq"
    end
    language "sr" do
      sha256 "b052fd6bc7a195a08021978c630c70cd0f4f0bd596ba87e63bb1e8d62864c7af"
      "sr"
    end
    language "ss" do
      sha256 "7115c38fad9951bacb3260ac5384b6c664765ac06d60e216f5e7cdb371480bbe"
      "ss"
    end
    language "st" do
      sha256 "9bc66a6a3194d4ae373e7d6b246ec8c375b8bd4cae8ebe56adcfba0ce33bcda9"
      "st"
    end
    language "sv" do
      sha256 "2a287ebb843751a5fb9bb6ef6fdae16b34d0f4ee80a18fb7c24cd69d02287293"
      "sv"
    end
    language "sw-TZ" do
      sha256 "2313672a561d2043bfc0ae8503910bf6d0048a54893ca05617d6345fbb508c51"
      "sw-TZ"
    end
    language "ta" do
      sha256 "9bf67c31c1ee833da6aff5a61df0f4397ca5a1c292478b9e74833b7d6540bdea"
      "ta"
    end
    language "te" do
      sha256 "81946c8793387f20b4410bf10b928f2bb5026ab84aa179f579616fba1525734b"
      "te"
    end
    language "tg" do
      sha256 "177d4c576d5ecf0eec6fd064b24f8790de6aabd39b71bb7fba3561e595228bd3"
      "tg"
    end
    language "th" do
      sha256 "e6954d024e31fe442684ce716be11b45fcfdec8cbabd312f95f16409331a6970"
      "th"
    end
    language "tn" do
      sha256 "02e73c41d5c6fdfdb0e23acb69d2301e1aa2f2408dad5bec388f0cfc10825214"
      "tn"
    end
    language "tr" do
      sha256 "e51b23fdc1f11134ad09f70a1d8e81ff38111442ce1ce4358c8a019906394e1f"
      "tr"
    end
    language "ts" do
      sha256 "39ace9b4927c4b7ca5cc42907142d74147ddea0ab08e2cae2ede26909b7a069a"
      "ts"
    end
    language "tt" do
      sha256 "c09656ff9e12df5666872c4fac4a6eb15451c2b85cedb09c6d477211cca4880c"
      "tt"
    end
    language "ug" do
      sha256 "7cc74eb09e3375eb301897f33bf8db1f4c6723af2202690fb324c952c2267f96"
      "ug"
    end
    language "uk" do
      sha256 "91fe2b61a08b383ca533c187b0e002069778e4de44779fab33c287e59663bcc9"
      "uk"
    end
    language "uz" do
      sha256 "944cb6c08fcb8e53558964920baf48a3d37663cd8a15ecf1aeaff6e6b37bc3b3"
      "uz"
    end
    language "ve" do
      sha256 "767bee05103d462a1505dcc8b575d1cc88246dfb42962276db191c5a8aedc10f"
      "ve"
    end
    language "vi" do
      sha256 "27517e74454b9fc97f10dcc993135b81c41265149e8d9927cce099c259c3ee83"
      "vi"
    end
    language "xh" do
      sha256 "de6fb9082b9baa5e376939d26d6c98b33474ef5fcb2ed2448bc93901966533aa"
      "xh"
    end
    language "zh-CN" do
      sha256 "ff3b3becc0b7d05bef5e22096ffc236932d1c92395e822e07148a534c9836aa7"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "bf9be388515015e37654ccf766cc20fb2cafe1d493395c6f8e82a208ec949bd0"
      "zh-TW"
    end
    language "zu" do
      sha256 "ba1ae2807ca3f3379665078afa70481d3646ba9f27f7d564c0c1123ee0fbb07d"
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
      pathOfApp=$(mdfind "kMDItemContentType == 'com.apple.application-bundle' && kMDItemFSName == 'LibreOffice.app'" -onlyin '#{appdir}')
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
