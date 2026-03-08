cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.2.1"

  language "af" do
    sha256 arm:   "4f885baed459dfc91630b7964bfc1710cc156ca1a83d6caa24775a822f24dc95",
           intel: "a1ef651d55900f8a5243b15bd484a92b1e93fd0bbb2052a5a54cacd6c7d78951"
    "af"
  end
  language "am" do
    sha256 arm:   "6b81ab693626b9e4c2a51c2025d53e9356b290f8ab8e11b353e514615be313d4",
           intel: "17eb4113d8e24d534588304aee2ff2186b709308fcda66ba1bb80e205c57e18a"
    "am"
  end
  language "ar" do
    sha256 arm:   "01e43167a27138b59b45714e18dde29d1efd5fbf74f8c51dffeb66063dd0a747",
           intel: "cecea3008c476a8fef421cf59be5276ea496cb79fc93c5558bceb58676551f6b"
    "ar"
  end
  language "as" do
    sha256 arm:   "dd9b6e8b0977e064f3e6335336489ea13fdc04e900af86ef4bede67127d43605",
           intel: "71d8dc108af8fe0d670ed5bfff100e1ee5d60ca47dd13b16d89ee555ccc114a7"
    "as"
  end
  language "be" do
    sha256 arm:   "e19dd840062edf57721e61b9d210cfbb29eaa37285b53cfeabd6f9c72318a58b",
           intel: "95a01270ecb791251fe305338254bff7eac5f4b442a7086f243ec6cd1fb90d60"
    "be"
  end
  language "bg" do
    sha256 arm:   "f178b6b781ddcab43db1192e29ad31a1cc2bbf9b7f9932585ad11159e17b6214",
           intel: "50a667bdab0533ba3fbb4e359396eaacbd6af81bcc1e16217d1ce702b1ffa434"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "6b7eedd9df201945c7f3f16d09c9cfa11e1e65c7bbe146ab265e1e5a0d4ca21c",
           intel: "8bdf72c3eed9103fed22229c7befbbc36cc1b83628d912489e2e445950666b58"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "f90b239757847b7ff589609b0e3018bcecefb3d978957b11f253b893daf7014e",
           intel: "a14abab52ae72c24cd7e20ce44b925f3571482df5e46589ac5d49d9c36414dff"
    "bn"
  end
  language "bo" do
    sha256 arm:   "1db446adf908fd4570b6276e4e927291a4900e470f9300629e5949d53b8cdb7e",
           intel: "809d8fa33bafcfcd5c8ee277462bf22eb5a2031416256e3ad35f723cb9787892"
    "bo"
  end
  language "br" do
    sha256 arm:   "74ed8d2b713682dd324718f0e278c5fb65ae4ba34fe0c78c1cc674d81b216729",
           intel: "1ca80e739e1fb756463ca8c320370415ae6810007325221283af6bb8dbd70d64"
    "br"
  end
  language "bs" do
    sha256 arm:   "75ca4d21dc3bb9db0485c7830993a9158c02a584195ba1aad22d3733f36cbc21",
           intel: "59d12b234667945e6bcc384768de12c76708f6115f1f96638df90555f082a0dc"
    "bs"
  end
  language "ca" do
    sha256 arm:   "c1f62bbb9602b6dac9e0995a30fe99271c8eefe6dea56a5d44b940c1417ffe35",
           intel: "b1119c8fd9e7d68d3f3636561135eb52da579c306c8b84acd8a3f9b3a8bc3b20"
    "ca"
  end
  language "cs" do
    sha256 arm:   "dc7cc931db63ec3208c7bf22ee627e2b93548cfd1ef57b50e7eefc2b63401866",
           intel: "7fe8cad951f5ae5e5c36c22373c5d335c420e92d456fb407aa487360f00e8464"
    "cs"
  end
  language "cy" do
    sha256 arm:   "d6d6605dbcf99f06f65a336b3951e2fff9ddb76afa190620fcc0ee63c16fee5e",
           intel: "b311942f7b34ac954d416f2abdef98ed1419a6b59a364018b0b34394e9c38fc4"
    "cy"
  end
  language "da" do
    sha256 arm:   "b5b17484915b53f8cdba1ca17a228fc945031eb142feb6bfc70d30a79a10bc99",
           intel: "6a653cd1968172673ed341b6442258df5d4c37694d37cbd2ddf0cb4f3b3ddb79"
    "da"
  end
  language "de" do
    sha256 arm:   "86ad252ed94fcbe53112d36f8c146ac68b9350c8a7737e7b04c8156c79c83c20",
           intel: "0b45d33b4f45b8e13080069ec9a757d64e573ec7f136fec09f0f776cd599b6ec"
    "de"
  end
  language "dz" do
    sha256 arm:   "0f0e6f9cec14f24dd2c4df182ac127ca0dff28d0d81b1600eb0c11454ee9bf9f",
           intel: "8c62a058944d231ab4ff7a1d5e118ba4cf18b376d3e8ea6a88fad9763e1c1548"
    "dz"
  end
  language "el" do
    sha256 arm:   "9c139e395d4408bbc4f4acc0c7002c4c699cb068d2832701338de00558df6cd6",
           intel: "75f4cb0d6afea943cad75bf76482ee7adc0ed2a5ffcba38df2ddfa6bac1db0e8"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "710b407975995d5eabbeb988ad17914c0f8776d73db5588df789867f1d2c42aa",
           intel: "ed94fc1dd3c8c2ae5d6e6b406290017e0be623579b21eea3ce8e6df66aa8f699"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "62a4214bb0debefd08d8c4ed89c073982e38606081fcbd458dbc7c4e22d9876b",
           intel: "807beec2f5c1a0e746454f0ce87ffe90ff458c32ca4726c0175530ccbd2a9bc6"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "2a681ee9c1f3cdc2da714f9c25eca75f55392f4b2f8886d6e61db90ce5f0740c",
           intel: "1d2450e989ac2f317c330cc866361cda73898624924b23d61b30ea930beca0c3"
    "eo"
  end
  language "es" do
    sha256 arm:   "3db0f47fc0eece35d44d35fc21670a60b81b53d8b21f32df5298a0bb9e6ceb42",
           intel: "e288452419a8cf0281425ec260a4c57c5a9d06c1c7cdc582991d6d5b46761b9a"
    "es"
  end
  language "et" do
    sha256 arm:   "d1d1f591f438b35c598340698328d51622054d4179f3cf37d61879f16a6df61b",
           intel: "6d78c5c40ebdae271c8ef70dba3bd5cf26debfe6da63cc81732451d0e2521e7b"
    "et"
  end
  language "eu" do
    sha256 arm:   "6f351b69a6f186ae47172acfbb2f4b18f4574f308f3f747fee2864444068dc85",
           intel: "ae2fc929b375c619b728920c5cffe0fb59640252799871408204e65bcc40da49"
    "eu"
  end
  language "fa" do
    sha256 arm:   "df7f7872e058a01e820ad016d390ff85dbcff11cb223a4c08d53b1a6a1915206",
           intel: "4a15e0896ce98e808b465454a0e9eb09ac2726b333e1e53a9a1459e8836a6cb6"
    "fa"
  end
  language "fi" do
    sha256 arm:   "8bb15d5364c661f0ec0646260b47718fadb1984ceabfd99cd6171cdaf77a3789",
           intel: "9adaa7aae6996494ca0e596d981842df268a0550f81d8eec02d6ac3e47f32ee3"
    "fi"
  end
  language "fr" do
    sha256 arm:   "7579a9e98e9bbee0303a5c93c60636d651fa3cc5ef23167176e1d6763f23d79a",
           intel: "ef91beaaf797726843d3617f5d00e9983b461b13e9a7b8171101d56d18901fab"
    "fr"
  end
  language "fy" do
    sha256 arm:   "a0377bb05f5a819e681aa26ed81c122368e1359da489bb15412c18a4e69fde8c",
           intel: "7db90f9b70af6346f0f8852451ba2b1deb18d6630876c61841a1b4e8f7525923"
    "fy"
  end
  language "ga" do
    sha256 arm:   "064996614cc8f4395b231f8f6b8c74e8dfc6180b85d7c130a3b924c2b564cf4c",
           intel: "f6c86ac0af24be667e755f0a47446c5bdf6be5ec099dfd5a01c3ad5ee17c7a83"
    "ga"
  end
  language "gd" do
    sha256 arm:   "cafd37b89952f6d81cddfcc586fdc5eabb51e262650ead167c58accb676f1386",
           intel: "3191afda3ac6ae13f729d143439cebd7260d42ce7adb65815f26e3fdb62cd067"
    "gd"
  end
  language "gl" do
    sha256 arm:   "26263a28a74a62c811e65ebfc00447f9eb2d126e0081cf50fe4ed5c14486f196",
           intel: "b505680cef54fefaf41b7f4aa352a775396701c7a23ce3df32080243d1c5c76c"
    "gl"
  end
  language "gu" do
    sha256 arm:   "36a4486e3576774cfd02526c709a515ac9e6b70ba6e9602280ebf8b5da4180a5",
           intel: "551a8db06acb9cf51bded4e2a0d666699d4f075e52a1ee36d8307e7255df76bc"
    "gu"
  end
  language "he" do
    sha256 arm:   "f06dfc82a96c26fc58b89a55b94bbcf8ae14c185d0f21c6bfbf5ca1c723d978f",
           intel: "ca8312bd72cc500344167350d1f0d2a1b752e890565a99390b2dd1a2884805c4"
    "he"
  end
  language "hi" do
    sha256 arm:   "e0d4096e7a0a7514636270fccdc321eb57b6e7116617f6fd8f4dddaabe4119a2",
           intel: "aad66c8a89b4839e3152fb6e7f3a6b6051b05640eb5155f0e15839182ad825aa"
    "hi"
  end
  language "hr" do
    sha256 arm:   "35657b4209f74f9d4faad12263800ec72969e774e6505c69f3044ab8afe2892f",
           intel: "4b8e8d7b41cdc066ab37aff08d43e6542ca6094660e0bcf87656085aeb4ef30e"
    "hr"
  end
  language "hu" do
    sha256 arm:   "a25956b932cd910e7cc8804e89112fa99f369d1bb48020bcb7954216661e6020",
           intel: "84ace357d871b0d07176edda1efba418522c9a8d9f2de6f624dff7a1cd5cae6f"
    "hu"
  end
  language "id" do
    sha256 arm:   "274bcf3e184802b021ddab4b0bf7ce047862b3d70532636eb00eac35a2844ed7",
           intel: "44e5955ce7ee4211b1f08147cd4d8f367e2ed9b664349ec96480183eb26fbbe6"
    "id"
  end
  language "is" do
    sha256 arm:   "824c3fd343204af3ec12efa79ee884789c0eaa3287b27ca47996734cba5a761c",
           intel: "8dff08044865d49d0477d5cd63986ee759a44f50845bcccfbd6ae0f2a666714b"
    "is"
  end
  language "it" do
    sha256 arm:   "87f7b8dc8f0a46e8f5f3c20249b8326947814d71c23a6b7a9e777ad6ca5c0e79",
           intel: "2cb416d7495a437483ee97be824a7f34fea705bb37593b494153cab0864f2b32"
    "it"
  end
  language "ja" do
    sha256 arm:   "62e3cf6064267347abd06b746f53669faff1a073006a25b525e9ade4859506f5",
           intel: "087694ebc0bc19e127b713b37748f51078d199bb1bcbfe78c15321372073493d"
    "ja"
  end
  language "ka" do
    sha256 arm:   "11263ad448e7cba6c8ec9acaaefd3a2ec4075d47d2aaa5affb4a8095ec8e6baf",
           intel: "a8c6b927b2e4c711dadcc1f312c0b4fe0edbe24cf598764f0b34300954ae4a54"
    "ka"
  end
  language "kk" do
    sha256 arm:   "a1d188cf5450195d4df8ef3b1c7d2b8befe98946328f25c074ad0a9bda98f167",
           intel: "7e2299a8fa4c206add1e42ed5f3b29703754a98f3f12f74552a727d0217d151b"
    "kk"
  end
  language "km" do
    sha256 arm:   "9830b6810a2f419848981519bacf31b8f967b35cbd84a466bed5a85baf297a35",
           intel: "33db65691c9adc5693b62621cdaf5b2e04ce3abba102766146a0d20cf7263a9a"
    "km"
  end
  language "kn" do
    sha256 arm:   "b261a0dc639e458e43dcbc079a1cb8fae2c3d07f9b4e216610e17cf6de6279ba",
           intel: "9f6ae79d6b47105c215b45d504cb107d526de0b75853b46de580cb036fef39ec"
    "kn"
  end
  language "ko" do
    sha256 arm:   "bf525481d2b53695a12fee16ca398638020772f30e0dc8fe29b75475506629fe",
           intel: "2214f2b459a7a974042c5a34ded79d92db02f944735627e048c1297411adf01a"
    "ko"
  end
  language "ks" do
    sha256 arm:   "78ed592c584c67db69913f2778fef588c10335771fd1ffe30b7de6b15039f811",
           intel: "ea43961aba67ccd0f180a3004c1b09bff0024852d9a5392517657612ccc52e15"
    "ks"
  end
  language "lb" do
    sha256 arm:   "fc3536a7236ab5644dea226b68dd7d9a362038a31f3660b8cf3ae81fac5cef87",
           intel: "f1ec76a9d1c26fba6339c478fc3786b5775b7fc0ed65b7135eb941189368e5f2"
    "lb"
  end
  language "lo" do
    sha256 arm:   "3c22d160e51f626ebf943584abf57ad106d282e534ce03bfcbf23797c8800216",
           intel: "61455371b3244404f533bdf8d909b83ce89fb05b826812406022e4b0608da23e"
    "lo"
  end
  language "lt" do
    sha256 arm:   "71f5f8f9f2a83874d5f45c23ba1cccd9286303a483ec85933ee81ad8b819d6b1",
           intel: "8dd2e51e00242df3c18965ab2e6a135d5881dee608e20707409fdd27aa09cec5"
    "lt"
  end
  language "lv" do
    sha256 arm:   "e8c4275b955bf9f0fb80ed0898f72d375e8b305b2847adca9522daceb4467bdc",
           intel: "5b4a72c47d0a5981a56305dc231e75f4170aae551eb6e5ed60c6f3b4636cc7a5"
    "lv"
  end
  language "mk" do
    sha256 arm:   "90e80714a93f5de42654f0fdd049a6775ff6346d3465d4bfd0bf7d3c364e75a0",
           intel: "d6ff9b8376db6a4ab7e278d3e7effe3eec612069fd0a7afb78245d1c07744819"
    "mk"
  end
  language "ml" do
    sha256 arm:   "e5d9a444fe3efc205b188a9d888b2e0f9442edb058603b772d11707b1b708afb",
           intel: "dbe566a345ca2a5ab73f7c5ace40ebf24980ccd0687100c2df3d8bc1ff5d8260"
    "ml"
  end
  language "mn" do
    sha256 arm:   "175cbe25049c048ccdb352d0e47a04d7795e80c9df23dafa55ed0f356ff1dd94",
           intel: "9771840251ea321cb4d0b8c887084eb10dcf55de56577d6c851d024f695a0502"
    "mn"
  end
  language "mr" do
    sha256 arm:   "b13df0dec8d0003e8541e2bb929c0aeeefd5f8e970c8da2f04999524c23bb834",
           intel: "60ce8bf2007fa332daeeabbf9d4c165eb426ccc8b029f2170fe4c98687ae28ce"
    "mr"
  end
  language "my" do
    sha256 arm:   "d5a798ceb5e99b85c3bd79a34b3c03273e4a35cf5f4a9ad966e0140f6c68c0b5",
           intel: "84a5bff2af0308def1d23b1291bb3a20e4aa70a0fb143eb2af4912b3f879ea7d"
    "my"
  end
  language "nb" do
    sha256 arm:   "9c60f29fd5965a3039440bad758f76d41fc3e9e164eb2980c55d3b745f5ca8cc",
           intel: "81086970a83a7928333e087a22fd4f44dc95f5ff08f23b0d71e342a571198dc1"
    "nb"
  end
  language "ne" do
    sha256 arm:   "d5bdaaa977f595eeb4b60cec2efea91a855dfe0db921229636128f9ba91fee0a",
           intel: "8a0c39f81064133af5045a63c60b228b19f979f7a9c7e7ba94f19393081041f5"
    "ne"
  end
  language "nl" do
    sha256 arm:   "f725dffd39342719b67b76171e2b6054f6489a0873458f3097344e31e177415c",
           intel: "fdb2f24498163349f6762dc972fdc25d736aaf0e88b0f768f9dbff7882f8392e"
    "nl"
  end
  language "nn" do
    sha256 arm:   "2bf2265d024d3e8b593c19fe9f625cb7c6416c415a3c13bd61d08700abb40ea3",
           intel: "3e59a6e8ee8efc394b9e9026269c377798fbbb72967de66d7490f414f2174ee7"
    "nn"
  end
  language "nr" do
    sha256 arm:   "ce174794a9a218d6d40ce5d6e328e0a91f4e77e7b308d5bc82bc8dc355317a18",
           intel: "f1ab3b2a4115da609475f0eb295e38efe18508cb5aae044d9334900c565b9d9d"
    "nr"
  end
  language "oc" do
    sha256 arm:   "480d3dfb63e83211b24b1dce21326739994c1efad7362960f9188c32570877d8",
           intel: "f16f6d092ef46b345c6dfd76cb80dc127f0e39ddd7e5338d8e51fb22b8ac2811"
    "oc"
  end
  language "om" do
    sha256 arm:   "11f34c78037bb489fa31014b78fa2e012934270e74b9e2f764e742612c0f9261",
           intel: "09f91d2e18db44183ace2f691ebb2624313e44248a2db143953b7f5177a99434"
    "om"
  end
  language "or" do
    sha256 arm:   "75d71029706be430a79d25d52265ffdc6960bbeb48250e23adbf8776262ae6c7",
           intel: "c5ec099fe58398b33da69591a6fa845eeccbfdf0ea893222e5d7ca2403aaf7c2"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "5cfef5e9be956013761a629451ded8524ae25cfb7779a305245dd9fe22cece00",
           intel: "6ac6918931a97361641abd9cfb07b4e00ef5eff0fba7c55857eca67b4872a7c2"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "6a064d7e45489814c77a9018cd988e62d11818db8060ab7de5da838669fb16aa",
           intel: "d7293cee2ea3ddc8bbdb3d1f669d115adbf124c84f7015085ac38fcea63ca431"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "7c6671eb32a5d45fd66a9bf14a33de1f1eda3d4fc16cf074b0b7d83c6d24b4a4",
           intel: "4722b4eaaf46acb5b8233e5763f60a199ccb8fac882a660f8144a521d8d1568a"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "5b2fb67f2a9f784889eac9bff4be2cb979d61c5c2440602009f5de25cb17b5e6",
           intel: "83e46d576dbaa756d7b70227528cc5501c4cc239d3e3670a3201a460567662d4"
    "pt"
  end
  language "ro" do
    sha256 arm:   "6cbbf537d25d294b962381cdcca4617cbb770a2374704ae91fa1e18ddba4f071",
           intel: "e693c58a6de9b19a3462c12b1b5b7f2e7404991c20b144d7d9c7b55d44e5d688"
    "ro"
  end
  language "ru" do
    sha256 arm:   "6b378e4d3f495fbd86a0c232d70f168ee002cf66ded9d20d3cbdf43a38f79fe1",
           intel: "07cc82ab2fb44b7937319794fbbe8ee627a629cf3e24ddd5cf47b4cd27b19e0f"
    "ru"
  end
  language "rw" do
    sha256 arm:   "8e533878f0c93deb899619a4ac37f531e79bbe8a39a2a15cd7977e38b03f7a9d",
           intel: "dfe41edbe983445806aff571ae2bf700a3d0997327551d8f4a0708d857787f9a"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "18b180b8a8771925b7e36e00f0dd925f0b0081c06889237b30a77374a1596bc2",
           intel: "fd8ef8f806e5a1ccb710b725420b94cec34c68affeda61d53d8c849e5f02a67d"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "1be4d22f6f77dbc410affaabd9d5101437968bba2ac22c6fe4c4adab00e3bb40",
           intel: "3cd27adb9181aae30b4c2e869302d2add816034a8cbb740c16f2e81f82d0f775"
    "sd"
  end
  language "si" do
    sha256 arm:   "3f1899730498b2bff5f2ad4604d3a083d173f313a5a117a80e3b45edaa982cb4",
           intel: "5e95d7efd551bf78108dab06762e3af0a56338c346b59151bb65d60435e033b4"
    "si"
  end
  language "sk" do
    sha256 arm:   "c1a2e7a677296217187a59e63432cfdcb5dc752371f83238c67eb43fe42c2359",
           intel: "c9c2a5a0f9bd2a7dcbeed4c427d78536a590eab7b901c62c84c755befed8d98b"
    "sk"
  end
  language "sl" do
    sha256 arm:   "681821025868e170c2b136c4eb0e2d312a308fe4d3c1502b90d3f6cdb087dc68",
           intel: "78ddb8f6bbea7a76aac2b94b9da208e53b9b88d9c6f70abce7f675548fda2be4"
    "sl"
  end
  language "sq" do
    sha256 arm:   "5e88baf28cf39fce1fe9ec0e0df1d60c2ef21791872ba18ff9ed0b490575c666",
           intel: "383352503fd02fea24bac2c7ae071bb0412798305c4068b26b03852dcc5aa1db"
    "sq"
  end
  language "sr" do
    sha256 arm:   "995e89d96afa4cb89354d8258275880de12721bd7fa4cc29d3cfbe637d1fe1cc",
           intel: "fe8a0cfc9a29c3086150a7bd97e67ace6789592050e522ef55c09d7e78bbcac3"
    "sr"
  end
  language "ss" do
    sha256 arm:   "83ae7c2670a3458eee2a0330dc51dd9a4dc5c8e99bfe56df0dea4e7ef1c9a125",
           intel: "8b9dba8558b4748a2e481e1329dc2d76ae459d50b5b2f8ba3215bc1b56fc65e4"
    "ss"
  end
  language "st" do
    sha256 arm:   "5c516f16b5105e87bceabf9d45bdff7edb40fbb45a51257726e1ffdd667f5928",
           intel: "e35659efe8b9dc3e420a30c1797303a21070d8644fee34f8efbc6b02336f218c"
    "st"
  end
  language "sv" do
    sha256 arm:   "5e8ff1a8b67a49d5017ff3f4cd9bb9e0ca50ffc7f9d2110f42455a309e03bf20",
           intel: "ed1cc230173d600109770460e2755bd301c1027e3b1cf0bc9be140874357e23f"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "cfbc2907b5130543d53b7843cc5b241202437599004c563ffd2435d47d8dc6a5",
           intel: "d97c8e92bd873ce12eda4d390049ff030803f30a86a02213dea3828a6b49ac72"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "ae5a66feb6721c084a31db61f026a5f38cbe2b411655cac438cde27f699dd18b",
           intel: "e5b5fc09782806dd9b73fd81ed70f6da3c8d27c91f261a8324edb531b5e66840"
    "ta"
  end
  language "te" do
    sha256 arm:   "800eb06bfcbdcc52d63d272cb9eb4a8326a6b43b285d54511d4f52b44696004c",
           intel: "e667f22ded1f9148b300c40c11e26db60b7e0acb9e9d64b663927d3a0534bdea"
    "te"
  end
  language "tg" do
    sha256 arm:   "14ff14db2cb3230dd752bc8c5693bca2de80489cbd02e731899e7987d21a1761",
           intel: "54b66f71fcf3e03e7347624d351da3794877775de04b33f91d6d7bcee61f033b"
    "tg"
  end
  language "th" do
    sha256 arm:   "6fdf150b495ef41842b9fb3f39570d9b9d8eb00ab503bb65510f32efcaee8b04",
           intel: "6388261a1899c179d1d93b74fe73f6ed2ada03f163d31ca4ad5039a955d0ad58"
    "th"
  end
  language "tn" do
    sha256 arm:   "401e81dbfaf2406529727abc1f0f02271ea11d54683d64c805b3b98beda3d0b6",
           intel: "171d471fd5f8f08778cd12e91909072727bf0360d15bc87eb117136d890bcc95"
    "tn"
  end
  language "tr" do
    sha256 arm:   "4ce9cf63f545aa059350e85be725a55fe325f185bbac29d073eda60d88076ea3",
           intel: "ae35c12ca7616815ababd8d482261d06e544d14aaa346ee1c5731f4af37a7a76"
    "tr"
  end
  language "ts" do
    sha256 arm:   "8acc418980efad1a192f7a2a97b77d90195699b748128c7d4bcaf13efb0e07db",
           intel: "c255221610815a6540f645548f389025f319a5da8ed114fe05b9a7a2020d3c34"
    "ts"
  end
  language "tt" do
    sha256 arm:   "4be4f8d55c93ea844de01159a49040d48d622d5e1f42f386cedb98a646784dfa",
           intel: "1650f76f7418268e0dc54b25f201c5951a1ef089f805d03da573cf79d2f35423"
    "tt"
  end
  language "ug" do
    sha256 arm:   "ee3c3fa078842bcb34dc53d2bc7609b3133fade8368b7e2307ea1c2b58df9f4b",
           intel: "e3bb5285f6dff35edb2db04c3b1ac589e077c6ce8d3e6eb3042145a65e1d6056"
    "ug"
  end
  language "uk" do
    sha256 arm:   "8b14f8d1ab71a2464fe4149e6806f18ac5af73a69da5ab4c11a514654a77d757",
           intel: "42de3738c918a9a13e9c29947925dde709580a80168445dc267c18f0797de855"
    "uk"
  end
  language "uz" do
    sha256 arm:   "e91b014152527c18a455dcd8115d5e97ab213f9991e29e9d8ffaa83573672759",
           intel: "1eaf6d1a5322b9a468a080f93cc8f7a26fc9baa73820a09b252af3d8bcf01e89"
    "uz"
  end
  language "ve" do
    sha256 arm:   "2188bbb181e66b74defa12f210f1d7303be174aff7af18b91b95efcb28c365d5",
           intel: "40176de38a1c541baa2f88eef55e69d67d7ed3e4d54bff6169c44ea136d2a13c"
    "ve"
  end
  language "vi" do
    sha256 arm:   "1627ecc175b058a3d227b0c87b5637d8b701a7a1afb202a1be62cc90dd435905",
           intel: "9bdf928557e586623cb4ac1cea1a7c93537ecf33e2736b508a8b5ec68c0887fb"
    "vi"
  end
  language "xh" do
    sha256 arm:   "142babd09a445bd40f9624d0c1608cf0371ffecbc8781d9efd042458754dfb2d",
           intel: "8a6840015221c3009b6af634bd5d9bbbf45b20db9ff0a285fc67b6bba0fabe08"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "afbdc5059e22ce4d6a57d5ff64d581ce38d440b145609f042a289e2202f7d759",
           intel: "996fff8dee027b807b9e049fe9d235a7824d1be42ec9f1ca1692481b7d4052bf"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "0f5c160db645b4c9eb3cd59cf9df017405a5aa309cf18cb9a6eb49fc9c5bedbe",
           intel: "514fb58b754b661da9b5ac480cf4b84de8a828aa8a5b51475e95c0b4e2da4df5"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "80a23375519dbf24d2400661e234e7b760ce50af2a8230e0da7e026c62274533",
           intel: "3d107927df057dfd7eb8de58b4a9bed0882b4f0426fc07798a3330ed9e32806c"
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
