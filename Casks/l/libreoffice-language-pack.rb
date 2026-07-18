cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.2.4"

  language "af" do
    sha256 arm:   "23d305c6db81126ce88e9b929e1b955bad50febf40ee29510afed74f0030375a",
           intel: "f8c4a1606f20d4858b7765796869523cad10ebb45566a7eda69598366b22d00e"
    "af"
  end
  language "am" do
    sha256 arm:   "9b2a12500c790ac9e6ed41c2913e9b2eec9a381f13f081f0f89cb445777e0ef4",
           intel: "5e08a034dc47d5655cdf8ff89164f2f9be8be6f21cdd127a70dbd7e110aa2f64"
    "am"
  end
  language "ar" do
    sha256 arm:   "09a2c4595b0e0790083bdadb310af90c89fbc3e458c3284195ef8ad6bb046796",
           intel: "b9f29490ffb05dd402aa4323e5a39cfb378f2cdae7374f658e2a7779536759cf"
    "ar"
  end
  language "as" do
    sha256 arm:   "6af5c1c3c0a12ad270af73da282d50f34fb814321edf3b2590ccb1a0a2e283c9",
           intel: "9f48ed840461dabaee6311312abc29ba183770637cc25e86cd03821c5be0cefe"
    "as"
  end
  language "be" do
    sha256 arm:   "e266c05a72f82695c268ec007141d09d36cced3a68412d95e3382d7a980fd899",
           intel: "363bef3462a6b41d8fdf356d676a4025e524b919eeb2e9bf6ce8a634fcdb539c"
    "be"
  end
  language "bg" do
    sha256 arm:   "7d51b339b36e324f332441d0034dd0a89423973bf34862916f27ae45f74af2aa",
           intel: "00667e965aa2a140da709f89e22292236abe9dee785a045345d194db8015e488"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "adb109cd66341e699805f30a454a7fba3a1a76ec469714ff6d3d67f25863dffb",
           intel: "3592f3aa2cb9bb2d57cc5147b251d1ef9de6146910b263011c25064319c8a29f"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "b338ad373799720ffd3f015e108ecb0e3f2dc1d649c6270bb9cd6873f39a9214",
           intel: "bf3b77e6c14d66dfb5954c1ecc1024f58bf0206794628788f4c64fc0775ed333"
    "bn"
  end
  language "bo" do
    sha256 arm:   "5068082ad1eac26f6c4d44dbe4acaeda1b8d2636e3a5e0418f54380901582627",
           intel: "cf196f5cb34106a3dbd739361067d0678f5d96e89f4bb81e44145e73c974a368"
    "bo"
  end
  language "br" do
    sha256 arm:   "cac8a05d4e8a38dbde32bf823f8ef116aaa2044d768dbb6e4c80bec554b536af",
           intel: "409d261f7b75f8d1f6c3dad9eb58adeb7cd8bd37f14906d12b89c389cdf800cd"
    "br"
  end
  language "bs" do
    sha256 arm:   "eff5543c18f319af30d6f11860f9d63fda81a2ec8dc99a3aafa4573619ff5bd6",
           intel: "844c48e836a3bbfab5852c0f12f3e18ee73072e1936508f6175e02f1f9e022f0"
    "bs"
  end
  language "ca" do
    sha256 arm:   "f49cecf0aa21a53d495465e813daad3394fe9b1ef0b45350fca622886fc16dbe",
           intel: "fba44253f8f5686fd5a5b7753abaa485b077ccf2f968151e8a883db3a2ae4237"
    "ca"
  end
  language "cs" do
    sha256 arm:   "8e23f4d173a8f2828a35816c253b6c857f85e2dd80b51da231976029ceed269f",
           intel: "9635b9a93fdda923597c1a3346e5cfb6b2115544a135173a4f7e594297b24cac"
    "cs"
  end
  language "cy" do
    sha256 arm:   "1a86aac87283dd12f39c18d0d2c29cc6697d1832334ab49e36f99fcbf5f89e41",
           intel: "1b1e969bc2aa3808dbcf3dae57dbc1b42b8817a8df32acecd048f0ee25269010"
    "cy"
  end
  language "da" do
    sha256 arm:   "2c9325f9b50256bcbdd491ec79291a2f17c8fbe53df27fbb93754e804a76916c",
           intel: "61c86b9ea1834dba0b727a9477e65923197118121e2f7069d4bc8aa0ccde39bf"
    "da"
  end
  language "de" do
    sha256 arm:   "a5e1dac072f622cf0d7841d83cba29805c07ec8d05687870d66c8d80d26056d4",
           intel: "4c681c2d0d03bd014359ccf88d1ccb640c1859f94772c80e757ab90b6af70452"
    "de"
  end
  language "dz" do
    sha256 arm:   "43f0672620bfac7154235d7e6c0bbb9c4ed4952c6d875adc07f5884ff1bd3e8e",
           intel: "b81ee37f077925faa8a3605becc800a689ed745de0d51e64d045e65c69976558"
    "dz"
  end
  language "el" do
    sha256 arm:   "674b2c9bd3bd9db17e8ec56eb28bf067e006769fc58187978eda74d5b6f0fb68",
           intel: "3af8ea5e6f1de0ac6dc1c7fc8a422f8a2688e7e2061b06fb536e340f0edde201"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "db324bb125a6feef389d2a57346e645d7a1b413f54ede26a170df59e285c77ac",
           intel: "9cca781277f928b3aeb2c71f30c413103a66025433a59060b022713edf364fc8"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "8639233eef501a1045349d3157c3accf142823fe3987fb667a9889040b6ece5d",
           intel: "5b4e6a8f6621c78353a9d156ddf267e8c96024c01acd88ca10cb61badf83d2b7"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "a7737534ba50b61808d2772c043cf3eb0e03b4d6425e067eca8e87e91964f74b",
           intel: "657f5b906ea328a567e0d933595e8e9a3d12c1f7f3d87dd567ecd60915ec8a3a"
    "eo"
  end
  language "es" do
    sha256 arm:   "51c919c5ffb447a455001f987395816833b655b8798afcd9b7a2becd727914fc",
           intel: "d68918c6e08657601d1531eb521a7f13518b28e6ab7afff219de1025dcb795aa"
    "es"
  end
  language "et" do
    sha256 arm:   "5a8b775c06a7ad7c851d4606a766301a8585b8dacdb37ede76b010600673f0f6",
           intel: "0a2b0757b7b401d90c8bc39b3d567762994daada59a748cd1ac2c6fa40895d11"
    "et"
  end
  language "eu" do
    sha256 arm:   "49af70f0829cbb6d05eb9b6d089589b918edd7bed982b6c38ddac0135f105dd7",
           intel: "4bb2a4bdbebef2d100c522fe6f125526d158b22bd483735e368b688483d72203"
    "eu"
  end
  language "fa" do
    sha256 arm:   "9df7c7e83d9cc9d3099d5704e5b36e6d7f03bd89dbe5656ec4162cba17fe43ff",
           intel: "986a25de76adc4e7bcf18a002de97afa19bdaf4e532390a2b28b42f5e167a488"
    "fa"
  end
  language "fi" do
    sha256 arm:   "81021e709642e202a2f7156d5fcf6968142da1eb069b458956f1713efbf29421",
           intel: "35d1b14bda08250619da9b109ca9a7ff0728a1408895165a106326e90183f1bf"
    "fi"
  end
  language "fr" do
    sha256 arm:   "e3dd52b1ebe5b0fb2ff10bd297d1597ef080e371e0464fac62ff7cc8e80681c4",
           intel: "1d0f7441d7e30359a86f533ff38c6bc651134904f1422371e4e77c2250c68c0a"
    "fr"
  end
  language "fy" do
    sha256 arm:   "3c2e66ba02abdde5bba40e0bc5e82320b23ddc7fa07f134d84fbd5bc01da6e13",
           intel: "5d509b2a3f40475cfba245766d723cc79e6e66827d3755e354b1a79978b9ca3f"
    "fy"
  end
  language "ga" do
    sha256 arm:   "fbbc5e898d78e66a4d254f264c01aa4e55714e6ccf58ec9ba26d08e12bf91624",
           intel: "b452d12494f64625e2ccff127cecd91e142a914a6a55a28c67c76e1123d51cb5"
    "ga"
  end
  language "gd" do
    sha256 arm:   "e4c8c9f708d1032318c5058f1e31aabaf9141b16545c946872ba0968070d973b",
           intel: "e5a460f51ef552f059cbc262aa744a741edbb8d89a473c757455bec02d39e059"
    "gd"
  end
  language "gl" do
    sha256 arm:   "7634ca79ae10a822f41373f9769130bbc6664317bc1bb757cdfc3fe27c068ba3",
           intel: "36ba219765146ff8136259d3c53ff4d44b941abad23b58e7a64a0d9c0882e910"
    "gl"
  end
  language "gu" do
    sha256 arm:   "f8c41e6d1b167bc947b3e83c824a09884a2e99da72a98f2c6238d6d550e9e309",
           intel: "e0c3ca524b3c34dc5d4f5e2faf9df1c5cbad78657664694ea8c9a0a530274f7d"
    "gu"
  end
  language "he" do
    sha256 arm:   "b62cb092dab2446f81a0dcdc7523f76946ebdf6a36c1dd16cdad29c5c4315c2e",
           intel: "5c37646898171108d3d31c34c0c3ce14540ec7f0874c656fc952c7347ea1aa6b"
    "he"
  end
  language "hi" do
    sha256 arm:   "a1f16cc0caf6e03b72511a8a743a0c628efae4b7d6bf6c7e34a4cb5d501c092c",
           intel: "faa24cce537f4ec7f26609e920a45fb416d7a225bd494572d83c9d03edcf0958"
    "hi"
  end
  language "hr" do
    sha256 arm:   "21cfdf45d7d86903e460caf614b4775f9e2e19b49baf6d50113df1b495515bdf",
           intel: "190799438adfaf90a41f34b049572d8081e26a802a5ae889e2566631362a81ae"
    "hr"
  end
  language "hu" do
    sha256 arm:   "42e923c52ba2460fb3824acf1010f6560eb15a383dc27fe28744d7069eef8c02",
           intel: "6376e1a088741ae8406b1492eeae7b4ef08a9162ce01f266fa333081df589ede"
    "hu"
  end
  language "id" do
    sha256 arm:   "4ce331a602c518bff38ffeac3fdc040ccaa8285f0d6625e3a8571faab5010348",
           intel: "ff56e54d4227d87f58ee1b34913d09047a25538e6309df6f9884a370589739e5"
    "id"
  end
  language "is" do
    sha256 arm:   "48919a05992d58bcec4b02b68625dc4a1b3b3806bac2c53cbf78ea2b5d6963d6",
           intel: "1f838ce136bce11025453a4ffe5acb5ea8e2f052ec5137487b8608151261ff09"
    "is"
  end
  language "it" do
    sha256 arm:   "056b27c02b7a8be6ad613cc31cbefb57caad0cf5ab035e452e4ab0f34eef3b8e",
           intel: "5fd94136adb69ccafa739a53b8bcbfff91f878827b7b9d4265f81ae74445ad90"
    "it"
  end
  language "ja" do
    sha256 arm:   "bd8c445e7b761fe060ae9967de0dafc55641da3ecba7ba600478b73290d86c3f",
           intel: "c1ff2a4a7bd4a70b802095e180024066ffc4d5672900b3c5723e36d8b5153dc9"
    "ja"
  end
  language "ka" do
    sha256 arm:   "3f0a3f0daf494f938059e429a852e0da4ee1e8c9df88bb389e04a7fb23ab1eef",
           intel: "92dc47a256597663dd4cfe6b9416198cdcce215dae9550fc08e783518ba383b2"
    "ka"
  end
  language "kk" do
    sha256 arm:   "5dfcd3c988ef1b442e8b8d742208a0551882d5a5653bd8c59158e40e6c5eca9a",
           intel: "0a953455108fa800953e4a701aa1184b2a74743b67b6958e5408dd59149aa37f"
    "kk"
  end
  language "km" do
    sha256 arm:   "41944fa675f01da6b66239ebce2a160aee09a3d9fddf9cbb15fa1c09759f9ce4",
           intel: "42a19d6efe8ca99e35d8a3898ce0ded9a42d696424a97c8acdf089e7d7b0f4b4"
    "km"
  end
  language "kn" do
    sha256 arm:   "d0c5a1b80a6ce2b65764f8eb5e9c966f7448c09ec02cb7ac9d0fdec6b60350cc",
           intel: "5965b901adddc3d34ded4fca2d019d059041eb391f6c51bd7b9c9a6a66d73a2a"
    "kn"
  end
  language "ko" do
    sha256 arm:   "9a9093c0d13921b3ee8e11ee38fbea5afbf8a983e2ccd58681a1151c1c12058e",
           intel: "36972b986e89c59f44eb0566b2c9892bbed4ec64edfc065b8693a7c0874d38db"
    "ko"
  end
  language "ks" do
    sha256 arm:   "b291ce6e4466b5b853e9e1ecae0a26990f4565bc0175896c8268de3b8a3d8d26",
           intel: "0cb90315833ddf1b6a1074a23a89f994de6a959688c2e6696066d98a77fd707d"
    "ks"
  end
  language "lb" do
    sha256 arm:   "a733bea19f2a8f8be4e7d1aa618821fae66574bcdbb293a990ae31ad59353a6b",
           intel: "af2aa4681f0ec700391ab2fe89f8172f475f1cc2b5f78f69afa831660ba5fdb7"
    "lb"
  end
  language "lo" do
    sha256 arm:   "e095b16c741dbdc472b3be6d79d1533802167aa5d17f8dbb22619b7aa3791c3d",
           intel: "96bbb2f49dec9d477f4bbbe2586c21f2b9dc09b1f574ae69598b4da7c44c0b06"
    "lo"
  end
  language "lt" do
    sha256 arm:   "57529b025c1dafd8e0862665f48a0bbf3f73a2bd817060fc4d8c276ee87bfaee",
           intel: "05e8d731e99454f727714420d8610eff77f816a5ecc7d50d913360f4bd3d1489"
    "lt"
  end
  language "lv" do
    sha256 arm:   "144beaad58a3c1e15aa7bdff0db7e6b0c07f5ca7f020f51ff402e0ab468077ae",
           intel: "52d568e6df65f788a1ac6e473a6e9d5c35a911b48fc7ce42ddba459675ef6dbc"
    "lv"
  end
  language "mk" do
    sha256 arm:   "461a15fbfb18aa6fd402a7004c5bf0a697f2a195fec49a1c5c130c74bc811149",
           intel: "2c4620639cad3105acf18fc159634315d2b2c124a5f10f95c42b7c6d4b233c5d"
    "mk"
  end
  language "ml" do
    sha256 arm:   "41a0e977cb6f07ed4302190ce9084a03b3f88822bdb922a18c7b5d1db16b746f",
           intel: "d61ef9ca1d21d566b8685f3d70846deeb2c5c664e64ef3b7cb8ab2dfd0024f99"
    "ml"
  end
  language "mn" do
    sha256 arm:   "2a518f68e1cc6a20589f1dd84370bbc323a5ed77fce2783a254d43f25c4731b1",
           intel: "a7ccdacb63f42aebf12805beaf801306881208e6578f237c3264e03b264acab8"
    "mn"
  end
  language "mr" do
    sha256 arm:   "b4c4d7fd10339d173cfef9d42e4d46fdc18552c1b9a2a87475f0bbe9ebd97df9",
           intel: "38d611d76aa234c697f3b8682eeadfadb23d3b77d5cad602f60f945455a551d8"
    "mr"
  end
  language "my" do
    sha256 arm:   "8e2be701257beb3bbb94b7f25ac17fbb406288235b5d8ab2a6e93c8db3a5c6e5",
           intel: "b175e6629c43392b0a314afd290cf0ba28369d545b76d2c4af66b3e8774f6692"
    "my"
  end
  language "nb" do
    sha256 arm:   "a47236bc67cfbb91fbe6259185162a4698f459b88c932a258ae04d32a033406a",
           intel: "dfcc085cbce4816a0d115236e897f4a531cc497ec09ee0e39e21ef16b3902b82"
    "nb"
  end
  language "ne" do
    sha256 arm:   "982c122270bb8bcb7ec837b63f438a27517a26814ef27459a45316aedc346673",
           intel: "7263a494581561e76911c90faebc0185144a6ad7c5b1306231b50026e7638a37"
    "ne"
  end
  language "nl" do
    sha256 arm:   "c4b60a7accaa02c0d796f089e6a770f11b1ee002a0e0cec2b590a42fb11ea1fb",
           intel: "1c076a262c2e4de996b760b5936f9abb520edb254719d8edd905aff7fd6c99f7"
    "nl"
  end
  language "nn" do
    sha256 arm:   "f4cab8b01ee151196e565d47d676a47837beabeccff755238a8570f59a930b8d",
           intel: "6c6c0c98a0646d7e716eabe27279155f197a518bc07304e55d8da53a3362c6e6"
    "nn"
  end
  language "nr" do
    sha256 arm:   "da65ff5dce28a9ce166ef92b890d940d1573d233361338caaf18dc16a303659c",
           intel: "8d3c35a741ab9c6f3d6ca66016150b05abb834870fda1daa16c9152971f174b7"
    "nr"
  end
  language "oc" do
    sha256 arm:   "68490c1a584b76b8e04e178b2f1af104c0f8ef3c45055dba1defbfd59c9057ba",
           intel: "f0de16b7aab5763c54985bfea1667187968deebf1c5a76ddadd0214c2d027e84"
    "oc"
  end
  language "om" do
    sha256 arm:   "d696856bb91f97fe7af0e6e54cbe4977cd5c5266fe8ddc8ad401c6b9e5eeda7c",
           intel: "401d225a3412fc3e2a91f1b6249b6214fcb4003e72a6e0866a33e53ce951dd6a"
    "om"
  end
  language "or" do
    sha256 arm:   "6fcb1195355737735147d61349706b5707db1ad7aa7a9c42eff142dd7deb0245",
           intel: "8f161ca4fdf01893249fc49862a9ce41b7ded695cf64d4c7c213624ac2280627"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "85bb922b9e747d5b7801e13e71d14e46d8eabd15393fdfb5a00661b401e08272",
           intel: "432ed802f1818db9c52e818c51a08f9af3303cd500809ca62fb8e85b1ab18228"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "b3fbfc10f2c3213beefb8bf3ce96bebb1087717fc8dd6cc5a4f592fa4bc89d13",
           intel: "13c1d196866854215f00c186c53519648459e328a900139b0b44e2774c819f5c"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "e205d8f6a56f58474c2489c079bca3171d0eb6ad3553dfd040dbbf2b2becc2dd",
           intel: "70f3a391981b9beb8169ac13277011b9b2da91b20d2d306d934f36446f3294f8"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "d1300079371bd363ed9f82303046d27e99959a558e231cd3430373a80cdbf302",
           intel: "9f9a5e4c15b24efaa95ec7d8e72b7be7490c7fe2b98ad89f3aa103294d52c952"
    "pt"
  end
  language "ro" do
    sha256 arm:   "0aab9416dd2279dce46150b7c6c5efa1fd2c141a6935b8fafea5c8dc7f957d20",
           intel: "58bb7c2b39f2e4256a39e8b32eb3eaad4018edfb3c29d9bf714abb8ea6af49ae"
    "ro"
  end
  language "ru" do
    sha256 arm:   "8af4b78c370c20c49a331f9148b8f334983735c3b54a4405b5bc7a32b6bb018a",
           intel: "52aeb68f8c9dc02a11ce510c65255ba578e8216d30dc489c9d6ae8c88d20f1b6"
    "ru"
  end
  language "rw" do
    sha256 arm:   "1cb40db014334b43fdbbce99ef673da2182cc9e86ce785eb49cef21cc66bfaa7",
           intel: "34e5142fed7d20fc879fff3822ad08519e14e301e60a501d3898940c008dfb15"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "fd0a2585cf8442c77a009099cf80ae957bf130df9ae9d5a6b2c42bd81710edec",
           intel: "60c0f17b1922640c49fd12a708f85dbb456d5e7a335e8bc99a290f5956ebef30"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "eb4020224aeb6e4ab99e948cfe41814bcd750dd4dce48cecb21d6e4d5b246328",
           intel: "fa32fa9c1f55537f8ae65ca974e5abae848d864142b613a0a2b5170e7bfc0ed2"
    "sd"
  end
  language "si" do
    sha256 arm:   "e911c0ea56e14faecb2fa7885522187973c96b66798a0dfff9dc48e1c335a78f",
           intel: "b622a68584507c3f3140f047629c42a5e15496d4a45ce1c00aaaab555b7cca49"
    "si"
  end
  language "sk" do
    sha256 arm:   "86428b7e8f23e83a9770761bf915a345b8b6de42106df9c0ad9ad6aa88a022c5",
           intel: "9f18200b8f938e993597b2646fc5b9f2132e46e55789f7c04e36c8878e4df7bd"
    "sk"
  end
  language "sl" do
    sha256 arm:   "3d389524432303d5fec1a380d2dff2c6dd1f8baa0310619c3e52f46c5ffd5d49",
           intel: "4cd6d5ea3a0e1187e2e7a4b08736a5ad1bc01306750ff9fb6bf9083c1a8955b6"
    "sl"
  end
  language "sq" do
    sha256 arm:   "34c9ccf484066cb7e275fd2377d21a93906f2cf76efb9fec9ae14a844c4a03b9",
           intel: "feec950066d1e331e01df771a174f7f137119adfcb938a6e8ed9dedafca53203"
    "sq"
  end
  language "sr" do
    sha256 arm:   "2669ea3fc307913a7593bd9e474a3621cc9dffa498787174983d2d4db79f2489",
           intel: "30be2b359754011c2ab5ce4e3e5a6e187291d6c3d018a4e66ad05c5d495cae53"
    "sr"
  end
  language "ss" do
    sha256 arm:   "b92c2af548076f721a0f7d6b972943cc3cc9945481e111bbd032f7b2170a7734",
           intel: "fcb620c6ee7e1ea055c9ab5b89319a4cfb7b27ae2a5e43c1e9bdde70ae52f3f7"
    "ss"
  end
  language "st" do
    sha256 arm:   "34181cbaa0d3e7f1adb3843ef2af385cf15d6bc55908b25301067485b8dee209",
           intel: "79340daefed13a78049123c4dabd45cac548fda69dcc883ed8b19087f8e59a95"
    "st"
  end
  language "sv" do
    sha256 arm:   "0769b3dc83e425f91e192013f3661796d2764eb4de0a8150af9af9e4a355e3b1",
           intel: "eed5cde6944a0d4921409e751df7060a617986fc67a5a19740c85cd57b499f9b"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "5f3ba1e62f0892e27dce9446075883a14a7696b9c9501976a344b192e65b952f",
           intel: "4e1d8edef4f284015c4668af758227346a1b507222c11396c0989a27e2c4e501"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "046eda196a790904f5f96bda5ea3d5422ddefd2fc9dbb36e2c8fb8044cfe2272",
           intel: "906895d0146ff1ea087e78394e75bb850427593031bed44919b2f158572e002e"
    "ta"
  end
  language "te" do
    sha256 arm:   "cccacf7b495f3a301d884b95e1fa92e6d69c4841c1a98d57ebd1199231f33473",
           intel: "b5d080fd6ef8954393b5c9a77ad1688e405552cf16bb2b6d47e960f4bfedf753"
    "te"
  end
  language "tg" do
    sha256 arm:   "6dc8d390391258c1e62c44595212268a2c12e478bad353a270160250bcdd304a",
           intel: "7d25053f1590523776a4d14bf0bdc9fccff15689236677b5e0ccdde120e3a79a"
    "tg"
  end
  language "th" do
    sha256 arm:   "d3244ab3ef683d5c7410793d2770b24be0a993b314df80dad6ec00374d793637",
           intel: "192378b602d1b56314a473db9320b91738a7b0b7bf63492b9d8d46ab0fc1d07e"
    "th"
  end
  language "tn" do
    sha256 arm:   "63013d3576e0cc7e1c1f09404f4398f85dcd502489165650965e1b9c41285c8d",
           intel: "789a80ba199508f693aeecbf380d20369d8be6b6b265b17630044431d1da538e"
    "tn"
  end
  language "tr" do
    sha256 arm:   "60449db37a3508e998a3b70d87fad0d346ca7a575d7f5efd696e7464249c868a",
           intel: "0f96f2b6af8f0fee65ec981ea5b3678dcb53fa028315e073f009dc1af37075db"
    "tr"
  end
  language "ts" do
    sha256 arm:   "19705fbefd52f8d1718ade13fe709cf7e6ff992c293f461214737c7d3ab92062",
           intel: "6f62765074be53d602b65c89054492b8542eeb926ea35394a0cbc5e1ed67a5de"
    "ts"
  end
  language "tt" do
    sha256 arm:   "5c394bfc3759fbb74a46b242699b912430e2fc4a2c8b6156182e4e7a3b45855d",
           intel: "95a191f7e10b14615327b876850c1321d54918ef621abf87def87a7a7d7f40f4"
    "tt"
  end
  language "ug" do
    sha256 arm:   "6b4abdc49a23cfe49466edfdff96df35a80fbff4563a88e182d2d5fdf33f13d6",
           intel: "ee93056f67c3c0b4dd7d1847c861e0e7efaff7dfe4cea872a1cbfa1913184007"
    "ug"
  end
  language "uk" do
    sha256 arm:   "0a37f94b6036ee5c1eeafa73dd503847c191fdbbef9d27da6248a56708813e94",
           intel: "cb9e38635d44d20141b631401f9aca8a3b8919595b2cb0b4194dbb8d8a76eb14"
    "uk"
  end
  language "uz" do
    sha256 arm:   "759a1249ea0114912374ad4c6da2cc3ff2ab8f29309bd3e8cd7db426b8e214c9",
           intel: "6f2bf31e1796a7ac826526cbf9b06d11faa5f1273980799a03c9660aba592407"
    "uz"
  end
  language "ve" do
    sha256 arm:   "b11377cbd62c4430cae0d9c8b701db14dfebf74a3aa327f63e0c1792e1a21e49",
           intel: "238866104619a3e3140cdd17ea9f662dd4aee57d1ab3ecfc006436a93f9b7fef"
    "ve"
  end
  language "vi" do
    sha256 arm:   "6e18d67d7152cf6a23c3e0d8d4ec89d75979ee2ee6bd608b7375993e310894b7",
           intel: "efce7311b9d7467daadd4ffb06fd47fad0f11fb3d35ddb6b2a95eb4aa39375f1"
    "vi"
  end
  language "xh" do
    sha256 arm:   "622f3425e58dc54a9a4dd26c7fc294b9cfa7416a38e23b2bf8a334c5c24bcf59",
           intel: "e6390a6b8ccf5d27d267bfe059c10f4bb8e40f45995edc776806e660577a8c97"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "b25c449e089a694b932b21aebf8e2c238fd0c9ca5d956f2bd94985d0bb758dab",
           intel: "de26f77ec63508a75c2af47dd3ad5730527718e682fc3e470da5481cec07d79c"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "c3e3cf41b1fade54b17b714ed090edb28cb8c44c5b9cc6e44cc8f13a3baf1fbb",
           intel: "c529ab7d2a6030484ba58286bfdb3171e6d24ef786cb8a4ea2d9431e9e2b5e34"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "84158524618da9271356af03dbb3f60f15bbe267b247bcf1ecd936621b327d95",
           intel: "7325733dbab6b017a55df17b91e24c208202edfd8930649bd16554c5147393e8"
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

  generated_script "SilentInstall.sh", content: <<~EOS
    #!/bin/bash
    pathOfApp=$(mdfind "kMDItemContentType == 'com.apple.application-bundle' && kMDItemFSName == 'LibreOffice.app'" -onlyin '#{appdir}')
    if [[ $(mdls --raw --name kMDItemFSName --name kMDItemVersion "$pathOfApp" | xargs -0) == "LibreOffice.app #{version}"* ]]
    then
      #Test if the .app have quarantine attribute, or if they are already launched once.
      if [[ $(xattr -l "$pathOfApp") != *'com.apple.quarantine'* || $(xattr -p com.apple.quarantine "$pathOfApp") != '0181;'* ]]
      then
        echo "Silent installation has started, you didn't need to use the .app"
        echo "Add language pack support for $pathOfApp"
        /usr/bin/tar -C "$pathOfApp" -xjf "#{staged_path}/LibreOffice Language Pack.app/Contents/Resources/tarball.tar.bz2" && touch "$pathOfApp"
      else
        echo "You need to run $pathOfApp once before you can silently install language pack"
      fi
    else
      echo 'Silent installation cannot match the prerequisite'
      echo "To complete the installation of Cask #{token}, you must also run the installer at:"
      echo "#{staged_path}/LibreOffice Language Pack.app"
    fi
  EOS

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
