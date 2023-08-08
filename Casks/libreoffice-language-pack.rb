cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.5.5"

  on_arm do
    language "af" do
      sha256 "649731af486ebe725de95e4414b2fd671240275a2327190a80640a6a979cf461"
      "af"
    end
    language "am" do
      sha256 "d3350a3d74657aedab95bbb3f1ad9de7a73c7d3199180587a2529767bb4c3638"
      "am"
    end
    language "ar" do
      sha256 "bcd1e493e0e3422dc30091a70aaef0e57134bac1fe4cf0a88769a23151ffa34c"
      "ar"
    end
    language "as" do
      sha256 "00410d1ed9ea98bb3fe79f5e6af3145aa336926cd0cb5c6aed8c6c9206f41a2f"
      "as"
    end
    language "be" do
      sha256 "a65b5617e67c19ee9eee6e54b7f9f6511ad33e0846afdbbfb2ea2ddc5049548a"
      "be"
    end
    language "bg" do
      sha256 "1ce100c566cba05dddd7fea1ae26e23a7a98161b4dd47ec7ab68daf9562ce63d"
      "bg"
    end
    language "bn-IN" do
      sha256 "bac5015de2c4d9efa5f95ebe745a7c97ab84e99e3f26de16d2b30e750b237266"
      "bn-IN"
    end
    language "bn" do
      sha256 "f9653ff2eb184bd72c9aebca7d48a2a4f60631910d6e2119e932f80ddbe9dfa0"
      "bn"
    end
    language "bo" do
      sha256 "4bdadba15f3574c52c780371801e1a79dff87c60ca3e31f122131b8f508dffe9"
      "bo"
    end
    language "br" do
      sha256 "98904e0ea8305ffcf1b6b80208839e9edbf2176995c856aebbab00545764589b"
      "br"
    end
    language "bs" do
      sha256 "95d0b86b964796f13e00f724e7575428c7905530bb29f8b6f99bf044c965b82b"
      "bs"
    end
    language "ca" do
      sha256 "a8f0af4b49ee5b47884664daa640c1166fc83c9aac3ef0155bd65734895d7148"
      "ca"
    end
    language "cs" do
      sha256 "6fb45fdeb7ffd6ebb5e95f1fb48706ccd8a56495a8825691abbd05022e3b8140"
      "cs"
    end
    language "cy" do
      sha256 "557812a79bf1e79e4563c64572adea171f2704e0e58ff3bf4c880b2b98eb5eb3"
      "cy"
    end
    language "da" do
      sha256 "7c7f574bab4af4719e01a60f038850272a7a65edd5144223177097a198b87350"
      "da"
    end
    language "de" do
      sha256 "80488487b107b43d862059b8848258c097c4cf829abdea193030634555a57d7d"
      "de"
    end
    language "dz" do
      sha256 "7078e5a1f3f2de1881a709ed8cf3cf4260f00bfc8ef6c244b4d4bffcad191fc6"
      "dz"
    end
    language "el" do
      sha256 "f3713295af365dc7bd13431bf9b64335245083d8bc4ab5564d821004be29b170"
      "el"
    end
    language "en-GB", default: true do
      sha256 "41b4605c15f82285402235ea45b96e591f333101b1f8e21d9c58222b9491d1c4"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "11df1cd053cffa5d255af86e0ccd501403e09e9953691b468e358c15ae5f6d03"
      "en-ZA"
    end
    language "eo" do
      sha256 "d9f2350df2e56e578ea982d8d564c0f2815a746fae3fb258903c4a07791b6e7f"
      "eo"
    end
    language "es" do
      sha256 "8fc71ba6a5e053700f7c155e4e2d65b2b487780a5be69186284530c8a8c952aa"
      "es"
    end
    language "et" do
      sha256 "e5d852f6ac6fe91f342e0ff2e6a0129b8a2aa642ac1aab91de62281af595b762"
      "et"
    end
    language "eu" do
      sha256 "db688f6d2abc8e4350a9bbcab0a4cc9a7997d1495db8c698f68768b2499ec4f1"
      "eu"
    end
    language "fa" do
      sha256 "173886358c20207f393a28a36ebb699bcdf9bb4f16195b9eaa66f317606d167e"
      "fa"
    end
    language "fi" do
      sha256 "408f5e1c60a7c2d4783f89011ff7a4d5bd2dc67dd6bfc86eb009a93fe0dadb48"
      "fi"
    end
    language "fr" do
      sha256 "ea37a5e480afa554e27f75cb930991d4d6c6210351dc38aeb1a2caa920c03fcc"
      "fr"
    end
    language "fy" do
      sha256 "ebc0ffcd9513f65fd9f6d92fc3d06b075bd0b0a27af86e7b6ce8ddda55609d83"
      "fy"
    end
    language "ga" do
      sha256 "e821905d284af32cf5bcaa01f4e1515156ca548cfbe6e6bd89c933f6778a0323"
      "ga"
    end
    language "gd" do
      sha256 "a4e3b59bbe6596edfc7028485eca3fbc0ae8a2e258529ec9d78b5be5f2f0d0d2"
      "gd"
    end
    language "gl" do
      sha256 "adad4778a412fa06f4fcad0361242368204894a8786bff011c45b4ecf8da12dc"
      "gl"
    end
    language "gu" do
      sha256 "cded136db46351424ef70ffedf2173514fab1bc1c515e2c006de84cb83d5a067"
      "gu"
    end
    language "he" do
      sha256 "12dce24acba162aec93150a79fba042dee50db2ec6f3844f45c5eb17809621cb"
      "he"
    end
    language "hi" do
      sha256 "ed2c70f0c9e1b7301b5a10862a48365f62a8857138c832d30ebbfa2854882866"
      "hi"
    end
    language "hr" do
      sha256 "2278b45e3ae110a389ab35de388752cb8e8119628234b0cb56f03553cb7d4d17"
      "hr"
    end
    language "hu" do
      sha256 "48c1779ad1a55e09e4a744b1fae44fc4614e39151568e582175d6de5bf0232e0"
      "hu"
    end
    language "id" do
      sha256 "9838631b36ca4ac9feecbf5564dd964f59114506b080d0f766158775e2d3463d"
      "id"
    end
    language "is" do
      sha256 "3f08942b1e1530d3832670a888dc67872437c663cfa036241d2b4c29e2faf3eb"
      "is"
    end
    language "it" do
      sha256 "efe5270957a74fda007cd3902966c00d0f3d223c460a20914990074bd5886848"
      "it"
    end
    language "ja" do
      sha256 "68f08c8f3706c282e660e2a378dd1cac4061cd3785e7dbb13ed68f06d73c15ca"
      "ja"
    end
    language "ka" do
      sha256 "05c108acd995cfdb45ab9e95d72db6c442bbc2be7e45bb2e795eeb9a8a401f51"
      "ka"
    end
    language "kk" do
      sha256 "bc433193c00530570ef482ffedceef13e883644ca1c38b7404f1cd5f4b61f0f0"
      "kk"
    end
    language "km" do
      sha256 "8996be11624ecfa407dac02ef20fe7d6d578f5f17d0f04df04c1c74edb0db85c"
      "km"
    end
    language "kn" do
      sha256 "26c904099ed8bfac81d1b39684337efbdc495dcc56acb3a6f34ab47f7a171d98"
      "kn"
    end
    language "ko" do
      sha256 "7b8723b647f86bf3ba6cff7914cfa3a8b8251204d53819dd2242df819fa1094a"
      "ko"
    end
    language "ks" do
      sha256 "4be070fa7e0de98fd7157f76ef78c4a9140c34a3f820adf2d9aab10829fdf9ac"
      "ks"
    end
    language "lb" do
      sha256 "65bc032ad9975928044892ba93434651dbd6522903a64b35905673c10c3542ec"
      "lb"
    end
    language "lo" do
      sha256 "7ef4d50cf1d1a00bc0ed519711f0d062769b5c931e149b9c781575e10dd2605c"
      "lo"
    end
    language "lt" do
      sha256 "dbbf7b7437122bce7e0983629ec5452dd020884c8d500816f5b69cb77fa4243e"
      "lt"
    end
    language "lv" do
      sha256 "796efab475cc5a5deb4f0760bb9796bdf846788fee20b615a115e6c31c12f2ee"
      "lv"
    end
    language "mk" do
      sha256 "e0152b3766e607d9eb6ef5924e0e59cdd79d884b25a65dc37cde68a175086a7f"
      "mk"
    end
    language "ml" do
      sha256 "946862f460595f1a3cd06cfb8a1b9915531b948711aa6193d434422d36db71e4"
      "ml"
    end
    language "mn" do
      sha256 "8dccc6b8c6256a040878f581b7ec8ae6dbe6802748e790f1605f36289262060a"
      "mn"
    end
    language "mr" do
      sha256 "1146142d4460c35ed5f146b5ab607de30359d407e7c332e43ed75c3285f8359e"
      "mr"
    end
    language "my" do
      sha256 "f8d3794879ad3b7c865dd575865f9f54628406834913c9bf81d16acf9dbca006"
      "my"
    end
    language "nb" do
      sha256 "0b2909a9d867a2812c78210681c250ace407e3866373099ab0e9df7d236a6959"
      "nb"
    end
    language "ne" do
      sha256 "0d1dffaef0aca9f17144ab78a640f9684ac8d3b387dcc696f912eb4bf1ac30a9"
      "ne"
    end
    language "nl" do
      sha256 "6058e70bf08b4c00710dad47c2fc5499760ace78508f5ffde94c064258e113b0"
      "nl"
    end
    language "nn" do
      sha256 "be4b90dbc613e28f3f2f06a3aaa321f2e6b111ce3fdf2d8a91a7848ba5218f29"
      "nn"
    end
    language "nr" do
      sha256 "045e92e6e05d9626978be8e568323a2aceb2f44500012af97ee0b319241ab8b7"
      "nr"
    end
    language "oc" do
      sha256 "29c839d3eafd058b14b15cba19237d92d3ed763c5662a564cc295b5d7541ebb8"
      "oc"
    end
    language "om" do
      sha256 "5b8666397a97f8f6c96e159a9e75ced5a3bcec62018e33774121191924f794b9"
      "om"
    end
    language "or" do
      sha256 "15e2a4da829eb33d1886a987dfde8d706252ddfa99b810e600a3af15d682e8f5"
      "or"
    end
    language "pa-IN" do
      sha256 "caa3efe6a0fbf4025d9a36a31410ab8de39d123ea52b620b63c3041a677bf182"
      "pa-IN"
    end
    language "pl" do
      sha256 "42162ea0c4a7d90e4a6798b9a85388e53f3052dd4b6561ae28b3580d7abfb75c"
      "pl"
    end
    language "pt-BR" do
      sha256 "420ec18704a472dfd6c50e7782e46105911a346e9a7c571b2688545d6b850c7f"
      "pt-BR"
    end
    language "pt" do
      sha256 "36e406ae68376d3561d6d105b1fd57417a32bc04472fe22b9254e3a42ee86b62"
      "pt"
    end
    language "ro" do
      sha256 "53b3ab5939268c860abe47419f4f93ad91bf602773fa2f6134ad0570ad21b5b7"
      "ro"
    end
    language "ru" do
      sha256 "a6c0ee927c14b709bb9fc67db64ceb6b48d6667a422b216b01ef8ee823b60ee5"
      "ru"
    end
    language "rw" do
      sha256 "ec414f56c3c1e77233f89cee5a7a9d71eb6d0eb845396c356998bcd43f4821fe"
      "rw"
    end
    language "sa-IN" do
      sha256 "29b87429b44cdbe583d23eb197766be376ea802575de88b09e0b2815069c8a98"
      "sa-IN"
    end
    language "sd" do
      sha256 "e7c860668ba7fe5f47d12189d360980e088733b26789626ea1ff3acb302bf1f7"
      "sd"
    end
    language "si" do
      sha256 "cb6fdfb1e191d223edffb18565ce2b837d083171dfee4bff63c61906b283fa28"
      "si"
    end
    language "sk" do
      sha256 "1827c170be61f3e0ab36d1378f11a43b7b2a8c56f6b289ac09c229ba1978b50d"
      "sk"
    end
    language "sl" do
      sha256 "5d151ec0cb176a88afbba85d6c57ec0c5db1873c124e7d6355961894330611aa"
      "sl"
    end
    language "sq" do
      sha256 "7d197d9d3a18b1251828103cfcd3a884c914042c944c3c47b03ff95d59a7575d"
      "sq"
    end
    language "sr" do
      sha256 "045598ff1d543ee394a32a3dc1869539f673abc0eefb0625771ae1a11cf9f800"
      "sr"
    end
    language "ss" do
      sha256 "61621165f887b2015f93d5cf4a42256e06ed8ccae5e40dcde639d178c48217f7"
      "ss"
    end
    language "st" do
      sha256 "80e0b22d0fead17d5daccf6ba81153fb762a53a526d1aa99368d19ccc672d687"
      "st"
    end
    language "sv" do
      sha256 "7d7337c3b97a1d85c5e028b9fe21d3c1fde4c0d2d31c1826619b034564b946a7"
      "sv"
    end
    language "sw-TZ" do
      sha256 "b11315a01021c9f22435da5933e5ecc83c22f57ad116c3caf446687f72ac481c"
      "sw-TZ"
    end
    language "ta" do
      sha256 "881edbac8c4b0d3ddff93a42431b5431d49be5a1dcfa835f74d6e04d150a8953"
      "ta"
    end
    language "te" do
      sha256 "d25b167639e4f0ee775a77030a7a3c585cac6cbec1a7e636101b5da6aa50f44f"
      "te"
    end
    language "tg" do
      sha256 "b0b9173a581d17d36aea0a13480e71cdb1f09544f2b045dc76f32be29677f116"
      "tg"
    end
    language "th" do
      sha256 "538cb27785ab7e9ee6abc65528df68ef0062050ec49359bc6dfe4fd8ea2ea8ea"
      "th"
    end
    language "tn" do
      sha256 "497fa37bb5a64bfa07b8e3c2339834b90b14e1d2b9b50c532caf0bd14022460b"
      "tn"
    end
    language "tr" do
      sha256 "0c586475197d3e863101d13e4444ca39e57ba62bf24e680b01ed2b5423ac2cce"
      "tr"
    end
    language "ts" do
      sha256 "11e2f3728c277040afafeec9334b944252593a821192ada478a863f6f2f10a41"
      "ts"
    end
    language "tt" do
      sha256 "a7fa7062ae759edf39a9a9539d3e22bd46b73ca2bf173367ae5784f0ffe8cdd3"
      "tt"
    end
    language "ug" do
      sha256 "9eff11727d06d5f6a926f057717121914833d896ddbd61d57f136528ad0a5ffd"
      "ug"
    end
    language "uk" do
      sha256 "35a711bedfc310009e2e6229cf1e8dc01b056f64e0e5f46e3ce6122cec6cca5b"
      "uk"
    end
    language "uz" do
      sha256 "2e4d22a81ffcc58867f18320f2ba6a4beadf9c729a58d1b9716dbfc6f5eddb60"
      "uz"
    end
    language "ve" do
      sha256 "efa3a498ca8383f2159f29392b66674f922cf63667f8f8531d549b439a49a29f"
      "ve"
    end
    language "vi" do
      sha256 "48fe502ae84e32e63604a3717696bfb40d996f955cfe090d5e708c0252081eb9"
      "vi"
    end
    language "xh" do
      sha256 "eeaa19f82cd88c73cacec6c4f0223e1f412d7ccce2e986573d1c1f36f80fd5c8"
      "xh"
    end
    language "zh-CN" do
      sha256 "cdb86942e965db82d631c4628087086e3f8f1dd846e991ca3085853ca4192057"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "766fc0f1d7caf52076596533eaec78260213344277f2efcc615b77f840cf4d7b"
      "zh-TW"
    end
    language "zu" do
      sha256 "1376fcb02431d2a02445396192c436aca2e0b461db9c0f72c852cea294381fea"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "94cf2a1f4ed2f5998535abdb2cd17369d7b0101ab03a0016213f4cfd840bc0fc"
      "af"
    end
    language "am" do
      sha256 "c571e695215647feeb6024969d62ce7238a8bb9287b1367ac5a9689aa2501ea2"
      "am"
    end
    language "ar" do
      sha256 "8227ec30a57825dc10ec83b51ca816fba9b7a3f8dd1939991eacbeb4cf32c227"
      "ar"
    end
    language "as" do
      sha256 "4651e7e439efda3e7a98e6a94fed537fb26b29a4bf33d3ff1eaf6225c064442f"
      "as"
    end
    language "be" do
      sha256 "474dd7cab7c368a26df2fa35d31dfbbb3e1f84d5871c107654bb46c241d5b672"
      "be"
    end
    language "bg" do
      sha256 "c8549d09727cccbe036dfb744f54ec4d5a04cc3083a61eea314564a43c6cee95"
      "bg"
    end
    language "bn-IN" do
      sha256 "d3864d36eb23b9c94460ec8f7563fe70488496c2ac165d45b43636f191f27744"
      "bn-IN"
    end
    language "bn" do
      sha256 "c5c8f08e3737f207f82993e479b3ae0aa0b739b77e1bd22d8b5f058d01b5092d"
      "bn"
    end
    language "bo" do
      sha256 "2e7f04404a07165ca5f98963d5767f5649ee4f31c4949dbe71c2c9ebf4d978f7"
      "bo"
    end
    language "br" do
      sha256 "6128fe01eac9e5096985b754c99e75becb9e60ac0d9888f09ef29cbb86919ac0"
      "br"
    end
    language "bs" do
      sha256 "54a9c4f6678fd386f44b6141a496f2766705c23bcac0c87a2574d8f9750de93f"
      "bs"
    end
    language "ca" do
      sha256 "8ccfd191151d413e5194435b167aafcc4bd1ab8010bfe4c396b38b9163578456"
      "ca"
    end
    language "cs" do
      sha256 "f1666f0ba4162545ec04a4a9b22259eb9d140f088095baac6a3504366b277150"
      "cs"
    end
    language "cy" do
      sha256 "ffb82db67ee8cd2f669dd0aeca29cd40901e7b4f6c941930d0fa8b17c49df8fc"
      "cy"
    end
    language "da" do
      sha256 "8b8648555ba2bd19a9d9566ea647c34aa73b50773b92ef6db4e68a266d01a06b"
      "da"
    end
    language "de" do
      sha256 "e55a7c337c70262d3ba065daa0dacf75c10436196d4c4cc04187abbd74db61dc"
      "de"
    end
    language "dz" do
      sha256 "7406b0a49b4d008583bc5b7fcc4d1e45b94222aaf96f3d2e7c0f34460061f5d7"
      "dz"
    end
    language "el" do
      sha256 "d97ab80d91db99276762215ef2eb189b504f80600c4c9fde4aef5920ca597111"
      "el"
    end
    language "en-GB", default: true do
      sha256 "69baaae47781c0c4528bc66b9b2f43ecf8bf40e5575c0dc5f89168607b03fa94"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "45171daa7f0bcf4739ab104b0c1930fe11d1f0054bbc6fa427f29600859c2e7e"
      "en-ZA"
    end
    language "eo" do
      sha256 "abf33a1babd09d09f31be5554ad475341fe96fb477c5b6ad1a631fbfa9a159f5"
      "eo"
    end
    language "es" do
      sha256 "d4783728fbc38e70351fe88e80fa5f3451aab0f8a5720035ccbc32ac738de149"
      "es"
    end
    language "et" do
      sha256 "a5dfcda12e4b68ebac13c75c5ea5385282f585e10c58fb0058ab3051b14e08fd"
      "et"
    end
    language "eu" do
      sha256 "c07bdd49003f47d1781d2caf942c64cc33772460608dee871e2f30741b0821e5"
      "eu"
    end
    language "fa" do
      sha256 "7856ea335c3b6a0dffb2f51ccba028e0568773c11c52f0edb693a30b48ded240"
      "fa"
    end
    language "fi" do
      sha256 "3fb8a3cd7c5405bd216d980fb7f426e3a1bdc08907cb8d752381221ec6ac1326"
      "fi"
    end
    language "fr" do
      sha256 "abebd85fd397bb46de10fdae17be6d966317a12a06d72506ae051d87d94bd29f"
      "fr"
    end
    language "fy" do
      sha256 "72f98ad1fc8beb8fe424b599108485cf582dacbe18c455f59cff0a44c71eb157"
      "fy"
    end
    language "ga" do
      sha256 "66408aee08d3658abbe2cb9f078efa09fc3e8980329c5efa7c9d5bba070a99d9"
      "ga"
    end
    language "gd" do
      sha256 "359693c4813af717df832978c7f33d66116305a3686f286ab5c645516ea1f9b5"
      "gd"
    end
    language "gl" do
      sha256 "f3b21d01155e8804894ba1b8526429e8120e9d43c10704c6368cb040fb6f0cce"
      "gl"
    end
    language "gu" do
      sha256 "992648acce069a69079d352ee2bdc4a7087f3525d98f2d581cdf0637ba74c684"
      "gu"
    end
    language "he" do
      sha256 "869a218afe4cb899f68a7510f2db82d947e93d1ef1e8b89481d0346fc580e313"
      "he"
    end
    language "hi" do
      sha256 "baf7c05b5df858cc100ad12eb0ab7dd515e0eba7e0da8b486e73c0b130afb3b6"
      "hi"
    end
    language "hr" do
      sha256 "6ed9a32a474c21b2a0fe00e2bf33ca7e739e8390c81c2aa8f7749ba9c9ceb96f"
      "hr"
    end
    language "hu" do
      sha256 "4e271dd8fe71405f814bdf3839ecbfcc5c5739cdee3a440fb9b6ccdc69770b74"
      "hu"
    end
    language "id" do
      sha256 "c388f508fcbddca61d2b5ed9436385c9ea446e4d148081f961db1395feb54b3d"
      "id"
    end
    language "is" do
      sha256 "fa272481126012908df8a029796af09df8721aa84dd1b1291f9f35010de2afc0"
      "is"
    end
    language "it" do
      sha256 "39c0811616d65562c1a1ee9dfe88978407092ec3d312eaad27e3d71ffaa7da0c"
      "it"
    end
    language "ja" do
      sha256 "b2f639505b4c821b4443950ebcb97ca6e6b15b44c3ab285531a13897421b3639"
      "ja"
    end
    language "ka" do
      sha256 "17db2d3b2dc981d69e22b93c5c2f46753d0f8ccfdb7f1b8165de182a7131ccac"
      "ka"
    end
    language "kk" do
      sha256 "fab7b97bfbc02d1344a73610b741da4c295f6c63647ad352aea4314ece7bca44"
      "kk"
    end
    language "km" do
      sha256 "07c9175b25db21e2761488e2fc4dbe2a4dc3653e40893d67a3fcde4ff9907bcc"
      "km"
    end
    language "kn" do
      sha256 "7816ac975ada34ac16af5730534a901e04c85fb8b365ab00d58f829b6539b224"
      "kn"
    end
    language "ko" do
      sha256 "61770116abe03a05dd268ad0fa77b79ed26f24a74369b841c5f877992122492a"
      "ko"
    end
    language "ks" do
      sha256 "a876cbe7284d835957f7085072df620d6b3be6e76b435b77b1c8c87d673a158b"
      "ks"
    end
    language "lb" do
      sha256 "fd647ac39fa8749d2fab04b48780967a42ceaf988486d2fba81c98e86459856d"
      "lb"
    end
    language "lo" do
      sha256 "5b0fc38b89730d45462e9ac2a122bd74286e17f3a8f073cb7ff27918966b951f"
      "lo"
    end
    language "lt" do
      sha256 "91861ed686b3926127b7107b4ce4ffaa160e209b0f239832e88bb38c4b48c564"
      "lt"
    end
    language "lv" do
      sha256 "8149212d4f84f8fe4a008fd38c651cd5bd3a19e64b31209e4cfb4f270239f14f"
      "lv"
    end
    language "mk" do
      sha256 "dcc29cf6f0f425919b496c746754d678ea0450bb0c7141785c8136820665d854"
      "mk"
    end
    language "ml" do
      sha256 "7ec0f45d52a70163db606664bc0642ff375f784863ee38d90b7c224fdcd5d0ec"
      "ml"
    end
    language "mn" do
      sha256 "23e108bf82d569b6ceea00c7f9c50bdf9992c4c7d60078cce84fe9e5788e413d"
      "mn"
    end
    language "mr" do
      sha256 "9ecd81bd8ecf5d9004de8bdba69d56654c06c4b385408ae4fc62180fa711b54b"
      "mr"
    end
    language "my" do
      sha256 "1412ae13b9838b155c9c07eb53ba5060700674195eedde1c9df3bae7b6697b50"
      "my"
    end
    language "nb" do
      sha256 "62506f769e389a1adf95a5e42eff9245340a2d2d8106cbbd2fc22468526adff2"
      "nb"
    end
    language "ne" do
      sha256 "836329e0a1cd379f4a730c61410adf3d33137addcf6d41fad1b773df2358b289"
      "ne"
    end
    language "nl" do
      sha256 "d7928369a7dbf55993fd4efc42e0a8cc5af2c25941d11429153f1db6ae68b06e"
      "nl"
    end
    language "nn" do
      sha256 "7e7f4d137c0d00c570fccfc3a5918ffceaa9f06c166654ba753200cc02fefce0"
      "nn"
    end
    language "nr" do
      sha256 "45839239f2f0861495e201f8901a3490105ca8c724e5acda44612a6162fb490e"
      "nr"
    end
    language "oc" do
      sha256 "1e49789d413ce5d49c8a512d0b7ec16b3a4e8932e8a67f994087ab6b03fb34c7"
      "oc"
    end
    language "om" do
      sha256 "9d1af3ed3df95dfddc09c519ad68836d143cc47e693116cc0fcd8ab817792b0c"
      "om"
    end
    language "or" do
      sha256 "1a0bc96103eaaccad2bf662b6a5002884eadaf5547749c8670463a582cf366a4"
      "or"
    end
    language "pa-IN" do
      sha256 "6112e90451849f3c9e5e9fa5ad508fbf6aeaf437ade57cbe81fda1f335c6cf51"
      "pa-IN"
    end
    language "pl" do
      sha256 "77a0b6f957bc280b8a1b7ed4d8f3d9ebde5b56695fe3fc1a4b8b7524d66699bd"
      "pl"
    end
    language "pt-BR" do
      sha256 "33ef32938322737ee63cea7a622e02aa365ae1e4dddaf4d8ae88ce63b73ca6fc"
      "pt-BR"
    end
    language "pt" do
      sha256 "ef3ba4b7fdc8545551eedcf704bd07d4513940f2fd0066b0e834580009a4bf65"
      "pt"
    end
    language "ro" do
      sha256 "fe4aee4886b518e3c1387c961a18c600e2eff7379c265c0bfa372aa66a8fe2a2"
      "ro"
    end
    language "ru" do
      sha256 "932ebf53d998ec9df89b125174823546b74452ccaeed64f9bc6bc608482421d7"
      "ru"
    end
    language "rw" do
      sha256 "f0d0dedadd25b2cf527062ab3dd049fa57484a994b45b22c1354ad9d47a97ad7"
      "rw"
    end
    language "sa-IN" do
      sha256 "8db4987e67ea2dfa5a716c02976f44f3abbbb8eed2c9ca0c4b4fbba5f1d1ebd8"
      "sa-IN"
    end
    language "sd" do
      sha256 "0dadb81b7f0977a546ba752421799ed65b69621cbdb68428328ea40258ccede4"
      "sd"
    end
    language "si" do
      sha256 "e2e43ae05be0e862cad20d38583351a3a998832592841a55b13f9a9b00655964"
      "si"
    end
    language "sk" do
      sha256 "53f911dc182e9b6729a5c898222a5b2772a971ba27222bea86dc4c0b770006b3"
      "sk"
    end
    language "sl" do
      sha256 "d6563fa46d999dcba8c83f85b3d671cb1458db0e1dbba9c3a4438eb98040d1af"
      "sl"
    end
    language "sq" do
      sha256 "0acf302ae6b53a78c869700c21201d352e5d34624e264bb802abb0422eecf2d3"
      "sq"
    end
    language "sr" do
      sha256 "5edcecf873d0ce0c54c4e80eb4ef4e4a4689c8e0a493f0b2c8c6be4286af1044"
      "sr"
    end
    language "ss" do
      sha256 "ccebcc21a33a2357b240df9f58698239e1aa7049cd9e708be80f698908cdc7f0"
      "ss"
    end
    language "st" do
      sha256 "5a785a9ac4f5b74487f89adb17281b9f076e959ccb86a886d6d5650712b0cca5"
      "st"
    end
    language "sv" do
      sha256 "11bbce273c4516656a030facd40e849a18cd6e2d11fd67d37ccb7103af2cd528"
      "sv"
    end
    language "sw-TZ" do
      sha256 "e70aa7a02fab5cad701545805afffafc3205aecd2bace841ef7238f25a69dd6e"
      "sw-TZ"
    end
    language "ta" do
      sha256 "ca9fbeff657ab7f78d01b9c3e542bf6075b4e684bb1113556ccb358e9e27bb77"
      "ta"
    end
    language "te" do
      sha256 "6c3379b55f5d115db1a9ea8f652e021c279e4cd0776eac17c81d356aa8063886"
      "te"
    end
    language "tg" do
      sha256 "db291409fc1e656cef7e2b98d44cfd7eca868004f7ceb6706913b15b49d4566d"
      "tg"
    end
    language "th" do
      sha256 "d905289c9edf9d5537371e435977f4e26039a9464917d652729322040737ab2f"
      "th"
    end
    language "tn" do
      sha256 "04aa88a39f447eefc0b758d41fe9034449a56b19a4b3bdd6ba5e09bdf737d82e"
      "tn"
    end
    language "tr" do
      sha256 "177c42c64cc533cecef5ef2428b177c07a2ecec0b144ca4ffbafd697285b23ed"
      "tr"
    end
    language "ts" do
      sha256 "7237116bfede98efba950a1f379b91d73feee1b0f8edfa0a7426b9fe9577a7c7"
      "ts"
    end
    language "tt" do
      sha256 "740d2816e1d7f2fc1f6b45b91a75fdbdd7f5109f2155b54236d3462c8f0b8653"
      "tt"
    end
    language "ug" do
      sha256 "09160463a6351e7695c31dbe885fe4467b0f3973919267c038461c104e03c0ff"
      "ug"
    end
    language "uk" do
      sha256 "9f2c5ae397ebefc359ff47cc03f66206f0673db5c86fd4ef6fe9884507e57d7b"
      "uk"
    end
    language "uz" do
      sha256 "4f510f79786c2aca768c0e86a3a75fd5e34095c38a0e64fd29dbf9f5f494f771"
      "uz"
    end
    language "ve" do
      sha256 "c6c63217cc85e9b324add0d74dc4cd54b674c01bbf0838fb8f2294056ea9f203"
      "ve"
    end
    language "vi" do
      sha256 "568d3b5133f3e23d84c7d5600280a94c2301443b461c1a3bf849bfbdfd33b955"
      "vi"
    end
    language "xh" do
      sha256 "e2e38b56565be86914ccfc2a4a16c2fc3f4e2a445c45343f153d2b650c2bc94f"
      "xh"
    end
    language "zh-CN" do
      sha256 "a6d51b72fa1458632026f3ba3256c6f8273500743682a7ce86755dd383c89b95"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "e61e28e770d27354cae936537ab9d2e1b3df9464f7acab7cfd5a997b4c7886af"
      "zh-TW"
    end
    language "zu" do
      sha256 "9502ca5a538e67afea518e37fe223087584b0cdb9780239e465b4e8570d37f3e"
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
