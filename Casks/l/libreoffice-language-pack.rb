cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.2.5"

  on_arm do
    language "af" do
      sha256 "fa118d5021dea885d7a22236405f6facb3153503b77a7e6de119bec2b0218aa5"
      "af"
    end
    language "am" do
      sha256 "32ddf64ea7f1dd57e7e71b80b8bfab4c637f03d08c570392b02352b4cf81159b"
      "am"
    end
    language "ar" do
      sha256 "973122125d6ea26164a7e5dfd6f267d2df59d8faba185337b7f2ac88e0193487"
      "ar"
    end
    language "as" do
      sha256 "2e945eb87fdc06a51a30b63242b11c337707ecf20993e3fa67660d1cac16ff74"
      "as"
    end
    language "be" do
      sha256 "406e558627a68c39e95a51c45966bad8a9b65adf538866027dee91d6f07748ff"
      "be"
    end
    language "bg" do
      sha256 "69ace60ebbda18e333aeac936919001da8d9f880a402e708aedb2b69553a9b87"
      "bg"
    end
    language "bn-IN" do
      sha256 "3722208d317c7bf0ea0ab940aabbff544080e817c0f5b25b08579525c567e41b"
      "bn-IN"
    end
    language "bn" do
      sha256 "82bcfcb285cd9c7724e7fa1e8bb86798b8d72841b778a0350b5f7b511c42896d"
      "bn"
    end
    language "bo" do
      sha256 "2bb3c168c8f7992cb2fbd06966dbe9bf335503cc77a82e130f048ceec0ce39e9"
      "bo"
    end
    language "br" do
      sha256 "f7f42029632b9b2009cb2feae0e5f77d79dafc6fafd2a8d5787fc87decf38058"
      "br"
    end
    language "bs" do
      sha256 "8a97ed77bf4a0aefcfec326d92edb8398dff1beb8fa21262abba64ce66c38730"
      "bs"
    end
    language "ca" do
      sha256 "9f277c1f0c0b602be46604745494da427aba302eb42f2af97931cf3dc595b712"
      "ca"
    end
    language "cs" do
      sha256 "1fe285e38b2ede667e8f22e54efaf6c315b39d653ab73ac22dc46d70bad79bc1"
      "cs"
    end
    language "cy" do
      sha256 "475b3bf882856ced55a5e7ce226be78e06851070af4bbab27161fa751ab791a6"
      "cy"
    end
    language "da" do
      sha256 "0180f2c539b8237755e04fdaf2123782422a52a39accfccfd5900c867cdbb5c3"
      "da"
    end
    language "de" do
      sha256 "4660bf01820c6230b3f12f2668c14e4bf262748613c9dc6447da45512a07bc11"
      "de"
    end
    language "dz" do
      sha256 "34728b6d16285b9967ddbca7ee27758742456efa0e9738864cb1704b306e99f7"
      "dz"
    end
    language "el" do
      sha256 "7f79b7a57a179abaff1acd0f5d7e3c6ca2f7f282a5a39dab968312d7d6c3c1bc"
      "el"
    end
    language "en-GB", default: true do
      sha256 "22457ffc6bc52420d620343bd5018b25ad87e0cccf6a5a6b00344a25f4b5c237"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "83b917226e5bacb4db821afeeea78728d41795a4d08c8b181222fb0eb60401a7"
      "en-ZA"
    end
    language "eo" do
      sha256 "2676abc9a5885e689c2636b3a9ca368da5edff3c4f2707f7ca7d1ed9345dca64"
      "eo"
    end
    language "es" do
      sha256 "cfb8db6a8cd9acc9781c9aa7ba9d7337b78b395b6a317991e1a66ca37d5ad04e"
      "es"
    end
    language "et" do
      sha256 "fda73eb0ff1eb7573e8f93a434a1e5d148b43ae8d24708ccf590641fddf30154"
      "et"
    end
    language "eu" do
      sha256 "7e5dfa4e77bc0ffb77719c7f62e080781d71bd4c24a918d2513965f39fe52370"
      "eu"
    end
    language "fa" do
      sha256 "c1c6b01ff310f779f53d13ca09da5f7cde7e65051122c69d7b4fb43a11cd6a15"
      "fa"
    end
    language "fi" do
      sha256 "16ca340c8420e05074156a6888574124760012d51908d0bb38c11d478220b131"
      "fi"
    end
    language "fr" do
      sha256 "6ab0e4143588b6b38be1a92769e362242d39684dba4ea153d637f754e616e157"
      "fr"
    end
    language "fy" do
      sha256 "cec8ca24e9e1da6a687c0a65d6ecfd86cc365d12fcab9c600c8cddb70710344a"
      "fy"
    end
    language "ga" do
      sha256 "c1c0201b869b5cfb88c4a8b86a7aebdd394cabfebdaf0183fcb45ed4e39b4a50"
      "ga"
    end
    language "gd" do
      sha256 "549babbf00bbf6a69bcf33895be5194e689d352b5f5f5afd3ca8543e085fefcb"
      "gd"
    end
    language "gl" do
      sha256 "1a9a5be19d255e4ed307f52a31675460aa3d9ecbcff581a04ac25dc85ea237f6"
      "gl"
    end
    language "gu" do
      sha256 "78d2d875bbbebcb8dd3f7eab280fbf9ce6694087a2a59e23d7274ab028bc3968"
      "gu"
    end
    language "he" do
      sha256 "99f127dccb6f6babc362d2a8fcb9c9b8b28e3ef6b39023b5b5104a5a29f3485c"
      "he"
    end
    language "hi" do
      sha256 "235e0e87ce81e4d8b6741be6341d28e41c9770e9464b50b953f766cd3f7bbcbc"
      "hi"
    end
    language "hr" do
      sha256 "147d3a909e980a9299123c5e313e9c6a21bd47d7ce8e4371e63bea976a0414ce"
      "hr"
    end
    language "hu" do
      sha256 "05862c9b17e5500b0ec404884951057f55c48bbdad0d739a042e81472ac8eb6f"
      "hu"
    end
    language "id" do
      sha256 "bb15fbfd0eeada5447974e482154720547df1339fe9422d9b96c53087efbed13"
      "id"
    end
    language "is" do
      sha256 "86e4de2070cc905b725f0ddb51c6ffcd40c9b89c135a68b361510eb6dd562a29"
      "is"
    end
    language "it" do
      sha256 "53575eafede696f64b8508cc482ee90ee7c8535736b0623d3c4a515163916a96"
      "it"
    end
    language "ja" do
      sha256 "df1fe1a61b9ca118faf46fcb6c44c396e3dda2265550965e672d7ee018e819f6"
      "ja"
    end
    language "ka" do
      sha256 "9fa0a1bbcc152918d03f39af8168085fac3b6a540cd08c6d4b182e3f6c04b88c"
      "ka"
    end
    language "kk" do
      sha256 "0acb1368ae689ed57bb97b85bb0a82d0b06a401574ab69d4aa94eb57b21921c5"
      "kk"
    end
    language "km" do
      sha256 "a08243ade4a19a5d58d35db72a68e576bfb64e54dfbd7a0c2f560cbe6c7177f3"
      "km"
    end
    language "kn" do
      sha256 "8d4f12c092ede595a12f77e875f414b99f6a65f040e2a36efa1d8a065ca2853c"
      "kn"
    end
    language "ko" do
      sha256 "cd63027cca583d322e3764595fa4df81ec0e521779996ef618e1b8924dbf1e48"
      "ko"
    end
    language "ks" do
      sha256 "79454e4a36b83ed0d1f7153de78bfcacf8b069f2b98af3e347e649fdee57ed5a"
      "ks"
    end
    language "lb" do
      sha256 "cdd538ba3472c1dbcd380292bba4da0c24570c55354855f4814b09335dae560d"
      "lb"
    end
    language "lo" do
      sha256 "089124e6c99bae0c32058cb1fad545ead86a0d84806ad585012e6f066466b39f"
      "lo"
    end
    language "lt" do
      sha256 "1f8f453d6ee1c876bdf645a4a778accf7286c32f5d49de7bf347ace2b6c746cd"
      "lt"
    end
    language "lv" do
      sha256 "d20cf451e82a65a3b6ef200e8d3e93ef736b1024be7943ac95ee02962f0b61dc"
      "lv"
    end
    language "mk" do
      sha256 "2b6cfdd69ade79009cc72543bba58e940054bb716a1d9ea684acfba54fa4516c"
      "mk"
    end
    language "ml" do
      sha256 "45b7b912af74d98481eca650ef78115a8fa18811110ddc4a68ead816bc14ea1c"
      "ml"
    end
    language "mn" do
      sha256 "5c7bc1b6945fea252bf2caca6013b8d93481f3298e2068306c62ea7fd70da136"
      "mn"
    end
    language "mr" do
      sha256 "61eab9753f1567821ac5b11d534c6b16771151d79678f4e70b3f911005711c87"
      "mr"
    end
    language "my" do
      sha256 "c8454c091ee0b7d6ec4d97294cd7a0793523d3439fc3ccf1e398ab53edda1ecf"
      "my"
    end
    language "nb" do
      sha256 "a46e361a496f4266f6f77adf822cfbac387753af30a04a0ec0f599b4963e4b05"
      "nb"
    end
    language "ne" do
      sha256 "f6c099dee944c61595ec1fc64c561ac7e8d2ddffb97d766df63274d15c58cab3"
      "ne"
    end
    language "nl" do
      sha256 "650d0903dde4ccb855feb08f00eeb2a97be3e94d43e160f19707b3fab62bbbe0"
      "nl"
    end
    language "nn" do
      sha256 "9671d07238171000b3dc917449d0db90fb9b2f679611e26872a4690c87c850d7"
      "nn"
    end
    language "nr" do
      sha256 "499d050faf319da4a55b2b63059613a23f05039bc9699102801f27ff7c2426a8"
      "nr"
    end
    language "oc" do
      sha256 "9ae5ca895b7b833837b8e5146d65802a9c6cecbc7ace80fad14cd88c75c4f92d"
      "oc"
    end
    language "om" do
      sha256 "8145f9954d2281d27d54fde4f88adaa2f803e5c3ef2627b96ae6b00416b9a3bb"
      "om"
    end
    language "or" do
      sha256 "d5efa56c5cf5d72c135e4a34fcb33f2cc641a7126fec584435ac669632d33c8b"
      "or"
    end
    language "pa-IN" do
      sha256 "eb1aac8008f3a26158a77432875c9ef88021d88791d2c64b13d6c162de438d0c"
      "pa-IN"
    end
    language "pl" do
      sha256 "7af3e331c44dd7ad8addcd4bf477bdcf39338ce0eedd377372b678ec38d6322e"
      "pl"
    end
    language "pt-BR" do
      sha256 "f852daa34f60f45ce98449bc80dd29b4ee6835fba4c128972d4705b127143cd4"
      "pt-BR"
    end
    language "pt" do
      sha256 "00ae8158f63d65af513ee03523dab36be42becc508029624c760b5595fb65211"
      "pt"
    end
    language "ro" do
      sha256 "5d1bbc118b93efaa228792a45e0070c3ddaf195dffabb588bd3de1717d979536"
      "ro"
    end
    language "ru" do
      sha256 "b248c5d6e126d71371700321901226abffe245fcfc93247e7eaf60feb53638b8"
      "ru"
    end
    language "rw" do
      sha256 "087622ad95d4e15731ebb5a94726ae27784216a9b4c9e3a4b9dfb09dff87c4f3"
      "rw"
    end
    language "sa-IN" do
      sha256 "543b73a68c00c3c43918a92bd3d5f14df66ba4bbdb9217c4811ffb019da0b17f"
      "sa-IN"
    end
    language "sd" do
      sha256 "a40ffcbf92e748fae2dcba6bb9fba32ec145fcc4a676f1bf759b2db1689625bc"
      "sd"
    end
    language "si" do
      sha256 "3b4e5f013357d3732b22428b7492a3056c0abf8bf02ca5833028a0eef49b2427"
      "si"
    end
    language "sk" do
      sha256 "070acbc8be1da31ae67987a636d2bf97788e3136247d92d19cdc57afa6128fc0"
      "sk"
    end
    language "sl" do
      sha256 "c7becc51607ca32cfa79a3b53c3ee60e4b1355a9a240a6da7df9456e6a724e0d"
      "sl"
    end
    language "sq" do
      sha256 "2890d68b9743c47ce86310187f0ceb244d1850ac3c2a7a5403a929d0be4c24a3"
      "sq"
    end
    language "sr" do
      sha256 "5150a1968094d981e4ad17b582a95e1f0c198a72d470541c5226bc721d26f2ef"
      "sr"
    end
    language "ss" do
      sha256 "b05fe258219250fd015b4afdd352dfe77254ea92c921cb6d8e0db44c69ff7bdf"
      "ss"
    end
    language "st" do
      sha256 "6eb41f6a355204f684ed74f6852511ab74e3a661c914a93640c02199cca1e9cd"
      "st"
    end
    language "sv" do
      sha256 "cf981aa972b704922cc04b4762924f427c5fd894ad17b1d61485c2edfb15b347"
      "sv"
    end
    language "sw-TZ" do
      sha256 "feb49c949237d5754f06d3f304b991ab6cc04fefaadb1a84094095a5a37967e0"
      "sw-TZ"
    end
    language "ta" do
      sha256 "701758c9cd55e6c9cf39caf32698067a73bd6eea8cb7d4915732b9f7bebf509f"
      "ta"
    end
    language "te" do
      sha256 "a38baaa16e0b25217600ea4e3f0e5d3e0b2455f5ca28139c0a63bef3377bba1e"
      "te"
    end
    language "tg" do
      sha256 "7452dfb89d14c11a0b51b32af5905df8ca6535ddf79eae83704177bb905fba82"
      "tg"
    end
    language "th" do
      sha256 "781e31b202aa153123905a545abc356ec2de8cb7c06ca30f91027102aecb05c8"
      "th"
    end
    language "tn" do
      sha256 "1ee84be0ceed09859c152af4ba55ef6e6d86d3f48db55bdb9baf624ec500d705"
      "tn"
    end
    language "tr" do
      sha256 "7895e6c02cc4c20bb7c97a327db63617801dc844cc350287695c9d862802a83b"
      "tr"
    end
    language "ts" do
      sha256 "7f9502f34cc18c7addb8f24e0036594bf7d65e30e9ca55579add9fe79c1804f7"
      "ts"
    end
    language "tt" do
      sha256 "10e31835d21915f20ef46e623f55138966e1cc68ca99b38898db5f76e15157a8"
      "tt"
    end
    language "ug" do
      sha256 "f29c1c94131c720d181f0d06f0532deebeff6291342f857063a58c8a34aa9162"
      "ug"
    end
    language "uk" do
      sha256 "c67de06f20ed33a489c9c7e78c61fb794c98e86cefd93649a673f4b92fd915c4"
      "uk"
    end
    language "uz" do
      sha256 "c79b0dab335792599158019198962d2702b2091504dd2ec0d96b119dbcc76f65"
      "uz"
    end
    language "ve" do
      sha256 "091f34ac22285c74f98473977ec9e2bf7a7994d1196bf4d5d9f80f1e76c7bb73"
      "ve"
    end
    language "vi" do
      sha256 "395de1d759a30ba20bce7aa94e5c236c48f5d862f33166918df8ed3aa160f832"
      "vi"
    end
    language "xh" do
      sha256 "11553f1ddfa41f7379502bc1b13fd27b22463d1789bb2614ebb15cec973547df"
      "xh"
    end
    language "zh-CN" do
      sha256 "9304b02fc86da05f87813d3dfd6194f47962854bae4cb927edb128963a2ab349"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "c43b7fe71d6c24581b62c20811474b594766c83cb99d705b201fd3c7afbcce17"
      "zh-TW"
    end
    language "zu" do
      sha256 "4d8071de0649720371c22baa47dd6173cd1bd0dffdacf4d58e15a1fb9b1b0734"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "449403211dbd4e3223d09cbc95b5a38787bb46e4e7b46419b9a4770fb3b69718"
      "af"
    end
    language "am" do
      sha256 "637601ea5ec84d49615dce8adc8e2048cb41392e8fc8455b29b77000ba3519fa"
      "am"
    end
    language "ar" do
      sha256 "7f3bd459c31403aa38aaa38c4194deb95e05566022cbabf58527363d3731c0a9"
      "ar"
    end
    language "as" do
      sha256 "ec7b5d74e3f8182eba4f81e929620214a4400fdcbfa9511fabc15d03a64bba32"
      "as"
    end
    language "be" do
      sha256 "991966d96d1f584afee1acd7692ae3384fe59f0a817a93eae3457b87d7ac315f"
      "be"
    end
    language "bg" do
      sha256 "c1d902f67e7b59393ce1f676c0ec34278e9a773fd61888629eed6e308bfa0a05"
      "bg"
    end
    language "bn-IN" do
      sha256 "e1c92a1d8a2db0612ca0b813e66953118b41ff32ed8114f8294e157dbe84208d"
      "bn-IN"
    end
    language "bn" do
      sha256 "c74e62e158a46d175dea442c0752a996722c3f7928e7d88f3583fdce47831f09"
      "bn"
    end
    language "bo" do
      sha256 "9c621cef06861eb530201870b9bcf97da13562de68990e5a861ba52add79bed3"
      "bo"
    end
    language "br" do
      sha256 "bb1824281a54fd3bee0efab53f942d8e200900657075cd73d0672847c61754fc"
      "br"
    end
    language "bs" do
      sha256 "e0056c56aac7d4d160e3440d3fb214e3bc5879994f4c186952943dbff8571483"
      "bs"
    end
    language "ca" do
      sha256 "7ce4ce0abd7cbb2909c3b0e07e860e5b5a27cf6dd03c468706e12963dd2663bf"
      "ca"
    end
    language "cs" do
      sha256 "5f7a46d42005c87292efcb7dfde104cad16160513a20ecaad469c8396f2bc712"
      "cs"
    end
    language "cy" do
      sha256 "ff6d4baea3b432034b12d639c68138ee2890e8ad152c36ab94d10a60af96ea41"
      "cy"
    end
    language "da" do
      sha256 "e2be5aa4fa916af3c42391daf31268b3bc85e6508801382ed61b9e908590dcc2"
      "da"
    end
    language "de" do
      sha256 "e68fd0195a8c578bbdb103e40f1dff7c1007e92a844daa0b34a9ddb86b6df801"
      "de"
    end
    language "dz" do
      sha256 "1caf94b0c9aed5e0c075d0816a37156b6032e137ee00cb1cd2a78c69d29f1137"
      "dz"
    end
    language "el" do
      sha256 "942a3a3e927cb8d947ef5117ae8a359790c7e3853fe65eced33299146b8a0e7d"
      "el"
    end
    language "en-GB", default: true do
      sha256 "818349c74d3ae2e18781fa403346dec8a8c1ba9169ea5288d47ca05cdedc24f9"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "9b4894aeb2ec529d1494f074867b5c73fb71f1dc1118e724aaa99642d9e37703"
      "en-ZA"
    end
    language "eo" do
      sha256 "80a7133240277200a9d9e889aa544961f401fb28992f97eeefa88d4bc75aad18"
      "eo"
    end
    language "es" do
      sha256 "1772dab1105fef275ce9efcab6bf33cb4dff510d3b442bf38429bb7d2100379f"
      "es"
    end
    language "et" do
      sha256 "fb1fe625a4cdcb9fb882806cb8da7ccb297c919fb31a5975ad7a3c21a3ec4685"
      "et"
    end
    language "eu" do
      sha256 "e7009d8849002533562c4a381dfc23fbf62d83a1b42204bca31f5221b9c07c13"
      "eu"
    end
    language "fa" do
      sha256 "1b1c0a34c2e49be05e2248f2d0dc84918b3987ae3d320e74bf7de474b4600dcc"
      "fa"
    end
    language "fi" do
      sha256 "05204f543f510d3a7e9ae166f4c25eccfb9d300ccbcfd443f7d6fd668e390373"
      "fi"
    end
    language "fr" do
      sha256 "cb29ea50c84e2a08f1fede552c896770ab261b552e28fec24e64f47d0061d7c9"
      "fr"
    end
    language "fy" do
      sha256 "d72b471e9fa311b8933c7db5d4a22c0a49aee270ecb1da98c7febdfa2d8060a2"
      "fy"
    end
    language "ga" do
      sha256 "2566ff27799f58bd91960d053bba38ebbe27d6b137c8c28ff669639bca90069d"
      "ga"
    end
    language "gd" do
      sha256 "4ff2c577f2b2fedf061672a7c3829ce09693231c95c75e3141baaaa9d5076057"
      "gd"
    end
    language "gl" do
      sha256 "05e155f23bbe8cca1e856ccfee68056c42e1f26b4d03b62ca664f84352f382cb"
      "gl"
    end
    language "gu" do
      sha256 "2d072b3c5c5131ae31e66ff9c6b3a2d88cb73b5c9307be3280b26af78fd6ff30"
      "gu"
    end
    language "he" do
      sha256 "2b669c05061727ae6240d26cdcb4011d21a5370892142224201571de0569c222"
      "he"
    end
    language "hi" do
      sha256 "a4c20488f41d65a320b8cbd33d524439506d37d6cc2b152fd870789f82e2c93c"
      "hi"
    end
    language "hr" do
      sha256 "a3b67b7e58a18a51dd79363618eccc38cd2216bd22e1f50bd54a6501bced4ac1"
      "hr"
    end
    language "hu" do
      sha256 "3067e2692cde0b145981f16fde918a1ef0be32a30e45c7ab1d0aaa8911157d26"
      "hu"
    end
    language "id" do
      sha256 "b1def5305097bb8862549a7495517214c222a4ec769200b2bc0b1579e65c654a"
      "id"
    end
    language "is" do
      sha256 "98293cd694642cb4fac181c253275be86efb68d0575c301157ac663a33ac0e3f"
      "is"
    end
    language "it" do
      sha256 "3ae2e76b0ab6f48dedf9c1823f7fab74935b9b841d2a73c5eaa9dff95dfce3b9"
      "it"
    end
    language "ja" do
      sha256 "9879133035d61b8111aea3611ac5ad76deecd97db188f893405058e157f2b7da"
      "ja"
    end
    language "ka" do
      sha256 "d966abd9a6ac9abb95d122db594e853a14f6943ded7773f1dd5378e2a94a058d"
      "ka"
    end
    language "kk" do
      sha256 "a4a1176cc5270d7ff47acd5dc544fba750d5cc86208ab7aad4d7faf1f8a4829e"
      "kk"
    end
    language "km" do
      sha256 "a82e0d1cd5239c00b732883ca0bd5428c5535bab0908d017b490f7c10798f042"
      "km"
    end
    language "kn" do
      sha256 "7486ee104577500d36d04283e27fd1a6ccc5f0e499e65a0d596a116705ba1f29"
      "kn"
    end
    language "ko" do
      sha256 "bd924325b282bba253af49719ae7cb82bd3c4e44b4a8b42605596e95eacc1548"
      "ko"
    end
    language "ks" do
      sha256 "7cc771ec60d2d0a248ffd5224f3251d1dd965a06530ab9fc47e96b00ce706c1d"
      "ks"
    end
    language "lb" do
      sha256 "a45320631d44f51863212178b9c21af790a17a4d16af2fd2526ecd71d0079eb6"
      "lb"
    end
    language "lo" do
      sha256 "669ea253beda53537ad8dfa46644a9dde52b8b71cbc60405cbeb9d7ce342e689"
      "lo"
    end
    language "lt" do
      sha256 "8af88b9b5b5ba9eaf38d4222b0600aa7e0a7939b81e57428ad848868afdf5024"
      "lt"
    end
    language "lv" do
      sha256 "395e7f86971b1b6c4a08f2ae67fe920fe899c37a7be82452b3d25b7f2eb0f70d"
      "lv"
    end
    language "mk" do
      sha256 "73a9bbfd52939a276a9eac51d611cbe26a7f0a59124a7ae5fd8c2a1da2d110dc"
      "mk"
    end
    language "ml" do
      sha256 "32e2722c87dc96e1ca920dc38ef2933b727804f3011b144c31245b119c12bfed"
      "ml"
    end
    language "mn" do
      sha256 "ce4adfb575d03d16fae0ba0904ae32c999adc3d1334e7bc563a22daade99b8c3"
      "mn"
    end
    language "mr" do
      sha256 "db5f3fd9352180b74d94f10eaab11320f1d7ea670e5056e60c9b2e9c0a6ef395"
      "mr"
    end
    language "my" do
      sha256 "0858f92e024c650ef9d5a5d42dd07322dea52341eaf290eeafc3134f55f6bf31"
      "my"
    end
    language "nb" do
      sha256 "5a815adc7c1578d88d2bdca9d738b2e047e4b2f3203cc363c4c6917e14d1517e"
      "nb"
    end
    language "ne" do
      sha256 "461fb13d687b57bed3dda29f5c5d6bc5b0b155963685d8ffa994433c181a3aae"
      "ne"
    end
    language "nl" do
      sha256 "3a714276f0aacbdd103e545ec85a9eb8cf607de8064e2b9969fb2e2ad6b51d3e"
      "nl"
    end
    language "nn" do
      sha256 "66f941a2ce68e4157cd5d8820e49a9042d82f7db494c40bbb632a73b26bbb9c0"
      "nn"
    end
    language "nr" do
      sha256 "e1e9eb3e3e86b529782573d9639a8f391e82048a37acacd251ad8b6b7b2d06df"
      "nr"
    end
    language "oc" do
      sha256 "0faaac75f63fb976c0135613e5e251594aab4e41d196c1d3789383894659ff65"
      "oc"
    end
    language "om" do
      sha256 "a7d6f180da8932a5c712e13e8bcd9a19d2e3dc238103ba1760694dcb4333bd75"
      "om"
    end
    language "or" do
      sha256 "b24d2807d4531466eab8cf803c8ec87aa12e863d1f3f45aa5e17692cc1549f21"
      "or"
    end
    language "pa-IN" do
      sha256 "d352b25aa7de7e2e90625bf002ea27674cc75157aa586605be023098f8f416e9"
      "pa-IN"
    end
    language "pl" do
      sha256 "3bd398f7f6689bf361977bc8d035035126168e40381dc4deb74a063fbcf9d9ab"
      "pl"
    end
    language "pt-BR" do
      sha256 "22fb9505cf4cd1d7ff64573df7ceaa16cc6ece380fa885a8343dbbdcb5b5f4dd"
      "pt-BR"
    end
    language "pt" do
      sha256 "ed74d1297d09187713557190a94a45328cf3aeb034601db87ccf88075c811e5d"
      "pt"
    end
    language "ro" do
      sha256 "9a667e4ef8ac54a9bb85668dfc5eef283725709e67df16266a374d89ff6319ea"
      "ro"
    end
    language "ru" do
      sha256 "b7ef60a73cb21ce7d409123ad79935f287ad6718f44e57c7daa752859f3da410"
      "ru"
    end
    language "rw" do
      sha256 "f8ef2e5e40b38f14f9f3256d42c98488563885a7ac6f45db705cbb8012e487af"
      "rw"
    end
    language "sa-IN" do
      sha256 "74365d49e3d7944c8d87873e419fdd29c92d2dc525a66646984fc2d19f1e4e10"
      "sa-IN"
    end
    language "sd" do
      sha256 "fc100c81a345d2c8615a66333612fbc135c27b8973b342d7de2aa190e3e7112c"
      "sd"
    end
    language "si" do
      sha256 "684b424d7c8eedd8ab83e2eb2e55e3735fb79d4ad73015be3c2fd357f37f9bb7"
      "si"
    end
    language "sk" do
      sha256 "3eb62dd930ea0de3273417f4d09d0ae7fd5eb1a5cf6c8fa5996fb9f122a17283"
      "sk"
    end
    language "sl" do
      sha256 "2d6434392a0c5d33f1adad86966021addba5a0266960127abc0254c081e0bb59"
      "sl"
    end
    language "sq" do
      sha256 "439606ccf87c4b69a372f67c10e64bd181b8448ec153f4ad162914b826dc14d0"
      "sq"
    end
    language "sr" do
      sha256 "9caebeaaf933b02f497c6b751c796f2e267645a44e5319f5d892f1a7068845e2"
      "sr"
    end
    language "ss" do
      sha256 "ec94176ae2da3b1bcbc364ab43fe814596a6910952f601f589cae5ca3ce2af4f"
      "ss"
    end
    language "st" do
      sha256 "94b9bfa36fddedc67b0662a687ac474edee8895d31852f845ae731ee15f964f6"
      "st"
    end
    language "sv" do
      sha256 "591334efd559022c52944b448c34475933a9bc7bc01b5b7273e5217295444e72"
      "sv"
    end
    language "sw-TZ" do
      sha256 "9c2d16358c9debc886b1312bd731d9d609305efeeef95f01bd080c08a8af6ef9"
      "sw-TZ"
    end
    language "ta" do
      sha256 "786fa2107987be496979bd610af7f16ffbb53ca835cf302beee439b5b571e254"
      "ta"
    end
    language "te" do
      sha256 "4419946ad9e478bd4e2ee9307e166841704ff99c4e55a52725a4c8faa15b819d"
      "te"
    end
    language "tg" do
      sha256 "40f0f1cd4960fba42a5b1e22f7544b7690547c869c03ee7edf8f9d4e1f589f1b"
      "tg"
    end
    language "th" do
      sha256 "92fde61166f78cb0198a4067b4ad564daa176f4df66eb98d0829dd50831c5444"
      "th"
    end
    language "tn" do
      sha256 "6ec8e3067439328bb117af9b9b1cf0a417e3503404a1dad3ffef573dce823737"
      "tn"
    end
    language "tr" do
      sha256 "2b272c8d550097762155820d52a382f963aaa161f1f45b734c55db0ee442e9e3"
      "tr"
    end
    language "ts" do
      sha256 "777e11e590712e33ee10007ea5ec8efa1fcdec6301b5b04d7407ecec5c8bcac6"
      "ts"
    end
    language "tt" do
      sha256 "ad9db020d150ee9cebeed71f0214b80d94e15c7285fead5676b19784aaea1af1"
      "tt"
    end
    language "ug" do
      sha256 "d80bb3a270fc81c1665a42f3a98e432d76d12cdf34114c031bb7ff23fb264c84"
      "ug"
    end
    language "uk" do
      sha256 "b13bb074300318a81fb49638967e69356616f90279623c6f57b1ccd250f52373"
      "uk"
    end
    language "uz" do
      sha256 "e0d9bbdbbad4b9a51fa901293ceb226737339bef81b1d52056abb22e1bc638da"
      "uz"
    end
    language "ve" do
      sha256 "f1c69c3ded9fdd51ff90b33d1ffda3e00e602d635b3ffd3fc09d42bf891a452f"
      "ve"
    end
    language "vi" do
      sha256 "b8de34c6fd4b684295cd351aae290aa62a1faa99fe3a5b00724354c19a2781b5"
      "vi"
    end
    language "xh" do
      sha256 "37fc6b598896527af0bc7136fc128e64736ca12e0ebf19a0d24615ddba9716fd"
      "xh"
    end
    language "zh-CN" do
      sha256 "08ebb4ab70ce7c2a9684827328f458819cfe6d1dce98b44f4b7b1a64d2b4ea6d"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "5883142d30b14de10f305302abe3d924fd070a6afeca75e7826ddaa776d0b6fe"
      "zh-TW"
    end
    language "zu" do
      sha256 "ba0f9a0e413d526a6e8f79d9efdf7d1a530c7c1d6192c9040229c7161d6b5d5f"
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
