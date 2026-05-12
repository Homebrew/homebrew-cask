cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.2.3"

  language "af" do
    sha256 arm:   "354b4aec12da2bac493e308ab0e8ef401c7052498b724e018487dab918853a00",
           intel: "4ab6e84807d1414c7377657abc9eebc62bae15a77270a88878cfaddadc660d9d"
    "af"
  end
  language "am" do
    sha256 arm:   "350d59bd3e9264c2deb4ebe3aca141ccc07fb18fa587699fa94cb08e10608525",
           intel: "927d48fac04ccf48d9b833f1deb1002c90ea949f6a751b1a58b69014d5235c26"
    "am"
  end
  language "ar" do
    sha256 arm:   "4cab2c5af4beac2668c7421e12f814f29b423beb25b134c98fe48861b5b008f5",
           intel: "8810254a429b36d0b0ab7d658e185fa0b319c9146e1d12bf19ac089bfc169a00"
    "ar"
  end
  language "as" do
    sha256 arm:   "704fa30535f6630e8bfdaa1fa987246341705dba62f3d2bdd043f073c0df040e",
           intel: "498b6a831cc1118f2a19d855a4ccd4ceef9cb0e2e955c76a1ad67e5839cadf57"
    "as"
  end
  language "be" do
    sha256 arm:   "5ca256d11739b6d2edc6702055f019e0d692de796d9360865e836235721953a1",
           intel: "e4bfc6e1e6891543257f838529bf1d63b30128179dd75ef3149bf01f7c121048"
    "be"
  end
  language "bg" do
    sha256 arm:   "f9d481a68da1e3dbca5ff8025389c0f152e78ece02eb152b03892a9da21ef6cb",
           intel: "d3695e28003055525f7514a535537d785a6da59607295632348fe5b394f68a5d"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "82716976d3ea034fdc4a4a360039f11d20ef6734fac424451ff79c501c0e7bb8",
           intel: "1ce5ed58b793031e53e3846207b22bad3b48980f7f16d9eb8516e7894d31b9cc"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "d1cc464f62bc6cf13e192485833d7d41566f18d045a5e565bc3899717a0c2b98",
           intel: "420beab4bac85b6ceba2734341a2784d3bb505bef5dbc17110914e25f92d85b0"
    "bn"
  end
  language "bo" do
    sha256 arm:   "fca2868389935bd43df1c3a01701ffcf49111155827f4a505aa19d576235d368",
           intel: "c281a60d7cc66d71489fd4465086e5b7522d6b40504d5bffb6af2f2479fb9bbb"
    "bo"
  end
  language "br" do
    sha256 arm:   "85af4df216c358688b601971b3b49707b44e2262b0d4972d566e1911566c4725",
           intel: "b77081e241f9bf1252cbabb9319629133e53c95db6458eef32f9067b85f55b53"
    "br"
  end
  language "bs" do
    sha256 arm:   "9f0fd09f263b32599bc022687ad6a099f9c0aa1b020ce805c1f262a582d09eef",
           intel: "16196bbd033f6039fb55059568556872fddb2ef61b47fe254697c71efd63a7a3"
    "bs"
  end
  language "ca" do
    sha256 arm:   "6bd5576d05adb70a970f67eb56900cd6c499818005e1ab659c08dcaffa1b2871",
           intel: "688a53738f99c33f0cb59be8269962786d3002b2cb8b9741d4d2c2bbee510ef9"
    "ca"
  end
  language "cs" do
    sha256 arm:   "2f74b7d87b0d214a8d017385ef662dd5c0767fca47e7403eec6e671557710ef3",
           intel: "b2bab649370fc3a5d3d53325e028e2637f67334856c5d7dfff97c1b071308d9a"
    "cs"
  end
  language "cy" do
    sha256 arm:   "22d8557543664941f67a765dbc321936ffbeb5b3b08829a765296c7e78551957",
           intel: "bd82d5d650d0a8c95fb77cee5ef2d7cab6537635b83cdff1f85533a65f8db974"
    "cy"
  end
  language "da" do
    sha256 arm:   "e1c6fb297b84c8b7c7adf282c8e7cb00d5e3403c15c89505ce16eba775028314",
           intel: "fb8abb2c34285b3b6db0b140b1725b05b78979b0fe80e24dadecd25b1d99f84b"
    "da"
  end
  language "de" do
    sha256 arm:   "4c0f90b4f2d7d98f91b8fa6c227565c7806b136117139e5154016dc8832bc11d",
           intel: "d12e59077b35985014e1c804b609facf14577a4b27235f36a345925fdc4dbfb6"
    "de"
  end
  language "dz" do
    sha256 arm:   "07dec9cf23745276a44bdd49d790fa9c550ac44d14f4e63c722078353e78da5f",
           intel: "59c1797d785d98609d4b016e5b5520f752cd9aa5a85cdeda64ef198d705d9584"
    "dz"
  end
  language "el" do
    sha256 arm:   "c38f516d2f72703ae3b1db79332b3fd28401e854a4f01785ff998c0ced4cea84",
           intel: "392f5d6cac84d62503b1b82800156f5637dcde1dc787258b6749d5b4dee5aa69"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "94cf2d53334c451928e36863b3e54ef0b259a58a69f15157c7691e94192f3284",
           intel: "ff73001658d08fc31c68e459ed8192cbc22bc689db26a2f09b0dbcde541e5953"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "85b91086c17a8cad6443da562738b18034b4fad4fe588a89ce89984b6242d990",
           intel: "4dcc6c94423fc50f8367f11182e6654ba9b882f697c0e679c53cb8dda57c36ac"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "0791face46ceb92f8a60b3d14521efa0e492ed0b6337bd7c773a31986738ea32",
           intel: "8408717a8aed1066df045d56f10f7c6e623591df3dc52acd0dc8aa514566680a"
    "eo"
  end
  language "es" do
    sha256 arm:   "bfe12f7cd89873256dc185e3e01f45fcea20930a635543d68839a45344981630",
           intel: "042cbedb14cde1edea9a79aa770025d54876e67e34fd031c5dbce14aa9295240"
    "es"
  end
  language "et" do
    sha256 arm:   "773192862063e4a40fe82bd06ac7ac4b76d87922c6b6b9e821f16fd1b3718787",
           intel: "e7828a30eeb36af5426d6e4c6d0be61d4d5499cb5ad2a81a9f369ab65a28ddda"
    "et"
  end
  language "eu" do
    sha256 arm:   "d0d6642b0beae474daa7ee37d16ea5c50e20689f369f974c74a94176a8af8d21",
           intel: "b95335a18e1c5ac6d4d4e139bc53d3543a660ca635c9ea33655398478b42839f"
    "eu"
  end
  language "fa" do
    sha256 arm:   "82a15eed2487f6d6003a202d08d84d6c472e750a0bf3dbf2b8bd7d6138ea0129",
           intel: "9b8af73ad9c5d1dfb3acfa7e5ea3adbcb4c8a89440c956b8be300c482b6e28ed"
    "fa"
  end
  language "fi" do
    sha256 arm:   "9d423a94df00d76cd90eb3580debb77253b4162e5057bd8fd0d9916859bd2eab",
           intel: "b6b3f1898ed749dceb0f07903f80ced75fd19bb0ef3390defc25d815848317a8"
    "fi"
  end
  language "fr" do
    sha256 arm:   "d750ec334bd3b34b1665b9663a105c5aeeb0dc857b1aae9a1a182d46dbc95491",
           intel: "afbe20729686dddbcfe611f62a734f1574ddc99a2156152304ab0f77c1cec77d"
    "fr"
  end
  language "fy" do
    sha256 arm:   "9af383289ea985cf89c1ab315846e46f1c7eeb65729201f25f97763c9b370321",
           intel: "f8e641fdaf21aa3cb6ca7ba43aa07ee619925024a7679dcc81f217fded643d4f"
    "fy"
  end
  language "ga" do
    sha256 arm:   "a2ca03397754cfba52b3ce13d8fcd2cb4040e6b557decc63fa130c897a3e6b19",
           intel: "241c35e1ed55d045320614b1388d8b157aa7a5edd49d800374b73bbff18429f6"
    "ga"
  end
  language "gd" do
    sha256 arm:   "af2b80d91916f8d9330fabc508f8fd2bb55f8db3adea16722e9c8d4442f93e7f",
           intel: "fa0545e3b1b4ab2e0a02c2783e84e957f65145b3dfbcf2763fb3195b4bbe0cd0"
    "gd"
  end
  language "gl" do
    sha256 arm:   "a0a24a2424bbbf154c428901063353686b0b7f61460c321dbac003b4c70e907f",
           intel: "f461cc85bd923481dc2c54aead2a18c33e1e8b77efc920aad6ffbfbb27c0ccf9"
    "gl"
  end
  language "gu" do
    sha256 arm:   "2eb625643871080bb5773160be3f4e461862a9a3c636746f026efad9fddb8e1f",
           intel: "f70302ac95c149fb56a58d527479f8355f1d002d8fd9926b337cf0a1018f263d"
    "gu"
  end
  language "he" do
    sha256 arm:   "c8fd29d553672e54f2c47cb19d13538470c1342915ab9d0aa1247b3df30944f6",
           intel: "efa501c0ccfb8795aa2b262460bfe30e591007db911e6d9bcc44863f6e225aa8"
    "he"
  end
  language "hi" do
    sha256 arm:   "cffa6f0edc5031357dbc45d28a81029b96854f5c839a8093e35da11655f8a1f5",
           intel: "8799e5a6fc8422521474c92312e1ccb1a3c2d5863495c583473a70500eb2b43f"
    "hi"
  end
  language "hr" do
    sha256 arm:   "ec0b95d58d957d9259b7c9fc5c6d5418b6805eeb5ac789dc9e8e4bbd7d14fb71",
           intel: "03682c1f87b0afdfce444d83535175ca9d27820786cdf20527d86625063f20f8"
    "hr"
  end
  language "hu" do
    sha256 arm:   "aabc18dd5025cba98f8fe7fd4579f2e2622dce7e011d210d808e265d34512b25",
           intel: "9c04e5bf3c4a49e93689123d484b37fdb458e4d7ed648aca15c393322f89739c"
    "hu"
  end
  language "id" do
    sha256 arm:   "ab9fc2790e99dba0a4a9f674a60253d1e5872782bfe0afc8e3696b6bd38faf80",
           intel: "d61f069bab57213bd5edf56f5768f8fe4320e2efc86ace6d35cfbb53059605f4"
    "id"
  end
  language "is" do
    sha256 arm:   "ccf65cef0ce6d65f690e4323b6e77a0f922741f6d544793925c23b6ac6411256",
           intel: "1d8012be4c1ae65ed21a5da7864ad3ae2e6a7ecb1ec8776b7d70def5f0a515f9"
    "is"
  end
  language "it" do
    sha256 arm:   "ecd8fdbbd91211fef443e8177309389312a23f26e84abf24878dd62e85a66d66",
           intel: "c9fd892689a78c15d967b38560fb436008abcf303378cdd4f81f37458b980883"
    "it"
  end
  language "ja" do
    sha256 arm:   "a0b95c66469a7e0f60bc76a90504363125aac0316e56fb3f966b335f516cd868",
           intel: "a7566f94861cf0c917b2be8d13901e8550d1936c3246a72ec0a2ba0bba8212ac"
    "ja"
  end
  language "ka" do
    sha256 arm:   "ce99db47ffff077a4549b4fcea86d5f3486422428ca5c22839c6d2ca0150f770",
           intel: "ed6b0d5008760a25b66dac936c93edfd71d9261ec757d9ec66d173b90648213b"
    "ka"
  end
  language "kk" do
    sha256 arm:   "b0f57794f7041c332fcc5257a6a16fd0e2088f1d85192daddcf70b139214a4ca",
           intel: "b1a3fc2841d779fbb99a03494df295670bbedfe58db4ebca901f5e92b00807f1"
    "kk"
  end
  language "km" do
    sha256 arm:   "5b5e4089504809b24c4f8287cd082ee0bf93ed2217acc848374374d9f5375516",
           intel: "cccb22e3f52db01b1ad9a7e95489415a9152df33ced0b5320fcb1cbc145b642b"
    "km"
  end
  language "kn" do
    sha256 arm:   "a82bf7e5166765d345115492fd47a291cd59e761e8612245e130c1ea339e8abe",
           intel: "52e30a1e8d0eeaa493aba410659fd022aafa3c69453cd5069cf111ccc53c6b92"
    "kn"
  end
  language "ko" do
    sha256 arm:   "27e3db034b41704eddfb44e5468b07d19a0ffe40afa87a2734814b5e22a03a70",
           intel: "56c1b499bb1b3a35b482ad742a72b6bfaa8a7dd19b6cf5f19c212ada61d93f3b"
    "ko"
  end
  language "ks" do
    sha256 arm:   "04188988ac0c24f1569bbeb207170aef1124084bcf261024413e508ffccc342a",
           intel: "1be701694a8fa27e3cb97452d4956cf473742cb1e16acec1a4f4fa91980a9f78"
    "ks"
  end
  language "lb" do
    sha256 arm:   "672e51f53d0d2a12671bb6c55614ff926a2d2fe13592477159080140cf54193d",
           intel: "b865400e093b56794b759d6ad3d57e32868d5de506462b2f51141c335a5b6b43"
    "lb"
  end
  language "lo" do
    sha256 arm:   "e30d15cf4c8f636275759d09b64f4bd4a245d48c5dfd38b1c8a23e41d7603838",
           intel: "7048d6f7a9f4b6f059fa1d0f9b0cbd53b7f3eb970d5a205220be7353ce7d504d"
    "lo"
  end
  language "lt" do
    sha256 arm:   "a4579318229589f0ff4f0f8cfb05d1652ff2f04580a772642471dd0a9e28df2a",
           intel: "5fe69fcc3d54de7800bf0802f23ced54db4460ab4cc7c07af2f0d2e7c766cccb"
    "lt"
  end
  language "lv" do
    sha256 arm:   "e392ee3f09e244b0bb354bad8295468bf2f89f50de1bc290e7536f7129dd300e",
           intel: "d6542c787d27ff65034ed47f8b50972b5e287f2d31971896a76b5640a28c502e"
    "lv"
  end
  language "mk" do
    sha256 arm:   "b3f3f073170c711ca409c70540d25891dfefc0a739026bed67ea9696ad59e25d",
           intel: "4c2ae290fb8bed9cc2db7177e3bf623cde0de2b2651caa5f8d3183fc9e9e5927"
    "mk"
  end
  language "ml" do
    sha256 arm:   "0814c14bf9b6cd9d0824267b61f49e9ad1ba85c4120de0589c933e8f260ab917",
           intel: "81b25ad4cbfa3636830a5e9ae32a38dc4e44a7704b61f0caa4c481254c541319"
    "ml"
  end
  language "mn" do
    sha256 arm:   "0fdcd3505bffff709e2c5d6d8d0e0cad397d14a1ffce6336fbb6b5a97a04a6af",
           intel: "60c2f043d600750dec6083bf2909c0f21ee1f05061a963288e0e6e62beffde09"
    "mn"
  end
  language "mr" do
    sha256 arm:   "cb1068b2566010280fdb4ca90eea4827dd8c0a762ebb4f49ab2aee9e01a028e1",
           intel: "98954cd4910bcf9d846ba96f13b1a74ca43d43be42d7eba69462b6fbf6534385"
    "mr"
  end
  language "my" do
    sha256 arm:   "c62124c1a0042ebea14ba37e7a93abcacd608fe0f0a53fdfa7ef192b726ed426",
           intel: "0e9bfa0d89745035fa0f22756b6bc1aca522ab1d05bf89f7749e24ab032c82bb"
    "my"
  end
  language "nb" do
    sha256 arm:   "1e746e481075c67ad8a88ac23510f1d6e05381b5e3d24421b4600add016e148b",
           intel: "9a0d056c6947f7ba1a012eaab95f8ec20d71ab2ded2f247c69070ec620411a28"
    "nb"
  end
  language "ne" do
    sha256 arm:   "02c148bbb6b15d8759b29ae947c5c7b20a63cb6e51e13ac7ee360ab8ecd0280d",
           intel: "a7b187d6c241b722bcea4f845c4b4a4ea7514b388826b07ff77f5416a500f74a"
    "ne"
  end
  language "nl" do
    sha256 arm:   "f63b0caa704dced846dab45ecfcbc4099fa6689e327c3e0e11514bfca9de07a7",
           intel: "f6bbdc76b1489d035f67418ea744b9379c189e695bf4be6bcf3b3033e6c36b7b"
    "nl"
  end
  language "nn" do
    sha256 arm:   "d33fbb6b32e9506a6b7ac7611e8f3c565599c982bee9209acb78d806d4ccb9ca",
           intel: "8154f0167c1ae607a2e24e5b3dfd752f786f21f9e56afe29f9237b75d4f10c70"
    "nn"
  end
  language "nr" do
    sha256 arm:   "f02156934d8b5ecde1959781426b8ff8665e8b462aebe34c14e0815edf588f37",
           intel: "5a26865a8e0c4d852fb240f5e1a1586e803265219d243630211b202612614c0b"
    "nr"
  end
  language "oc" do
    sha256 arm:   "bb6c4cc29cce586d31aa91a1db56fb1d210450ea770e3c1ecbf556de55341cc1",
           intel: "236e145df9481819e942760fcecc88fa57a6e7b6f15cda41698c7aa27432ca4e"
    "oc"
  end
  language "om" do
    sha256 arm:   "4663936d546a2394c27b6b5864ed14552492084b873bd5cfff7b14681bb3be11",
           intel: "e23fb3b416344593b7300e157c723b3386ef9b2a3b690ec16fb805a1a5ecfccd"
    "om"
  end
  language "or" do
    sha256 arm:   "cbf36c270c460fafb6b1a37085c47aeb29a31d61f5fa7891c5428a086cc062f2",
           intel: "9b4568b852538c0368cfc972d38874a636a4ce00bf7920e3468c960a17cc7ae7"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "288cadc6ddd404ddd4cd2998dcbcf129d9686df468fb8080c5536a66f32fd291",
           intel: "bc808243d22c4f7ccf0d86a7d3d91e50cd2042b22cb7758ebe90e7b5413a1aa7"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "e3157877b96b6f0ecc7da3f20cfa4b68d98532aa3c9ee7415460bf6cc097edcc",
           intel: "e790f3b398e8ccfdde834112ffc48a10aaf2bb2f32429f6cd6a517a719521b3c"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "3a3e91815f065a98d2aec20aec2596958627b0b58760f6c52c6ba06d8cffdee2",
           intel: "2a8802f3690e4af781ac79e17af5645f0c46c3de7917711afd51f2cbf2ff7fcd"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "9a4e9f9b5866021657f2d3c3132f0e3e913f169b801c310042c6cb1667992784",
           intel: "d8339b291b04f78e4bf59648e0a8fca1d543574697b9ff7bce715f3606dd2339"
    "pt"
  end
  language "ro" do
    sha256 arm:   "146d001858ec3ce549edebfddab93f147a9f0e684622aeff240cf76f88c31a8b",
           intel: "591725ea6de4947a82c4e5d22b91c8d4ca55b6dcf53fd18ff4514af6f53ba2c5"
    "ro"
  end
  language "ru" do
    sha256 arm:   "c09eccff0bb3eab634c032772d51c1259b5b8496cff8f2e7d03d4a18b47bcb2b",
           intel: "c64f893f72be5a3325ff639a6eedc46477e495dcd195373493ace75de3e9719b"
    "ru"
  end
  language "rw" do
    sha256 arm:   "4add6011a1d8e488e5a27a73c2b4c7d462f182188c4ac6c82ab9ecf3871105dd",
           intel: "60ad8c652d5e20910e808c2df214e6a7aac7f039eb339dc9664e361e19867d1e"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "cbb2aea8907a2eba4b13ffc2f672affd701d33692aca33c43310e1900c1e60d3",
           intel: "07869324976b8c655c7a837dde81fb96d8848f065755c79598782c5913333680"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "55913ea92378028344a7b8687e8210719acef28cbc49e8c896702414a0267899",
           intel: "8780d4281517dce2d0d6a3a7faf82fb070882f2cefb3f1acf7b6e1a295ef399d"
    "sd"
  end
  language "si" do
    sha256 arm:   "2b8097ce3b6bdb3d7da144730a805f96aab7a0b45c2194c583624432acbcd13e",
           intel: "1bdea8b27ec82490c46431d95b6175f264a667dcbca7ab79f5b9ff413dd35e89"
    "si"
  end
  language "sk" do
    sha256 arm:   "9436d7be73a8be45d34f841042d171cf1538f5d7e5b1a6c7005be609fa20e695",
           intel: "5a9049a747709014479f579ca07799e346b84757b3b0c7e12ac266327f08fca8"
    "sk"
  end
  language "sl" do
    sha256 arm:   "c46d7c87bc5edf1f6d020d5995ad46de5e66a81a8d3e4e6d48f80a394512eb85",
           intel: "7397f28cd96523549affe7b940dbc497752915b784b81a4ba9674a375439ec5e"
    "sl"
  end
  language "sq" do
    sha256 arm:   "0b85a92283bf344153883ef9c4c1703e3c0c21a1de09907647c14a2687a072e2",
           intel: "69a094290e40a2d3467706e2521856e15fcfeea999592c15bd228519896f2442"
    "sq"
  end
  language "sr" do
    sha256 arm:   "edd811a02952221268a64a89fd721b0d2f99586b066c0646f50b8f5c2ac16c6b",
           intel: "db7f4eb09c53cf9a172116cbddd5664997f7034d9a4deedc3dc8584e16a263ce"
    "sr"
  end
  language "ss" do
    sha256 arm:   "c19624a86983ab5dc17f389a3d85e8b367fd8c6ba680dd22189b5ccb26667939",
           intel: "0daca137db4b3dbcdca2864ea7c33e9a7b958412283e9cc12b1cf21740e79a51"
    "ss"
  end
  language "st" do
    sha256 arm:   "f8cf2afe53a3ee09ea9d4edd705c2bbbf470693fd6b02f6f78aff54cc35ef0d4",
           intel: "4e10f10dc956b04aeaecf18dd87c040ea32ec82a00e5efab7ab44b2ecd907dcf"
    "st"
  end
  language "sv" do
    sha256 arm:   "9a4793c7102ff9eb7d978e3e3e2cf057f5b48ff5e57b749749a6d24872a8a94b",
           intel: "c73d270d11d816e89f70a3a48d5d1a9f1e7a8d7cc86fa7b336f38d4a61a51130"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "6e85de298cef856e4fc210a8bbf46f824358b4914b93b4c0c64336dae7c0d27b",
           intel: "539ea94dd72c2dd2e2a507a52b5b35d2248dd82176c68063f82905cd23f15110"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "53976a06ac2f9e7bfde918c47d5678556d071fd7bdf0725f86dfe0ca791eeec0",
           intel: "749c3b330914bbeac66d5d99f7357cab2d5e3e4aa1c14ab66baf41fb745c9e68"
    "ta"
  end
  language "te" do
    sha256 arm:   "2cfa51c24faa0ad0248846dfd054522ea18cfc602fd9c720436edb7e65fafaf4",
           intel: "5c92e2d8c9c4e8a214d90cd3b189a828856ca7afa6bcd4dd84cdaf764135de4a"
    "te"
  end
  language "tg" do
    sha256 arm:   "d3a15d67c030aad20877855307c54484b5005d9bf6d096aa362e1d7a4349833b",
           intel: "c2cbacb9a27482d6417c63435c1e6971346541a7b677c87e6df34fe572f98437"
    "tg"
  end
  language "th" do
    sha256 arm:   "b289f479a93f47a6741a13ab06ee20c6aa70caa645d5f8e9cbd0ea1c7eb40e25",
           intel: "0b798ec8fe4ca866f172af0367b091c0ee1f5c3b6b9a2767597b533ab5cd9025"
    "th"
  end
  language "tn" do
    sha256 arm:   "aa16ed671ddbae452069d891eecf964cfde8fbb08942a2aeb7d660a4db1a2a12",
           intel: "1784cb4bdf5c9d295634f7f75b7464df6a88757b0a812f44d3093d5d5024d58d"
    "tn"
  end
  language "tr" do
    sha256 arm:   "d739abc931e755eab200f9b1c69e8ed335871df643d17e025114cd07c520a22e",
           intel: "4f54e5478667b55f10df41978b48af9d09622acf3806afa60ee94e59c31e14c9"
    "tr"
  end
  language "ts" do
    sha256 arm:   "0c075329a807182514f880f9cd11f04a95fc5c4eed6b05c3259425fc3c8372d0",
           intel: "b834e76aee4ddfa58cc4ba1898f96758919a9ba8ce0b5da41126b246ac61374e"
    "ts"
  end
  language "tt" do
    sha256 arm:   "e8131e898c8d774def11de39faa01f1d421f4b482d2aa12eee19625cd1b82bb4",
           intel: "62856ad96847ccb54259f2a09440594858e02b297ebdf511e72fce6894307d70"
    "tt"
  end
  language "ug" do
    sha256 arm:   "f3848d7bb9c5146a598fdce677ee5957dce879ecb1ac2e35ec4b18d0c922dd85",
           intel: "3b8ae8c7da3b9d25d8f191d1288580e45868dc845140e1c66b40f6ff62133fb0"
    "ug"
  end
  language "uk" do
    sha256 arm:   "431eb36ac6fea8b6848e7881f89a80b0d2447959e171cee14ae30d40fce69896",
           intel: "d61c5ec20a1702c30d6004ae59f7367cae43662701c3e94607533e13a096b8e0"
    "uk"
  end
  language "uz" do
    sha256 arm:   "24328b78f026d37218d995bb673d9f2d7bbcf853cadee63b5c4b21526eb80961",
           intel: "7e91a41a760dcf4b69ab18f989cb624c565cbbba87e3c4e7e43c3649cfd938e0"
    "uz"
  end
  language "ve" do
    sha256 arm:   "2fd398e320b3ea336f9078bf5f831c529248d007744025441e839fbac6307ebe",
           intel: "f38fffbff436ae5c7c07335bbabff794f49691b30db0c9335a14d1e3bd78472e"
    "ve"
  end
  language "vi" do
    sha256 arm:   "22b867f29abbecdcb855a5d2934e3748ca0c89740d5ef382bcf8432cfa8c971d",
           intel: "8a93e47bd0a89c86d87427088e28f7d6efe16c35a6e3f6d378ae22e90c777861"
    "vi"
  end
  language "xh" do
    sha256 arm:   "e3b6e593b9964f9f8f1dc5cb9c75aab5454306aed16fcc29633492b02db22f35",
           intel: "3f7061c1ab8bece51a0092ab98f348a355d1fcc93edead536740706009668512"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "f53702f0ad7d40c8106092ae071a5bec2c0040acdee320b811f7be29d5b50ce5",
           intel: "0289b15548040765ce4d18dbd52fc34835ad79fb897facdfb3689a4c9ac4f8b4"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "2dd1a4681945a810c8c69116bf952f144db1508af9af1d24b7f5f6d34f1a4b17",
           intel: "90346a902e758673aff4395704d339472dab5d482463d24f7b7f2a2cc1f62adc"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "32bd9adfb22265872e778124d01563665e4261051733bb2b2619b4574b86ce8c",
           intel: "c2b96a170f11f05d9bd3408867d3b9e3046bcb28672c6978123e27295b5f8adb"
    "zu"
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    cask "libreoffice"
  end

  depends_on :macos
  depends_on cask: "libreoffice"

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
  uninstall delete: [
    "#{staged_path}/#{token}",
    "#{staged_path}/SilentInstall.sh",
  ]

  # No zap stanza required

  caveats <<~EOS
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
