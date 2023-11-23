cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.6.3"

  on_arm do
    language "af" do
      sha256 "43e5c529532e9f56b14bf1cc309bfa44d7bf3721b761bcd8be8c955b8d31e0b2"
      "af"
    end
    language "am" do
      sha256 "3bf6342cb62c75db4c2bc8cb6de041b3867c738688793175ad550ab24fc69fdf"
      "am"
    end
    language "ar" do
      sha256 "10d9a440b1b3d8e97af624b964d2c43638c5fcf2f8459839216450c82ac3ef09"
      "ar"
    end
    language "as" do
      sha256 "cea3b0dff4428acdc8913f682eb13bad68ca49c6f14afcb57a62853c15ee987d"
      "as"
    end
    language "be" do
      sha256 "0ab48f4edd3380795ad1e9fafd9303e97551bd9bb2f54ca8c8a667be0d6eae15"
      "be"
    end
    language "bg" do
      sha256 "8808ed36640aa5bc68e6762aa5508323f67972eebdf6afad6fc03b82927d2469"
      "bg"
    end
    language "bn-IN" do
      sha256 "f314ded0cecf365172b1e6df6e8b7b3c1749f56aa517cce079093809522cef3d"
      "bn-IN"
    end
    language "bn" do
      sha256 "95fee93ba875eca6fe10b726f2980ba9183ac0fff0c09ac5596a6ae882a393f5"
      "bn"
    end
    language "bo" do
      sha256 "c56e00b63cdbf7919ffcac67c27549418dfacf0272002b4fba46e377bbb65947"
      "bo"
    end
    language "br" do
      sha256 "368447e59a4183df1e06fc98a44402ebc14c6091a1a8119cf43b0a0d9cea4ccd"
      "br"
    end
    language "bs" do
      sha256 "77a045684d9ce847264fdcdbc2d3a46c9cf8516aac18b0a57b4313d99ed31473"
      "bs"
    end
    language "ca" do
      sha256 "59cdca1d3a0caafce5a86ca6a33c368f1b043569554a7cf9f460004ddf7eb6ea"
      "ca"
    end
    language "cs" do
      sha256 "73a492a9b6d277b2ca5e0c2b6127e7c43a60978776c45691369eb8ef5ea6b91b"
      "cs"
    end
    language "cy" do
      sha256 "99d0d9d9acd64e2957e3228dfde5ced21964d2989db9b0706e7ea66290b4a925"
      "cy"
    end
    language "da" do
      sha256 "70b3b545daed0864946c896cc69b51c3666fbb6ff1b59451a3c9418a6dd5b429"
      "da"
    end
    language "de" do
      sha256 "b5769856bf8ac9b61f96987541d6cd27242653d53b45353e9eecaeee34ab816b"
      "de"
    end
    language "dz" do
      sha256 "be56ae98b98b2be91876dc6f8ca2320748d74336c66f9c72152c4bed9d593985"
      "dz"
    end
    language "el" do
      sha256 "de8c203b8c2d1082b301f7eb2c5d1e30511c66c945b02f26845838590481f607"
      "el"
    end
    language "en-GB", default: true do
      sha256 "169a00e3aaa426e82f56fb00df24c8876a0bcab12ebe259aef52ecc6a5a51c20"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "25a9b5a900d538bb311afc454dac605a0fda2a7114b2e889ffc7c9ab15c9d741"
      "en-ZA"
    end
    language "eo" do
      sha256 "494b112cc5775dab37409ce0c138e465368446b2ad1f1ae9aff1b8cfadf39ac3"
      "eo"
    end
    language "es" do
      sha256 "9005d317802fbf6a135df2ca8f150e0da9508668dbcc818797aa04889e28747c"
      "es"
    end
    language "et" do
      sha256 "7b864e35dc10f9b1ff8259413e2fc0b92fb1aa025a5f1f9ad0d4f34b12ef3a58"
      "et"
    end
    language "eu" do
      sha256 "c72ea70f888256d19aaea4772f4537c26600cf30c84e63b424365e087dcbb33a"
      "eu"
    end
    language "fa" do
      sha256 "c5ab6c8bf78855ecc54c78fa837e41fe8b36f9cbcedd01b4e8f45da8902e7728"
      "fa"
    end
    language "fi" do
      sha256 "6452002889b5423c8868faf9a706f425acd3412f3d1e0c6d51da3d9642a9a431"
      "fi"
    end
    language "fr" do
      sha256 "d92e5bd90e531365bb94af9e3fe35b68c8ad9788dbb57188d187117a4425a0dd"
      "fr"
    end
    language "fy" do
      sha256 "37fcf0aa1e6939869dea0cb259f9c3b2e6fdc476c592643d17afbebc21e2dea0"
      "fy"
    end
    language "ga" do
      sha256 "9d49999292fd03160bb39bb0ec52c9ac36f9cbb3f7a6a8caa4dd9f23e3afc37c"
      "ga"
    end
    language "gd" do
      sha256 "b49d9256eb16320dc24f578dd6b7ef4a24c81c7bda128811afbea8c02ca08b35"
      "gd"
    end
    language "gl" do
      sha256 "df4fdb9bf30f6bfb17dc4bba2d0103038eab33cc665ef25d8d204d8d5ffa3257"
      "gl"
    end
    language "gu" do
      sha256 "0de3bd361670ec5a334dca6eba747b315f6205dbf6cd493e56350594e43f8779"
      "gu"
    end
    language "he" do
      sha256 "7fc7e83d82a9c435a565b793d7929b4c862eeae9118f7c3fed9f1195dc41c6d4"
      "he"
    end
    language "hi" do
      sha256 "8ea91f12dd0445178396ed4c0877d6a908b874088869e3cdda2fcf6b5f4c335b"
      "hi"
    end
    language "hr" do
      sha256 "06e49302446a1c76019bc390a37438efe6cd9c08eb54b37fda103963b1ef7b99"
      "hr"
    end
    language "hu" do
      sha256 "c2634707047d610c9ecce3ee4708c0176926c7e3b8336f9c2a6b00efe3a7d4b4"
      "hu"
    end
    language "id" do
      sha256 "6958c43717e9643843036cbe890e5dcd779d328582d5999cc1c3429e2784b9ce"
      "id"
    end
    language "is" do
      sha256 "c2a16d475b0952bae53927485b5892d673c5f4bb517010c2850d27dc3883e5d9"
      "is"
    end
    language "it" do
      sha256 "ecc936f5b1eb83abb8f5847ef8593ddd0528792af5fcd2b95202cd49c4ad4d5b"
      "it"
    end
    language "ja" do
      sha256 "02e957c8474749277120249b936fe30964f7954e5113c70eacac1c546ea96083"
      "ja"
    end
    language "ka" do
      sha256 "fbf64859ab4d3a4cb9331eaef75328632231ce3929f14968ecc171eb8d2e0177"
      "ka"
    end
    language "kk" do
      sha256 "71ea39da7e3bc43e5da7565557020946d51823a2a213e119644753c1c6abd52f"
      "kk"
    end
    language "km" do
      sha256 "3a4361e4f051a40d81852785153b205bd1b8d221de3e419302d150ce638eb7e0"
      "km"
    end
    language "kn" do
      sha256 "4616cd27f21639246429f6153a7406b3b693f36d872c5c66c75d38d075109839"
      "kn"
    end
    language "ko" do
      sha256 "61b8296720ceaaafd888bf83d92eca1d823af9a01c9cbd7b1714e1a6c438e749"
      "ko"
    end
    language "ks" do
      sha256 "3b460d50fa2b8a0d1aab75c7772198e0f9cfd8229c3a41e43e278f57cffaa940"
      "ks"
    end
    language "lb" do
      sha256 "98df04852d3de488827d46e99e0727208b202aa17aa316b02d980ea4ace0056a"
      "lb"
    end
    language "lo" do
      sha256 "8890d1bb05fba09bb583039b823f3eef1dd58fafe15272b39bbc1418a67b5127"
      "lo"
    end
    language "lt" do
      sha256 "937ed4c40575391a5655461a104e8ba7da2d0a0017cf89e762269d547d39108f"
      "lt"
    end
    language "lv" do
      sha256 "f618e542158ea5423323d1e623bce6cefe1a2d1fd08176339ab79f4a5eeda8cf"
      "lv"
    end
    language "mk" do
      sha256 "f53e506b57f1b7df83fb8e4dbae2fd1fe483ef71c6bba347eaaba8966c00da9e"
      "mk"
    end
    language "ml" do
      sha256 "eec11144b9db3273d75aa62083e1fbdf5cf91faebdb20221622574cf287589a7"
      "ml"
    end
    language "mn" do
      sha256 "9c834999d1eeb5ca4464395ce4d752e081d9e08216b49f7418515209058e1328"
      "mn"
    end
    language "mr" do
      sha256 "2848bf3f98f2e345db0b8ea05afe778fb63a8b515d827efaad27cd8e56e94647"
      "mr"
    end
    language "my" do
      sha256 "257d13713370d7dd66f99d56159d107d6c8ba030cec068f25ad239945052e031"
      "my"
    end
    language "nb" do
      sha256 "20d8c505e52931df1a39aa598e6d59db0b27270d58aa5827ddda40ffc786c628"
      "nb"
    end
    language "ne" do
      sha256 "782aa3634e34b008179118ada934ef1a086e1978af638686f4299fc99d149f6d"
      "ne"
    end
    language "nl" do
      sha256 "1a1ccfb0145ef3f355ab0cb542c3466f77bd40c7790ee1794a11a60fbb0ad8c7"
      "nl"
    end
    language "nn" do
      sha256 "32b3e8dd2fa444b2f0cc94d5a4f2b386f07ad0515011f93648310e5755cd630e"
      "nn"
    end
    language "nr" do
      sha256 "e9b0733a0860f377c5aff074b55422afb49101067248fbe06d1d13141e397729"
      "nr"
    end
    language "oc" do
      sha256 "833b8b52cd7538764ec5ae026578c2872df4e6df25a8df8c08c76440c4c6b8ae"
      "oc"
    end
    language "om" do
      sha256 "91cf014ed9f0221d57c4b0838fc887aa4c6f0ab1323a500fd4d39201504c243f"
      "om"
    end
    language "or" do
      sha256 "dfa4e650150aa8eaf3d2e68b7226b3a17bd906026daff03b76cded9b5cb583e6"
      "or"
    end
    language "pa-IN" do
      sha256 "e822c6621ade5ce9a64235044a9b9f57a6dc153c3454459cb7fd40f53bba60da"
      "pa-IN"
    end
    language "pl" do
      sha256 "245b2ae00cd1c918182d3195ee6c32da4a259a6bcb97ee111cb458fb95683496"
      "pl"
    end
    language "pt-BR" do
      sha256 "8791e44c93592f9c0456c6dc60b6cd63304dcc807272f6e2450264b3ac19381d"
      "pt-BR"
    end
    language "pt" do
      sha256 "f2fc00a50c33d2cc04060ddad42e2e2e0d9c6f613b9e7047e87f3e8e2c8e2979"
      "pt"
    end
    language "ro" do
      sha256 "04f88601af56a9502e31c5159f8e5447fc143f61a9f0b00d27583f7ee10a3f91"
      "ro"
    end
    language "ru" do
      sha256 "048a111815d5ba41bf55f0b5ad8f62a54f91f0b27d99b9634a0963a3a96d3626"
      "ru"
    end
    language "rw" do
      sha256 "2e9f99f1b2427e7508c190e4ac3c03bc75b9c97469efd37edc3876eb77b7059e"
      "rw"
    end
    language "sa-IN" do
      sha256 "8cc37b08289c66ef0c4560d52b5b82bfd10c3b67f19023f2e5786ac9bb591212"
      "sa-IN"
    end
    language "sd" do
      sha256 "8dfc5f84b6dbbc985fdc2ac1e3a8d10b56b03b138bb9624636c21fe552ab1c5d"
      "sd"
    end
    language "si" do
      sha256 "8d04f380760d15494788fca5341ee3d37e728c40c6fc7548dc8b6ea9a5bfb0ae"
      "si"
    end
    language "sk" do
      sha256 "a0b6e0b4c7f47c454b62014e6973c3523b5f9786732748ce3e46080ca8369631"
      "sk"
    end
    language "sl" do
      sha256 "4d1da0507c59b65329d76dcad9a7379c43da263dc4874656c6130f7f0cf4afa9"
      "sl"
    end
    language "sq" do
      sha256 "2d771654eeeaf910174a641db5d2f0ad93f9df58d655b808746c6b4a7ed5a5b5"
      "sq"
    end
    language "sr" do
      sha256 "10dba6c7520c159d258e44134550a32083dac93ae9c0e141f4e8d0ce20c9cc23"
      "sr"
    end
    language "ss" do
      sha256 "bca1641cfc3d2a6726226d7c5f84a660111f00a048e065910aa0e9f2e9aba75c"
      "ss"
    end
    language "st" do
      sha256 "bdcbc1535b552ef5270a62d4e2fc946b014b319bdd03a6410d8d1af51a8322de"
      "st"
    end
    language "sv" do
      sha256 "1fb14bbd8736a3d489c1ebff977f784fd3389f0724995348d077cbf6ea83272c"
      "sv"
    end
    language "sw-TZ" do
      sha256 "9bb19b50724d61492876340070232779fb6ba69eac6ef468bccaae3db7af4a35"
      "sw-TZ"
    end
    language "ta" do
      sha256 "bc7be40d04c9814a558ae5fc28ca1d319195252b669015d1af804d581c12b7c1"
      "ta"
    end
    language "te" do
      sha256 "88465a0f80db398fdeba64909675753505587eb53c0c76bf021990516669e853"
      "te"
    end
    language "tg" do
      sha256 "006768a5349cc23a13c4c867a91244cb684bdb4637ec37c6d7bda23c0b598e68"
      "tg"
    end
    language "th" do
      sha256 "22076f89ef27cc38e574a411ace54b95e2805f8285e6f0b0575074e72b11db62"
      "th"
    end
    language "tn" do
      sha256 "d28d31f1c6835cace8940eb78055de182133effbea89093047d6d3844f9b598c"
      "tn"
    end
    language "tr" do
      sha256 "122f3b71faed1ca31b355d85675a5178a275026d974b04aeae9af17582533b82"
      "tr"
    end
    language "ts" do
      sha256 "a2fc5d3330a00cb6489a723effc8b0b34bdaee4eaef14916ae7f11d0a471efd7"
      "ts"
    end
    language "tt" do
      sha256 "1b0726c582d959853d6409fa053a71541781e3ef84b0b3e9801d28c3bc9a7f87"
      "tt"
    end
    language "ug" do
      sha256 "4926fd7c28fe6b6f86d94da9aac635c1e4d5420c461253cc375ee8b5d9c8b41e"
      "ug"
    end
    language "uk" do
      sha256 "d2c884a981dfbe11434118d13a81b6d5ea8dc3dae3e6e22a84bdbf7f1ec384f0"
      "uk"
    end
    language "uz" do
      sha256 "1bc34e301cb3ebacbbc255ccb55fc94a9a0cf6481f8cf83622cd9f268b5d53b7"
      "uz"
    end
    language "ve" do
      sha256 "e6f259a335f143c220e1a3d47a2def12f710c6974d805a1eca4561c047c79071"
      "ve"
    end
    language "vi" do
      sha256 "d768a53d77a5d7ed089861cc44dc46abc7e4b5af61df36c84d0682fed42a96f3"
      "vi"
    end
    language "xh" do
      sha256 "3bee6019cfb1bbb0a231e1d9840c18e436769691570321cbf3eb5985e7a35cd0"
      "xh"
    end
    language "zh-CN" do
      sha256 "17985262a16adf23a94382c278730c375e43a9330331437886b5bc76c848f1d6"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "3efc2e90451a3773bb7f32a603415bf81bd12d9096cf318b982b665b5791f247"
      "zh-TW"
    end
    language "zu" do
      sha256 "6ef7c47868d090f7f7a973d0f86930bf7fe88c9aea4f32501373dc50e6200253"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "691e07d405d6d62cebd1894cf676facf87e0a36ea55deb485ca5631fc6411fcf"
      "af"
    end
    language "am" do
      sha256 "150a2b94d8d8370c3ded2e840997c75bafdf0ec696990acca18b59d5257e0489"
      "am"
    end
    language "ar" do
      sha256 "cbd0122b31302d27a5bde8fc8ddcceea2e08b196fab611adfc91f283da4eb6a6"
      "ar"
    end
    language "as" do
      sha256 "038ad4e01ecd8bf1c8de04e78a6b94ff6603ca3f0525f8c927ebdfeab74b65be"
      "as"
    end
    language "be" do
      sha256 "18d17720bdd473bac4dd15ee717275d7318d3b7afcdbe924f5566c7211f2adcb"
      "be"
    end
    language "bg" do
      sha256 "f866c235f229e027279e3d108df8db767ecd9cc212c5d61be681ca1768a779f3"
      "bg"
    end
    language "bn-IN" do
      sha256 "e41b84187f59c75189e5285cd2d5ffab941efcf201f22d65c86b064067be73fd"
      "bn-IN"
    end
    language "bn" do
      sha256 "a60397bce24bc01606deac4e63f5823414612cd65980e6e9bff3f95a0c742e6c"
      "bn"
    end
    language "bo" do
      sha256 "979cd3585044215f5854f50819793fa268c9b49ab44bf52ec34464753b46c142"
      "bo"
    end
    language "br" do
      sha256 "c940b3a32b14fa7dbac3faafe618ec2ec2139fd3657f49f98790085ebf35ed4d"
      "br"
    end
    language "bs" do
      sha256 "c30286d00dc506a114ccbd4f85a33eef377cf5492ba9bcaaadce4ebf5722ffd3"
      "bs"
    end
    language "ca" do
      sha256 "cbc2e8ba52f63ec9bea1db799b8a0d01663467620e62280e0f2ca35ab54bad49"
      "ca"
    end
    language "cs" do
      sha256 "ae2b2171e524b29aef0c1307be3fe6ecf5b899141737ee039a485c4583703768"
      "cs"
    end
    language "cy" do
      sha256 "43164c54e6b6ab8fc4daa26e7934fd4be6240b40c77f233887f9d88638b3538d"
      "cy"
    end
    language "da" do
      sha256 "8dad6dbf56e927b2817252895ed9b64ed0b43fdd8b8a4795e6764c86db29a660"
      "da"
    end
    language "de" do
      sha256 "16c66fd1fc5c41cdfb6acf57bff657a11b3e30465c1f4fb902266cec3f0ab27a"
      "de"
    end
    language "dz" do
      sha256 "2d1b3e3998ac2a34a55eb0e7904d7ea2bf1a4945399e0e195e0f6fb7020b9f6e"
      "dz"
    end
    language "el" do
      sha256 "944b6df7620b863533d52561dca727554693c55b0a6dac9b5c84f5cd7bb6a6c3"
      "el"
    end
    language "en-GB", default: true do
      sha256 "adb2d9d313f4b9f87dd0a785895a5de01e2ee559695fb7366e111b61fcf0c973"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "8cd0b863b4195f8c94ad88d3fdcb5eabab844deb131e136eee8f6a68cd422829"
      "en-ZA"
    end
    language "eo" do
      sha256 "6d8415b44c002b366e00e874bfe1c88d720e38bd641f5006d44d0576067ea7ed"
      "eo"
    end
    language "es" do
      sha256 "473f560a7e2bc05794304323ff1dea09da4b0438a3fd7a13ec705bcd731bb383"
      "es"
    end
    language "et" do
      sha256 "9412b92e8c9b103876d67e002bbd28a6abeb4e7c9d04a0a790a48cf4b1df05e1"
      "et"
    end
    language "eu" do
      sha256 "0eea060eb1261aff77a489f6a6347a9566ce990be280bb89fd4cdf817842f443"
      "eu"
    end
    language "fa" do
      sha256 "070d1ffc7dfcdd1e2101e5271b6050d2b637f758f693bedc2b1ed030c2a92713"
      "fa"
    end
    language "fi" do
      sha256 "86c708c722de6f3917f32d2db3b703701b817670b79a0dfec273a95d883ebace"
      "fi"
    end
    language "fr" do
      sha256 "8603eb13d0813929a6f4d2076ab3589b872ba65e1798db1ba54809b9472d6efb"
      "fr"
    end
    language "fy" do
      sha256 "0d49a76107e0ad6fe6d0ac33cbd2f912cd06b61356418fe9e4320516d2c5a62a"
      "fy"
    end
    language "ga" do
      sha256 "ce3d68115c2ed8bfafcd1fc3fbe197907586306f23a2ffbc04a5b462e45e1d0d"
      "ga"
    end
    language "gd" do
      sha256 "4f8633eb8defb1429bd9a9b36a5d78cf46f482b1062727f35decfa46f4730758"
      "gd"
    end
    language "gl" do
      sha256 "838e85bbc27d0caddae906a16cbba60d7c85dc762babbfe97f8ee9ad0ecda4d5"
      "gl"
    end
    language "gu" do
      sha256 "221b2f90255ab90efb959f409f3d6ad2fc3a3d4f30d29e154cdf4685b958976e"
      "gu"
    end
    language "he" do
      sha256 "4a88a9abb7f816c9b21d9ac0d2c1efc9406760bd87ab1f9c8789b53171f93e02"
      "he"
    end
    language "hi" do
      sha256 "9b7a0b838058fc0345b430f9822c62566b87b64bce394b96f10107abdfca1d96"
      "hi"
    end
    language "hr" do
      sha256 "b4f8163c9b96aa689b9622bc532ca8f7995144220483de19488194629b044bd4"
      "hr"
    end
    language "hu" do
      sha256 "a22aefb01f0ad327204fc2644287850ad668f9b9c7bb1d74bf6334eb0c1a06c9"
      "hu"
    end
    language "id" do
      sha256 "7a2579344bb0a8e268a85f4a91c97a9accd57488f3115ded39cab64d8923a630"
      "id"
    end
    language "is" do
      sha256 "5b9001b571501af3b1214f2233a6488d7d42dbed4eef1d40a231a827076c143f"
      "is"
    end
    language "it" do
      sha256 "6ff9df16ce96af3af618033fbb92397d236d16ea1fb014ef435fcf569d2ece82"
      "it"
    end
    language "ja" do
      sha256 "80edc2f7c041025d76edc5360e75b671cf5d68726d119decd23073dd4ff78f34"
      "ja"
    end
    language "ka" do
      sha256 "a79f8769a7e6168942759086e7cba1bb8a24540f53d215936567e1bb7f2dee31"
      "ka"
    end
    language "kk" do
      sha256 "847e82233cee5bbb00e594ad04329f3d1683d576d5b603f0bec475d99407e1c2"
      "kk"
    end
    language "km" do
      sha256 "10d930f7d856d2d8f77e110e0288f3a479c1e96aeeae369538a953747435252c"
      "km"
    end
    language "kn" do
      sha256 "b46c2b56bea1a04c38f6f0318ab72e35bc5c0064b7e1018c939447d6a230e1b7"
      "kn"
    end
    language "ko" do
      sha256 "ddd89d39150b33c664c43fa2c105377460a357b2cf1015bfab3647ea32f4ce68"
      "ko"
    end
    language "ks" do
      sha256 "0b839c77ff451b0c8581fc2d4d8dfd6421428d2267b95a01527c3320f73a0711"
      "ks"
    end
    language "lb" do
      sha256 "b280175a1542b9f5007edab0b71708a1dc42befc7e1af5b1e640da28b165d0fa"
      "lb"
    end
    language "lo" do
      sha256 "eb46ea4df71b68b197b5b26abf9d89f81dd575011769e1d3bdf46b1f52d055d7"
      "lo"
    end
    language "lt" do
      sha256 "6b62264f0b9c9225e031ae675e8793d1789d5c6915d06330c4a79791d0f2be33"
      "lt"
    end
    language "lv" do
      sha256 "b837bd6508d6a82629497cc41045348e47a5d228fdba3b80f747d31bc315d10f"
      "lv"
    end
    language "mk" do
      sha256 "b9940810f96eaac928911ee264219ac394b4c7cc93817f25b4942682543a86f0"
      "mk"
    end
    language "ml" do
      sha256 "cd6794c4bb9a24c1486d0d25a4b63a342412a92542f8950d397096e99cd868c7"
      "ml"
    end
    language "mn" do
      sha256 "c051ed88654028df130947bd1679c5eb51598d0e6c1bbb7f66518624ba060602"
      "mn"
    end
    language "mr" do
      sha256 "782f75354c4838f11f4a3fa5c68d7874d1907def37888e6c04f669fce7a78671"
      "mr"
    end
    language "my" do
      sha256 "8ae94fe37208e3530922f031ea8fc423f7cb9c58702ba8a83fc706f48259d7f7"
      "my"
    end
    language "nb" do
      sha256 "45a602bde2f3b49f320010e89a80b44499b4acc887fa66cc2ab9a705f61cb7e6"
      "nb"
    end
    language "ne" do
      sha256 "fcc9bf5e31f968af2b061b2a7d5410e03f0a0c07baf64329919758cb7e5ab81a"
      "ne"
    end
    language "nl" do
      sha256 "744f3bbfaf726f1aca4b23bb4fc3c19a8f159fe6d1e4a2efa0c9d1bbebaa40c6"
      "nl"
    end
    language "nn" do
      sha256 "1a99f5b8e0d7ccd1f610a1e96f5e41a0c870e6153b10a0dc512f5820ff71784f"
      "nn"
    end
    language "nr" do
      sha256 "6205bc6ba25785df69656333d7801eb3a4ac4ca1ae1e638c03f7255cf1fb889b"
      "nr"
    end
    language "oc" do
      sha256 "766ea4e158c4ec9b83204283d09843582955a2d360ba88f0c0100a1dfdf9adff"
      "oc"
    end
    language "om" do
      sha256 "e32b759368e48ce1d65020e4af25211486f6e154befbf78290f0d67ec6d8b043"
      "om"
    end
    language "or" do
      sha256 "c285eabaa135d2da19e5be9bd7275d913b41c4229fc9096c6cf7ea5baf86409f"
      "or"
    end
    language "pa-IN" do
      sha256 "4f19e38675d99feed860851bdc44a552e869463ea4a1b76df587c383a47e37c3"
      "pa-IN"
    end
    language "pl" do
      sha256 "07d02eb06bfad4df0c54a635d7a7ea8da823d24fd3c849bdbc7eb06c8329b451"
      "pl"
    end
    language "pt-BR" do
      sha256 "4cbba9d2b92d8ed2bd5c05c040650a86524f23e455777154223359f3f6c432ec"
      "pt-BR"
    end
    language "pt" do
      sha256 "06557bd82dd21058e4b5c3b49b19295d3f99cbc2495b2ad82f3586a1589b54b0"
      "pt"
    end
    language "ro" do
      sha256 "85ecbfa004932f29bec6b4f680ef19355b1b8edae91b92ba838cef83dc885ac0"
      "ro"
    end
    language "ru" do
      sha256 "1f36c5673e08fd03f88d8f150808721086827d1cc0535bb2d1178698295cfb9e"
      "ru"
    end
    language "rw" do
      sha256 "d5c6cce7b48ca3721f0d4091cc9818ecb35c4627da3579517e0b8527c0058424"
      "rw"
    end
    language "sa-IN" do
      sha256 "c7efad8bcd26d4becc0691df9c263daa29d99872d4f8d016a7ff7f7ad5b1efe3"
      "sa-IN"
    end
    language "sd" do
      sha256 "1d62dc8b96e6d3ac837d5703ee262af37090082dfc09f1dcf472aa74a6bdab46"
      "sd"
    end
    language "si" do
      sha256 "70c994d7b56cb352e9a093df7721b5c059fa9cf14f5534c4c5f78a4fef38a867"
      "si"
    end
    language "sk" do
      sha256 "a94d4139864d3f806adafd7a13de063f1e87fa9ba36b9b9c3fc8216f81cf5e07"
      "sk"
    end
    language "sl" do
      sha256 "877842334cbf6f8f296c1549978aae9886708af7ef63c4fb359c114d2874a083"
      "sl"
    end
    language "sq" do
      sha256 "ca7bba2e24b26a72f10658d38f0231c396b9db60181a919ddebd981a1db75325"
      "sq"
    end
    language "sr" do
      sha256 "2742f734dede43640ebb7af1a6f9916124661403a1b16f8fd1487dad0cae25a4"
      "sr"
    end
    language "ss" do
      sha256 "515e8c94cdb0eec2a4a31db2c87297d126dceab1efe5258501ef8175cc449412"
      "ss"
    end
    language "st" do
      sha256 "ff7941242a29896375739e0ef4472088c9eec680e5412e70fa635f457fa9b5b1"
      "st"
    end
    language "sv" do
      sha256 "208d9556e274408b09dc480d44513703e032038cac4e33574646acfa1fd4e3d5"
      "sv"
    end
    language "sw-TZ" do
      sha256 "fb44d7e975a9ff647187b08427a6acc94437ffda3dd9d932922c61896a6c5809"
      "sw-TZ"
    end
    language "ta" do
      sha256 "a892fe357d391e7d72811915c3d3dd95fdcd1da365327fdfcdfb1a9e87d82d57"
      "ta"
    end
    language "te" do
      sha256 "68558c58c83a8c29a2055e1a7d76a1cf42da85ff5c06dc2d3ebf622d1378573a"
      "te"
    end
    language "tg" do
      sha256 "573a0ce87d871e0bbb724f533022d456745213c3756c3faae19bb7cfaf235753"
      "tg"
    end
    language "th" do
      sha256 "d38926800ed509455559a4c0d1811479cdc2342b2cb3f5a1bae768161d1e0ae5"
      "th"
    end
    language "tn" do
      sha256 "8fc2e5aa70d96cd6a5263ec88b8da5e7cb4506f6f64075d2713f585585ebe768"
      "tn"
    end
    language "tr" do
      sha256 "6201a4bba001111cabeedce0b718b3484272d344d9eb4fe85e77f456655db73b"
      "tr"
    end
    language "ts" do
      sha256 "deb73b16cb1ab3e3d4d1205277c7adba2932ca7a711b247b5c5c33ed5bc9c89d"
      "ts"
    end
    language "tt" do
      sha256 "3e861c7bd4f10c9490d01bf30c1bc1914993e6ab557c61a55baa134747cd7a02"
      "tt"
    end
    language "ug" do
      sha256 "24c6b16fac1a20ab0a0fe0d497d69d06bada526f8e4e4ca429450ec7f24e43bd"
      "ug"
    end
    language "uk" do
      sha256 "070ab9ca627577b5795f46405ccac61dc40151266e92e6a34ef9149a94d9ba0a"
      "uk"
    end
    language "uz" do
      sha256 "5bac0be6f093af3f9786dcd4cf9aa98ee678ab5037b302b01da933c3f66ea018"
      "uz"
    end
    language "ve" do
      sha256 "f81b9e2432c9fe919aac8d281b9f310fd1298c61205cb200c404a5e48714f471"
      "ve"
    end
    language "vi" do
      sha256 "a848c6c84ac3f60ccb11753d91015917f0f8d214061248d9318ff51bd13cb45d"
      "vi"
    end
    language "xh" do
      sha256 "6a7f3a68e775cd2378421733e154e6044fe34a5fc6cdc3932d298317815d57a4"
      "xh"
    end
    language "zh-CN" do
      sha256 "8c3de881e159aecc5ad9079b0a6230fd002f79d7967130fe303a5b9fd5383ecf"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "046b67327dac4bd010e3920a7a82d27c0a4383542180a6c7fbdd7ac7bb7482e2"
      "zh-TW"
    end
    language "zu" do
      sha256 "c57741ec5991bbc2693fedcbb133342f4f290fd950ba235d93b42c83add3bf88"
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
