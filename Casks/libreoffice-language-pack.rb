cask "libreoffice-language-pack" do
  arch = Hardware::CPU.intel? ? "x86-64" : "aarch64"
  folder = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "7.2.2"

  if Hardware::CPU.intel?
    language "af" do
      sha256 "2469d035ce2f17d57af8c4c6102e96101b3be7bb5b2ab7c32ff762b7772de363"
      "af"
    end
    language "am" do
      sha256 "4396f54eaaa70918b7858daa317187e759e0a65a88bb96b63cf84bc532f83917"
      "am"
    end
    language "ar" do
      sha256 "ec359cc3265bda4b4dd88f6611672a492ee69f9b98a81931611ccc06177670a6"
      "ar"
    end
    language "as" do
      sha256 "9f1325584d4cb23229630059c596e2c0d0a405fc203b1307c0cdb186e08adeba"
      "as"
    end
    language "be" do
      sha256 "7bc0f8aca120d64135a45f77579aac21211ee6f023cf947ccf8bc8aae1bc0527"
      "be"
    end
    language "bg" do
      sha256 "40336e358f7fae1f721e9106795ec2597697973aa680b2dca542d2807395c19d"
      "bg"
    end
    language "bn-IN" do
      sha256 "e7b419034fd90b7f20c67a73ac8a5916d61d3d169bbbbc615cbe23614e841128"
      "bn-IN"
    end
    language "bn" do
      sha256 "b8c239f556527553f30b4e6290883530f351fdfaaf0005ce1fdda03e2f2bf06b"
      "bn"
    end
    language "bo" do
      sha256 "7d2240480abc34326304af1e744a92e16511f56dcbeae2adea49f635876c0662"
      "bo"
    end
    language "br" do
      sha256 "a9ce960e8805adbddd2c7df40990110c4fa4f63b1d0cbee6c2ac2c77d4f6ae19"
      "br"
    end
    language "bs" do
      sha256 "d1a02bb4c25ea141098fea813476c5aab424aa1d003033737b8b4e2a30079ea6"
      "bs"
    end
    language "ca" do
      sha256 "5494550865335108dacef8302d8b3823e86714e3fc3f80a3101ca2e10fea79f3"
      "ca"
    end
    language "cs" do
      sha256 "32013d1ae2950436576bc543d07c5d2a72ed43e801a8674dccaf78807d13a590"
      "cs"
    end
    language "cy" do
      sha256 "af011916d5184ea7c4239443f945ff3b0408fc73533f97b1133cbe17487e5a9d"
      "cy"
    end
    language "da" do
      sha256 "cfe488e528be891cf4e26008123965032a5a92146ed0004cc3027ed7aca234db"
      "da"
    end
    language "de" do
      sha256 "1451dd1917677c42c2eea6ffd4c0018f1bdaa08ceb0aefeb606ae721230dc332"
      "de"
    end
    language "dz" do
      sha256 "de213de9857a936f8a1fa795e583467e6ce6302dc9b1af305df3078bf27a29f9"
      "dz"
    end
    language "el" do
      sha256 "a7ba1bd0a7b75d1cccb82e10141f77c899aea5b15e745feaeb2e11249850f207"
      "el"
    end
    language "en-GB", default: true do
      sha256 "d05a192f6cbcd3b84e0f8933deb4eda73ab0a2b548e5148daffa37d14e37c7b2"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "f56ede30e265fbf60537c147b2f5417957a3123abb6e2c3968c038f7d0e0d648"
      "en-ZA"
    end
    language "eo" do
      sha256 "4bbffd981a83491b8aa6314f0476b2f330627b8f1556afd3bae67b35a232fe67"
      "eo"
    end
    language "es" do
      sha256 "25209c05378399d36e6ff897b620fb83df8ace8842ca1efeeba0d00da140b825"
      "es"
    end
    language "et" do
      sha256 "b41f5fed488c0b4fbf068cb1072d94fc6ba6c068498340282ff5aec903dd2961"
      "et"
    end
    language "eu" do
      sha256 "c219db96d19191a10b5595563d1200ec63719263b97d9660d0e05fd5269ea170"
      "eu"
    end
    language "fa" do
      sha256 "06dc151db98a436d5478a0762cc71a26fe94419d0b3c45b4cfee7a1556cce734"
      "fa"
    end
    language "fi" do
      sha256 "82cb3dd513cad09023cb6df36b345d93443b5af189758e99e50a883fd57f47eb"
      "fi"
    end
    language "fr" do
      sha256 "8b89bf83dc03f2538b43b84e847cae5858d87d3f64c6548c3dd7273f74ff872b"
      "fr"
    end
    language "fy" do
      sha256 "d518f2a0bd703fdd66e5f8b16b871ed105a91a4380b0a2c088a1a6a08fd4f799"
      "fy"
    end
    language "ga" do
      sha256 "975cf891d0f05386a5e1edb708f8459eb9a97a57b91e8f6899410c10f6255325"
      "ga"
    end
    language "gd" do
      sha256 "a7659dcc6c6436946de9e07a6b022ec8a2224432449985caaf4513883fb66853"
      "gd"
    end
    language "gl" do
      sha256 "8885e30850aab68bd67847aab58af762a29752fbe5858a72920bdd624cd67220"
      "gl"
    end
    language "gu" do
      sha256 "15cf81bc7ec965dad9cb20e5f83f7f0038754c05553e5ddbed637616dfbb906c"
      "gu"
    end
    language "he" do
      sha256 "4409e9ed4c2875379558db1e658e07de7bae3f2a22376707b796f78e81fddc1d"
      "he"
    end
    language "hi" do
      sha256 "bc1b18ce8429c16f56f460472a2d0d9787d883d9b6c96d7d8cbb3b2d9ddc8929"
      "hi"
    end
    language "hr" do
      sha256 "19f108ec4f61ca95bc4d2708d9d76366b7ef21b0d4531016d37d486fb214f2e0"
      "hr"
    end
    language "hu" do
      sha256 "6ddfcbf41b0192acebb9ca1689cd42e215eba22fd332aaec286f54ee149f9684"
      "hu"
    end
    language "id" do
      sha256 "f6b0f3f6d69dde362f39a836dbfe3f99396bb58a0b5237ca7eb7667cd7c30c3c"
      "id"
    end
    language "is" do
      sha256 "0e839e0e138446b8365816c33eb6dae84ee8f7294518723d4f98d4a9a849aa7f"
      "is"
    end
    language "it" do
      sha256 "4a8f3c176b0d22438c4e12dd83d9df5b1fe943391094b8c9f68fc0daa4b3c1fa"
      "it"
    end
    language "ja" do
      sha256 "76d91e56fb4a0af60d85ab258b1ee2e33d2b80b88c62883e173fd978ec815bc1"
      "ja"
    end
    language "ka" do
      sha256 "dcac179efb9dab21cdf74ff2ba3fc89baae3181671d7a97c7148c121b08eb5e7"
      "ka"
    end
    language "kk" do
      sha256 "3baf8ca23e1dd323bba4f20d604ec5606aac56a8ba174fda320ad826bf32c83d"
      "kk"
    end
    language "km" do
      sha256 "ddf526696b159fb27e17bc0f017a630c9feb2e2336a45cd5450a1c57e0826dde"
      "km"
    end
    language "kn" do
      sha256 "870b97ca2a601825317498ee5c22a2863fcaade8c1a78b0d25b3ec9a8cbd3d99"
      "kn"
    end
    language "ko" do
      sha256 "451ba46a289ffa7a307cb52063f5dcf96dd2eef6d2a1c8caddb7718e05f77ace"
      "ko"
    end
    language "ks" do
      sha256 "7bbae1085bb769edce915dba1502297a9f99f784023b51e2a575aa0eacf5e03e"
      "ks"
    end
    language "lb" do
      sha256 "4a5b011e1add79ac876d1c2cb1109c110a84cd688554e7c1df45c3d14a80614e"
      "lb"
    end
    language "lo" do
      sha256 "8450e8e92c778cb09e2e009217b1a2d6472b0fe8eaebadee76d8e07058998127"
      "lo"
    end
    language "lt" do
      sha256 "60b79b86fc8f915e203515673acd320771107041964de7634dc5d7cfd500fbb9"
      "lt"
    end
    language "lv" do
      sha256 "2cacdaa6e4cf8beb58b0cb4677206c7a7611fbc4e48b59769adf289688e35365"
      "lv"
    end
    language "mk" do
      sha256 "e4b8ad68ee05935190a755db5648baa07ffccecdeaa7f9319a439d635dc0735f"
      "mk"
    end
    language "ml" do
      sha256 "5ef14874df2a9f0fd8f20745c70293817ee2f6d818980c8f3da0899058c28ed6"
      "ml"
    end
    language "mn" do
      sha256 "bd9ae00f39b7e012f46d8b3e4f98714d6074bfad247c245f93baeed7e3cb0f8c"
      "mn"
    end
    language "mr" do
      sha256 "75492113d15a550ea9fa60f6d8e70ba6e8c97f649c5aa5918d626974db3178d7"
      "mr"
    end
    language "my" do
      sha256 "6a648d149b2c2250ac2bbd8c44b38318474e79a2211be827870a3aa6404b6b1e"
      "my"
    end
    language "nb" do
      sha256 "b39bd9b026821287bee15b2ed49166be465b8f36284660c0581a9eb39fe4a1ef"
      "nb"
    end
    language "ne" do
      sha256 "443fa0bcedcf961b0321e2d63febc19ec3a61454cfa3d9adacc929f20e669d21"
      "ne"
    end
    language "nl" do
      sha256 "29e315bd5aad707a01c682e57c3954c49a2e9ea51a514a1987ddf92d111c5993"
      "nl"
    end
    language "nn" do
      sha256 "0bd9abee73b21209f7d6228c846de08545e305c2a97ae14a99a8549428c66471"
      "nn"
    end
    language "nr" do
      sha256 "9274de4d60122edef2c4c2002b6619db442d87c8d98df07ea44d98c0c6661156"
      "nr"
    end
    language "oc" do
      sha256 "1a72f20639780a27ad68ce357c7d83d8ec176bbcdaa724901bafb885226a8ede"
      "oc"
    end
    language "om" do
      sha256 "f1581ad9cf06156e15a8c06589d0aa19a1e7306ff74b87ab5a129a204b44f415"
      "om"
    end
    language "or" do
      sha256 "a212a56d7c21ef0d5f75f1202b5b8ff537fc9d21aec2de5b258c5eaedf08e435"
      "or"
    end
    language "pa-IN" do
      sha256 "381450a92e500fb563104ed9bfc3d3a4a622929f79777af8af598b7ab4dbb269"
      "pa-IN"
    end
    language "pl" do
      sha256 "f7f371f9555fc6a9b3fd9db3f288e243c39929a380a7ad2676a9c7a854de7b71"
      "pl"
    end
    language "pt-BR" do
      sha256 "9e4ec0dca65867d34106c075db409bd807bf005d700956e7c64773d2d1bb37a8"
      "pt-BR"
    end
    language "pt" do
      sha256 "a702f09ec68da5b3d44fa7360466b70b3fd27c9c40f5830e210f2e81c4e58e7b"
      "pt"
    end
    language "ro" do
      sha256 "a1ce96edca0c1903e99e417a053c6906c0c9911f6e64450d14f6fdae6fec5fd0"
      "ro"
    end
    language "ru" do
      sha256 "78f85663e7cffe1e256c87bcb3133c3214ae54959a7df2137a0071f95f047ce2"
      "ru"
    end
    language "rw" do
      sha256 "4c49cf5b2be8fcd58b65f19e3b70855dfe1d735f224a0ba331173efe9c03b55f"
      "rw"
    end
    language "sa-IN" do
      sha256 "7ebb73a7645ccad4783b5da2a82913e9c59207ba95042843ffe6e406a90e4a57"
      "sa-IN"
    end
    language "sd" do
      sha256 "c12dac0c20698a781484ca15c2498888d19761d5c8d6d4454d272b727f5043a4"
      "sd"
    end
    language "si" do
      sha256 "9f04f936e23cc5566acd477da5ec3720e3296d0e7ebf00ef7d5e47ccd643fb88"
      "si"
    end
    language "sk" do
      sha256 "327a53fd11fc0a789db9d5652122fc17599555d5167392aab1cf46b7586ec8b5"
      "sk"
    end
    language "sl" do
      sha256 "592d5053164ec2af491e56b91448813b735246270def6d76002f72016f1d5762"
      "sl"
    end
    language "sq" do
      sha256 "eb7b56eb2ec0886296515d2fa8c73cc580c882786c06fe583e32352a689d984f"
      "sq"
    end
    language "sr" do
      sha256 "fd2620b004af326b7eadad1c296676dbcc41e9cc56520388b9edaaac8e5f8981"
      "sr"
    end
    language "ss" do
      sha256 "7ae74ee503ff2593306c8efe47eb377b5069f69ef8fcbb765daa672c58301dcd"
      "ss"
    end
    language "st" do
      sha256 "6ad77b23b08d485ed6ab35284e6cbf9be244f9658277a1afed2ba505dc064d31"
      "st"
    end
    language "sv" do
      sha256 "772a69d687e16a4e8560150db27405e35b099190d7b09017951aa12a4c2e433e"
      "sv"
    end
    language "sw-TZ" do
      sha256 "41fae2dd59529c089a9d3e895ad6b42bb34da39f157a0e9892ce61dfab44c29c"
      "sw-TZ"
    end
    language "ta" do
      sha256 "d5eb73ac7469befa016009342f498eb682be2bbed0f1c1c7c3555710236d8cf4"
      "ta"
    end
    language "te" do
      sha256 "e61d1f1783b7126e7bc4fd591eaacb4ae9dcefd37e314478856de45f6f3a55f6"
      "te"
    end
    language "tg" do
      sha256 "12716465191afcc5383568d8573df62d92279f66e2d8e4fb9b445ccfc808137f"
      "tg"
    end
    language "th" do
      sha256 "6ed6415e9f49bce78c891c9bf90da38590fb540c428d13eaf6a1418abd2f898f"
      "th"
    end
    language "tn" do
      sha256 "70c22a63586937ecf4425e66f08546783bd106bd73056abcd3733dc602c8c25d"
      "tn"
    end
    language "tr" do
      sha256 "2b9e45a3add31a1f442450bc0702e57a2b04d7b84abc6bac94237145f278d2b5"
      "tr"
    end
    language "ts" do
      sha256 "8dcbfa48c207fae7787db97f8ea90f0da352a24689acbb59eabd980db83a4d6f"
      "ts"
    end
    language "tt" do
      sha256 "bb1e138c53c39c1e8960922e69010decb0adc6c4b14c86c550a25c8b6c90b1b3"
      "tt"
    end
    language "ug" do
      sha256 "4ac55fcb890d970057bb37305d437aac80ace396c060b0cc47f0f4e325c1c1e6"
      "ug"
    end
    language "uk" do
      sha256 "311aed0d9fa15c1fdc0982283b574e3920c1f4290f2ae9fa1409c2e4566fbf3e"
      "uk"
    end
    language "uz" do
      sha256 "73f2f5ef2353c65c3ebd33beb0321072a7261cca11b8b5e39bdf6bdc40deb1f1"
      "uz"
    end
    language "ve" do
      sha256 "d6d38172f8d6f15d794d8e00262843ee669339fdc529d05d4eab066d0509d619"
      "ve"
    end
    language "vi" do
      sha256 "905c072b6f1c24e0baf84ceaba528d4296c48ae36f08f06ad8298da9aec163a1"
      "vi"
    end
    language "xh" do
      sha256 "e0f27e96ee41430875ed9a2824b18f33518b0933f8e873707f244c7c1a61a90c"
      "xh"
    end
    language "zh-CN" do
      sha256 "87d16eae720d09866eeaef2e4d7ef484e4bc07340f8fac2a7812807cb0737b8b"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "038093665b07aeac258f8f1de489d57f641bf91c57a2f35e3e710335df6390bd"
      "zh-TW"
    end
    language "zu" do
      sha256 "2a7cc99d24e40b1f621b27cf9f55635d31d702f9c65c7a82e173f95343500d6e"
      "zu"
    end
  else
    language "af" do
      sha256 "7b606105b03e422182617ced13c6ae7a7d6bfee8ab9a37f51a42787c879a4747"
      "af"
    end
    language "am" do
      sha256 "9c93a77e319e264618f75b8e0bae19b4e4b21d488d2b0b964377c912fbb25fa7"
      "am"
    end
    language "ar" do
      sha256 "118c5bef9f1532717900a597f6b64e2d51ef3e4ccaf02e6d3ad5d08c15c10a4d"
      "ar"
    end
    language "as" do
      sha256 "76ed1f13c84d55f2b9579663eddff4cc34e078502568b58216d529775df84da9"
      "as"
    end
    language "be" do
      sha256 "9fa13e3cabf658dba7c1da55bb99d2942530fdea3220d0ea9cf10139243d1ce0"
      "be"
    end
    language "bg" do
      sha256 "f111e494659d6df5f3dfd31f5334ef2870895009377fc34064ade0897abdb767"
      "bg"
    end
    language "bn-IN" do
      sha256 "be5320215832f506579e7e8c2ccb123aaeb704a265bf6f0ec4ea97be35387202"
      "bn-IN"
    end
    language "bn" do
      sha256 "67911f32a92e3bac177e94c005978525536cc84a449dfb78e0d0c779ffee1fea"
      "bn"
    end
    language "bo" do
      sha256 "dc2e5dbd89d0fda2b21361b520afe4d73156ce9dede10e82fb32e51dd818cd76"
      "bo"
    end
    language "br" do
      sha256 "d83c52a272eb972f118ec398175d64cc4137c44aadc4efe85dbaef26c578f2e0"
      "br"
    end
    language "bs" do
      sha256 "035c622ff7adfe29bfbbb3d0e51c81722c18266df9f9581efbd00632b5eed572"
      "bs"
    end
    language "ca" do
      sha256 "3d194afaa1ba8d9770f3d88f3e2c0e01135f1b545ae34ad4c85756176f18ff46"
      "ca"
    end
    language "cs" do
      sha256 "163dbde697416491783c505056f29a8cd60994c9359e185b7c28fba0a8c41d63"
      "cs"
    end
    language "cy" do
      sha256 "b4f42fefd8ea15f8bc920c8cdea17edc6734b4401b8f32512c041c8f62f0ed2d"
      "cy"
    end
    language "da" do
      sha256 "6329875d4a4e23385543fe5df6d0b3c2846b8b2d5dbf481647beb243e4d0af67"
      "da"
    end
    language "de" do
      sha256 "e7ae3f2bd6f03bcf789cb726a7104cf504230313bd93c3fc0e8e34e3f8d3eed2"
      "de"
    end
    language "dz" do
      sha256 "6fe2ff773f0018c3281926646c021ef5cdf01fb328e80679cad0b1bba9af5787"
      "dz"
    end
    language "el" do
      sha256 "745b7541e14831694772a7cb61e7d40b6f2b24568d686598794ad542c588eca5"
      "el"
    end
    language "en-GB", default: true do
      sha256 "f853d9fd01a2f057d838bc61b9a90d3f70c855518039ecaca89c6321fcc064b6"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "72dab95cad59363dd5f54e78b7a04ae6825b123e764d6940ae2251d31f9a78f8"
      "en-ZA"
    end
    language "eo" do
      sha256 "eb9bc4abffc646668336d4cd68ef5f0611723f27e40898c7ef19376e47e77276"
      "eo"
    end
    language "es" do
      sha256 "8b4468130450cf0fed24d3fc501ff611a1624f2140ba1c7f23da9ce71cd82261"
      "es"
    end
    language "et" do
      sha256 "0ce798f2df48ab0c105de692ab7f5a09d9cd25e268d576499c2c2e25b8f1fcbc"
      "et"
    end
    language "eu" do
      sha256 "202b120ef8bf6f853570655dc6b91a4e5737bb81a5c9e256a9e04285d74d74ae"
      "eu"
    end
    language "fa" do
      sha256 "68174e0d2779b93cce6ce9b4438de74c7e602c2c1261164442078fc5a98db954"
      "fa"
    end
    language "fi" do
      sha256 "6dc2f14662ee4cc135f75e48ce70e182e9b767fbad2cc9fbb0dfb76735d05949"
      "fi"
    end
    language "fr" do
      sha256 "65658c9bfa1cc44044b9baefcf5ebad5b7067a4bf160757096685a4df0932427"
      "fr"
    end
    language "fy" do
      sha256 "acb63eec4704c382a095251bd7d0296d1dec4eb38a7251211d446e65b0e0d44a"
      "fy"
    end
    language "ga" do
      sha256 "1ca6c5d1a699367628146c07533b6305bbdaffc436e48d718b61a687b4e6662e"
      "ga"
    end
    language "gd" do
      sha256 "2318fab5ede7fba39e433870f59c006a01acabbebba03088c24f9031032935a5"
      "gd"
    end
    language "gl" do
      sha256 "7ec88634f670292cf06239e678fc713efa95b821da781da81741ab66d7a7dcbf"
      "gl"
    end
    language "gu" do
      sha256 "2f9ae9ca5c950c1d5861925bccdaf50e2ecd2776da8e78df9f0dc0b06f479bc2"
      "gu"
    end
    language "he" do
      sha256 "1885adc77fb6dbe1b19de8a8780db0ba94fc868c3737e4ccf935e73ded454e43"
      "he"
    end
    language "hi" do
      sha256 "80c98a8b806436200b39a507c3c401f87bab82baf0296049286fda293756f55c"
      "hi"
    end
    language "hr" do
      sha256 "3fdd3c7739c382894aeff89f39d7e60472607aa28862fc5afee1e0346189c921"
      "hr"
    end
    language "hu" do
      sha256 "b539a3ee8f7f79dab5da865c50e1ba4b892a7c8a7b22cc4f3f799b861d583f46"
      "hu"
    end
    language "id" do
      sha256 "562ac15b9515c4c761ee48f1342a43b785433be1f605e94584d306171a6b393e"
      "id"
    end
    language "is" do
      sha256 "45ec525f2ae18ebd691930d51675df3b7cbc358714843288f7101f59630214f8"
      "is"
    end
    language "it" do
      sha256 "79102949e642179b6e0684373c3e7b9f8a5fe5fe51796d6e808e312529349094"
      "it"
    end
    language "ja" do
      sha256 "b8455e4e06401905757eb520323e4e3ed07963d7a74085785f9f32a533f182a2"
      "ja"
    end
    language "ka" do
      sha256 "b0d2cf10d468fce94eb798ad69a4528aa9ac7f4c2ae179ad4581aa6e3b18fc10"
      "ka"
    end
    language "kk" do
      sha256 "32682e633f2052f73e04a25151cb24f8b73380ddf1c3ac1f851d83e89bb683f0"
      "kk"
    end
    language "km" do
      sha256 "7afec34b8fb7d26f0fdd3b328d6a793e3bec7742af1e4f0355a64691f0996d7f"
      "km"
    end
    language "kn" do
      sha256 "760396e2daf5bbab407b2385ad8abb59f576894e087b3889d96ead86230596b4"
      "kn"
    end
    language "ko" do
      sha256 "94dae9d2cd800a35db7a759e3605de0164e98dd39276a77287746671e88121de"
      "ko"
    end
    language "ks" do
      sha256 "c07bde8538762296ffaf83300322ada455f4e8b3fcd4679047759e773b1ffe81"
      "ks"
    end
    language "lb" do
      sha256 "061223ca522443ce0b5deb50b360dcc1910922eec7916bdcb7d01766c4a71bfc"
      "lb"
    end
    language "lo" do
      sha256 "2be39bbd48b8b11d5e7d2f67daf981e2133d0409e13606b75788745e96fce954"
      "lo"
    end
    language "lt" do
      sha256 "dc1f45a873569ea34f58fe56c94cfb67c18205239f5a3e5a30460aab876116bf"
      "lt"
    end
    language "lv" do
      sha256 "a19cb7f6cff87c88785f555561eac340115e859688c3500f1277a421716b6746"
      "lv"
    end
    language "mk" do
      sha256 "a0ed9f8e0e0527ee15f87f07efdc67fdd2f4e736e53b364737cc0f02369a1f34"
      "mk"
    end
    language "ml" do
      sha256 "dbbddac966b1a57c72a82e0b46f05532d408ad8d9b632f1898803a58dba6101e"
      "ml"
    end
    language "mn" do
      sha256 "d46873e9d6bc0a68fca53764858933a0d1d989680b35b0fa24e1a005f437e75d"
      "mn"
    end
    language "mr" do
      sha256 "659a6e17280cf36a090b6031699f06113aaefe6c5eff53a873890ae452409f08"
      "mr"
    end
    language "my" do
      sha256 "036cd1b936c152ae237f5403de81d5706c93976ffebdfd1518922c1c3f2d5db7"
      "my"
    end
    language "nb" do
      sha256 "b46cc26c541a0d8d061bf918fc4b4db033192a5a3bd628e5a74b40943f9dc405"
      "nb"
    end
    language "ne" do
      sha256 "e14c6357af0120214576f2991f88625372c4a68ff8ee6662131ed3a9e07be4eb"
      "ne"
    end
    language "nl" do
      sha256 "b3706c3fa8810c289ddb8ae3e5cc03b17573df960a55e0d39d14a6736686ecdf"
      "nl"
    end
    language "nn" do
      sha256 "e9f4f4bef9b6a6b12b32f6b1083dfb9cbf5b4a1e89fa4f9a65749ce7e4a33442"
      "nn"
    end
    language "nr" do
      sha256 "5b29711310d435b16cc461f7c529623e94e97140cf1a1c5172d02459f6c79d5c"
      "nr"
    end
    language "oc" do
      sha256 "8140580583cdb2ab58f211dae9bc51e2cc95a800daf9aece1045d89697bce0ec"
      "oc"
    end
    language "om" do
      sha256 "b4ddfa77c50ae446d6c1164f75e3e290b74b8796132ec69336cc3bdfe243010c"
      "om"
    end
    language "or" do
      sha256 "864e6ea55f57166f30b034ad8438837b9e5ed9e7dc68e346bd90b40e820533d6"
      "or"
    end
    language "pa-IN" do
      sha256 "49dadb68675a7178ea2fb8f257fef324a51acebddea6d331490c8e700d6506ef"
      "pa-IN"
    end
    language "pl" do
      sha256 "736548263e7a93a3d79b6f745c655b3c91249ff049b36b3b48a6cbe1b5c1d415"
      "pl"
    end
    language "pt-BR" do
      sha256 "27abe1b5b067bb769026f5aa0b355bd3bb51f07c69819ffc41ba72e00d63ec6e"
      "pt-BR"
    end
    language "pt" do
      sha256 "def14348ddf8dc044141b9f82d56048a32244c3bba06456c1ced11523542a6e0"
      "pt"
    end
    language "ro" do
      sha256 "02a5d42dbf492ed3bcefb4235d7bd51b842d43f137ced0c402695c43125d957d"
      "ro"
    end
    language "ru" do
      sha256 "a1cd43d033f051cf42ece1d1b7a92d7002ebeac5e4ab15a8ac180255cf292cc6"
      "ru"
    end
    language "rw" do
      sha256 "00cf34b9b5081b9bb93a1d652d201263ab89a61869de4162bd4101960c36ac35"
      "rw"
    end
    language "sa-IN" do
      sha256 "1898883d99fed4ae5f510634e524b4e323ab21b1de4bb11406640a0c7b7c4c5f"
      "sa-IN"
    end
    language "sd" do
      sha256 "74f4d0da3267701564a5e911fd5d6b893bf5611b2de5fb861926201c3ed8a6e7"
      "sd"
    end
    language "si" do
      sha256 "c7823e5224a4b3f83fa568262d31207e2df9a1bef7167e9ba6a22e227c43552c"
      "si"
    end
    language "sk" do
      sha256 "e3f70fb63b02838d4cb6d7a669cffc0589cfaf21ac4c1019ecb130a36818a7ab"
      "sk"
    end
    language "sl" do
      sha256 "14208ab0acb98cb8cc805bac7a8051221cfddd388a2a8b6c739f8f7026cfb8c9"
      "sl"
    end
    language "sq" do
      sha256 "e0d683d7d937cbdf21eb7160584de733b864f6e09e84519c2f14b58bbee06e87"
      "sq"
    end
    language "sr" do
      sha256 "e078240875d57c3027951e11badd5d799beff87042d1b019e2ac966878375222"
      "sr"
    end
    language "ss" do
      sha256 "28823e775422092dfdcb2664655b99a0456cb41dc2c4cd36351d8493536e2efd"
      "ss"
    end
    language "st" do
      sha256 "43e07a7daa9081e194e69e087ed06881443def8b7c3c49c1e92700d51e6a7624"
      "st"
    end
    language "sv" do
      sha256 "570e08efc364cd32f1d693d7698e0aee32a75905a5085b74ae0d2b8d563b9eef"
      "sv"
    end
    language "sw-TZ" do
      sha256 "e36b08dcaf9fe541ae18463689f4af1bd2314d227ecee005e1e1d25c25d7cf18"
      "sw-TZ"
    end
    language "ta" do
      sha256 "8343abd2565154692b0d3975d132a7a86680d28d4f1b2a4cd35a75cf2e229ba7"
      "ta"
    end
    language "te" do
      sha256 "13f4915701221f98293b91fcf811b44ddbdc5591bd5f7d7e27debe19261a7952"
      "te"
    end
    language "tg" do
      sha256 "f9600b59b9797003651a1fb1e5552333683758481f91e1e35ae7c107d62f4fd2"
      "tg"
    end
    language "th" do
      sha256 "bc328061b6c8999e74c76285dbb5e4f5a385bac91c022fe370f3bb7e0e1e9213"
      "th"
    end
    language "tn" do
      sha256 "4e48df1cf916f1cb0792ecf1e88271b53488426fad767725abbbeaade5678a85"
      "tn"
    end
    language "tr" do
      sha256 "7f76f4f8d0b982b507d48bb0600e4e34f655db00376fdfbb8ecb6b85dbdc0d5e"
      "tr"
    end
    language "ts" do
      sha256 "6423ee49fc1c8dc67bd7a0f305b30de15841ee255d1288a9aa23fe1303c0d0d8"
      "ts"
    end
    language "tt" do
      sha256 "6a9168c8d3b44128b8b1b528050f6f0ec22b598f0200563f9bcc7a573aed3620"
      "tt"
    end
    language "ug" do
      sha256 "71c4bb59708d485f585d694d06ee84cee17f08e4b0ea1a7af7e642cf8ba9424e"
      "ug"
    end
    language "uk" do
      sha256 "0e3f8b055e55319bf407e0589f537d9adb969d4d151468854276e061ef70be9b"
      "uk"
    end
    language "uz" do
      sha256 "ffaa139cb01a6edee39d851dcee218e2a5c16f10fbc5c6db83e564c6498af695"
      "uz"
    end
    language "ve" do
      sha256 "82c80a1a9ff0ce69fa53c0b78e93387a72e56755b259d2182331859f09cceb72"
      "ve"
    end
    language "vi" do
      sha256 "a3b70ab7c9325f02d8c35d6904df27626f307fcf8bdfe2f19c9d6513c4fecbed"
      "vi"
    end
    language "xh" do
      sha256 "497cb6b02894944b0d462cb11c86a5feb6f7d885bcee13bea4272523388efe9e"
      "xh"
    end
    language "zh-CN" do
      sha256 "686ba348bd4defe6b9b723df1e9a4b6a668adc0b84d14130238e809c47a7e8a5"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "51c7a90e2c4c50130cea86615131f16079f6dd1cb9e5564d02c32e1e6a0f3609"
      "zh-TW"
    end
    language "zu" do
      sha256 "f3be827d60fe08a60d2fd86a235afc56ddacdc6eb790608205dc2759e51cb09e"
      "zu"
    end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    url "https://download.documentfoundation.org/libreoffice/stable/"
    strategy :page_match
    regex(%r{href="(\d+(?:\.\d+)*)/"}i)
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
