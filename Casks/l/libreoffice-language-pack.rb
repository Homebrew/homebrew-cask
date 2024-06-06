cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.2.4"

  on_arm do
    language "af" do
      sha256 "5802f3878faf5935a26a709cbc219a0cab60b6f93fe110976a9832a13d9fc4a0"
      "af"
    end
    language "am" do
      sha256 "cdc6571367b87fffce71b93d342a027b9e6ff07c1847c6f8dba37fc6c7c12b39"
      "am"
    end
    language "ar" do
      sha256 "474064ddbab5bda9ae637dc1e08413bc09f59eca5e1393763607615173f33672"
      "ar"
    end
    language "as" do
      sha256 "21080a83467ed0a2201cf4891b77461ef97286297c7a28fd063a5d096e395090"
      "as"
    end
    language "be" do
      sha256 "bf712baf1e1f618cb6ac89924c5b3a583cca5b3fef3f3d91e530b4fa06230579"
      "be"
    end
    language "bg" do
      sha256 "6ee37983e1128d04a7a478a1472558927ced7f2cf090c913afa768c29e9f2b05"
      "bg"
    end
    language "bn-IN" do
      sha256 "59dcff663a76227ccf13dff29fe0d381da2af9c35dadabff96421b5e147d3a5f"
      "bn-IN"
    end
    language "bn" do
      sha256 "83c04eac1d840edc8700df516509bc5acf19190ffab8803631b963fc88009498"
      "bn"
    end
    language "bo" do
      sha256 "aada5ae91bb864df21249eacd6afe38daa0c80581eb24a02a6e5e811553af143"
      "bo"
    end
    language "br" do
      sha256 "c88bfde2aceaefea1bc691fa571ea02b51c35867b8697abc3756d2da8cf42597"
      "br"
    end
    language "bs" do
      sha256 "4126fc74664e0ee334b358ff2e029b532c8d99e91cc404fead84f4240a67e883"
      "bs"
    end
    language "ca" do
      sha256 "79f24ce46882576b30178fe5da6e07991faa320ba5bab35701c0520673c5ead8"
      "ca"
    end
    language "cs" do
      sha256 "53af345123458dae773992ed1b600175c360faf81f8a0fc4cb2d8b40951a814a"
      "cs"
    end
    language "cy" do
      sha256 "ec131e2862863dc98419f3559e945c76df9dd34d52de9f207be4cdefe58dfddd"
      "cy"
    end
    language "da" do
      sha256 "2e530288e2b9f9192e0bd7ebc465a34b1f6d794d2ad9a49a3981d666b412a865"
      "da"
    end
    language "de" do
      sha256 "719ab9d08d7279b569af1020694f88b5c2fc20a686c8da9e7b75860673b51b9f"
      "de"
    end
    language "dz" do
      sha256 "1b96ff931d04997bc827ca2b3a817f5679791957eba7d0f113a266e8e7e85550"
      "dz"
    end
    language "el" do
      sha256 "dc4c2eb92b7cc43d24f166ed5b0c0e008bb5936bd8d1cc2fc2d5376644ee71e5"
      "el"
    end
    language "en-GB", default: true do
      sha256 "930394295421945b8c994def8c72e5e4af691bcd51d234c53c266727e1884658"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "a27af137a244386043517c82e17c1b9a8cd9e5d7e8a160d064d483c41c854593"
      "en-ZA"
    end
    language "eo" do
      sha256 "7ac5f0f99a11d59a648d4d5c54e06d71562cf1ada664651b8458aa02e9fbad55"
      "eo"
    end
    language "es" do
      sha256 "088de0ec9bad271d4bf7f25a5ef74e2bc0c02b9e6aa00fe0832b627fa34f8367"
      "es"
    end
    language "et" do
      sha256 "1f2f75e8251425d8944ff8b0af342cabc76c2a0b4fea5f774390cac27282a8ca"
      "et"
    end
    language "eu" do
      sha256 "3bef93a74a389e6d7c0560d19ed4ecc9f034dc70919fe2a1a0c82526a678dd6b"
      "eu"
    end
    language "fa" do
      sha256 "bd223e59079b422fa7b1ac7725aae1c0d1f64a2ef32db5acb86edbc25212ab5d"
      "fa"
    end
    language "fi" do
      sha256 "b11a91968569bb85cc668b70e87f55449185fa7fd54dd4e39ed13beb3e603635"
      "fi"
    end
    language "fr" do
      sha256 "9cf83fc93e4758092eba58cf3cae4da55dca69595fd1c3a266bbaa08b4b5a379"
      "fr"
    end
    language "fy" do
      sha256 "d89d230dc962e4148082abb11841842fbda1188e2601269fb1f0347b5281d807"
      "fy"
    end
    language "ga" do
      sha256 "67f99e905222f34e37ec859933e77d5c41ff278cef55074dd16e6e0122beb770"
      "ga"
    end
    language "gd" do
      sha256 "91f0fe265becf149abd0b39e2840846f5e34861180b7221780d3d4924a071fab"
      "gd"
    end
    language "gl" do
      sha256 "49bae69e9304794ee07d778203245183ed6475c54999aceb3566b6295baf5d0d"
      "gl"
    end
    language "gu" do
      sha256 "2de06c6b7b44a980a9c54c181e2820efd2b6a5aa154a04da28c8ba768b30f9f1"
      "gu"
    end
    language "he" do
      sha256 "cbefac4d984a35bab48f91e29bc4694c1864f28a208de0345b19838d31b9d34a"
      "he"
    end
    language "hi" do
      sha256 "e6b5d04bfa8a73089e05e42c594af9043d109fe3bcdb53242c46cd95013185a4"
      "hi"
    end
    language "hr" do
      sha256 "4ace5cd09bf6e874f3c83cd5cec65731e020b76f14edc84ac19944e5d43e6616"
      "hr"
    end
    language "hu" do
      sha256 "0162a3bc3dafe85d86d0a825c058f25aa0ddc2947b125791b9e6b29b860bfdeb"
      "hu"
    end
    language "id" do
      sha256 "a3e4c233f957e7ba823f8ed3ec92eabdb4172eb6fb91567c5c48951e343b384e"
      "id"
    end
    language "is" do
      sha256 "da1d22db589b429252ad667f3e70e6fe17cbd661a6b0781925c9a9ce86c42986"
      "is"
    end
    language "it" do
      sha256 "d9bc65bda7d22dddda1529f2c53e53df6b70c261b912df6c905c48a14a7db918"
      "it"
    end
    language "ja" do
      sha256 "569b1c0069e89519ea7e06b2631906964d8285981beada7362b5c5f7e409d7d9"
      "ja"
    end
    language "ka" do
      sha256 "afdd64664af4a20e05596abba29765d569fd8481e66da1738ff94aa994bf0a04"
      "ka"
    end
    language "kk" do
      sha256 "3f190096495473ba3ce1200df2dde36c3b90d8039433733a628422b0373248c4"
      "kk"
    end
    language "km" do
      sha256 "c15436d506cf43a5d98e9d48a8a5c833564bf4eabadb875c3944368227135ff2"
      "km"
    end
    language "kn" do
      sha256 "c37cea20b2570397879646f5e21048a32aa840c6f6299d5e4ae424988c0b5a66"
      "kn"
    end
    language "ko" do
      sha256 "4ac5a54528a6ed2644da32eac2ebc2721fe42a48c70e62133486a333d61f3e74"
      "ko"
    end
    language "ks" do
      sha256 "ffa194aecd47cba7da8372d4e7791f2517179f6f44c08b287d26a0b76baa704c"
      "ks"
    end
    language "lb" do
      sha256 "52f00ce1b4026c2c9003a8405df1715ff51ddaea3af250b2b6f45e382c53190e"
      "lb"
    end
    language "lo" do
      sha256 "bca6f96d0cbbcf41956ab216edf00c25c9cb50e12a1fb23caf96f7247ed18bba"
      "lo"
    end
    language "lt" do
      sha256 "882d6143c975cebf126aa98bcc28a0bab69864e226e99329c2731cfae930b524"
      "lt"
    end
    language "lv" do
      sha256 "840ce7edb86c2b35008821c24b1d9085a76a0e74425202a66ff5d61f76228739"
      "lv"
    end
    language "mk" do
      sha256 "87defa87d29a1d3eefcb0cd1d589716e33344b982ccbb4930bb4136f15f36dcb"
      "mk"
    end
    language "ml" do
      sha256 "373ccf3c73d4c5bea454e07402f0878431fa9427774c241bba42a81ad8e4a024"
      "ml"
    end
    language "mn" do
      sha256 "09e520b6de7b6b7ed766f01a2adcbedbf88903ca4ec612b4a5fc20ef86ada25d"
      "mn"
    end
    language "mr" do
      sha256 "15d404ba5aefef46b4f0a1a268779bf90a84331c23e17f8ce7ee7aafa1b82d0d"
      "mr"
    end
    language "my" do
      sha256 "56388f1ab06be5a6241e417b65d239763f5e286fab44796674965c872ffc426a"
      "my"
    end
    language "nb" do
      sha256 "140f740e5524ed1e088580eef2e648d7508823cbd8ee666423e2e5f64028ea7c"
      "nb"
    end
    language "ne" do
      sha256 "8ec3fd1c349ae8a2628e6e49fd076fbae16d297b115b42be8953f251a6a4cbdd"
      "ne"
    end
    language "nl" do
      sha256 "a5defab1b2503757b865453acfd5cc495c0637bd5ce6f517adfd705f8c18d8fa"
      "nl"
    end
    language "nn" do
      sha256 "3f2003c90ba3b8bb3e5ccbd0224395a52bc3ea115afc0ba9f92807911b261c90"
      "nn"
    end
    language "nr" do
      sha256 "c2bffe137805695ae02a059bd2af6698a688ba6576e2c48134ae18b5d7cb262c"
      "nr"
    end
    language "oc" do
      sha256 "750f07efbd8fce57f9b6207efff7a990cc0a65bd28186c76b264d8be1cc78196"
      "oc"
    end
    language "om" do
      sha256 "632fbbb649f16672198c41d6bf9f40f0adc970a359834cb94949226e78595646"
      "om"
    end
    language "or" do
      sha256 "ffad72d1d4cbb786a1ce304cfb883255eb94ac7b00a201829f641e25fb340d19"
      "or"
    end
    language "pa-IN" do
      sha256 "656aa5583d2a2b4423b704e4a724235ed40b9566ba7ce833dc34807400b11b1f"
      "pa-IN"
    end
    language "pl" do
      sha256 "c13aca6591414758195fb63108a09f16ad7c9f1b50ba1a8660e1466f6d268eb6"
      "pl"
    end
    language "pt-BR" do
      sha256 "7445b5e04f32ebf60ea847139e2b2619de3da9736606044f66f92d47ba00a30b"
      "pt-BR"
    end
    language "pt" do
      sha256 "31be592d382cf1180abe4188a77a6073cbf30a2a052ffb1a68344fc5b8a475e3"
      "pt"
    end
    language "ro" do
      sha256 "bbe356a2390432894e4607849f44c4b4e2affadaf44e88276570809bf8d3e98a"
      "ro"
    end
    language "ru" do
      sha256 "7cd49f39c1a85ab449c5ba6f16ef6caf0e0c22234f63bb43f4c467b9f49dc04d"
      "ru"
    end
    language "rw" do
      sha256 "be1867c829d434124cac05cdf1af538f1b3fe9f8754832b89e693e810c561670"
      "rw"
    end
    language "sa-IN" do
      sha256 "4969a223e79073fd1e15dab5362362c71f33c19e0d8ad6ce9c3b7dc5d972a53f"
      "sa-IN"
    end
    language "sd" do
      sha256 "8686c3ddb006f2c51fbe80ec299aa7bdb132318423cac1d005b2b028d9d6ce7c"
      "sd"
    end
    language "si" do
      sha256 "fb268edb56dac575d055a61a41d58dbb11262c1dbd6d8b7dd053c3fe432e62ff"
      "si"
    end
    language "sk" do
      sha256 "537c810492f68c8a889cded632bcdfa622106ccc089b05bc0dd3aa1f30efe0db"
      "sk"
    end
    language "sl" do
      sha256 "4e6bd960f3d34db3cb2e56899f3c7ba81ee4513f5d13c2248dd41eef2666ec64"
      "sl"
    end
    language "sq" do
      sha256 "972bfcf1d4cda595cdeb87b52f59bfef97ba94dd67adeca3006df4ac4997d464"
      "sq"
    end
    language "sr" do
      sha256 "aabc9f9cc0f572c9fd723a6e31655aeca10a1c270108e2ddfb1f8e05f7dd8f0f"
      "sr"
    end
    language "ss" do
      sha256 "3640c90881e29bc9be6378522a183b11b4222480c97fc724b1ad46b884abd231"
      "ss"
    end
    language "st" do
      sha256 "aa4e27a606d82078ae13c51184aec2956530a0ade51224c4ae8aca9c0fa7e39f"
      "st"
    end
    language "sv" do
      sha256 "5691e0a25cf1588a2112b7802950cb6e039d38ea434c8670378f0210fc462e05"
      "sv"
    end
    language "sw-TZ" do
      sha256 "7d2498e9ea97fda5c091c8b42b384ffb72143942c2a1ff053641991f469f0d44"
      "sw-TZ"
    end
    language "ta" do
      sha256 "070b4102c8010e62fa2b3e5cbda8677ba30574bfb38fb4b790f51f9bca8f4589"
      "ta"
    end
    language "te" do
      sha256 "643eca02620d640fe23d8a1b8fffc1bbc6fc5a77c8464b0b91dfe92681b19b66"
      "te"
    end
    language "tg" do
      sha256 "f825dad2fdc80fec5ef14d108ce119f00ae27a64806fef7e19c1de8fcd66dd34"
      "tg"
    end
    language "th" do
      sha256 "ad7eeaf458bc75eb28ce41156d3da53b80854c28ad6b0990f395c30ad582d9e3"
      "th"
    end
    language "tn" do
      sha256 "2211b740da5f986f8166330071a708335c23ecaabdf74c12bbdcce072b765b88"
      "tn"
    end
    language "tr" do
      sha256 "0781c255461663d8c86acf3e6a0bef04d82a9561413543ae1e40280161c5edae"
      "tr"
    end
    language "ts" do
      sha256 "aebd64fbc24c9e0ec03dc38d45b9fc7c8c0439e64f660f6c81cb3982a8225971"
      "ts"
    end
    language "tt" do
      sha256 "55f3eda10bf12f81f656549cdae34a78e696e6c97f9798cb4eb1a4e3dcada202"
      "tt"
    end
    language "ug" do
      sha256 "25126a3c4b16dfdef8d0d2f834e87d73910f202babb7cf72e4718159b5208ea2"
      "ug"
    end
    language "uk" do
      sha256 "a3b2611c84e405aebd99a0e9e3a14f1c36cd63d2648dd27f7d330d5bb5f89450"
      "uk"
    end
    language "uz" do
      sha256 "c301cfb62e58d12de76e26512b51064cf6770f4cb3da5f900f76f4b475ee391d"
      "uz"
    end
    language "ve" do
      sha256 "4918a32e01384c6cecbc25cd2fe8838ec5afbc711fd1ab9164298315b143cb58"
      "ve"
    end
    language "vi" do
      sha256 "483e6d938565e5a784b352bd9a67a39d82fde078d80d4c0669442001a0d8b392"
      "vi"
    end
    language "xh" do
      sha256 "35cc976af011befd0166707a731a10f8379550e4d0224d5bcecb7955d3c7a345"
      "xh"
    end
    language "zh-CN" do
      sha256 "86abea2d14a5daf8d1eae474409d932c0c205f41cb68b3d2548c54f436e26098"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "e62a399bb0a91ccb5d8c541de89e981a780ccce1e18fdf34f9ef39ce8b2bcc17"
      "zh-TW"
    end
    language "zu" do
      sha256 "14fab55a3f9eb2ca26042fa226a9f3bdf5a6bd4527925ddced72c87b685bd270"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "773657a68986baa49c5f5e453d16cb00eb3efc18d4bc80418f129b4eb5c7aed6"
      "af"
    end
    language "am" do
      sha256 "0fe5c3b28d69e27041d232549ce4e65ae38c3a0d93c458b5c63a8e16fdc2c265"
      "am"
    end
    language "ar" do
      sha256 "b8248b94f6d2e47572bc835753ffb6c8b39e1f66962f562e0b59074313566d55"
      "ar"
    end
    language "as" do
      sha256 "fa4af7313b661677d3b8ce2ca06b18e2091368424d3d7740f080ab11e396408f"
      "as"
    end
    language "be" do
      sha256 "ee97ec27eda61884fef45e3fc80ff582249e36a30c9670577f4f0b6426f8bfbd"
      "be"
    end
    language "bg" do
      sha256 "835dd3bd75986f98e792d752cdf479f8bbf5e78c9ad09de942a6ce1ec2476064"
      "bg"
    end
    language "bn-IN" do
      sha256 "e7b5a87cb836ea32d3b91e719f2179c01ebdf4011ab562e6d6f767958e7371bf"
      "bn-IN"
    end
    language "bn" do
      sha256 "e60523ab92ab61afc662a9ee04d725fb4826aebfa28e8fa16721ae2efad05220"
      "bn"
    end
    language "bo" do
      sha256 "275304158142f4f71797b018e6eb58fff613b0e81598b33477059b6bbbd4ab34"
      "bo"
    end
    language "br" do
      sha256 "6b0f22b1a59999e20a96a7e7e64c64564d45ad5593b7538ad51cc31c5cc7a968"
      "br"
    end
    language "bs" do
      sha256 "e64582ea1f11033b345b97a11f3267a8a8ad9a7e3f9f5cd43f6786c553030d9e"
      "bs"
    end
    language "ca" do
      sha256 "ad01e91fbeebaf9ef7665d0961eddb1a541d816c9d22fe8402f5b17ade963990"
      "ca"
    end
    language "cs" do
      sha256 "49deefd9304bd60a0d0fb58cd891c9f2211680baae5512efd7e53ee08123122f"
      "cs"
    end
    language "cy" do
      sha256 "89a813e9365656d95fe6810246c804cbbba52085753ba369ff31d0795a605486"
      "cy"
    end
    language "da" do
      sha256 "394509d983575df0cd36af3c3ed228977a00e0e798a5e6c3085a6d0bc094fd69"
      "da"
    end
    language "de" do
      sha256 "0362aff819a005ba550beb102eda80563bb37b6a23289e9ef2b0df5dce30f524"
      "de"
    end
    language "dz" do
      sha256 "410e81351d99bfea70d7b0a6539665e1dbb1c2bdc4bce33c28ca820f5c1224bf"
      "dz"
    end
    language "el" do
      sha256 "a62cbea49c54b77b7a334808bfd8dab4be75b12dd78768d5455822f5020c55ab"
      "el"
    end
    language "en-GB", default: true do
      sha256 "1ae4be4de4c47b60fe55ce768f888de6e7a92df602ff9924acf76134f3b31eb5"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "a2a7208867f92db2adbda782e5fc9366bd77ccad77901fa8d7cf94db79124cc5"
      "en-ZA"
    end
    language "eo" do
      sha256 "106152d1fe94feec7d738635859fe7806511a1c212fd668a5adb9ff64023a7ec"
      "eo"
    end
    language "es" do
      sha256 "a7a7bf1d9c529b6febc5db78642ded7c98ad6220f5a8f7d7ece3113abaca0095"
      "es"
    end
    language "et" do
      sha256 "4a5627eae865dfa1dc079241e3782dd835de3d42d0d39de177a3221383e6f050"
      "et"
    end
    language "eu" do
      sha256 "4ad3d08ef9f0a1676571c75b23abc0045dbea7eb1e965acb214ad95935b017f2"
      "eu"
    end
    language "fa" do
      sha256 "1303a23f69e32f62a550000c87fb62b397fa644c29fff0d6d97cbfa0ed604d58"
      "fa"
    end
    language "fi" do
      sha256 "7e629bded2651bf7eff5cad6ef64d5ac7bf31ed052e319edb4ee7d87e6248e34"
      "fi"
    end
    language "fr" do
      sha256 "768586441ae29107a97a7819f549e957a88a5cb11159fc1b9786c8ca4374c183"
      "fr"
    end
    language "fy" do
      sha256 "bceaa49ac91489d4c21cdcc71d3f0524e802d7b9ea3c36803ba534d168c79c18"
      "fy"
    end
    language "ga" do
      sha256 "c5de8c531e0006753911b347628d9a7db96052de316a096730669f1ffb2df6e0"
      "ga"
    end
    language "gd" do
      sha256 "35fd526ae939a0bbae74cb046244c57b8c724b0446561f8eeffc27579b2eff5a"
      "gd"
    end
    language "gl" do
      sha256 "4c5d1d17057d4eea5860eb25922ac3c335991cacc09952edead0fc76d271c90a"
      "gl"
    end
    language "gu" do
      sha256 "573d8e6dc1af8637baa137189a48e77ff8a58d96859d319f4160a3db39fd79fc"
      "gu"
    end
    language "he" do
      sha256 "f0cf0bf5a95ff013430e384aca5d245cbcc1eab14bc6941c20e559b4ee8bc0db"
      "he"
    end
    language "hi" do
      sha256 "48682b5d81a0c0f828795cafb2eecc0995b5f5f8977996e4214d8bf9bec539a2"
      "hi"
    end
    language "hr" do
      sha256 "4ad5207bf73dcad195240e7adba058f462d32c55bcfc5d6cb6f214c69018b39a"
      "hr"
    end
    language "hu" do
      sha256 "c7ad39efd769e7cec69dcd113d6fdf8cbd2009d1b76590195b6bd4a7eef2ad25"
      "hu"
    end
    language "id" do
      sha256 "a79456f1e27622f39cd9ad93bcbe9f4fc683bb35ac289d5ce65c7f28412cd229"
      "id"
    end
    language "is" do
      sha256 "6aad034f3d688c2b8afb14bafe9a4ba3406faa3e5d782e9c1ac73a362c620658"
      "is"
    end
    language "it" do
      sha256 "bedefa90e4159d39e17216c1cb9acf9d9392cfa5c981fb385c05e7a6b7d0db5b"
      "it"
    end
    language "ja" do
      sha256 "65ec50c8f6abe0a71fdd2c14cd8613e7f947fe2ec0fe793995ba0437fed1ee05"
      "ja"
    end
    language "ka" do
      sha256 "feb008f67228b69d62c6b886d7d0db8684c5b074a565b7f62bed1bdcf64c711d"
      "ka"
    end
    language "kk" do
      sha256 "e933f467c6e0423b884782b53da10368f7c2f2deb8d53a6cbc9d8bd64fd1c4c5"
      "kk"
    end
    language "km" do
      sha256 "ad38c35131b9459b625ce5668f83c2464113fce978d4073315d3f4d6b009c597"
      "km"
    end
    language "kn" do
      sha256 "972bf13e306ff58f69a4b127f0495ec92b2ae21c39a9b8a44dfa0f09acde5033"
      "kn"
    end
    language "ko" do
      sha256 "31f406eb1a404fb25f796a7be1fa9e53820d8f442bada37ead55683086715cb5"
      "ko"
    end
    language "ks" do
      sha256 "92319a7ad7e83434b6a044fed40e7f4872e8b6dc580c7dd031002ccf98f8c618"
      "ks"
    end
    language "lb" do
      sha256 "9bb577066b3d90d85cb64440739d2d207b590263106893c7041a51b1a5be8656"
      "lb"
    end
    language "lo" do
      sha256 "9f7affa2aa93a18413ffa21f1fd5df543d76504756680a6359074e5972bce641"
      "lo"
    end
    language "lt" do
      sha256 "705866bfde9e6fdc31d8ee6546842eb55f65d1d02cbe5fba468f92732395d00d"
      "lt"
    end
    language "lv" do
      sha256 "2b214bbd32f5ea02f58da6845bcccdefa31b934a9fadace172f72a256e490286"
      "lv"
    end
    language "mk" do
      sha256 "5a52593af8a218fcb5342f4bf361206930a063182629cb39c39b35ecb172b514"
      "mk"
    end
    language "ml" do
      sha256 "fa0d6c75c8c58e224abbfd08b7dcae3c618223e4618debdefd9a0cac7dac0118"
      "ml"
    end
    language "mn" do
      sha256 "cb112810148e5c8ea4f1dedfe3ea98a6982ef255f53ab970e0e83a02169bb6fc"
      "mn"
    end
    language "mr" do
      sha256 "6c2ccc07a2258e007c186943189741cd1d3a6d528efc47689de79a3d69de0a78"
      "mr"
    end
    language "my" do
      sha256 "61da8c26ed6ce218fa942ab8ba74282d79c37fa201ccd044b97e01673c493e18"
      "my"
    end
    language "nb" do
      sha256 "df67bb66be1cc438fbe5fa79a87def091d31d1fc8129300735252185464606c9"
      "nb"
    end
    language "ne" do
      sha256 "6a957d39c8c585ce27cd83b0c08121178708604adacc574d1c4d51fce8a01718"
      "ne"
    end
    language "nl" do
      sha256 "3aa5e7017c9978f89b4a80ff2efa406c5ae894db96017ccb96bbb867e6d895ef"
      "nl"
    end
    language "nn" do
      sha256 "4c5fcf5361d177736cf6ce7b840e865229601001b0a288472120ae5eebb7bdd7"
      "nn"
    end
    language "nr" do
      sha256 "56db7a6d0d679dbfefc6a2bf7e2858678f44677cc05b0db3dcbdfdad028a11ad"
      "nr"
    end
    language "oc" do
      sha256 "0de255cc88f55ecbb7dfee4408383a3d515817056a5169424fbf5d74d38c1f63"
      "oc"
    end
    language "om" do
      sha256 "e723d87e4cedc1ae1388e62b883ab54a5296a16d6c106d30c5a0d7f9dde1aadf"
      "om"
    end
    language "or" do
      sha256 "0320715871a2c02d22dc8ea27e17588f82cedecec52eac65f2ed2489a1225807"
      "or"
    end
    language "pa-IN" do
      sha256 "29107b60b35c8b7d5f550a22b373a91c9ca4fd64866f152b3c4d84f3f3550bd3"
      "pa-IN"
    end
    language "pl" do
      sha256 "9b0865ce9d192e910460f5873bf3c4739814c99ad877e96457c2c1142bcb69f1"
      "pl"
    end
    language "pt-BR" do
      sha256 "da90d44c2f5468d1ac20170e9cc2f967283f5e6c7f3796672aff2f20e1e9dd9b"
      "pt-BR"
    end
    language "pt" do
      sha256 "4467525f32e22e481befd34255d5dffd0266de676eee68fb3a7a33a6da67a4e0"
      "pt"
    end
    language "ro" do
      sha256 "3e36d3a8631b8c3c401b0611984f0bf2c0d540a2f79f014b6bdf892f3a8ccb54"
      "ro"
    end
    language "ru" do
      sha256 "c1d7d5c7eda3996c626e0b849aba647cb8331b181432fe539a9a048deed514b9"
      "ru"
    end
    language "rw" do
      sha256 "ce074a1992e0fa0e3ff149b2a656091600046016ae2b1c541a146b3c2805af23"
      "rw"
    end
    language "sa-IN" do
      sha256 "bbb0855b2bbd35cdc93a098fbd27ae3490c66be91d53a49e0d034d1325f19e77"
      "sa-IN"
    end
    language "sd" do
      sha256 "b3c58d9745400700fabd63e9bbce1b7264373b8b3d32e9f8a42decde5f2dd467"
      "sd"
    end
    language "si" do
      sha256 "147d23abbc693ef3f2b30d17f7edacc730909ed5591dec7197992ecb613727b1"
      "si"
    end
    language "sk" do
      sha256 "2b1448ad33c895c120d4b6f3232a9de7aebcecad0b83412eb56cdd9c96681783"
      "sk"
    end
    language "sl" do
      sha256 "fadf4a981c84c76993e9462e856e011c77645bc9a7b5c111bdbbf5769b301b89"
      "sl"
    end
    language "sq" do
      sha256 "08c77c92f372cbce59a1ca8f6494310c01af7d7b44970968966bed9e0ffc706f"
      "sq"
    end
    language "sr" do
      sha256 "75432a461cc9b8f170c24d42f31237370aceb40defd3c69aee2b8bf052dc406f"
      "sr"
    end
    language "ss" do
      sha256 "29444ce6abd16bde4e955d2025c055cc9067864299b9ddbf5387d34e12699c8a"
      "ss"
    end
    language "st" do
      sha256 "b7f9b78cfa2c04c17fd702cdff42ce3f4ca0651af4919e044ff989de86bbef10"
      "st"
    end
    language "sv" do
      sha256 "9a4688ada4d78a2d01b6bab661a2d2c19f6bf3f4c9dffdcf23918f37ad0bb19c"
      "sv"
    end
    language "sw-TZ" do
      sha256 "5889c039a19a715e9af4dca100e8cf8a0709404bf019037f9485f92a3ea8cf09"
      "sw-TZ"
    end
    language "ta" do
      sha256 "86e3a450cfcdd3b7c6719276fe02eef700b4c3c9522749664320031c08505c00"
      "ta"
    end
    language "te" do
      sha256 "f4ae67a758d854e00e4a322e3b87b53bc2a23df5fbca06a7529e8f5abdb41471"
      "te"
    end
    language "tg" do
      sha256 "dcf661e8026aeaecc0950ef8f93eacdb3eabf3e9099abc2c54b25ba92828b8d5"
      "tg"
    end
    language "th" do
      sha256 "a17c5775cbabc4d901a9a0b2b85777238ab82847c9b7bd282262aa46b625ce20"
      "th"
    end
    language "tn" do
      sha256 "e54d288238257cfcab90b0596b156ca0983ebeb8360990360607c1c8f6613e5f"
      "tn"
    end
    language "tr" do
      sha256 "df286fafc6b754512c0b47a5dcb167da56a9dd6bced31080e9868a7b76f55765"
      "tr"
    end
    language "ts" do
      sha256 "e1d164775b0355523ad0616d757bac0d845c9300cd8a042ed5c37e461780a889"
      "ts"
    end
    language "tt" do
      sha256 "e085b77f1c07c466ee2413321a66f2ab0d3ba44ee377c86641e70dab20035453"
      "tt"
    end
    language "ug" do
      sha256 "69ef60c94c9f6922a1a2a5864f98dfd7337693c4d95203821d6a4f3d28ec61e5"
      "ug"
    end
    language "uk" do
      sha256 "3218bb2511badb55c74098a478541c25d3df823aacfa87dc4d624b9539d398ff"
      "uk"
    end
    language "uz" do
      sha256 "51057628196964f52784fa1af1d87f546f8de5c0f0884296b17259f762ab5267"
      "uz"
    end
    language "ve" do
      sha256 "cf6f1845c75819406369ac9a9c7c5a9e9fb9fa43f1877fda1c76440b7cc2f2fe"
      "ve"
    end
    language "vi" do
      sha256 "e1fc5f98ce63df0392b66390402f7cd4c5aac65f3a2ae9027d779558c096260e"
      "vi"
    end
    language "xh" do
      sha256 "d1b92f0dc3a573d71b1e6090b338eb8337d836c6231c2ca49e1fe285da542c5b"
      "xh"
    end
    language "zh-CN" do
      sha256 "017f387458f708318c867e43b1804371c158281da12f7891db5f7738a2fda6ad"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "9660907cda8f4d31833886944541e15207f90bb9ac9c3f6d6828149349b959cb"
      "zh-TW"
    end
    language "zu" do
      sha256 "cb9dea567c2baee7722394d9ef093ef0e1707df34cc36693d8e026b515f1cbce"
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
