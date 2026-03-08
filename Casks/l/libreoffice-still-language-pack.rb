cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.8.5"

  language "af" do
    sha256 arm:   "1dbf2413eb9458b3f1cbcae5b70b132d539630e97f98ee2f634c463198d03668",
           intel: "f47c9073f3e7a430118efb2f8fcb8a5146544b4a701ec170e35390afe3fc3d7c"
    "af"
  end
  language "am" do
    sha256 arm:   "95a20ba044cde54fc7a0467e6b1854f0f801bc1496d1cb0232c8ed3bfa119315",
           intel: "b5f86304b4ca8a148536df8b021b7cc3bb404e3c449f36a8763edbc560c0e3da"
    "am"
  end
  language "ar" do
    sha256 arm:   "30d73c1bbd9c96e80af82b3b97704d53c6958ea1c798e2e3a9d97881cb98b712",
           intel: "52213d4a3d98393d6e5bc8ed5134416828e750fa0794dc3c4b92c703c8239ea7"
    "ar"
  end
  language "as" do
    sha256 arm:   "9768e7028dd9129e3ceae385f237460eec8167c720ec9f6a1277be40896b9812",
           intel: "b96aafcf0e061b6a79517ae42f809126a1d8c937dc78d7c9f2ac589dd98c5439"
    "as"
  end
  language "be" do
    sha256 arm:   "c3130c39fe1e10af7536ceb6542d9ba3f26273f123f1ee6e73a316fad7c19059",
           intel: "10a77af046617d540b043363de62112422695579c3f938affd5a4e342ddb9dd2"
    "be"
  end
  language "bg" do
    sha256 arm:   "905b8228cd368dd9b2443b233bd8b68c973b9db55b2788250d4751a0b7844baa",
           intel: "9a76d4e766179b3e7f27d3b3a25748e6cc623af44fa17bfef6fd0baae0a53b60"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "6954b193b920c173bdd78b64303ba0250fce13f8e7e5179792332a8d683f8e77",
           intel: "5b32d27cacbca5e862bc20a80c24cc1794e973ec4d53f67aeb67d4106439beef"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "99d34fce086f9152b02c847afec591d22d55018d6413221c7d8eeee17b7e5e80",
           intel: "54bb0c07d373b0432ecc1627ba7e5caf0a44648c8923bef3ed8a74e213fecd25"
    "bn"
  end
  language "bo" do
    sha256 arm:   "f015d44d9c4e600118977eff6af1948a823e1185fc80eb796efc3cf8b6b32f43",
           intel: "b30e106adcddab9a09e85ab2a130148a737d38816ca2b439575710ef5624ef78"
    "bo"
  end
  language "br" do
    sha256 arm:   "f2ab7bc7b56e32d46a29c7ce7d548c57dbd9c6f65932793498338d3a7a5f5d10",
           intel: "5bd92f1426d44ee0d64869e97df16f06de04daa2bcc57564b125c7a6003b0a52"
    "br"
  end
  language "bs" do
    sha256 arm:   "ad69ff3c643d9eee7b85303dcfb3b4b89e715a8fc3605da38baedb858a0afa71",
           intel: "adf0a3aad045ad57fb15c6d68c29a60e01d959680486266b749746f9b84e5e31"
    "bs"
  end
  language "ca" do
    sha256 arm:   "2a4f4d5e391728b562d9e4379ac552016d0bcf0d99bc5f40207b016351dfb87e",
           intel: "91d2f6f1b4fb8e8af868b593c0e73ffd552a922141c7de649028ef76afe07840"
    "ca"
  end
  language "cs" do
    sha256 arm:   "b7ac61be4e2181eb36bdb88c5c86adca6b5465353e5f84fe055d24d558f24c55",
           intel: "59bfb9236d6aeda20b07aa95d0758426a6339e9af9a104b083984fbc23cd4969"
    "cs"
  end
  language "cy" do
    sha256 arm:   "a58c612b64989c369a4454acc9eff139938ae8cbfcb7851852a56f38f2b22741",
           intel: "72409953d61548e77c050563aee2fd62613f3d4f2cc2a8b45ca07aa554f19802"
    "cy"
  end
  language "da" do
    sha256 arm:   "2585f282c3b94e22a560201691aa2ac6b416384c91837a92afd305635821dfb7",
           intel: "fa5eb38e88c9a68fe3b49c538f4b5dcb90b7f510f2d291d72d2a298df7466760"
    "da"
  end
  language "de" do
    sha256 arm:   "7cc0f020dcf036628c708393eb51b11e01e07e3b9a27539892f4fdb5426f5317",
           intel: "8355904588db89852d6c03b8bdcdad162542f8364f5d757fb95ccb86b4677cec"
    "de"
  end
  language "dz" do
    sha256 arm:   "248dec57ab89a1832480717e30cc238217a25b0e6ec75dadc3aae4bef3e9326a",
           intel: "0d968be7b94f8c81bf25119809e33de27f15dd2d9182251d04c628608487c547"
    "dz"
  end
  language "el" do
    sha256 arm:   "eedd1d19dd6e901cf71af7e24a86fba6ae6a0a33a4bf0c610fc1b3b71d08e3b0",
           intel: "bed19adc6ab0c8577815ab84bfb5d9acc6f62f06c3d23141ec436396e25a4e53"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "d014f542e23084ac0577b80ef3d7729e525238895c9f351fa48a354f3bc9ef24",
           intel: "04a102983dc554c9c42a8c2e23255713a4dd030b6c0463e1fbabb8e1d4648969"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "2d7db9b36a4b7a673b8cde7cee577533d095d2ed8acf38fccb418300b315c8e9",
           intel: "6408ee3244b11c675890a00e2074dfd9ba4897e56e62f416999c02fa38a60f21"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "aee597a6cf25a655faae5faf2e96ea130a3ad4a43ec0f8bd358450caa68756b1",
           intel: "50e5e9d6134112e4845a77c99b80a1a5df14f4ce0a0d41fae6409035b7df1e21"
    "eo"
  end
  language "es" do
    sha256 arm:   "827914fbea3d0e34daeaa4340eeb5b57c6e95d7ce6c24d5afd24f7b02f35b010",
           intel: "ce5c2488155608e761fc57c36199003b29a613adcf428fccb24a2583170690b5"
    "es"
  end
  language "et" do
    sha256 arm:   "82967e2724b1076ab44dc2f2a251ba2c5f3aa3c322ef793290ceb53aa238f9ea",
           intel: "24eff459cfc7f71bc74cde9911a7c43b0da2da86c26b7c8a399d504d6125a2f2"
    "et"
  end
  language "eu" do
    sha256 arm:   "c1556fb537933ef460932bd9af24c8e1fd1832bcfaab48a6cb73a70455cca433",
           intel: "e90cfe9939d3e5ea4746558aaa623cebb5c95864664ee3e946ab85eb1fca9709"
    "eu"
  end
  language "fa" do
    sha256 arm:   "3c585678a70a545d33ab48ae0e2c99e2628ad6c5e6f762c272ce7f157dfd061b",
           intel: "c8c19c3a19544e33313057ec57d27a911dd723d8a1b1dc9a3f6cbba0cfe9d308"
    "fa"
  end
  language "fi" do
    sha256 arm:   "fb76bc433da576048fb3d0e8b95036f1e63ec4ba7448da973b022b40e6c3c5a6",
           intel: "c36b6e47f840659f594e5ee35a2bdac0b3d3282f067bb1ee893265b8afebb284"
    "fi"
  end
  language "fr" do
    sha256 arm:   "717a5fe44303a7841f14b028f63ee9bd9569f9c403fc07c2426e1c5207c702fc",
           intel: "5d95877ddb6615bf992c1630b717620f3a77817617b6bd7b3305d0c4e16cfd58"
    "fr"
  end
  language "fy" do
    sha256 arm:   "bb085e2d69887d17a6e46837c6cdcb9e860e8140a6dc71b92a2f3930738ad0aa",
           intel: "fdf6832ce648e18902a20eee8ae91afc4367e02b4653856b15719af78c54eb7f"
    "fy"
  end
  language "ga" do
    sha256 arm:   "21393bac6ef5f4cdaa6bbd17e0c69c72b0f2d2e0e8f4c75b569722b98c1147ae",
           intel: "6e70f6bf72145ba75dc78cf0aab52e667e77efa278951216cc311919fcf640e5"
    "ga"
  end
  language "gd" do
    sha256 arm:   "2f07b10bcc16770818d98b4ac1f85568571ab96545d3eb8351c483558decb128",
           intel: "981d19d95604289d1eb36620fc784c402b47d0921dd528b105fbcc5f4af4017a"
    "gd"
  end
  language "gl" do
    sha256 arm:   "80cce97405c8a8460d7cb2619ea7f3e9916d46d8db3485edaca38e133f83fd84",
           intel: "b6508fc120c1c3c9ecbc6367e6e52bcc78e620b2b3dbf7ddd54fb95dbe6b4357"
    "gl"
  end
  language "gu" do
    sha256 arm:   "0cb50546fb480538a1266022553df58c0032e7b4d4261790ae2ee76bc786ccae",
           intel: "bb4577350cc096641d8f2b371c25322bd410f1b1d2496847a98dda650c62a3fb"
    "gu"
  end
  language "he" do
    sha256 arm:   "2b9fa5565fbef275e473861b8d2d9bab67f5387fbac62713f98a1bb404e1f783",
           intel: "d87933657cbbb4fd34bab283c59892e30b22016044adf5677fdf6a9daf0696be"
    "he"
  end
  language "hi" do
    sha256 arm:   "aa05e62108ba72dccff3736cb2f8a1afa9734ec2b653579acca92b6a456fc0c0",
           intel: "7f14e9c84033b27c87a1da9902cbbbbab95eb5bcf7c98388da839efd45346413"
    "hi"
  end
  language "hr" do
    sha256 arm:   "e4c97928496a7a2559b98f9e6398345807336f96ed736f05b5d0a0dd98817d87",
           intel: "eb4b266d2bba90c16c78be38467aab113b8290a0f67b77fd85b8e48b818ad668"
    "hr"
  end
  language "hu" do
    sha256 arm:   "fe288b03b69540bdc98d1b7be759c63c534d297c6c63912a60335f8da708d975",
           intel: "c526aab6135a69de50d2956784a0ba2b0d676404dc5133f12fb850c2a0111db4"
    "hu"
  end
  language "id" do
    sha256 arm:   "9a7a3a6a56080975592cac75019acfb329de81092e937dee5a363dcd0bfd084c",
           intel: "3b82a23f3e19f5729d8259eb1d956bbe76f392fa64c06deff7ea962b2a87d824"
    "id"
  end
  language "is" do
    sha256 arm:   "fdd42b5708fb14ed0ba30f73f4bb48eb2ccb4423eb26a2e175e556f57389334f",
           intel: "12650ac1575ea4f5d70edeccab7f4e54d028278cfc1c94c1deeb5d12222419fd"
    "is"
  end
  language "it" do
    sha256 arm:   "57cefd76af753d1651dba8511ef288726dfcd13f4dc1610b3c747a8f9b78f2a1",
           intel: "dd1f1cc322dea18775364e6f4861f0f7664ace61f55fb6fd8872a0a8167f44eb"
    "it"
  end
  language "ja" do
    sha256 arm:   "7ea613c4f0f1c5a862d80ca3c830106eef8a945f990fe630b35f8b77b0789e5b",
           intel: "a157925933dd3fe2cc5bb66ba13160a114d4317565d6d6aba57f3f4ca688fb55"
    "ja"
  end
  language "ka" do
    sha256 arm:   "6c34307d5f8fa7c155353ceeb788b2eb6eb44dcd07197cc4420f8e1e71c8cc13",
           intel: "79153693e8e66d9707dcd31bace9c9d11248c1f4890498b985efdd30d5f553e6"
    "ka"
  end
  language "kk" do
    sha256 arm:   "5ecf9ec566cc3d0863f807637ad2dbdb00a4a896744cfd304a8fb29a5190ec8d",
           intel: "d093f756c0c8f7af8b14540287abbcbc0c4413e2c628cb074451cd39060f195a"
    "kk"
  end
  language "km" do
    sha256 arm:   "e0eb3f6de50ac571db1283d12fdfe17659ab786548d763451308855fc883cedf",
           intel: "8f7b6aa049c250c9347073578826d50a26be17a8a5d0b6a87d2ab4e1cc14a5a2"
    "km"
  end
  language "kn" do
    sha256 arm:   "dd94e1aa9b03ee4d3078d70b06cc9b4d790d0dc6684c41925756b722450e9b5a",
           intel: "5190e83d3288e6efb17c415bb0f85aacc4376ec96a4b6eeddc10d545530f9db7"
    "kn"
  end
  language "ko" do
    sha256 arm:   "ff7711489d33aad7d1638d2b7cf19798638eccd7a868b28b8a52f12dfd1f3b5e",
           intel: "706c56eba388c7927c3a5c67af4d4c2a24d6ad9048534abe858fb5313d74e2db"
    "ko"
  end
  language "ks" do
    sha256 arm:   "4a967c2c7e7e1fffd079f3e398bfb66b0d3c53f6690b2c1f613e12eef30abff1",
           intel: "f8ed8833a8bd004fa56bb3a22d70786a891044e01a0fea27d666558acd8f8811"
    "ks"
  end
  language "lb" do
    sha256 arm:   "e095638e66108f87e21c8b239c1079092c529a57b646492bd2ab578d797d528a",
           intel: "b2096fc6c93f908a86f5077ed017c5439ca292a5356ffd266321d98c3a7094cc"
    "lb"
  end
  language "lo" do
    sha256 arm:   "7729cc9a89a79dc8a08527519fff39936655334029b3cdbbe093ae62b8f15068",
           intel: "856c9b37effb2e216e5cf3c3ba36670d64b01fe6f15abe4ccd070367355351b9"
    "lo"
  end
  language "lt" do
    sha256 arm:   "1ef411f3565a4dfd01762e1baf534f0cdd35896913158c88e2505ac02b179538",
           intel: "3116bda9285c0c3ab8a22910e5e529799017d4bdfe3e8cb21833423b950397a7"
    "lt"
  end
  language "lv" do
    sha256 arm:   "20633d153e4fada7f524f3323e8330b1e2457847f8dfe7dc180669758f4bbe8b",
           intel: "85ab27c9a1df02cec3dc84887e77f71531857b9eb1da1ccaa15718450b2294af"
    "lv"
  end
  language "mk" do
    sha256 arm:   "dc3a7d2b09e894a938ed22c6c0ff7bd103a97e7a88715d1f91669dd261a1f02d",
           intel: "aa20782632a7e02d5e589e8bcc10088fef2ffa1e0ea3a74954a8de9dec6fbecb"
    "mk"
  end
  language "ml" do
    sha256 arm:   "06c313ccc03ee4df30417361bad25aa2e858971781c9967b3b730e2b367967b7",
           intel: "129c191c3238fdc59eae379db239261b73ce5be60c04f2ab1f15c43b907d3825"
    "ml"
  end
  language "mn" do
    sha256 arm:   "8ca513a2e3a51c7143e9d64f373d8ed09696341a34ca066e8bdc9f032abe552a",
           intel: "cae02cf453126042f3b09ac2e132da714480ca8d9b3383c7914839f99a56a3ef"
    "mn"
  end
  language "mr" do
    sha256 arm:   "099d21bcaec01126f8b097f71bca81ee15b007b5cb419febbcffec7af591c28d",
           intel: "72abd33523894c16880a3101c56eec1a19a5b4387446b59be9cf4b9fe94c5581"
    "mr"
  end
  language "my" do
    sha256 arm:   "d94fbea78e51e75cf6dd54e9a63e0021e5a0c43f4ea6363f07ed07d445bb84a6",
           intel: "8144035c2fc84d6f26adf75678dce5a586fe4777a93cbc981fa4340f162ef713"
    "my"
  end
  language "nb" do
    sha256 arm:   "21356268c1c92ed40342e6cd8ccb3da8a1ff66a4dc8b6585756928dc3e7c0ab4",
           intel: "6c3da4d818121cc12e0bf2a30f634ce6a4a1783c3941db3dfa99ad478baf908e"
    "nb"
  end
  language "ne" do
    sha256 arm:   "a54c6150471d4bbfebeee44dbbd64e5b8f4c96749eecb015693c47297b708118",
           intel: "fa0014e11817ce535a513e9e4718ba5e8871af3add9d68a48ef5784622a9016f"
    "ne"
  end
  language "nl" do
    sha256 arm:   "7e8fe2c326c0f8960557a1305a230b76733f366a9ba3d093a855f7278ca7443c",
           intel: "9e8af48c390c3cf58417a60cc7659abf17b9deac2c9203283b27e1f8cb486a99"
    "nl"
  end
  language "nn" do
    sha256 arm:   "18068e43655b19ea28940e16c34c3b18c2d8558192da8840b3298af3d2fc2c62",
           intel: "4fda0e5bfce83336286d0947861e8327d231c8b003bab3ef4ee0c7776cbc9d8c"
    "nn"
  end
  language "nr" do
    sha256 arm:   "c5bc1ab3f254b6d2839ec98049547deb4945a081e6ac989bd1e2e6146f12a564",
           intel: "1eeae7f62f1838bbf494f765f80d09318f6670e117339aff5975f8f3e91b8355"
    "nr"
  end
  language "oc" do
    sha256 arm:   "86ff8e1cc5756793696c9345491038ead2addd8fae58975a915d5d9614ee292a",
           intel: "930891c474518cb7b72d12ee501238e0e826f8b7d46a30f8c2519364834b0e85"
    "oc"
  end
  language "om" do
    sha256 arm:   "5743e0185d6d99a8868ff3ed314e2fc554b4149d1972c85b84fcce6f7fba0e7f",
           intel: "53238133af7c679785ab567996a705265439afe7bb50f543165cdf6111648bda"
    "om"
  end
  language "or" do
    sha256 arm:   "d661beee4bd757a6b1c5ab4113ffaf126c907f48a1727862824dccdab45d40fc",
           intel: "c0142508ba2433087b4c99cda807dd6509eaf6cec7cad514b56ea68f59197c15"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "2136087eaca29c44b00cd76345e8c53a4ae076f3aade85d9af2a0d7ed383c590",
           intel: "fb64e615217b34f0f4b9b8297347869f861b3fe58389589a093fcdeadb247c54"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "eee4820cb7be80b7a1a3692b5a4ce4b2cb46f0c2621a9225ac5fe91ac3a84285",
           intel: "32bab43ff84980daeb52711cc22331d8e090c0a5e9161f454dd4ab5f6b5b1a5d"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "893275a74b284cf096e4c034b95157ff2e9322bb69361c8d49f8efac22b1bf10",
           intel: "efb1f35170ff221ba81ae873bb2834e44aacf9b1539a6ebf5539186f2e3855a0"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "57a6152d3dc1dc6f4cddc7eacc4f1ba3fd3a581b577e80ace6c69b090b808868",
           intel: "1aeb6c4b0dac16e56775608ad08a3bb8e31a3755ab4ac1b95f5c3702f24f06cc"
    "pt"
  end
  language "ro" do
    sha256 arm:   "77f03989eed420c64deec8301830d1cd3a9677358c17fa9ed005273bb89a6dc2",
           intel: "cfe9f81e83fc0f8e56b8c1d71fe393c8851024d451ff11ae49a075f67f88b129"
    "ro"
  end
  language "ru" do
    sha256 arm:   "3d048b7e77aa93d3d26f97f530b0e6e2078eaff9649e2e2b7bfd9ed3aa95c093",
           intel: "be022f2d216f8e4e2601d5eaed3342531b026f56eb79ca82608ae1a6be6365fc"
    "ru"
  end
  language "rw" do
    sha256 arm:   "72d686961606083c6780c85624720ae348fb1f0c7078c19dd703cbfb776233d0",
           intel: "c86d37dda687fe661d37f9755cba22858384d2345e3e40cf623dcff4fc3f7383"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "4aecff42e545df0d0fd295e1e15d53cc764b88ee4fcff1d035c8c23205fd83ee",
           intel: "687d030d5046840731c6a24aaacb9e6928c821bb854bc15aeb0077c02e9b66ea"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "633af304d24cbf3188aacb22dc4488a441e6bc01b6e3cabbb38375184752590c",
           intel: "d4fcc752f906dfb4307bb3e5894e3f002b1e4053d2781347ef5d3fc3a37ff0c4"
    "sd"
  end
  language "si" do
    sha256 arm:   "fc3d174db56b66421fe73920457f5eb9f3e5497433dbc46650147d64c063eace",
           intel: "271616a1fc63651e9ee7ffbc24c28fb39b36e80c53bb70ff9ff73f59bd3ed07e"
    "si"
  end
  language "sk" do
    sha256 arm:   "0d78088af9abd6b62387427dd310b2bab5cda97d826f6fa4c9845ae748ccb2b6",
           intel: "a0326907a60ed3a01fabdeedf8e959d48f988fda7ba58b0a2fb728b9a27d20cf"
    "sk"
  end
  language "sl" do
    sha256 arm:   "f5fa0cc6fc353d0859e8fbd7ec3e7c4e273e5966cd7c88be2570b587998186c0",
           intel: "a70376fc46400cca86281a4779c59d93002bc3fa7f129fbcdd4841c460b86e24"
    "sl"
  end
  language "sq" do
    sha256 arm:   "6829b3802f95b4a4eb36f456ef9cef61791922271b54788c1cb19ead3afbb80f",
           intel: "c93ce680231acd725d9c41eede6a5fe1b927ea83689f4c8796d27500a0fc52a1"
    "sq"
  end
  language "sr" do
    sha256 arm:   "2a753aae8ea0de0277f7c3f3e741169ce89c30320a202060b6622216038acbd8",
           intel: "a91f0ea1468a526e8a418aa5f06d41f1706281c7c12e1df5966a4994c8753790"
    "sr"
  end
  language "ss" do
    sha256 arm:   "3f6b19e048a2422636a6fd3d67210884a42152dfe42008dd227cc23ebbf2a230",
           intel: "44db0bb03d41e4065c734bba890a556cad9ecdd101a1945d047b375bdad9acab"
    "ss"
  end
  language "st" do
    sha256 arm:   "3624d9588cfa0e5109ef227bf3b024583aaff527fac344ba3b4b18ad3cb72eaa",
           intel: "cc6080c7fdad4fb98f8e2cace7a5cdd13273d65d56a562a4a7ed396a6183ff08"
    "st"
  end
  language "sv" do
    sha256 arm:   "dbbf890bcaed711c75ecaa4a32e822a9e47409ac17198e425040c66eb4ad79b5",
           intel: "9803cc5ff8b4a163060c135095cd6ac3223e0106512fadcc9113fba9aeb5f259"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "578a2b0c8bb1e207ab47e961a974ce05659f008b699f75b056b6d3964dd722f9",
           intel: "ced56a5a567b6289983c3774248f6b714b576a4ae1ce166e305ca574e1ad0cb3"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "508d7bc8417c89484e480817da2f247c7979b9e32be20e9809d87d22b99b51b4",
           intel: "28248e4906badc63d38cf21b5c2af118d98ba11df3096ac24b0ca589b19418b3"
    "ta"
  end
  language "te" do
    sha256 arm:   "7456d9772fcd8ba1909d08bc865343fc737c185e9d7e8885f90b58e05faf92cd",
           intel: "a96a27b27839b39955ff53ccd3e43af9c6342c4321940186c827bf85cdba3033"
    "te"
  end
  language "tg" do
    sha256 arm:   "86e5557cf5e3e335da1badffbc624405c09401b68fefcc17462b6de1b6ba0434",
           intel: "b5ceca61526df8fce117f030e05d3a2b4bdc32cd3ad2bd51c6db4c6f66709774"
    "tg"
  end
  language "th" do
    sha256 arm:   "ea6020fcf6df43389c6d7fbb5dce5f7e3dbd73d59954f5c4194aee0cc3899540",
           intel: "423ebf238896c0bff03e06c1c6dbafc7f31ebf0429c5b9a0b19502bd2b30982f"
    "th"
  end
  language "tn" do
    sha256 arm:   "1cfd6c5bd7780d448d8ad7ef9f941dfb301c766620b730f1fa6c2bfeee6bb7d6",
           intel: "abd0ce3c0c5e2a82da5788dee1e1e4e42f2f686a542953ef6ba0d63277bf8744"
    "tn"
  end
  language "tr" do
    sha256 arm:   "40923bbfb0a5ddcc87ce0391f080976d23f6ea4bd81e223e7755004fff535b6d",
           intel: "57a097f80243bf60fa5bfacd55ae3485f158ec95bff6f705fef3885f47081599"
    "tr"
  end
  language "ts" do
    sha256 arm:   "ceb95983539407e7ba5f87b304ce1732f9b37ce0a52f851bda7c1b1a01b2874f",
           intel: "b0a45cc6363cc0a4bd3bfe97547c0afcf7c2d9edc0f15233eec9b7b8eb3e99b8"
    "ts"
  end
  language "tt" do
    sha256 arm:   "44065b87a6145a41c253fd82471285537c9c689344b26eeecff419287bc13038",
           intel: "3adec92794990a033022c2841b0c001a3e8f3738dcdbbf9b747e96bfffcd1577"
    "tt"
  end
  language "ug" do
    sha256 arm:   "b1b45eaf89344e8dd3ddfe4eeb5b762f6e58b33f3bdedb22892a65321cd676fe",
           intel: "8cfad7c463e71d5df1ba34e5ea40a2d97f2d8e817bc7f62a07eb66f89b26d0b6"
    "ug"
  end
  language "uk" do
    sha256 arm:   "c6017a23aa30f9121a0876e97d4b094c40a4220297372a71dc875b3746e6ddba",
           intel: "a87df6d66d70e4b9a907121828dbdeeb6f52d9834b08124b9673f52c8991c214"
    "uk"
  end
  language "uz" do
    sha256 arm:   "f701cd0295aa28880330444090f631ed3eef5cee8a4c7c8ba772ff538c317be4",
           intel: "8bee9ff5889eebe21415f41695691bfa35832ef294a5b642b80349613c531873"
    "uz"
  end
  language "ve" do
    sha256 arm:   "975e03300693ad68651419fc00b637673a28adb6362e8be5ed565a60747f53e1",
           intel: "f877e3cc2bb2b1c7aefba2e52af92d4c333a64488b9606617e6c4b97f425d34d"
    "ve"
  end
  language "vi" do
    sha256 arm:   "a7d41d3ac1aa14a4853e6ebadccfd3d200c47ea0aebcbfb00715871208f358af",
           intel: "8cb1a3b15e9c48185c49e0965611db7aab7d814874f0ef7cacfcb4a9fc12b991"
    "vi"
  end
  language "xh" do
    sha256 arm:   "42de1835519166eb5a03563fc37ba2d8853285c0b07ff6e7be2f3f906e78c441",
           intel: "22374277b3259892b8fa7cc7b9034515ce16e8dc4db5ea7a37b1d49f6e696560"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "70cb8b6e36e32507771cf53c5f8b8103a81d6ebaaf82781d845c67974f759da2",
           intel: "62b271f3f8fe4a892d9ee379a632285f2c259de27a56f499a43197251859ab69"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "14ac42855a0d26f0d67556197727d9a47b627f5e902a4dc1f7151aea57f4a459",
           intel: "9b7e8d0be2493a75dbccb795902b3c5c652fcd2ce1679abab9fc46a6df009110"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "2dbc11409bf272bc0e8990487c52d306ba0489cad763167f1194e8b1749abc5f",
           intel: "26f49abe1e2bff935d81d172dc5c4db48b8c2b42f7bae1fcadeaad3ba70a7071"
    "zu"
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
