cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.6.7"

  on_arm do
    language "af" do
      sha256 "3ff578df09f080b3ed78851768af2345ea65793e98101f6a8b014863b9306c50"
      "af"
    end
    language "am" do
      sha256 "03e6f5a0b44d6cf6e214648fbc97a2c365b81acf8c579397400726d07f712510"
      "am"
    end
    language "ar" do
      sha256 "9b0a367063cfa86662ef159aa5c7aa4e3270c108d2c0175cf8cf00f1d26ff7e1"
      "ar"
    end
    language "as" do
      sha256 "2a1bba71bfac993f3f26fcb6180fea0df38dbd02a2ea6cf6ab40bd156d43bee8"
      "as"
    end
    language "be" do
      sha256 "07000157289563e8da79dd554702251c0612a2565d7bbd53621dc945871fa1c6"
      "be"
    end
    language "bg" do
      sha256 "919ebc538ce367b88ea36052cff7b95c5396839e47dfbe5b826efb735358b42f"
      "bg"
    end
    language "bn-IN" do
      sha256 "c9955e1b4592229faf07052f8b1d86749516e2f1beb51c24dc3a8e30ae5fed30"
      "bn-IN"
    end
    language "bn" do
      sha256 "b66f597afaec5ec9cc14478a571f6b15021d2c2bd8460f4c10d3835e56c5373c"
      "bn"
    end
    language "bo" do
      sha256 "01efaeee0d70b2e00c4dfa7b114a1ced1f562768ad7374389788847487a6f7ae"
      "bo"
    end
    language "br" do
      sha256 "8fa5579f0b16176617a16bee89497a6c1d10bc5351feddfb5874dc6434010262"
      "br"
    end
    language "bs" do
      sha256 "316d3712a8c6dae7924ca393969c8c793881d02377d5b9bf631e911ea38eaed8"
      "bs"
    end
    language "ca" do
      sha256 "cdc2a76df2097edc4d90da556a33c5e1f2b676d5c8a8de03a617ed9139c1bb26"
      "ca"
    end
    language "cs" do
      sha256 "74db4720793e267aa50e755e4a5f6672028a91793fa990a5adba5592f80f64db"
      "cs"
    end
    language "cy" do
      sha256 "b6ad3a2b7c801ecda9fcd147a3de448ac5fe6d193b1a100bb14d293e048a6c28"
      "cy"
    end
    language "da" do
      sha256 "1cbec8fd6ac047a307fa0c373eb9f8db7321c61daf3230b40c0180230d7e8e86"
      "da"
    end
    language "de" do
      sha256 "05202504fe19710d3951d1e34365cfa64c16a3c6ee75234c75bfe73f15b667a7"
      "de"
    end
    language "dz" do
      sha256 "52abec7d093b2e28125f1e9bacfc5dc6445b280b6634d8db32b0b80967face0d"
      "dz"
    end
    language "el" do
      sha256 "3ea9c107b5bcb73270992d09d05bf0cceb3bce527f0bde26f9e7002370228ff0"
      "el"
    end
    language "en-GB", default: true do
      sha256 "df7778fdfe277b493ac886f39fe928b4a5acd3f53a43da29c567e947023ba6c0"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "9aeb797467fde5172fb7fb6a886ddfc42ffbde19239bcd13d5ad8a98bb88c1da"
      "en-ZA"
    end
    language "eo" do
      sha256 "b0095d33bdd11666f4fbfda7ecac3f52ddc95f00b5b9803d0799d37d127ce3e2"
      "eo"
    end
    language "es" do
      sha256 "10c6f764567507724af970c7d9f75c16be3072bbed98c87058652b93a01a4210"
      "es"
    end
    language "et" do
      sha256 "7dc06368208cb663ccd9c209d2c82197ace02559e3a4c212c305bf776e7263f8"
      "et"
    end
    language "eu" do
      sha256 "afe6d45c58b01c9df1a0b59128ed6834873eb7602de920d72da73ff08a5a4b03"
      "eu"
    end
    language "fa" do
      sha256 "4f1c04b6b3dcce5fb0304d44d3959aca430c0adaa2cf9229ac36ac19fc5e4e0c"
      "fa"
    end
    language "fi" do
      sha256 "cc9bc0d196dfc5a9c7c8a47022db972636f7d53478614c97df643f85a46a675a"
      "fi"
    end
    language "fr" do
      sha256 "262e17604c93d837c3388c7830dc23e6ab0e0a31223ec04868a9a9602e1c3635"
      "fr"
    end
    language "fy" do
      sha256 "859e45bcd038a64a0a71e73658b6c85db5f0e050ab5530cea4431c9ebab26554"
      "fy"
    end
    language "ga" do
      sha256 "48e5e3db458c86e4936af19f63ae90cd1d879a4d3f7c6c460b8dde88e15b54da"
      "ga"
    end
    language "gd" do
      sha256 "e7336a89f1cfd52652c08c0c58aa21dbdf198492bdc49d5f0d116ad75a1c734e"
      "gd"
    end
    language "gl" do
      sha256 "9b1d785764bd94335be4df0db4cd5b10742543d5fceeb81539aab24505d959e0"
      "gl"
    end
    language "gu" do
      sha256 "ac3bceb44ff62a4ec28b43673f563d4de0b951e87451b9c8275bdce1ec9dc252"
      "gu"
    end
    language "he" do
      sha256 "9f91da0d41e116e063675ed94d8841646c8ea3b4a7168e1408d569e479852fa7"
      "he"
    end
    language "hi" do
      sha256 "75dbc32ff3618d354b179e1747bbc5d42100066222f0aaf551bb7f910de2cf6f"
      "hi"
    end
    language "hr" do
      sha256 "309c68e75ab7fddb7775e18a8c5d9a3606fa27360ffc5412f6b3bf46cbebbc80"
      "hr"
    end
    language "hu" do
      sha256 "6f6d9b785c449c6a734c29fb0a59930549542c0fa25980f4c1095548d07ee73d"
      "hu"
    end
    language "id" do
      sha256 "6213cba0586d97de97c33377037684d2b2b770831aeb90aa015d439ec4f550fa"
      "id"
    end
    language "is" do
      sha256 "dcd7ff3755aa92755741e2d28f25372816ef6bee40c90a69253b96961a0a6da2"
      "is"
    end
    language "it" do
      sha256 "70e1039c183d99f7764d95f665212f72a4354ac03855e8f7776c696a003de5bf"
      "it"
    end
    language "ja" do
      sha256 "253fced34ac94da33fe80ee3a00f4fd135e8bb1816c38e1f8569c0d0af7eda08"
      "ja"
    end
    language "ka" do
      sha256 "d7609d1f56b04a5b74735f66f883f0fa21c69292fc2dc6e944615985cd844fd2"
      "ka"
    end
    language "kk" do
      sha256 "dfd28539d049bdaa3bada195b0890cda01601d580d34198fa97a4719be0a4b5a"
      "kk"
    end
    language "km" do
      sha256 "8909ac56ff1fd1e13d08d983093e2c12a5d5410f386d1d051ecd31c0e56bc930"
      "km"
    end
    language "kn" do
      sha256 "a3eb47e7a10c91aa7be6eaa690ec308ec909e8dcc14746b39e9252deebf9d9be"
      "kn"
    end
    language "ko" do
      sha256 "f7bb00ebf278524b3aad07c4cdf3ef6f91e84d9cb05a20622d7b2286d6536c41"
      "ko"
    end
    language "ks" do
      sha256 "7c6406776f54e9be007c1b1940b5489334f4f843b88cb537a3bf12525e5ee568"
      "ks"
    end
    language "lb" do
      sha256 "ca0c554a47afae67457d5e21ece827ed3afbd84ae875f612fccbe05383bfaa31"
      "lb"
    end
    language "lo" do
      sha256 "f43c886e89a5aa4a443f271448925b204ddccde956c7a415e1b12245dd43995b"
      "lo"
    end
    language "lt" do
      sha256 "0ea9bd6683d15e1a5a1047e8925c7d0dd5ab5435267b7c3620f5797bdafc17cb"
      "lt"
    end
    language "lv" do
      sha256 "696575e986d0337e131405f71e254c5595903c5251a6a8bd50367e83f9d3ecf6"
      "lv"
    end
    language "mk" do
      sha256 "2e267afaff99c0000a0d33f340acfc70072e557590fb8fd24c2a7882aa57a307"
      "mk"
    end
    language "ml" do
      sha256 "09f263568d50dd7abc2a8a7a06fd728a7849558b1a7f18fc02b811f8211c8bb2"
      "ml"
    end
    language "mn" do
      sha256 "cd1cb904197c341355a165aa93d7473a94d76d5221fa7544e3af53cce1eeb6de"
      "mn"
    end
    language "mr" do
      sha256 "ffd7eb8b0e4453091b2f0e6ae92c142e1bad3bf78d39a8f725743314d1ab9150"
      "mr"
    end
    language "my" do
      sha256 "e3aa1b46c6116cc55b5c53a39fd749c56d6b13b53bfebc49c9ad262b8b9d2e7f"
      "my"
    end
    language "nb" do
      sha256 "ecd0d8c5fc687686f024199eaa56db587c835bc225406925a69ff3cadcd7c95f"
      "nb"
    end
    language "ne" do
      sha256 "d092a9bed991fff9015f6c61e14ba59a0e27b6f8fbabe188021c1944c48f3ce0"
      "ne"
    end
    language "nl" do
      sha256 "0937868e4332f1ad969865b59c87b2b6406e30249acb9ff92fe6a8cde1d22dc0"
      "nl"
    end
    language "nn" do
      sha256 "e52f32f8ad365e67c7780ba2d56fbd3deca3f0306be8121169b3b2151214705d"
      "nn"
    end
    language "nr" do
      sha256 "4addf5beb2fdc1e92167293f971d6fa7cfd2ceffe394559c607e8e1b4943cf40"
      "nr"
    end
    language "oc" do
      sha256 "e3d6eacd9dacf1814df42dcf015b68d4afb96108c9569943be08ffaa31e95ae5"
      "oc"
    end
    language "om" do
      sha256 "08c8528ceb299da7fe3216517943e9c24d1eeee6700b1243e62c9592cbd8f340"
      "om"
    end
    language "or" do
      sha256 "80440dd1aed9cb94aecc1448a750b4a50b1f3156113e17986234cc97e7d410c6"
      "or"
    end
    language "pa-IN" do
      sha256 "7bd5dca7c8a644ee07b598081d8924762d79b94fb889e8010bba66817cc790d0"
      "pa-IN"
    end
    language "pl" do
      sha256 "671117cb1b5517146c30b0197d8c7f28175d0540fc630ce034128f5525e7535f"
      "pl"
    end
    language "pt-BR" do
      sha256 "ba38e72e74c28f986e5a9b505b246ecb2ce490ef8378dce0eb5ebddc462f6247"
      "pt-BR"
    end
    language "pt" do
      sha256 "849b8bea716ec58f5afa50944c9389f6918e0c3a4ff25cc7caaeab9d3ffa7734"
      "pt"
    end
    language "ro" do
      sha256 "0f536a8fe4a959f06d77aaec7bb06a2d9d49f410babedc7fb7e9a45c818f8170"
      "ro"
    end
    language "ru" do
      sha256 "585367e6b8edf1e2435f37f448b182ddaf81ac561e92437a55f12dd0eaa48a6b"
      "ru"
    end
    language "rw" do
      sha256 "5e448d71c9d3f3541b8e1a78afd3af988b5865ce8ab3759fa998d5a63a2b12cd"
      "rw"
    end
    language "sa-IN" do
      sha256 "b772f0e02522933f5cab53564a9af482045586bf13591f471922b4038d971397"
      "sa-IN"
    end
    language "sd" do
      sha256 "474bd9b3d7be25c0ffaa35bb8e85db68b9ff20acf90022c05d4e8b93e9e28dd2"
      "sd"
    end
    language "si" do
      sha256 "9358b8c729fcb3f247acfd988f2c90789d3cf33449f0180d5b0e8fd737da0df0"
      "si"
    end
    language "sk" do
      sha256 "7053188e602907aff59f96c29cfa4d509502491cdf3b721af60a93c9f81d68ac"
      "sk"
    end
    language "sl" do
      sha256 "1bf16aa38f2b7d694ba84526f24070b45cf764d099bde9e78990fb3c48a36eca"
      "sl"
    end
    language "sq" do
      sha256 "bbdd5ac5c13f1ecb09a9a1167bf1881df7d4ee941e2682b7334790b095ca8481"
      "sq"
    end
    language "sr" do
      sha256 "59db57f54a60be9e6d6f546a15f531ff19a338a78490dea8a05039897f99caf8"
      "sr"
    end
    language "ss" do
      sha256 "7d4e0a04f366f5099208e4a03e0cf6568c2ee489857f92ab40a967b42f400b9f"
      "ss"
    end
    language "st" do
      sha256 "feec51b7fb2c437d1449c1cf205965542102313eee757ec3e356ecc1938cce9d"
      "st"
    end
    language "sv" do
      sha256 "da5ddf00fab4660620686865566ac446915fe33665cd4fd141051dfb4e7bba15"
      "sv"
    end
    language "sw-TZ" do
      sha256 "6669051fd89cd80d87bc22fdb3bfc7e6421e4ecddd5ccd5c28b666ce354aa04e"
      "sw-TZ"
    end
    language "ta" do
      sha256 "e612eb13a2d61385ed632a123448741154017785bb8c2f4aa01fb51794d245b1"
      "ta"
    end
    language "te" do
      sha256 "056d9f6d883ce419f6f94356fb3a7a517848cc44cf0028b387ead18f67ecde0d"
      "te"
    end
    language "tg" do
      sha256 "8a365575a04961bb2cff0252f24dc4596c066354fde6fc11707d15f78d04174b"
      "tg"
    end
    language "th" do
      sha256 "27f096e503f769ebedf1f4785ca55e7488ce20fb561f84d648060b28ae929428"
      "th"
    end
    language "tn" do
      sha256 "3c4818132604faf62abd770d6d4e3bac88c65728708d0332e7115cb16ae52b04"
      "tn"
    end
    language "tr" do
      sha256 "ec340e38e2d385c9a13514d51f97946850fc0a7299952b13700d9c20c4e7c58b"
      "tr"
    end
    language "ts" do
      sha256 "a8e5b7c21321f75c074a93d37a5e1635b381de9e4d26e56b777f863fad0a560e"
      "ts"
    end
    language "tt" do
      sha256 "b6f00817b2a531355917637a7b8b6e9d3e1469c4da3569fce5485ccf71415e7b"
      "tt"
    end
    language "ug" do
      sha256 "d41b0770efb6375e0965def492ea52eebace9c1945bca32f0f895d70405652c8"
      "ug"
    end
    language "uk" do
      sha256 "4f1efba59e31b661c3714361f2c0bb9973d60752c6d2b81c643bbdb0518836f9"
      "uk"
    end
    language "uz" do
      sha256 "d0aecd0ca42c8357c81714bf79c222dfd1a56b6ed5fd909d141799078c4656d3"
      "uz"
    end
    language "ve" do
      sha256 "5e830d5d56bd87636792daf080e735de77bbda169f65adbd67e89cf841d94016"
      "ve"
    end
    language "vi" do
      sha256 "8e7e2d753aa4677d2fe5230f95d47fe36fca5458dc6a2380f1ea8eb77b9dc386"
      "vi"
    end
    language "xh" do
      sha256 "90e53fa590b5c4b2afe714ee615b57618dcb778a5a6b75e2989979eb2174dc13"
      "xh"
    end
    language "zh-CN" do
      sha256 "499d88eeedc6d288b222b28227183d87f61e88ebe83000247212e6ff2d2b6773"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "216405e43ed4bd7eeaf0a585df5416e0525822c6647a2e96cd0f703cc626ac16"
      "zh-TW"
    end
    language "zu" do
      sha256 "1d66921dd7a4bcd879e20489f4ced9b2ad901d9cf44cc6fb0d12de8cac6062bf"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "b1127f7cbdc0070232ef9ee492457df8db2e0fef02007155f3bea3a287e250cd"
      "af"
    end
    language "am" do
      sha256 "e854fbc13a1cafbf137495601baa462f37eeada7e81c77a5ed20c55d5fb1ad99"
      "am"
    end
    language "ar" do
      sha256 "b33c82115c7f762bf126fc8e3f158bbbf5c885c06e32de530ca8d673d8380049"
      "ar"
    end
    language "as" do
      sha256 "7b63fe6f21ce190a7e359890d792a440c84f54b836d1d0c7b8522f63fe9b7e8d"
      "as"
    end
    language "be" do
      sha256 "84d0ad390c73de0c1faf9195fe798089924a19c505a96bcbd7480a39e1b75389"
      "be"
    end
    language "bg" do
      sha256 "ecd31b571c7a62b3fe923179412eae1ca1e91a75e3a69bdef57f92ee693e28ee"
      "bg"
    end
    language "bn-IN" do
      sha256 "0199ef5398a1e39bb3010ac4311a19b7b3dfde60115cd203c59334d4900b20d3"
      "bn-IN"
    end
    language "bn" do
      sha256 "3fcffc981e91492dcf31b72afbe6e9740b4ae2c1450f4b3bf526737a5f3d617c"
      "bn"
    end
    language "bo" do
      sha256 "8b4e2b521948f8e20daa8fa64a9579196c8bdd350f710112690eb9c5c4052896"
      "bo"
    end
    language "br" do
      sha256 "490fa1516bd3b913c1aaaf609783d2e3c81024875f52c2e9f54c419eb66d26da"
      "br"
    end
    language "bs" do
      sha256 "a13b113b267a21949fbe84bc3587ed539d87e9f35219769d03edfb82f3e47a05"
      "bs"
    end
    language "ca" do
      sha256 "901dbdbb060b30d0d8e6efca5bce571b78f7ca5523df19dc4e27a1c5e3d96ff4"
      "ca"
    end
    language "cs" do
      sha256 "58aa1000380fedd4501f81a796e00d0311df44ee128ca02ee8e32a30a0f2199a"
      "cs"
    end
    language "cy" do
      sha256 "cb3fc7974a0cdb72d1a8084668127dd72e637e193775e7fded35c147e3981f76"
      "cy"
    end
    language "da" do
      sha256 "76ac89296199d5c2ba8a90382f2920f3aa64fae65f4685042e38fef6ecb6d46f"
      "da"
    end
    language "de" do
      sha256 "ce9fa3d2548bf125872bd6c5b0d9d62efe74524c4d09b80b2e174ebc6de4c484"
      "de"
    end
    language "dz" do
      sha256 "8c7c20d13773f893f4e143d75f59672aba48b0229b6bb4a1de670bfbcd4b5aa6"
      "dz"
    end
    language "el" do
      sha256 "cfd32bcd8b9c27bfdf35805a674186368dc7ee0c42c0ddaad82c8d9eab9ef264"
      "el"
    end
    language "en-GB", default: true do
      sha256 "afde9345bf0c27b5a66b6ebfa3bca6173fe734b5e834384b6c57b106e59b52e9"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "62f2dd0585fb9fa8d4faa42862ac7b9704c52e8e899ee435b15c4cd683eece32"
      "en-ZA"
    end
    language "eo" do
      sha256 "5cfd092cfa43aa3e39ab7ddc64675200b8b982adde9cbf631ba88409a746fdba"
      "eo"
    end
    language "es" do
      sha256 "95f9f6d8b48c7f6e923c50c8dafe6f81a550a04b0b6e5d4d002f40b2c1d87472"
      "es"
    end
    language "et" do
      sha256 "90ee1a209af033aef312a6b04ae176e6976868aff01627959f17542370dd65a4"
      "et"
    end
    language "eu" do
      sha256 "ba1c6f61417c225b575c0533e9a44cf0b7feed1ce8f8b5486ba03ab0bf6cf006"
      "eu"
    end
    language "fa" do
      sha256 "4d3802766554a7b6de4945cc7ba7e9d7614cccc8eac85e1b820cac505b8abc69"
      "fa"
    end
    language "fi" do
      sha256 "0837b07e9a30ac5f1d3f50561431f79cd247bd122ad6921e3a75075f4a3d154a"
      "fi"
    end
    language "fr" do
      sha256 "852b3d3010f4c3d99279e2bf1d0e390cfd30cd944842c7726607db838e688de4"
      "fr"
    end
    language "fy" do
      sha256 "dbb867082b562f3e733bc3a3a157203c0c89f4fe20cc8b15c09706533afccc1b"
      "fy"
    end
    language "ga" do
      sha256 "15c1e446c1f86949b4e11394afbb858eef06c33bacbb6098a0e717851385108c"
      "ga"
    end
    language "gd" do
      sha256 "3494e03aee9b3c8c1aaf982fb1ce772fd95b29188ee06546be3217a2c44cdf21"
      "gd"
    end
    language "gl" do
      sha256 "d929022412e3aeb774f5db927b0172a861e0c7aec06cf951a8c03a1f8d6cbd49"
      "gl"
    end
    language "gu" do
      sha256 "c36bb3de46e83ee6e7315406d8299ee7763ec84c1599f76b0a80044aa30952a2"
      "gu"
    end
    language "he" do
      sha256 "f7d233d2c198501258c065a5119c321a5d3b364d8ac46d99bae0f72e4f0dffd1"
      "he"
    end
    language "hi" do
      sha256 "47b635a6f496b81d1641b392a010cfd845356cd572e3352b0001d77979448362"
      "hi"
    end
    language "hr" do
      sha256 "0d7cdfe5491e09ed6597960414ff5011cdf135f92ddf34dfb41e695ff7aa95fd"
      "hr"
    end
    language "hu" do
      sha256 "852dbf813e75b099c4a498fe5b21798ccb1f83b484822a1fce54c33cb9df2eab"
      "hu"
    end
    language "id" do
      sha256 "e74423e1c663e8f684d9d27b2917a7fa70af8bf69f11c1b644fe111e60170aad"
      "id"
    end
    language "is" do
      sha256 "4675d0284f42ad038cfc68e842ec9e773d3fb46f83acb2c737d02f94a2aa4c5b"
      "is"
    end
    language "it" do
      sha256 "3358d9325b7ae31b93e8be85e69759accc2fe6105cd17eda1f07da7a04992508"
      "it"
    end
    language "ja" do
      sha256 "dc5cb77ed39088ab86c2f90cb9e31d99d252674f6ee396933b013087e613c398"
      "ja"
    end
    language "ka" do
      sha256 "02bbf5eafb9f0871563cde254eb42555fb0edbe04ee4593818c8937fb2758a25"
      "ka"
    end
    language "kk" do
      sha256 "b5c6c65b44a79b7e9d1b4dab2e58b140d7f5022a7b988f204e791d5fce05e8d9"
      "kk"
    end
    language "km" do
      sha256 "f595775c6fdde64653e732b606d981884f4570d60bcedf3e38f806839a8c3e39"
      "km"
    end
    language "kn" do
      sha256 "665ed1a68d1342b26dc177d229d867dcc5480644d97087dcf995946cfd3e6595"
      "kn"
    end
    language "ko" do
      sha256 "e22361e4e56785dfef481f85348d02fd4de9f70f8c0a178d9626afe1caab99bb"
      "ko"
    end
    language "ks" do
      sha256 "dfd97598255e568d63fd3858881eaafc19f923183a965bade00a758fbefd7183"
      "ks"
    end
    language "lb" do
      sha256 "275a5f1331d997ed5d60bc148ee3b2ec6e57a7e4f5e40e01f5391fbe49e4aa14"
      "lb"
    end
    language "lo" do
      sha256 "780f6754df04b0805b1041236398fe28d52fba52aecef735572d2dd8c7d96158"
      "lo"
    end
    language "lt" do
      sha256 "6f38d51b9c4ba5a7385df53ca8f2cc4e6282fa965dee87ccaf812c2df43e9eee"
      "lt"
    end
    language "lv" do
      sha256 "04daf3ae7d97777e2a361ff8d9fcf6079bfd917436f4c69cadb9109569ac32fa"
      "lv"
    end
    language "mk" do
      sha256 "df74c6974ea509686d9e380690063933728cd40d72466d4494964c80e6a6dcac"
      "mk"
    end
    language "ml" do
      sha256 "f6307722f956d7679831bae28d6617ebedb63aae765f8864ca76c513e95c4839"
      "ml"
    end
    language "mn" do
      sha256 "fd262ca8b0ebcd5d30baa05066deb9f8725beb3dc7b56834843e289637e56bc2"
      "mn"
    end
    language "mr" do
      sha256 "3fa74f729eadbbb1c928ec2bd8b1d1a440b626ce9a89f582575a8bf026845b18"
      "mr"
    end
    language "my" do
      sha256 "f5e1ad955fd36d97147aa0c23e23ae6f92dcb6b89b4f4c979ca01b337b40e05e"
      "my"
    end
    language "nb" do
      sha256 "9566a4f076ac58c428e82f788e3eb0b3cf17c40f28010ab7d5fbf1ebfaf86883"
      "nb"
    end
    language "ne" do
      sha256 "d4eb3014b054b11c59e2d5e262444a49f6b9e9b59087a8cd21bef7e8197f72e0"
      "ne"
    end
    language "nl" do
      sha256 "d0f4d61c27ad794dcca7d5c87dbee68bfb7081361e8bea2e02befa7b1ed880e2"
      "nl"
    end
    language "nn" do
      sha256 "16ab2f4b869c0faa10f79a9a999902e10d6d97a1021b0a375a9e88189a537372"
      "nn"
    end
    language "nr" do
      sha256 "b9c6af2e5d8aef12bed72ec90d6cde08beee306dae525e4689fc73b47d92e74f"
      "nr"
    end
    language "oc" do
      sha256 "c5d74bf7ef68850756ef5c44c3f3e8b8bd57fddbbf1c87c1ed88f024c61430c3"
      "oc"
    end
    language "om" do
      sha256 "09c264dcd48dbfdfc72cb273b8bae7e74e7fee5bde91017e51cbea3831edd3cf"
      "om"
    end
    language "or" do
      sha256 "e232277d2cb1804e4ce6df4ada2a7951017db0922bb05b30f41a7831b1fc375c"
      "or"
    end
    language "pa-IN" do
      sha256 "f2d3c7a3346d5841e5b3190559fb7c7de3ab09db5d6999418271481fb3fd970f"
      "pa-IN"
    end
    language "pl" do
      sha256 "fb190607e91d0f67d424c87ea240d595baa82b7d3046527b1713dbbba29ad4e0"
      "pl"
    end
    language "pt-BR" do
      sha256 "ef2994b91ea9a391e3b339fb5df3f3d64ae4688bc72a6a8a01a49cac3251a360"
      "pt-BR"
    end
    language "pt" do
      sha256 "bfbf48d9b2e23afb779194d0213c63862b348d6c701d2510f39b8101e9146554"
      "pt"
    end
    language "ro" do
      sha256 "686220284ba253cd73e32bbc31dbd9c2454a9bfb35fc3ada6e149639db9e6805"
      "ro"
    end
    language "ru" do
      sha256 "7087fc9ef9e59334befb25c3f0ab5d60ab1951bf05f158b3a50b2b1ad453182a"
      "ru"
    end
    language "rw" do
      sha256 "24bbda37648aa76cbeca17c4b5d93a13afe72c59f1bc8698753b9e1ae713c145"
      "rw"
    end
    language "sa-IN" do
      sha256 "3a41010b147ebc4fbd2a9a2be4f8576a7b10540891110038cd9d85b2c1672209"
      "sa-IN"
    end
    language "sd" do
      sha256 "e056d99db7df6ad5eb1f6af4c3ec3faf1eee64a43c2960fb827c8c20c1cf6acc"
      "sd"
    end
    language "si" do
      sha256 "85543dbf2dd6b1d6ccc683b31b5290826f5c63589927d4563b8d42df1533b263"
      "si"
    end
    language "sk" do
      sha256 "73a8a10b0a7529d31bf77106359605ec1a3f248ddb3a05fac7413e38d002a9a6"
      "sk"
    end
    language "sl" do
      sha256 "f9070ae5dd406c4c31189b0eb462e0e6a3cd11f9d1636f71e26e8280c20e7944"
      "sl"
    end
    language "sq" do
      sha256 "fd6039fe386f16979c20ac4379a1df57adde10b587c0313c11e5dd745435da33"
      "sq"
    end
    language "sr" do
      sha256 "b8745ce323387f3fbecc3c57caecdabeb47020e1dc2778419f956f52df825925"
      "sr"
    end
    language "ss" do
      sha256 "820ab978bc27d5e44246fcd12d481daae991447f1394672c7edfb3343124646e"
      "ss"
    end
    language "st" do
      sha256 "5ead11fa489ec6640663b2726b4dc090ce1d6ec9b864f7021df48b4cb198e2ab"
      "st"
    end
    language "sv" do
      sha256 "ff452a9449716e9cce5150f48eecdd65aa9678e0c057683b081988613eb0c6f4"
      "sv"
    end
    language "sw-TZ" do
      sha256 "a43ceae4653c9733b2f9c01e7d1e984e14e1a3322dbb814e5ff41bb95dd9982c"
      "sw-TZ"
    end
    language "ta" do
      sha256 "c83ceae2bf57956b9a5d106e3fccad6b3e6cc5700e2491cef73d314901e92d1c"
      "ta"
    end
    language "te" do
      sha256 "285fc9b55d812f3551642af3ce132e0523398f9baf3541685dce87f79a440e62"
      "te"
    end
    language "tg" do
      sha256 "08191071e4c66c2191c5409c173e5c31e9c207aac903840109fa993ce9b78e30"
      "tg"
    end
    language "th" do
      sha256 "dc5d28e84726252443e1821606b9087fd9239de31d2266c8f996eb6b828b3e2a"
      "th"
    end
    language "tn" do
      sha256 "565b3a1879570a0625291ba3e1e13b10a3291baf5f68a430d67df8debe246300"
      "tn"
    end
    language "tr" do
      sha256 "c65ba357cfd00f6535b4ca0723fa1fdf8049cf5b44af018fd18d1a5a06e3dff2"
      "tr"
    end
    language "ts" do
      sha256 "6fe85d89628418750625b40c4a2c0487e0ba4aab20e1ec05d36deaa90891568d"
      "ts"
    end
    language "tt" do
      sha256 "d3729a6a067369be2518c884b496596cca7b89f83a32e5af70ca6535d9565fd1"
      "tt"
    end
    language "ug" do
      sha256 "84900be8251eb1cf1d6bf3ad9a3403f46c3cd26d5f104efcdfd2df2d9359ac42"
      "ug"
    end
    language "uk" do
      sha256 "73e504b8205f051d2af5dd22ecda58ccc96bfb944c8b7766f9e781d3f4a1bdfe"
      "uk"
    end
    language "uz" do
      sha256 "30bfd12390e5db528a19ff9fc21aff7f47d10a447064d174b8db2879a8ef6543"
      "uz"
    end
    language "ve" do
      sha256 "6bb2fdec9b964a97010e7b2954e0ad5f486b8cfffeb581cf0b3431328991934a"
      "ve"
    end
    language "vi" do
      sha256 "bfc7e988a589d818c6a3a1572a999970d155e4f86af001a9904a6311ff0bb562"
      "vi"
    end
    language "xh" do
      sha256 "15133ace9829e9b011ca42b1f565be73bcf05d3d5c3710133583744a79f2d24d"
      "xh"
    end
    language "zh-CN" do
      sha256 "86e81d39c320ee86da6890d3afa1556da6930ec4f79b66a6619f4499e649665f"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "89ab2633a2b39029cc44e8e9968d9e2eaf266b63e92a32aaa062c64bfb39ffa3"
      "zh-TW"
    end
    language "zu" do
      sha256 "313a78a1ff688c124d4d486584619f1c156fbae6749d27ef11a9f4bb5bfe1d75"
      "zu"
    end
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    cask "libreoffice-still"
  end

  depends_on cask: "libreoffice-still"
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
