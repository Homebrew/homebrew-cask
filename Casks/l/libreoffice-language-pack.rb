cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.2.2"

  on_arm do
    language "af" do
      sha256 "ff719852726ec559d8e1beaeff303dfdef16cb98ac73330eba2e0a74a0735644"
      "af"
    end
    language "am" do
      sha256 "5574b47e20247f3a8bd7e56c0d860c8aa05cf32d0e76657292ec06c73b90aa5b"
      "am"
    end
    language "ar" do
      sha256 "eeaf29ad4d5281dfa1a222dc67b1161bb2a4f6e6d351cb3df9ff8495dbb42c64"
      "ar"
    end
    language "as" do
      sha256 "0b4805a4c35b1d8627eed2711ec7d58cd0efa1326167c9a81a9ef12fdfa8d595"
      "as"
    end
    language "be" do
      sha256 "777deb86886fd1aa070ab1e35dba385f45faa1fdbe69ec212b1d352353c4f9bf"
      "be"
    end
    language "bg" do
      sha256 "a38d1a0b2fb05ce26a4708db346af9c714b1ec13b9b3ee6e6a9f4758cc1a3ce3"
      "bg"
    end
    language "bn-IN" do
      sha256 "cf6101eb4cb6a6dbe79b3a6a28bbdb7c11b3a21d119cdc6b9d7a6a13eb05aaa1"
      "bn-IN"
    end
    language "bn" do
      sha256 "81402f89c23c938ff5683fc5c1cc6f65562b4ffbaf295dc145f055151b217cdc"
      "bn"
    end
    language "bo" do
      sha256 "646998d2119a3a2c57076552abc3c3eef21fe6370b90eb956693c77c3a3cf7b6"
      "bo"
    end
    language "br" do
      sha256 "c51593d1be6fa4276e4facc9c14277c2ffa773c889912a1f70ddc0bd66929e0c"
      "br"
    end
    language "bs" do
      sha256 "1d4846bb150df84fc1e73f70214d6aab22d465aa7170ae399e8132cd15fe1291"
      "bs"
    end
    language "ca" do
      sha256 "6ffd2af7420b1a4f0bdb0a671c158993b99a3ff427bc3c7af5385bee266eba6b"
      "ca"
    end
    language "cs" do
      sha256 "439c5be15688c283b8fee86c79b00cbf91a9759e7a4d0e9e9658393fbb264ae8"
      "cs"
    end
    language "cy" do
      sha256 "5e1cbe9fcede241e5b1a0ee78aeeee57b7a7a2beb705123ca86434792348958e"
      "cy"
    end
    language "da" do
      sha256 "85b194388626b86e303b9e33e5027bcfd423059c5fd26e60485df1d18ba7509d"
      "da"
    end
    language "de" do
      sha256 "429918d7f66b972f5c00df6a19a84b040c2d9f07406de7367d9dc16d07df947d"
      "de"
    end
    language "dz" do
      sha256 "f611843d59b8e6390ef9da5365fa259d97d8fc7d17b7877ffea4e423b268729d"
      "dz"
    end
    language "el" do
      sha256 "42fce70579c214c8015a66ff7e30c0de7bcbfcc7636761f98c7655ef24119863"
      "el"
    end
    language "en-GB", default: true do
      sha256 "c20ed5eb3b2410e7b1829694e02561181a14357c9bafaf8f542ea3506bdc2819"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "d4c7ea5735d16c3da8e317a73c223adbb789b51961b3a76c5fae05510fdfa39c"
      "en-ZA"
    end
    language "eo" do
      sha256 "351c1c0694de69f11c39c70c9a7a1c4d252496d1c0fd3373aed03601f94dfc45"
      "eo"
    end
    language "es" do
      sha256 "3e4dfd5f1eb1c4714b767c4b38f5a1e2549e4e0859cbee9013896d2a79b87047"
      "es"
    end
    language "et" do
      sha256 "d6ea714c3d770b198fa0d7a9eceba690d660ca91b3e163b36bd67a22c869d7f4"
      "et"
    end
    language "eu" do
      sha256 "fd2f596d1157a79ac90e1d7bea9225a4dc92995c0e86bf7662fe609bee89f309"
      "eu"
    end
    language "fa" do
      sha256 "36afcfbb7d1a5238dc1b61463b7a26e42f08acc7e8a3c6f654f8b88840eb6fae"
      "fa"
    end
    language "fi" do
      sha256 "2e152c5775843d209992d1a8ba0626b584993f2628e8082e88c9b5ae409beadf"
      "fi"
    end
    language "fr" do
      sha256 "d4210ca65e450fc13b99ab27aff37c148f8f1d702674a477042c2bd72eb5b637"
      "fr"
    end
    language "fy" do
      sha256 "c0909179bef54fdd29634ea31d9797efddcffccb3cb82f8f5cf5a7459d8bfe6d"
      "fy"
    end
    language "ga" do
      sha256 "3f5bc871f76400510b0714ccdb783cb220c5f9bdb4bb686aae729b75b6de09f7"
      "ga"
    end
    language "gd" do
      sha256 "87d9964e3fc2bc3e16d0dcd4ed9e518cf4a83b170c4710f416e224269aa95900"
      "gd"
    end
    language "gl" do
      sha256 "c253773000e76ab50d874196302e907894cc45fbd4a60d54d9e48a048b0efbc8"
      "gl"
    end
    language "gu" do
      sha256 "4b38ff24fb869c9e0706d279f2947b0542bb1493e97b67de90808e5c1aeb2d11"
      "gu"
    end
    language "he" do
      sha256 "a4179b6bbba4c014626f05f2aa47a22bc4024e8f4ac8adb43e96c67a1c6cf5ff"
      "he"
    end
    language "hi" do
      sha256 "d636d6df5f81a65d396755c96f6c9af06e6401f8e4136acdaa170956bc7a76eb"
      "hi"
    end
    language "hr" do
      sha256 "6b4f1a0ec3b57e488b97cae898e603f7abf85ebb92137eb744bb10935557ff44"
      "hr"
    end
    language "hu" do
      sha256 "54d33492e072e54bb347099ce57e9df07c6b42ec2877f5a7e78693d80c9ede8d"
      "hu"
    end
    language "id" do
      sha256 "a8a8fe6d64a75570c26b3ef12350d26dba6fa4e7779b4124c68d1c1a964d9ab0"
      "id"
    end
    language "is" do
      sha256 "cfe10393eb949ee26187ae055a4dd5136d1e4a461b477dc20875e0716193d392"
      "is"
    end
    language "it" do
      sha256 "b03d6197e9f980ff22fce2427142e514a4bdc03fa0c9dbce542ae81bdf20bfc1"
      "it"
    end
    language "ja" do
      sha256 "ba3a4cc26e7d3930d24aad17b0bd928b019470d3635fa6c80155b199eb015ab1"
      "ja"
    end
    language "ka" do
      sha256 "2d617b792e369cd9a79748e683ca359b4f322df2e2c6b8627a7868b1f787f32f"
      "ka"
    end
    language "kk" do
      sha256 "1d75c9ed089fd811a199efbf3b8357ac8a4d14e571c20923343df92db07aae7d"
      "kk"
    end
    language "km" do
      sha256 "cc2e0cb5c940f29b37d43057dde74ede231a36d210c158fc483f0d6e16e4f9d8"
      "km"
    end
    language "kn" do
      sha256 "a2fe43c6eb1a3f70407aec34db28e0cfced75266df60d1db978a0d4a0dd100c1"
      "kn"
    end
    language "ko" do
      sha256 "ef287db275ccb7bf50a0f64a1c5adf5bd846a279ee7bc54d9a1464cf1da69554"
      "ko"
    end
    language "ks" do
      sha256 "8806e39ba7463fc121f784c5548e362d89fe5135429c327c62b872e3f0460d6e"
      "ks"
    end
    language "lb" do
      sha256 "c22dff92f29e81953e3d63df44b04dc9f14dc98ffcbae0a625e9e5e9a6973e36"
      "lb"
    end
    language "lo" do
      sha256 "71d4351b9da5e482e4b0c8f8eb91505493057dbfefccaa20462ed138bafa0473"
      "lo"
    end
    language "lt" do
      sha256 "cf7e41b48f324401fa91c750aa474748b48b5ce238f91000c97c753ca21eb7ff"
      "lt"
    end
    language "lv" do
      sha256 "1eb238f6d85e3d7931b4a823b8047f72f95c7e4ad5d119fec089bd57de7a2c11"
      "lv"
    end
    language "mk" do
      sha256 "ab9d06496f7f9d79ac46b65a95e446babc698946f7ff20ab6c6678a2528e27fc"
      "mk"
    end
    language "ml" do
      sha256 "1229d6c94a6f8395862539abed6dab2d4b4646ea4aaa5bf9ab5bd845923421df"
      "ml"
    end
    language "mn" do
      sha256 "b67cfff709b5df6a96fa3c7834309cfd67cb1e1cca2b52a527410e8e65add919"
      "mn"
    end
    language "mr" do
      sha256 "3f166b200456acec5a3a878020e528128f0cb453e9a803adb13754f9d1bd3115"
      "mr"
    end
    language "my" do
      sha256 "b2cfda93624ad6ffa1ce5121bbaf96e3f1f71477653f5f62c3f2e4b9f3a40834"
      "my"
    end
    language "nb" do
      sha256 "7148e2792e9d3dd75b1cbfff028a1f1027a715f7a23cbd0b83c2f20e98e62239"
      "nb"
    end
    language "ne" do
      sha256 "9ab583e8f8e6b7b63f5cebe8bfb214bdcbf4b514c58515d90a2a09712c611d54"
      "ne"
    end
    language "nl" do
      sha256 "9a6be9c826f214717df69bf08f240c44f3b291cf9b2aad38032d369658c59124"
      "nl"
    end
    language "nn" do
      sha256 "41394e9d16e5e27fccac4c1aae3ad72a28cc60e421f470b745c1e7c914c12eff"
      "nn"
    end
    language "nr" do
      sha256 "30e1b6c9dd28b48b3b20ecd35782a5baa4b529baac65ecb94b8d245656897aa5"
      "nr"
    end
    language "oc" do
      sha256 "d3991965882447cda1a8541e617a4147d99c4512c74b08bfa2cc4f2ae895ba13"
      "oc"
    end
    language "om" do
      sha256 "23f99f2df1f6e37f1976fd6e48865f0bcf87ee3c1d1c0c8fe381cd7e91e794a1"
      "om"
    end
    language "or" do
      sha256 "5ef9ad242b22c3a8d44b92e7db64fa435430fe1827f23723e6a50d9e97616a96"
      "or"
    end
    language "pa-IN" do
      sha256 "ff6250f38f75a88e7f5dc982efedbc1e4663296c718fc6e78141f4ac26cbc416"
      "pa-IN"
    end
    language "pl" do
      sha256 "eee5c526143574122ddf059de72922f59ed477543801acffcc29cbff39807798"
      "pl"
    end
    language "pt-BR" do
      sha256 "ad02b367fcd8641b85c06cccc5403e97a0b4eb742fc202bc13d5956943ac839f"
      "pt-BR"
    end
    language "pt" do
      sha256 "5f61dc25d63339d9ce82b50f1fbfa2b3088a0fca39468fd3cadcc7fe59750422"
      "pt"
    end
    language "ro" do
      sha256 "2583522b39e13658d05e068461425556dfa9ac452fb8e50965052022ce516123"
      "ro"
    end
    language "ru" do
      sha256 "c5a6b36e596dfe71e033ee671c61a2200b47d8a5509e7b7d9b8cc6097574d524"
      "ru"
    end
    language "rw" do
      sha256 "232051747aefc8557c67d4f8281f252c6ce1b65ac0660f55de5137f957386522"
      "rw"
    end
    language "sa-IN" do
      sha256 "6aeaa21b333aab5d9556473e37695f3e2a86ec8b22d56d57380ced6c68ba5a81"
      "sa-IN"
    end
    language "sd" do
      sha256 "aacec628c9892b7149df53d2cd0b210ccd02690e4b03bba81f583088d7bc4697"
      "sd"
    end
    language "si" do
      sha256 "240f2afb405fbe9fdbd3a5cccde6a2f561bf5c7a319eee15548c88126e6fe06e"
      "si"
    end
    language "sk" do
      sha256 "b8475b33c9dae400ee3c6027f4640cc28dd0c5683e7c784adb8cec596e48fb4f"
      "sk"
    end
    language "sl" do
      sha256 "00b9f9f65b9cfcadd09741de045a29a441619ad1cb4c046951f6b93ca987ac62"
      "sl"
    end
    language "sq" do
      sha256 "fd86d460d5fc617584dafd042d33d1fede2a7c266f42aba69b88b47cbb668f3e"
      "sq"
    end
    language "sr" do
      sha256 "b0ce30583713c2bd2d72425a5d902155ae20592b29422e169bc7b46f4fbb9f00"
      "sr"
    end
    language "ss" do
      sha256 "902843b307ec72a4ba2b677917bc1290eb5d478748f361cd2cc985b76dd864fa"
      "ss"
    end
    language "st" do
      sha256 "bbc0f63c8e50f921131cd786414f3ff111fbdf9465bab9bf96c39d3bc4803198"
      "st"
    end
    language "sv" do
      sha256 "3cc7c286b50b5de111c758e68bfd378ff8f3b86830377277f45cc14c5a7cdcff"
      "sv"
    end
    language "sw-TZ" do
      sha256 "9ac2e95b2cf173df5b746dc3ce85446d414fe4235ade470fcab5b5d03e946fa1"
      "sw-TZ"
    end
    language "ta" do
      sha256 "59a6c6b2dc05524665a18c05ebdb15fcab7b5da2b8498e98dda6bbd90f72b484"
      "ta"
    end
    language "te" do
      sha256 "5935bf71e2ccc5c55bfa2870c518d54254a92c34eaf485009c56376bf1fcbb12"
      "te"
    end
    language "tg" do
      sha256 "8004ef69feaa6cc61e28acc3b937efb321948bb1e9b0b88b2cfe73de7035542f"
      "tg"
    end
    language "th" do
      sha256 "77ef36f12aec11bc5f580b50b13230b60a4b094037035b4b3535a53a6ecf4772"
      "th"
    end
    language "tn" do
      sha256 "977080ac0b7537c3a868b7a6adb5fc44acb0ed0cc460057fef29cf9cd31ea6fa"
      "tn"
    end
    language "tr" do
      sha256 "87ca7113255d3c70231df95873c7aa0d08c515b8c8483a3f5d5111696c522fba"
      "tr"
    end
    language "ts" do
      sha256 "437c5d25888447603a2a0fa27c2dc6fb45491cb52809ddc8070b4af8e9e7d23f"
      "ts"
    end
    language "tt" do
      sha256 "482d0ec0c635baebd4f075056c1a0b409ca1115b64af48848d07e7abbb50c2a5"
      "tt"
    end
    language "ug" do
      sha256 "a4ed9698121edf7d45b1bd48f1e9f8d460b643c4b495bcb2bcfeb9e4e4a12e3a"
      "ug"
    end
    language "uk" do
      sha256 "ccea2e9ea5ff53869cd55ed68bcff03ebd29c6516ba9c760bbfab2d73ade3b66"
      "uk"
    end
    language "uz" do
      sha256 "edf6c43bd467172932a0edfc2eac7f56187ca82ce80c791c09bbaef19259a86e"
      "uz"
    end
    language "ve" do
      sha256 "b7b3ea43054c8cbbc93680074de4c43836ff9a2f6430c5fd75894ee2b1ba329a"
      "ve"
    end
    language "vi" do
      sha256 "12d620e1466d1de6534b3c898760a1919b077cd3a7a5d1a42914cd9a8b825283"
      "vi"
    end
    language "xh" do
      sha256 "cae47adb84d4de5e666ba919b2f86c52b34e2094fedb37c620e258d14e9c23d6"
      "xh"
    end
    language "zh-CN" do
      sha256 "3e8978246d99bc6f67a6c42b343976831aee07a5b9c5fd0978ae394293aa8da5"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "10b068b31dc1c464de9e92cc985c84a3d19d75cd684faab148c964a8b1f4388b"
      "zh-TW"
    end
    language "zu" do
      sha256 "e953c49f2303e8aa3870ca7c6c8b5a5af2f90deca30fe92685bb7d3604da2bce"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "b78e5c7d185399967a535a315620bb4bba175f0bdb109b4cdcd2cc1c640b5375"
      "af"
    end
    language "am" do
      sha256 "fc65b631cbe4428e939a91e5de7029941f12f46c39d784c3ee6b7411e7b40586"
      "am"
    end
    language "ar" do
      sha256 "11068d48b6ea33ebe6a7e6ffa90e0c91d06fe7c777acd4cb5f81c34ed78a8038"
      "ar"
    end
    language "as" do
      sha256 "dc81b9b6ce18f5bdd8242359eba7299c9ab859f77be8e3afb8996158ce05ab27"
      "as"
    end
    language "be" do
      sha256 "95718c8de418faa355a210d53bbe448273a6d054da75749d941b9f4e0e8f4849"
      "be"
    end
    language "bg" do
      sha256 "5a679cae0bd0002e61ecb8d272a3018416cc6547c0a647c292d15dcc4ed630f7"
      "bg"
    end
    language "bn-IN" do
      sha256 "2221fafb42924dfc7e2ab364e5886ce912c77c3bbd12330f3e3887736a4aba88"
      "bn-IN"
    end
    language "bn" do
      sha256 "50059223f5402bb31a98b1c349439fdd7c6dc0bfb27e910fe6441a3cd1e4e11c"
      "bn"
    end
    language "bo" do
      sha256 "bc1ff2608599031b140eab1a7b5cd9b6634d25ad49e2a72a8dda6e5f5fd447e6"
      "bo"
    end
    language "br" do
      sha256 "7a1098a9b140270765195ab8231752665645e8f8dabacee7a792093c5f0d8d15"
      "br"
    end
    language "bs" do
      sha256 "5630faf96b0dba93fd246c4ce6603b6eac16eba022d29be6861019f08b16cccf"
      "bs"
    end
    language "ca" do
      sha256 "8dfed8d80cf1e9f936c0d205d891d9eef68d9c928687a3290d1d5b1e3f3326e8"
      "ca"
    end
    language "cs" do
      sha256 "03b9ed2c01da2625204f1c69953cadf3bf791f144df680f5c29de0f323e23b91"
      "cs"
    end
    language "cy" do
      sha256 "b53836b803232bd25859635b1d8b0366caeebb86213002ccfeea0e156f144555"
      "cy"
    end
    language "da" do
      sha256 "3c182f1fedcbcfae74ba387cbc3dca8a2f95b19724664ca74af9e66dfe7b7b48"
      "da"
    end
    language "de" do
      sha256 "212ae671f511d4826da1fe73620928dfa71534af968fc1f1b7beb2927c14fddb"
      "de"
    end
    language "dz" do
      sha256 "a188e642f6704693bdbfe7dad395a39e64368636f02ac5b30ba12df4440ee611"
      "dz"
    end
    language "el" do
      sha256 "291f28adaaaa507dcbf5b7ba1cc9ac41a106082dcaf895f1232f8d49d2d27488"
      "el"
    end
    language "en-GB", default: true do
      sha256 "858e4a33b78e0a8162aae61b9a83a43efa440fc4d37b030e9a01f4fef2935198"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "13871b870ea9ffa2bc49ea7e792325cb06b76a78ad556f06d2cf5a122fe5d2b7"
      "en-ZA"
    end
    language "eo" do
      sha256 "f8e4545111ebd58759bf532e4b98f70fef193933fdb7cc76fcdebb18a289141b"
      "eo"
    end
    language "es" do
      sha256 "cff28ff9be32953637cf4165365fa652429700c37bbc45a90e92cbd2dcda9503"
      "es"
    end
    language "et" do
      sha256 "6c93dba6c27c19f033dbad705499e7d25f278fb62dd01dcdefa13b740da7dd13"
      "et"
    end
    language "eu" do
      sha256 "2d3208e4f4b0638218fb1cc6d7507b459b0c368e5e1bf232976fa79bf8832c4c"
      "eu"
    end
    language "fa" do
      sha256 "d28d91826457a59763866c617e3c323d4827467960ca1d674b02bae5508b54c5"
      "fa"
    end
    language "fi" do
      sha256 "0334ac7c8d2733517fe4d13ea01c35553576c6c937c47e11fd271d532d838e15"
      "fi"
    end
    language "fr" do
      sha256 "281d0a75eae76387ad6fa8c7c624dc3c9fd5db09ad40620ea1b0605a4340af47"
      "fr"
    end
    language "fy" do
      sha256 "1c84447f3c5cca37e0572f5dd76e032faf3f1bef9ad17db29cd3252d4b0dbff2"
      "fy"
    end
    language "ga" do
      sha256 "e6eba45698955db8715e867eb318ce58cd717f14d32663101abf02aae88ff31c"
      "ga"
    end
    language "gd" do
      sha256 "94687322ee068e07b459ca85efe4134496fe9efc2bad1d8403ee047b950c99ca"
      "gd"
    end
    language "gl" do
      sha256 "dbe1f4ea4184f9c611d533bd8da3f410a0a592bcaf55da6c1497f678926ace9d"
      "gl"
    end
    language "gu" do
      sha256 "1c66c9f76ccc92008903f96ecbbd28ef9befbeadd65c63e69f701b2845b6a473"
      "gu"
    end
    language "he" do
      sha256 "7eee9a62fd66bce994aca1f102faf473247bf98cf0c49320a25d206d7fb05d92"
      "he"
    end
    language "hi" do
      sha256 "29c2d76ed0d13240a8b65de690890b1746a68a1d61b321deb98aae5e6e8d0063"
      "hi"
    end
    language "hr" do
      sha256 "39e9f48932deb095ed64fef0c936daca3c591e87f9ecf407872cbdd4fb777ba2"
      "hr"
    end
    language "hu" do
      sha256 "9bf7d7cfbba2025811a0de8398384344b520a9ba29fa9d3007a33b5bde99d029"
      "hu"
    end
    language "id" do
      sha256 "9e8dc3fb33eae1a56986634e65e76c8ebd76a63ae15eaa013519c2ac493902a0"
      "id"
    end
    language "is" do
      sha256 "f3bfe98fbac1b1b218739063adbf73e0a218fda3db362b1ac590f6922eebc40b"
      "is"
    end
    language "it" do
      sha256 "d603607590ddfbb7736339bc9cdf29963fde88e928af20cfe29151a394a390ea"
      "it"
    end
    language "ja" do
      sha256 "f2afe3a688d0466330578d379a9eafb04c480685e0d28b52bc1c1601d2b505d6"
      "ja"
    end
    language "ka" do
      sha256 "e1fc256d867b011653a9256c020abfdc8fabdb40eda37ff04f77a3d7f2eccc08"
      "ka"
    end
    language "kk" do
      sha256 "1c50899f7e91d5a63155bcee9f463e136336e28dc04d6b2645aa1ee200422a92"
      "kk"
    end
    language "km" do
      sha256 "8a9e3e02b5bd00f8f87ba5262864a499bd45577498160a1837460fe5fe5cb156"
      "km"
    end
    language "kn" do
      sha256 "a2bd8f7b980514ab1985bed0d2aac14987825d1d9237576529b257d8bba47021"
      "kn"
    end
    language "ko" do
      sha256 "ce4494e1122fb7284381421610c19bfd00aa909e669b9634fdf3469f4186a551"
      "ko"
    end
    language "ks" do
      sha256 "34c0fb547bc99a04b366e468b72154a4d0d5137dfe9b6f92923788c97207e8ae"
      "ks"
    end
    language "lb" do
      sha256 "83068604e0922778e3e455a6122a5cb50ce71f5c91bc1ac711ccb2ea35c7860a"
      "lb"
    end
    language "lo" do
      sha256 "51e0c45c7dfb4c7f9ef9f21acaabb045f43fe64cbd73b524fa4748f9f917e37a"
      "lo"
    end
    language "lt" do
      sha256 "8a7621e7992ff34605516e1b896acfbf62658423b3991297926320aaf23db031"
      "lt"
    end
    language "lv" do
      sha256 "84440399d2c7350071ef574ec581405cc424903db8097b2ab6332881f90d0c46"
      "lv"
    end
    language "mk" do
      sha256 "7753e138ff2ab36df2976b30ee67ba29f8c148b074632cc94fee89abf1729b01"
      "mk"
    end
    language "ml" do
      sha256 "cf5158d3c8ecb175947b1503ab2482359c6673acbf98618c07ba930e51d0a3c0"
      "ml"
    end
    language "mn" do
      sha256 "e48fd43413214231906cd9bf76e7be3bfcfc7418afc8d12d15ed70b217af72e2"
      "mn"
    end
    language "mr" do
      sha256 "cd3edc3679a6253aacb37a275d276370a1bcbddd33fb5767687c9ccd3898e9b7"
      "mr"
    end
    language "my" do
      sha256 "7695925c03b03808b1b815e5440eab715f4fa904c6dc20554509beb03d170658"
      "my"
    end
    language "nb" do
      sha256 "910363cb58b30fa158796ab892adce31ac3d3c480d95606791d705bf3766d605"
      "nb"
    end
    language "ne" do
      sha256 "3339db85ecf580750d6aa0b134253ac80b41aec312a7dcd9694a8fcf527fa138"
      "ne"
    end
    language "nl" do
      sha256 "295e4c3d67da8f1f79846268d25940b191b2c492ef6aac35727448f1697fe827"
      "nl"
    end
    language "nn" do
      sha256 "5ab817a5dc84e9b0d404000b94626bd3b2c8ce879e581f72cb19700c70aa2e8b"
      "nn"
    end
    language "nr" do
      sha256 "7c136e690faa1fc4c4b0e445984f4ace7902bee48ba7675788af46826d18783c"
      "nr"
    end
    language "oc" do
      sha256 "09da08a157f733ab909d2a1ee1d22b110831194d63b063afea98b130eb022127"
      "oc"
    end
    language "om" do
      sha256 "dbb55d0957e49bc435efe86cfa3960c5c4a3b0161255a630519e4bdc58557cfd"
      "om"
    end
    language "or" do
      sha256 "9469ba766a936e30766a97494bbfbd4ea0828d48d10efa6c10e45f2beddfd0e0"
      "or"
    end
    language "pa-IN" do
      sha256 "465239ece1d7fcaa871a2642fb846f5637bd885d0fe724c2981b9b9fcba28048"
      "pa-IN"
    end
    language "pl" do
      sha256 "0c9c083ea2069fc22a47238f13f65430fede7d181c069ee5c26c61a7f75c635b"
      "pl"
    end
    language "pt-BR" do
      sha256 "3ee3b9b3e04fc9ea6343ee82f0cf7953ed3cdc1f659fe09fe7b971f75b563a39"
      "pt-BR"
    end
    language "pt" do
      sha256 "3dfa2a81cf88afc64af58305a95d882474d4ce647765807dfd0214b860ee8d55"
      "pt"
    end
    language "ro" do
      sha256 "b15fb10f2020cb777be1d9b5fd668a50182e8880a4a9f3d45fad1b1f6f9735d3"
      "ro"
    end
    language "ru" do
      sha256 "70ae6efee773a67e1e2b5b55dde94e5126b1cb6ac68e26c961005fd71ee88e0a"
      "ru"
    end
    language "rw" do
      sha256 "b3adbc36a1ebc6ac90974272a147e49e2aadb3e0095486de5bedcc7419bd86c8"
      "rw"
    end
    language "sa-IN" do
      sha256 "1f174edd35407c3b89fcb92147d2254497b7ba31a47733d75115eb5f26cdf1d4"
      "sa-IN"
    end
    language "sd" do
      sha256 "3f917b27af70a94fac2b0875d060c7a5c00f572f4b08bf30fdaecdb22ce5abef"
      "sd"
    end
    language "si" do
      sha256 "77c22bbd9fbd459333da13359f84e43c3ceee87b545bb12a27c3b703ff614e13"
      "si"
    end
    language "sk" do
      sha256 "c6827a22f899c93f3c1abf37c0d628e354124449c128a835ef3d77132b112873"
      "sk"
    end
    language "sl" do
      sha256 "2336a710d01449b35a2b05373d54718afa6393cb3d154add95abcbb6ceb5cfbd"
      "sl"
    end
    language "sq" do
      sha256 "2df9917b6d403ccf8251b98fd46ca19a6ebd9452dc3082cffc9ae17688cb5222"
      "sq"
    end
    language "sr" do
      sha256 "1d30e951f6e3733f4f7f0a5b0e58ddbc4e8b316230ca06f7fd67b9b58c544f59"
      "sr"
    end
    language "ss" do
      sha256 "5b53e4b342387ea175da289b69bf3eb9033de88133e130bf3137a269cc81533b"
      "ss"
    end
    language "st" do
      sha256 "7250f3657828f32af8fe235a0837db8657557a2b5063d71c78d588a6fa4d8bb9"
      "st"
    end
    language "sv" do
      sha256 "5ac6a33cd86c80008afd5b2f9b40677be68a18b9e3752b5d0ecbc616bcfc37b3"
      "sv"
    end
    language "sw-TZ" do
      sha256 "bd14e43fc09bcb6111b06391320e4964655cf73e59ec7bcd1e0eda462aef0237"
      "sw-TZ"
    end
    language "ta" do
      sha256 "98c18203dbb6e803eb6290592dcf7483ff0072e034838f2fb989b8934ae45e7a"
      "ta"
    end
    language "te" do
      sha256 "daea54ceded34df8a076c84a36b4f5833028420c1cdda7a345b86907983e9d2c"
      "te"
    end
    language "tg" do
      sha256 "22721f3bdb4241e2db3d6bd080ea36d8990c03345679bcf8ac21cb8d5101f5f2"
      "tg"
    end
    language "th" do
      sha256 "9298073b10960557cb091a2ab13088cdc0cf486377a6d2f7e836844c69eef0f2"
      "th"
    end
    language "tn" do
      sha256 "525360a3d30027ea97c3c1daeade9c70554eed0c12b58481e5d5dcd2984093a3"
      "tn"
    end
    language "tr" do
      sha256 "bdc70372734bc20279bd179c08a387c85b4b4ad5be948a4ffcde39fd90e2daa0"
      "tr"
    end
    language "ts" do
      sha256 "4d91752de85129471f9b92c0e9e25f0ba493e1f7957f7e325b8a1f3ae56aab25"
      "ts"
    end
    language "tt" do
      sha256 "e29a0a232c3b7f5f61ec6815774c733aef4140f679fe2a1865f20aa4b14a1c01"
      "tt"
    end
    language "ug" do
      sha256 "c1be04dcbf64275516bb5c099ca10bc1522b0c0281a56cc5f791f5db1fe229fe"
      "ug"
    end
    language "uk" do
      sha256 "e24af6ecbf2838fbd6fc801553dbf7fbf5777d29fd1c2c26df97ac825eb06dee"
      "uk"
    end
    language "uz" do
      sha256 "e119a74adeb32735ca203d5e652db571243229533e934309374af1c76995bc1e"
      "uz"
    end
    language "ve" do
      sha256 "c79d3e2f65c48b7b5ba1f7bc0bd5ca55c2973c603ad3903e02b6636dd43c2bf6"
      "ve"
    end
    language "vi" do
      sha256 "7a143cf3d00907ce3c1bb89a27962e73ac2eb3e331d4fa44e69a1e6f1dd277b8"
      "vi"
    end
    language "xh" do
      sha256 "42cf978c0024e45248797d346291393104bdb46e63ab17081fda8ca6d0acd39a"
      "xh"
    end
    language "zh-CN" do
      sha256 "6eca16a387ad2bbe17fb32853ccddd59a8b0826d5714db82ac4a29c7f9f52cea"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "50a88c1d2f1903d5f5d00cdeb7caef0461a685886f1bc507de0e6e317006bc51"
      "zh-TW"
    end
    language "zu" do
      sha256 "bddbc951d563718a2968e2cd5553fd5282b77ebec5a0e6f3d2891f40d77d5163"
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
