cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.5.4"

  on_arm do
    language "af" do
      sha256 "0a24018b38b410a73a05eecbee946506cdab21f4b3e4cd8ea0de8e339875fc74"
      "af"
    end
    language "am" do
      sha256 "67e1831e10189a0629490f80ef36a3fd204a7ed2d799d525d3fec389855e0d36"
      "am"
    end
    language "ar" do
      sha256 "e615cabf74ee0c463cf21be982a6a88ea127367b0b27936caf602d80aba8b637"
      "ar"
    end
    language "as" do
      sha256 "f9bf4e976674497379a36a73900ab87906ad28227b4489b44041b6a71abc854c"
      "as"
    end
    language "be" do
      sha256 "1445a558fb2ff19ce6ee1b60ab83714215df99e5dee45c2d03de6deda09367de"
      "be"
    end
    language "bg" do
      sha256 "07f37cd8e476e0f135f425b5957b2a848a13e888377c98dcc6011f92da4633f3"
      "bg"
    end
    language "bn-IN" do
      sha256 "9f8329ac26761e6036179d845cbde279ed7fae8a5c85bb56b3d39b02df17100b"
      "bn-IN"
    end
    language "bn" do
      sha256 "a8c6a5312ac85a27b89a119e3ac7318a63f2dd950bb00dcc435f7fb3727858b7"
      "bn"
    end
    language "bo" do
      sha256 "37550911067085edd1c58a1fca049017057af7752ad244e4b9188fe3bc8fc75c"
      "bo"
    end
    language "br" do
      sha256 "6db04de6ff9b161e986942e4090b6824141f4a28f0f1971a87d29aefa65bb541"
      "br"
    end
    language "bs" do
      sha256 "e5487a4bb55171d2aef15da895cf052ddd4d94b3a7f3cffbade2c261af8b93e0"
      "bs"
    end
    language "ca" do
      sha256 "6f371549bccd67e45d4b9ebf63a572447884a41eeeee635d0cbc2ca8325afe4c"
      "ca"
    end
    language "cs" do
      sha256 "90c96623fc19696135b64c8de3ce24bcf01de5943e2b18d47c91dcf69509d8d4"
      "cs"
    end
    language "cy" do
      sha256 "89884d505b4163d18dd52ba30ba762da0fc175253e3fad272d54ffeacd0ff799"
      "cy"
    end
    language "da" do
      sha256 "f79f544a207d1734b79f9185e9afc7c15e04b96cb6ea9e87737dd8156823ca7c"
      "da"
    end
    language "de" do
      sha256 "e8c42cd1a8e3b84926cc541dc585b5d43ee8080d76571573d5ac52a8af7d058e"
      "de"
    end
    language "dz" do
      sha256 "c2deb2278449677cc27bc7e188603d7f91fcd72130d78e2ffb21fd663809a8a7"
      "dz"
    end
    language "el" do
      sha256 "f21b9521bb45e442de56c25d39e37d850c967ebea51fb1ffae568919158e9188"
      "el"
    end
    language "en-GB", default: true do
      sha256 "58aba8f468a0dd91f23e8010b7daf69b5594b077817078a269e140d7eb7476bf"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "ef3ce6a55ab70593cf0e60700dcdc44807a08dec612aa3779fb340708526cfb2"
      "en-ZA"
    end
    language "eo" do
      sha256 "849a38c0b13e29abb0c77200aa3b420a827adf1649d9c3d203acc21e528db680"
      "eo"
    end
    language "es" do
      sha256 "a9add2f80583dc540be569e6c1dc245fb5f1cc36417a3ebf4ab46fa431a47b22"
      "es"
    end
    language "et" do
      sha256 "2aa3c2c92d65959e2c30c3929043abccbfbad6bc4dc5b71f999077ce031c9113"
      "et"
    end
    language "eu" do
      sha256 "e84ec2a40b9fc7147e378efe0efd9fa1dc85e5ed4e246403023498bb3d1afe4a"
      "eu"
    end
    language "fa" do
      sha256 "645191511e58b3638eb722723de69703a65bd319101f6ab2d9119975c589eca1"
      "fa"
    end
    language "fi" do
      sha256 "1e2bb499188a73979b35535fd39b59faf8299e2bc4c52f6aafe5977aada2c7c1"
      "fi"
    end
    language "fr" do
      sha256 "5af46552dc3cb6b9fdbc4dff01b35111eb8d86f6a92851bc2abd6c751bce588d"
      "fr"
    end
    language "fy" do
      sha256 "0b2ebf0aa800118318a1bdee647c3f1c350ab81679ff7f02a11b2eca0e150df5"
      "fy"
    end
    language "ga" do
      sha256 "d7f936cd47735acad88762777cbf4801a3fd6d26259f8636a8d7d1817eaa92f5"
      "ga"
    end
    language "gd" do
      sha256 "67c7f960a317ca9a40e5bf69e509a603483b5b8985962f0434594609ab591432"
      "gd"
    end
    language "gl" do
      sha256 "c3efb367f2fdc78cd44fc3ada3e1b5b344b6e8af717c7f39e510ac17966a68fc"
      "gl"
    end
    language "gu" do
      sha256 "1c79dbecda2536e43915076d4ffe18db8f5e61baf8665dd88cae059c89b771dc"
      "gu"
    end
    language "he" do
      sha256 "8fba02f59b813a65be7fc78b3c8ca21e6856e0587fcc8c2bac044418938262a6"
      "he"
    end
    language "hi" do
      sha256 "7a55407a43a6e3612fcdd519d750637dbeac6d4a4b72b53b1841d35d298f1ddc"
      "hi"
    end
    language "hr" do
      sha256 "5cf3a8f4194007e7d05b9d7b930541aaed5e7c0f29cf820cf14aabfa1f2cf8f7"
      "hr"
    end
    language "hu" do
      sha256 "c66ebbfe4db7b5300904aaf16e36a6b1512ef43ea7a3ba017bdc66e014d5cfc5"
      "hu"
    end
    language "id" do
      sha256 "397d82abfb0df82c6583cf59d375b925014fda29221797ce688a88ae80cebd44"
      "id"
    end
    language "is" do
      sha256 "44f8b5062fe164a2470d0283c0d1a16672086cd7e05add8c665877450c4e2265"
      "is"
    end
    language "it" do
      sha256 "9fb6d87aa30d613b7184f4b96d4f4d0dde825300eed224e6a24109a06b1e7839"
      "it"
    end
    language "ja" do
      sha256 "24b6999eed0d8fc84783089e7406cb921b268fc47419fdcc54fa784dc4cde935"
      "ja"
    end
    language "ka" do
      sha256 "e1b61569881ebd1713edef66426df2d0c36cb7adbd98de3119bab92abaf0bd72"
      "ka"
    end
    language "kk" do
      sha256 "1f9fa10ceead5881b94b62bd09063c41f3f089a41563b8d5f2aaabc9146a969a"
      "kk"
    end
    language "km" do
      sha256 "6314c93fddbb3f58cf6358fc98cc83cfc84633ffe3cbdc67edeeff98fc37631e"
      "km"
    end
    language "kn" do
      sha256 "8e7155446f6eda5daf6250fdf59ac4180878a49d6418856efee48e5dfc5d3f1a"
      "kn"
    end
    language "ko" do
      sha256 "c9979f772214c9c202ae5debf25fdf7a4ae00b7382ede745ab4c282602983aa4"
      "ko"
    end
    language "ks" do
      sha256 "681e8e0ee1d313aaea6780c6fa7da349be1cb7150167f7ebc9c18f1574592546"
      "ks"
    end
    language "lb" do
      sha256 "56678939b4d0091906cacfb6927bc4b4f758aef8c4867c409ea1c9b97aa9ca2c"
      "lb"
    end
    language "lo" do
      sha256 "ae1b2ec3bccd8c38fc9e9206c2a6e49607550cd09f10ff7d2b5677937a42122c"
      "lo"
    end
    language "lt" do
      sha256 "92b841c2d3f9b8431d0660551584e362f3b471f0004a35a63615d5396f43dcb8"
      "lt"
    end
    language "lv" do
      sha256 "a52fee804062085ce27ff2c6f52834764fdf20570feb74301445401b7a8a7f9c"
      "lv"
    end
    language "mk" do
      sha256 "63f25a0f80fa254ee24445020f978f1662d8f0818b6579d0c8bce3ce8091d90e"
      "mk"
    end
    language "ml" do
      sha256 "e6c92d9858c3d74e90bd86c06e15781dfb1f4482e53cec84a7ada37dd9406dc3"
      "ml"
    end
    language "mn" do
      sha256 "64bd1927c18356949bac8c2f9fce5532f351f2accd784ff3957dcd425d38c48d"
      "mn"
    end
    language "mr" do
      sha256 "29811dd489a7a33e7b8a55c9b3b380a95347b3d433514a437de6a5083043c79a"
      "mr"
    end
    language "my" do
      sha256 "454b97008d87b735c3b611d42965bc3dbf69dd932c5c5cce34d04ec70e7f0571"
      "my"
    end
    language "nb" do
      sha256 "f3cfc9ff1eed27fb828dbd5d7ee38e719b963914ee8c76393303a01d830415b2"
      "nb"
    end
    language "ne" do
      sha256 "955ffe4d98cbb49207012cdff0441ff27fe8d30208ffbb90c815c291a85dfb0c"
      "ne"
    end
    language "nl" do
      sha256 "50f1c6c32d2a31b58f8018239e9793aac325d81fda3778b2d933626563336bfe"
      "nl"
    end
    language "nn" do
      sha256 "7d9dd3ac48ff8e6d7ce684cae5c427e6d4af1a45f849e63760d70785466b81ed"
      "nn"
    end
    language "nr" do
      sha256 "9a8ba68a98926ef54ce63b0e5ca5bc08c73b6819867e507fd8dfb6d7d24d4a1e"
      "nr"
    end
    language "oc" do
      sha256 "bc93e7353627592a28cd94fdfd23c94983caa5567009b5d32fe1ce6710523bee"
      "oc"
    end
    language "om" do
      sha256 "427e851a1c0895353e1cad8f5d23f1a4090402960049a7f582cab796ab72bf55"
      "om"
    end
    language "or" do
      sha256 "4714948e18ed6dc84440f9e5749b30dadfc46ed21111abe338a5cad4189083fb"
      "or"
    end
    language "pa-IN" do
      sha256 "40c6f38fe7d64348da81fb400743eeee099de5d1f59ca62b6149d1338f48a1cc"
      "pa-IN"
    end
    language "pl" do
      sha256 "9c564f0d0967cfef0a798fb615fd561f5c0c06ddef4d69f344ab982f125d2302"
      "pl"
    end
    language "pt-BR" do
      sha256 "d8896614aa37b99129a309906ba384944b4114f87c4e29bd7f5608c2457f429c"
      "pt-BR"
    end
    language "pt" do
      sha256 "983b72352798ae8933bd17190e9d53f8a30c2b9b92de35227874ebed1020e1eb"
      "pt"
    end
    language "ro" do
      sha256 "2d91b7b6ec00f579d8e724dad77f5f6a7665c795a101f808317b1ec5d0562fea"
      "ro"
    end
    language "ru" do
      sha256 "6d2e9f42d911815f9f0ecc7cc7d5cd6f3524c0a9ec9ad9b38306a5bda45b37f1"
      "ru"
    end
    language "rw" do
      sha256 "c131fdf5f9f2cf4d040fa8f326804cb425fdb9ee4cd6413da0393022e3b4c2b8"
      "rw"
    end
    language "sa-IN" do
      sha256 "c2fa30b2f5770a83214a647e2c57436f2f19a0c4ce19845e17ce5e4aa32c8aa4"
      "sa-IN"
    end
    language "sd" do
      sha256 "d5829f44bac6473b0ddf6fcc1b7384c2afd67468261d945a73102c5705d204fa"
      "sd"
    end
    language "si" do
      sha256 "fc809a2e4e5338cbb89b8e74bab8239b2c2fb09808352fed4bb503f3b4b5ab71"
      "si"
    end
    language "sk" do
      sha256 "6418f14f61b73edef4cf3b3300dc0d120ed70ce932521f8b935e7bd84dd60d74"
      "sk"
    end
    language "sl" do
      sha256 "893d75546c4fc594be731f9b2738fd19834f7437f20569b686f9ef1b83db8827"
      "sl"
    end
    language "sq" do
      sha256 "ac6d08cd3269a78d0fcb553b924775f1163629654658dd5081fbf8bc425b1f8f"
      "sq"
    end
    language "sr" do
      sha256 "e9090d56515c3656c79874f46a3069acb3a4fec2e796f22d47c62d04ed3ad13f"
      "sr"
    end
    language "ss" do
      sha256 "1a36813ca3b2552109a1031fa8bd80f15f89021668c0268d93880c5bf55c98cb"
      "ss"
    end
    language "st" do
      sha256 "4f98708d0592da13a8313d21149785f7f955f3cba7df169182059b2e67b99461"
      "st"
    end
    language "sv" do
      sha256 "22a24774be2d8ab3fb404e42926e0f4b642ae80fb71fb5a8207408496b0362fa"
      "sv"
    end
    language "sw-TZ" do
      sha256 "3dca0df44f0713a51bd6af0a4e6e842e610ca29aeb698f5081d429b5d61c6642"
      "sw-TZ"
    end
    language "ta" do
      sha256 "5ce364f776a396cbabf2bb85bdd694a9c5d69c669dbf7248734eb9149e861b24"
      "ta"
    end
    language "te" do
      sha256 "f4581840bb36649b499e92d1e554ce41d4767fc829c5925d22efbc0552928c54"
      "te"
    end
    language "tg" do
      sha256 "495a389fa32a25673c492d0faa6bb0c83711cdf8ffbca8494569ef5e6bbdf885"
      "tg"
    end
    language "th" do
      sha256 "fd97c6a01113f13c5ab6db263ea2f0ec10bafe3b4e83b3898f51ebf979d99bec"
      "th"
    end
    language "tn" do
      sha256 "f4678cc2b77323d86b899c3a70b410e6f10440a89a547215e4e462cd2d2c645f"
      "tn"
    end
    language "tr" do
      sha256 "fc6264e713ea30e4a548331e5c67285dd70dd486313b1ed5a74a1bfd2f18f4bf"
      "tr"
    end
    language "ts" do
      sha256 "9b4645bd2ed93922c0047fcd897974c96fa70049585ef7513d807653a65bada9"
      "ts"
    end
    language "tt" do
      sha256 "8f7677d42f219e4e9f59146ef35ed4a5ed4f6f895389f820d38ca01dc92e065b"
      "tt"
    end
    language "ug" do
      sha256 "e3d8009df40d18fc36f2543353050a214a84f9f38debcd911a261371dd8dcc1b"
      "ug"
    end
    language "uk" do
      sha256 "07ca7df45dd102fb73e3b87acf7efa7d26a983e3cc45fcc5a17abde3bfc5574a"
      "uk"
    end
    language "uz" do
      sha256 "fd3ebec5f7dd605bde493e6d967bb199b8aa369e58c69eed8b7e2a275b7d4eea"
      "uz"
    end
    language "ve" do
      sha256 "e139bd6e969888b571ed5d053cc914d43743e8f6a3fd3456fe285776d883f8ec"
      "ve"
    end
    language "vi" do
      sha256 "bd9b46605340d1fb8866f9b2a48a3e0f4ffa81be5eb343cdc3b9259dbfb8b430"
      "vi"
    end
    language "xh" do
      sha256 "b55066b7d559317ac2cb2b189a2c4b6cd3b257834c842d42833659c313778518"
      "xh"
    end
    language "zh-CN" do
      sha256 "62e2ec49eb315b1bb73a6f5e0873dbe95baaa9c1b8c2e4c230d27d1375adc2f5"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "54fd22d400318ed2d91782ee9556c27efbdd8d1b9140bb1fe55e28c2b7271ae6"
      "zh-TW"
    end
    language "zu" do
      sha256 "023fc73b28a7cddfe12ddfb703661f6d1792a26d71fa598910a46ce9643321c9"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "7b6ca73a2e54813de836d10c8f3f128735ab07a1a869e16c7f2e75edc9d95c4c"
      "af"
    end
    language "am" do
      sha256 "f278cd4329b1997b1f61cdf9692ab8f76dc7cb93c21442437e5fe99964140d2d"
      "am"
    end
    language "ar" do
      sha256 "c52abfcec61034b40cc04fe5b49458006c224ee87503d0484c3597dc455a5358"
      "ar"
    end
    language "as" do
      sha256 "976737a068f22719becf2da731bcc3c76b56e0d7b304e52cee36b5d876eafefd"
      "as"
    end
    language "be" do
      sha256 "f9b7104e6eb1453de9ef57938455233a61cb5eb37f8035ca84f702270843c33a"
      "be"
    end
    language "bg" do
      sha256 "f0765dab9de650ec5dc295ae6a9765909191a65455c3012249cfb3bbddb65fa0"
      "bg"
    end
    language "bn-IN" do
      sha256 "447954481fe6ca7f45361aee0fe3109a36d16c0e1b74ac7b76b0ff72e94f15d0"
      "bn-IN"
    end
    language "bn" do
      sha256 "62b1e95f0e8bb36d80422d9dd74e50bd00769dd9453facfc9e74a6959660cc74"
      "bn"
    end
    language "bo" do
      sha256 "c20c5124d5850816affa2021319107df148e2becf419103a39e4e36360aa61d4"
      "bo"
    end
    language "br" do
      sha256 "a5973b2d4ffae2155fb1034962a7f9117627191be736b7ff69dfb0f9f51b0c90"
      "br"
    end
    language "bs" do
      sha256 "17657e6872f8d37450e7c4c347c0007eef50a7a6d30effc64a8066d89c9f7322"
      "bs"
    end
    language "ca" do
      sha256 "8aeeaac5a8fbeaf770767994b8065adf88918c4bf7486ee2cac78ca56b933f13"
      "ca"
    end
    language "cs" do
      sha256 "257e8c2e70f8e5eb34ac13ffa4ce934ba3b867055975cc1d81da2298158d4b51"
      "cs"
    end
    language "cy" do
      sha256 "3ed46e15535ce5b0862ed39a80876c3030422587e60a11c05bf33b4b98ef1dfb"
      "cy"
    end
    language "da" do
      sha256 "21d9a436359cc41eedcdc658618ea64bb434dd66ca3dcd784671a39bd4f3dadf"
      "da"
    end
    language "de" do
      sha256 "6a92ed19e197fa66140a24d13f170cacd8748d9808cf9ba846b26d76ee1edf42"
      "de"
    end
    language "dz" do
      sha256 "afba38b27889b536c84f2192a1e510c28f8af89dce150c278177df960f957139"
      "dz"
    end
    language "el" do
      sha256 "e69cc8ec59313ab8d3350c0d4c119a1972ccd9cce82d2b283698f9bc5d06dc8e"
      "el"
    end
    language "en-GB", default: true do
      sha256 "efc180fccae8ed44232539cea8bac55bf28007e30be1a2d8b09ec80961ef3237"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "447067959d10b6bb50ce23163cb858f7aae454d65cd0dd13e991de5facc68a48"
      "en-ZA"
    end
    language "eo" do
      sha256 "0f4b3ac1ec02b3822626f179c1774e2989382664ca48bbf0a38d8bf872a8fd74"
      "eo"
    end
    language "es" do
      sha256 "0ed70cf9847c80c7b5a154729b089bc761067c8140d1c83b8c0c240e8d30ba62"
      "es"
    end
    language "et" do
      sha256 "8a1698f86440c1f49022f59d9ff9c94c3892c7e47f7ed99b7f2fe81d1d3dd84b"
      "et"
    end
    language "eu" do
      sha256 "e7b5e01ba4b21a883727c93c7d1a57a86b60deb3d1cc07ece1e0830096ab68ba"
      "eu"
    end
    language "fa" do
      sha256 "193e17226ae8d53c99ef879d638b64c922da0eb717dfb770e6d068daf43401b1"
      "fa"
    end
    language "fi" do
      sha256 "00c24ecf00fb3a6fb28538974a3294f77d2e5b5efd956747fcc55a3d5f333de7"
      "fi"
    end
    language "fr" do
      sha256 "9820fa28f09a4731a2412a08a59fd57deff68495d89d43a8bb894b7beb96ebeb"
      "fr"
    end
    language "fy" do
      sha256 "6bd428fe5362f5d449a20106193804983ea169a23862f116233afd121856604f"
      "fy"
    end
    language "ga" do
      sha256 "b4a106b3e2f71b69e14f9bd2bd0993f634aebce6bbf2544cba67c4c271bccbb5"
      "ga"
    end
    language "gd" do
      sha256 "90fb95b135e33c81e8b829bc9d43c939f913f4cdd92c4634aaee8a57fdf8f963"
      "gd"
    end
    language "gl" do
      sha256 "40efb2927c9079e60b10e3195ad065356e0750e5b2f2565e651086464102196c"
      "gl"
    end
    language "gu" do
      sha256 "216430033f06e76c6eda2271fca1c208ef50401bd227d9158d934bc48fa4a63a"
      "gu"
    end
    language "he" do
      sha256 "bc16008bd9fd3eb33f7f21bf5eef203b76aaf815baa4e92cfe684e0eb0a86e01"
      "he"
    end
    language "hi" do
      sha256 "87b33ade444a214dc2074da13cc84b917d91f95db16e4934af1230d719c3f10d"
      "hi"
    end
    language "hr" do
      sha256 "63fba11b4792b154a3dcf5f7ab2b3acca9894f4efd7d472a243251f37e1b47b2"
      "hr"
    end
    language "hu" do
      sha256 "ff848bba3355a099a15011b26a77935cb2aa5ed7fb941889a4f8e6cc2757a4b9"
      "hu"
    end
    language "id" do
      sha256 "f6b6d7fdfc1d57e85504e69a284bcda283e5642e150250b885659299468e79ca"
      "id"
    end
    language "is" do
      sha256 "4e1657dfe10033ae0735dd02d9a62f6790c624a35fc2cc3687d7084905a3aea5"
      "is"
    end
    language "it" do
      sha256 "c6605b0e906cf15e969d5411492948056d604fca4a8c26c1b72dfdab88636024"
      "it"
    end
    language "ja" do
      sha256 "b1fc5963f88ff366fdf7e0cac106584f4680fdfe6a57f014ff40b2cdfd4f50db"
      "ja"
    end
    language "ka" do
      sha256 "e6e7cb650e1802ffa3782fa561ac8d939c102fdd6c8286c2720433ae0081b274"
      "ka"
    end
    language "kk" do
      sha256 "a79df968837988ee5144406842d820f24a8bb25fae8986487566a2536d2131ed"
      "kk"
    end
    language "km" do
      sha256 "738b90a09b27a1ed60ac6e28882ac29f7cad425212bdb3bf6dc58407bb27fbd1"
      "km"
    end
    language "kn" do
      sha256 "4f77c8789458e22ef47da79705856aa318785ba7cb6ef1b8c8aa57ca8db05620"
      "kn"
    end
    language "ko" do
      sha256 "fc97ce1cb66330ee7138490c870db09a0663532426c590c5120ae912b498f980"
      "ko"
    end
    language "ks" do
      sha256 "f0fd461ed042573f92a1357c86fb43cb0ae11b62109fbd328bf0a7c3d376a0eb"
      "ks"
    end
    language "lb" do
      sha256 "874ac1d78fdb90ab9d5aa84cc6ca3824d44f9955068b919d382e9dfaa296655c"
      "lb"
    end
    language "lo" do
      sha256 "266c33bb52a202bb8c7e4fdd9e3e61fcdb9a640ab80d475cd62c8a35a88fa90e"
      "lo"
    end
    language "lt" do
      sha256 "4212628c15f697f22d2c9c5cb685020217700313bc1590ba4d47b0fe81133a88"
      "lt"
    end
    language "lv" do
      sha256 "17ecb6c0189e3953bdc8e4f700f8d6a09c7982cda673366ddaf9a45b6e71e87b"
      "lv"
    end
    language "mk" do
      sha256 "bdd0d5606b2d4c12d3c4d8ae6c7f4c15cad20b8cda156b73a602fc5512fafaac"
      "mk"
    end
    language "ml" do
      sha256 "50daf7d6ca9345bf10256e2c9b143d42754fec233851fd22654fd1c677ba63b2"
      "ml"
    end
    language "mn" do
      sha256 "a715ed5b87500d7bc263805c054e745cdf8516d6d1c28533f72c60dc5c65c142"
      "mn"
    end
    language "mr" do
      sha256 "390e5fe914e1c452889ed85a76002ed1330965acd579b3b6e71ec98787922da8"
      "mr"
    end
    language "my" do
      sha256 "491281528054ef3ed23c4f4bca281878d2352319dc8c39e5e26a63084d9ca882"
      "my"
    end
    language "nb" do
      sha256 "9658a33a7b3e4a82f0296cd94422137bd1ea17315f9395e129bc3b8962196d71"
      "nb"
    end
    language "ne" do
      sha256 "0e29d482e4e23c72e8209a968ad9a179de7eed285aa81f2776e6d3449cc9ce4d"
      "ne"
    end
    language "nl" do
      sha256 "b70f851f5addc14306a2c15d32620c2c7c4ec3bde3c35c9f783d8dd3aa3e0278"
      "nl"
    end
    language "nn" do
      sha256 "7d954628a00762c2da6d4d3aa26647e183419c6d8aba0e9058c27fabcab49fa2"
      "nn"
    end
    language "nr" do
      sha256 "5ef73822e9313be4882ff83c765f64d850ad9f436ee95cf9e772ebdf047bfb8e"
      "nr"
    end
    language "oc" do
      sha256 "a095f46ee057eb84c2c56cc1c135508304046621473fb25ddc3c1f5c4ed7105d"
      "oc"
    end
    language "om" do
      sha256 "45074a1a53bd0601a62a6894b6201972c38bdeee7a3c1144fc290eb3ab31a992"
      "om"
    end
    language "or" do
      sha256 "196ab6f604a9142f3f528cb8f98e3d0442a4d0fe6a77723c2603361077b03905"
      "or"
    end
    language "pa-IN" do
      sha256 "a3071a5e66022b87e2807b0e644d0572aeddb98a9f4a50d1f44b6c1d84d7e586"
      "pa-IN"
    end
    language "pl" do
      sha256 "84d21b13fd096625f4630fa0ce6ec7b9549459ef3fda0ad13e344467c40caf1f"
      "pl"
    end
    language "pt-BR" do
      sha256 "1b1c42d310ace707cc2e261a477ce7e2175748b3e9abf326cae834c42c927f87"
      "pt-BR"
    end
    language "pt" do
      sha256 "0bf45a2525075b738e6970be3cba8c28f7de0c3a683fc93dd556be7de9b0a59e"
      "pt"
    end
    language "ro" do
      sha256 "fa737ec2c88e43c9e821291171631dc2045c0647548d0da8566219481236003b"
      "ro"
    end
    language "ru" do
      sha256 "874ee0ee048eef7acb3a6c07e39aed194b479ff713b27a4de75f330138e344f2"
      "ru"
    end
    language "rw" do
      sha256 "9e8bda52ee6a00fa8d55a31eba6d203b97c7007d4bb59ba7e50ce7d4a74e00a5"
      "rw"
    end
    language "sa-IN" do
      sha256 "88d2ad1663d61d7c9399873fbc7301a783d3297bd633b2ab1a0580874bcc4f51"
      "sa-IN"
    end
    language "sd" do
      sha256 "92de5282122f8376156721bbc7498c451bd337cf16a863ad51dd0b3fa1563894"
      "sd"
    end
    language "si" do
      sha256 "fc06f240eb0ff39893667a7ee4ad9fb07010995d22d7aae63643c69442a757fc"
      "si"
    end
    language "sk" do
      sha256 "512dc54a290ad4be1d5fb644394620a35d1356547c09dca73e616ba59d3f4c82"
      "sk"
    end
    language "sl" do
      sha256 "01a4d05a545f21854cd06ef15d1fac3014f7e865eae56455523e7700073c8937"
      "sl"
    end
    language "sq" do
      sha256 "e39be42a184d7f5a71fbe4933abf6de06b27362e52430518baa71ae912522656"
      "sq"
    end
    language "sr" do
      sha256 "32bef66ea4f5abb7732521e35021859577b0e307921bbaef1cc1b601b7520fec"
      "sr"
    end
    language "ss" do
      sha256 "c14d411d3228be3516db581688b3b3c85a739b969acd33e8699f84f67dd4d0de"
      "ss"
    end
    language "st" do
      sha256 "a7dc76b0909d52ffc9154898513c550715718469975af8467986ffb4c7df43ca"
      "st"
    end
    language "sv" do
      sha256 "83fee2f61ddf1b7941d148f4c2663ffd8969cc6e0f1756ca7cdc7a95b658c81f"
      "sv"
    end
    language "sw-TZ" do
      sha256 "e963d34defa6a0be2ba13bfa62798a17228639d391421004fe855bc514e63395"
      "sw-TZ"
    end
    language "ta" do
      sha256 "ba19cb22dc0519c253963e0c65a8a4401106926581f2cc60161356475c0b1140"
      "ta"
    end
    language "te" do
      sha256 "9afca306b339d6b2af683513ee83d33680d8c43da9cd5f90ddef2a522b44b5ba"
      "te"
    end
    language "tg" do
      sha256 "9e68e9a26148fd1fdf1ffebb02998ace2ec4401b9e3597102d54613ed836cbdf"
      "tg"
    end
    language "th" do
      sha256 "02b3ece061477fe3ddbabb3f5d459b5c250979a888b0f2170719d8d96dc67221"
      "th"
    end
    language "tn" do
      sha256 "4d9f7d723dbcb18c7b8a41cd8ba2e93df6a2c0bfcd68bc3fbbf30f549c896829"
      "tn"
    end
    language "tr" do
      sha256 "5af789e00be2d45a399ca077b896836fabe86ca6d40a1395eadcf3e369e645b4"
      "tr"
    end
    language "ts" do
      sha256 "85332e9f4a7855771b87ff13d1ab2f9c4e8a4ef4cb93cd7a7223f465300fb6de"
      "ts"
    end
    language "tt" do
      sha256 "659ac423002d3a9ac51730e4dfe971c5ebac90ffd79a99cb2cb363e83c9e3310"
      "tt"
    end
    language "ug" do
      sha256 "77c607cffa2ca60c566f6e4cad45ea0acae978c70f8f0bb5d66eede73378aee5"
      "ug"
    end
    language "uk" do
      sha256 "5ccbdfd6f1ec307e64d2c50ac5ed141ea0b6214d795c94354e498bb334e0fe76"
      "uk"
    end
    language "uz" do
      sha256 "9144fd62ccde716281b69298b6a6358381ca7c2e5ce35c360926b62f54e42174"
      "uz"
    end
    language "ve" do
      sha256 "1728eb907dc4962fb163d2cc777ec7bee877d3419dfc8cb6637db731865f3a38"
      "ve"
    end
    language "vi" do
      sha256 "0b34dd1565c42fa5b15f0db6b0fb8061c1d4044c0a7bab071d175c3dec22568d"
      "vi"
    end
    language "xh" do
      sha256 "6d1f540983dfdebd4051e4c8c78e9b387cc057582db1c45a4f4300718ba14c4d"
      "xh"
    end
    language "zh-CN" do
      sha256 "8f3db02f5b33adf3e1bdb9e7729d6e282fd14dd8ae0d549929819e067ae289aa"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "36b57eeccd612cafaf2a2c029c4a8bd13360c62ef84b160754db89e5c861dc4f"
      "zh-TW"
    end
    language "zu" do
      sha256 "ed27edbc264c379463ef9c4a9d76f7c81cac28713c469d908cfd57e305f68b42"
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
