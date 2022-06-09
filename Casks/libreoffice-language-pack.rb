cask "libreoffice-language-pack" do
  arch, folder = Hardware::CPU.intel? ? ["x86-64", "x86_64"] : ["aarch64", "aarch64"]

  version "7.3.4"

  if Hardware::CPU.intel?
    language "af" do
      sha256 "1a24a0e549dcf6ba591ca3e8fb208cd0e52dae1229184ec736de9aacb50cb643"
      "af"
    end
    language "am" do
      sha256 "6bf2d4283d23dc054514a2b17e8da6b578b8e1805e8dff33d66ba76058662edc"
      "am"
    end
    language "ar" do
      sha256 "f5ab5a38ec5fee15f665fa8d6d590ad583a3ba9b616dfd8eaa41251dde414546"
      "ar"
    end
    language "as" do
      sha256 "1435a7ad843ee89595bc79d0b1edeaa4c56ea1e79eba3db9517412b861218cde"
      "as"
    end
    language "be" do
      sha256 "09752fafb21046a9dda5e4f838442b2b6eca73bfcd382172f042b4efe70cf47f"
      "be"
    end
    language "bg" do
      sha256 "bd1e24703b14ff6a2ab3af2b04160f02b8e2336505443f47e585dec4b0293a23"
      "bg"
    end
    language "bn-IN" do
      sha256 "964174edae9becb44f91caeb7cd511e83b2327024efaf2a4599d3b7201223440"
      "bn-IN"
    end
    language "bn" do
      sha256 "de4497fcb307cbeb5dd575de820927acae627b0fc48b5c31d74888ecfae425dd"
      "bn"
    end
    language "bo" do
      sha256 "99536488513e431e9d83d96adfe6426699dd10549e61ab089ae8ad9351f16295"
      "bo"
    end
    language "br" do
      sha256 "6e332a102f1bad400b4639ae6dd433ebddfbad9a2100262ca8048c8b21abde3e"
      "br"
    end
    language "bs" do
      sha256 "f051b98b10cc7ca6dc8656a709b650e87946ca2a70266b037dfe5690e64583da"
      "bs"
    end
    language "ca" do
      sha256 "6ae8b420536efe05555947a9e7439bcfb0440eee17722bbee5de9cc6c9983951"
      "ca"
    end
    language "cs" do
      sha256 "b6fd402576a35b623ca2de8f518a9544c5fa4bb20739295b23db4d609d2950c5"
      "cs"
    end
    language "cy" do
      sha256 "ccdf05867d9337bc6b42e2353a243ba10f2435337f9b4851c08b34c0098edf8f"
      "cy"
    end
    language "da" do
      sha256 "197af92dd99477d9d00f59aaea0f963650975023f874a915ab3411b8b1947edf"
      "da"
    end
    language "de" do
      sha256 "bece60d7072886c3d8df45972944a5367423f859382856716fa1140bfb777bc6"
      "de"
    end
    language "dz" do
      sha256 "41b65314f96eb619a1934c363dcb9363b195aeaa7390acb2de1985daeab6b51f"
      "dz"
    end
    language "el" do
      sha256 "a0baa4538060806103d4f5e86ca192f5d1c5692df46bdf0321384172a5949d5c"
      "el"
    end
    language "en-GB", default: true do
      sha256 "588e79df93c1a4d4f7e5be841e5a6180d18eab380a0bd6f925895f0479bd3f24"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "822dfad730a0a92cf0174af99f7a363c432394fb8cedb32400fadef6073a46b6"
      "en-ZA"
    end
    language "eo" do
      sha256 "dcce6922420bbf82b3ce9374f77fd1c2cc99ea242756ca66d6b61b56e98ed7fa"
      "eo"
    end
    language "es" do
      sha256 "0fb5c60894893d605c6fa3f6eb9eaad887236df5ce5da36f1dc3eb3a341d9a2a"
      "es"
    end
    language "et" do
      sha256 "1e53205f3712e685f30893f9c11dd80424b53bf602ea4b1b69ee8fef547f0b12"
      "et"
    end
    language "eu" do
      sha256 "f2b02de18fa8b55518f23571ea94972344cf690df8f9bcdfd653e7c5d9734444"
      "eu"
    end
    language "fa" do
      sha256 "a7b774c984eca2470a07a81e506ba2af5e9fb51c4e331eb05a0cbabda4aaa5de"
      "fa"
    end
    language "fi" do
      sha256 "0e17791854f85951176a7e00f588f99cc73fb83166543a89265b9e63f0e3c4d8"
      "fi"
    end
    language "fr" do
      sha256 "f2df5a153bc68b74a1c17729f75ae9bffd24e5ae58c5434f602400bb3ac4bd87"
      "fr"
    end
    language "fy" do
      sha256 "073a57c98e8f4b779df70a3ad4856c26cebb46d785ac00430623fdabf5a0f166"
      "fy"
    end
    language "ga" do
      sha256 "fc91ceb287bff63c7bb9294603f5270d0ec85d22419f60d998b566ff41f2441d"
      "ga"
    end
    language "gd" do
      sha256 "d2b0d846e4e38b9bec4799fbefc637541ab9f24d949075d473d3b7fd31221e77"
      "gd"
    end
    language "gl" do
      sha256 "7d6a11e092bcd6bf34289e7a78ac53f4be1fb0c9959a37fa8e443e4d3fccbd41"
      "gl"
    end
    language "gu" do
      sha256 "acc0ae262e4ea958a1b435603656ea6b9c8e22eedb3fe3bbad223d2c6350fda4"
      "gu"
    end
    language "he" do
      sha256 "d831dcd58e253c60f403f696144ec08dcfeee41421daaccd92f59237b2da84b0"
      "he"
    end
    language "hi" do
      sha256 "45e7e8b40808d88d48cfb1a75b83e407aec410b8e1e0a7ac7390f624ef2fec8b"
      "hi"
    end
    language "hr" do
      sha256 "f09bffa34a43556469d82b8b4cc08b91b76a028e3d4badeaf7a7c1475d7bf942"
      "hr"
    end
    language "hu" do
      sha256 "99215e64818f57c3a6438c9366d81c2e90ffc66eb696de0cddc3c4face4b50ed"
      "hu"
    end
    language "id" do
      sha256 "575542baa2e4e309af90288edb559656983ca63635cbd27f26b9b0770d5b594f"
      "id"
    end
    language "is" do
      sha256 "f750dfe9912c33194a92fec25faff820fc8bcce23c600b5b9c3e05434f9e81b3"
      "is"
    end
    language "it" do
      sha256 "96a24fff909d9d446dd8ded42997d9a60fc95010d0d14326094d7c7f6ef52960"
      "it"
    end
    language "ja" do
      sha256 "3f37918d2860a22fa4d24da105d6fc870190308cacc1658c87ecc3b6e77ff4f1"
      "ja"
    end
    language "ka" do
      sha256 "d7e5a4399b1d6b8be9ebf7de6665172feffd55aebb112bccd8ea4c14112d77fd"
      "ka"
    end
    language "kk" do
      sha256 "007475277f1c7e40a43bf4f278a0c188ecdb8f1c06a224c7a0cc4cdb90b425f4"
      "kk"
    end
    language "km" do
      sha256 "d48831ac51b46d3e22490074f6b592bd14400dcc1b2e38f86307ad057dce9b1c"
      "km"
    end
    language "kn" do
      sha256 "f566d78f9e843ea4243e864e57853cf0cfd5c5e96c9d264390e31cb02caa1fbb"
      "kn"
    end
    language "ko" do
      sha256 "8e9e73a9812c454b7c024fb6f8854c1bccbed7e600e96ab254a6cc7ce44aaca4"
      "ko"
    end
    language "ks" do
      sha256 "95e7ba86909fd2701aa53404034a786bc7e7be4486725ca4cf5a6ebde044f23e"
      "ks"
    end
    language "lb" do
      sha256 "3b8b9bddbeb62e754e0b4fa63945580efd4c4ec3eaa210fa8dbcda18d2ef8f54"
      "lb"
    end
    language "lo" do
      sha256 "47eddeec7f300b57823fd575ae540fc9fdb2e4b4543013366ef783197918c041"
      "lo"
    end
    language "lt" do
      sha256 "5118949f728d2bdadc8794c6ca09cce0a281755372229c5a71b06d66ee37ae83"
      "lt"
    end
    language "lv" do
      sha256 "c483f33ec98b58db88eec4267ed0769edf206850544e94080a43898fa9ca243b"
      "lv"
    end
    language "mk" do
      sha256 "fb51bd22e2858ca7dd2c670466668f769c7a6f70714e07e2122052c53aeca521"
      "mk"
    end
    language "ml" do
      sha256 "e713a85611db196bb229e03ee558f7daa5f16922e67c768ef78f6ff4511439ce"
      "ml"
    end
    language "mn" do
      sha256 "4e090f0c7b10fca4bac02cc2dffe7bdbb25105ee147989ffd2dc4c7bd2018483"
      "mn"
    end
    language "mr" do
      sha256 "71430a01184d6234121e0888cea55ea53b7586d9c070b51e5b077b32cfef4a48"
      "mr"
    end
    language "my" do
      sha256 "489a892edcb4cc94aa58db2980e68bd2ce9257c587f3bed343cb77e77662d7a4"
      "my"
    end
    language "nb" do
      sha256 "54b3d230cc0d74151da0eed568fe72c1e563b6a557974f8ca7848fcf5e70d518"
      "nb"
    end
    language "ne" do
      sha256 "490c6c960215d9c6746f9cf3837cd2f0435ecb338a0b1d19203704a7470145e2"
      "ne"
    end
    language "nl" do
      sha256 "2c5a48fe909eefa5923ec7b64dd9c31d8dd4ced8105ef8c50388f3f039ddab79"
      "nl"
    end
    language "nn" do
      sha256 "f51bd3117e3d29fca73fd32f004dba3d64628a4a871b06bee6a8280dbce670b0"
      "nn"
    end
    language "nr" do
      sha256 "97482b06a191cc92290bfb6308c09675b58f67b86adfaba0f777763ed37e756d"
      "nr"
    end
    language "oc" do
      sha256 "6b5d9523c55217197babddd98d4fdc5a203dd01cb9b22ccdec3a154569ed8a2c"
      "oc"
    end
    language "om" do
      sha256 "f25b3d7a9e69f663d342e73f552c55aaece5eac76fc9e783c632ab0ee21bcf98"
      "om"
    end
    language "or" do
      sha256 "67d98459cddb694e60e9a9518ebab9d7df7a6ce26d8d1efcd42dbac530cc1f49"
      "or"
    end
    language "pa-IN" do
      sha256 "409341a485b212d5b17d5514bdc58dafc567707dc842d69d67c2c8bd76c2f5e1"
      "pa-IN"
    end
    language "pl" do
      sha256 "487b3abc6f43e281bcf01cc030ebbb82b5100fbf266e82c3e339aa874547fb2f"
      "pl"
    end
    language "pt-BR" do
      sha256 "a52a01fae6191586f2fa3612a99e0fccdac7054eac1aef7aa9f8d0004065d4b4"
      "pt-BR"
    end
    language "pt" do
      sha256 "4d0ba7f1670666bec08f0d8c519ecae9da07a4f3edc034dcece15f87257a5924"
      "pt"
    end
    language "ro" do
      sha256 "a554af475da1bad78c6237e4becabd47f41f7b147005b31dd5f2b5db443a3dc4"
      "ro"
    end
    language "ru" do
      sha256 "a287524f86c6430292b75e2996793144f5e1bb4dc15bddc9306fcacb49f03591"
      "ru"
    end
    language "rw" do
      sha256 "cc1f11a077cce22acf5cd498bae96953caa239e117d79dfa49b8ff770f006497"
      "rw"
    end
    language "sa-IN" do
      sha256 "1550e76898fb07d88f6a75fc32b3b0376c90cb1e4c59fa84556bc745eb731847"
      "sa-IN"
    end
    language "sd" do
      sha256 "f9147c380b0dbca29c45e5fb7b3b3b5486117f127cb3410dd18ba7936f7d59c5"
      "sd"
    end
    language "si" do
      sha256 "e6d8250171bf3a62ee92bb667e659965a9c15a7a80efbef1e870ae4eb00e8781"
      "si"
    end
    language "sk" do
      sha256 "ce8070e78864a27cf90a68dfce56da51dcdc311cabe33604f99a7b29fec97f4a"
      "sk"
    end
    language "sl" do
      sha256 "5278ce783ae634cdf5afc6cb65fc4f0f4fc185cba46206a588eb3574fe2fa897"
      "sl"
    end
    language "sq" do
      sha256 "da8692c5804c260938fc92a6dd132af679313996b64995980f9ad309171a80ab"
      "sq"
    end
    language "sr" do
      sha256 "894d1f5cd19800cb3b3b43208ff958a428c6334abdcf65bf24a8d5bf89e4d40f"
      "sr"
    end
    language "ss" do
      sha256 "f763ff1893059cf71059963915041a35de9f46d67b2dbe29c59b4944a6cba91b"
      "ss"
    end
    language "st" do
      sha256 "54f68bb4375949e01f3bbaf2350abc5e53450818f8e335f5976e61349c4a5bc8"
      "st"
    end
    language "sv" do
      sha256 "7ae1fe1ff98e9231abc9fc32a05e03a02691b6d0b1b7333a29e91165be3025b9"
      "sv"
    end
    language "sw-TZ" do
      sha256 "6b31eb5088af78fd79c221620aab28bff1ace4962d0d54552f7db6fd93b32670"
      "sw-TZ"
    end
    language "ta" do
      sha256 "55c330211766434480dd36bfe4b320f5cf79b7efefaa78f31c916853929380b2"
      "ta"
    end
    language "te" do
      sha256 "9751b2f777b192e654500c6e0b4ad21baf07d573541f9f8fcafc083cd3029f8a"
      "te"
    end
    language "tg" do
      sha256 "1b79e801c9f8a67cd92bb0fad457f3b018258c21dc13b21a4555e010b96abe11"
      "tg"
    end
    language "th" do
      sha256 "64bb46e242012bbc7e1776998907b030012eeea1b4c6d874758fd4e9a30488ac"
      "th"
    end
    language "tn" do
      sha256 "3f9c5747a8d46ace75277b8629ac69da43aaa3346bd3c9c099a760edf52be858"
      "tn"
    end
    language "tr" do
      sha256 "c0a8a426a394d49a30ebb8fe4fbea0de45fe9e68d34fc4a14e6fcd1f90f5aa1f"
      "tr"
    end
    language "ts" do
      sha256 "47477d8ff83b8c40618aa3c267a64fa4b939af801ee55fe0ced20d14d72acf28"
      "ts"
    end
    language "tt" do
      sha256 "7647889ccbd0a4e69a4828278d0189e7b2b88d4489e85c7cb8c5fb473717163a"
      "tt"
    end
    language "ug" do
      sha256 "b5fc361433dab5e88fe135b2095b33280efdb51e3eeb4ed70ee092ba80a48959"
      "ug"
    end
    language "uk" do
      sha256 "13be7053a98201ac07d1089fc64fb4afdc703b0faac57efd1f03942cccbe04e8"
      "uk"
    end
    language "uz" do
      sha256 "f538254183f5d7a03a192c99801349f6808f83e91beaa6068bbf996f1cb45128"
      "uz"
    end
    language "ve" do
      sha256 "efa3ec6797ad2f4ed14f3ee7881ffb3c51c159dca7413efb2c3415497da18396"
      "ve"
    end
    language "vi" do
      sha256 "82e0ea63afa6158b2fe5fc4b6edc278b31a1faddd40d56989fb53df65fc129a6"
      "vi"
    end
    language "xh" do
      sha256 "5a300c851023d0f1a36f7b998028e5a60ffb23d95b2b72ffa16b1077850137be"
      "xh"
    end
    language "zh-CN" do
      sha256 "88703b4eb747dd1ec73477167e4172d061a13bf032d802b091cde03d2e56f6f2"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "4caad1db39ed703439fdaff91e5bca080154ec8be35fadd9b0647bb2b95d258d"
      "zh-TW"
    end
    language "zu" do
      sha256 "5d1475a06596560f83bb2a760cd18820dbecfb5912d143acfbf38d4a5304b013"
      "zu"
    end
  else
    language "af" do
      sha256 "828874e55096cf13b701d02a80a7fa12713b0796d568e1357a22f395cf59fab1"
      "af"
    end
    language "am" do
      sha256 "726b0b5a7767ab3b539e7311e9ddfbce33edf0654d6ecf236b1808acc6c102b5"
      "am"
    end
    language "ar" do
      sha256 "1fdc5fa3bde21701448d9ed2f5599c6a4f35ba786d5570e22a32c7c9a19ce698"
      "ar"
    end
    language "as" do
      sha256 "be7fe35f16c10544013449b2ecc108f361db18f3b30cd5807dd7ecf169d3a835"
      "as"
    end
    language "be" do
      sha256 "d97d2bb4ef71f88085b39ae1c1d3bf4c4289ed8972420755c90c50d7ce3b8de8"
      "be"
    end
    language "bg" do
      sha256 "1437c1efabf2e61157441e727f9aa2f42ab7e864f9ad6d90476c7200a4b33311"
      "bg"
    end
    language "bn-IN" do
      sha256 "84170540a466ebc230ba8ade07a531cf8aa60c05b8ed15bbf075b94c79c09358"
      "bn-IN"
    end
    language "bn" do
      sha256 "1415946120eae1070c12dd2667c0e947ccd4dcaf1b45baed6ed2c412b2b2ab13"
      "bn"
    end
    language "bo" do
      sha256 "46052953c49638d8c667a733c16bfc43470ee59f5559ff1c14215ef8f859e27d"
      "bo"
    end
    language "br" do
      sha256 "f343b9a8b979939dbf04a2c2aa0406e55d9f062431086371be38a873e39889ba"
      "br"
    end
    language "bs" do
      sha256 "9bef5a97619777e9ea25391af5ff67dbc8aa01bc38289bfbacc310feda68bac5"
      "bs"
    end
    language "ca" do
      sha256 "28d7a9cea3c7da8ee7b078f483d9f33b807819a3ab6eb479b6e1ae5eaa9eda3c"
      "ca"
    end
    language "cs" do
      sha256 "57fc006f4f04a16454b0d795fc7265582c3250f5db00b9bcccc27456f5684884"
      "cs"
    end
    language "cy" do
      sha256 "9b85b65f56bc5a9c1a1155506e712128b54b404b8daa1abbdb4ac4dffcdaaa32"
      "cy"
    end
    language "da" do
      sha256 "89196e2865932db3df6b17f282db248775db6445098b54691ee361e7ce144a92"
      "da"
    end
    language "de" do
      sha256 "80093cd88810ccf02cd757b10b61c4d544abc170b79d555d606e448def2cddc8"
      "de"
    end
    language "dz" do
      sha256 "bf9ff6b71f68d20b4ed62d8f130d911adba22ddfad51c3a4ce5fcd1860e4f6f6"
      "dz"
    end
    language "el" do
      sha256 "c2837203917052c949039a0b2f7a1b82b422aac3e73b5402deaa622722b69904"
      "el"
    end
    language "en-GB", default: true do
      sha256 "da9210499a0afb36a4c1e4d64d59cdbf970b785bd42f5d0c260a371f43957b86"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "d21102527ac15a9fbd459254ed1a76190c29f3162d59c93f667bde8e9ca9ce75"
      "en-ZA"
    end
    language "eo" do
      sha256 "d11901c0a718ae882724524bf156905eace77004ed62ede6105d340fc42b431b"
      "eo"
    end
    language "es" do
      sha256 "08bf314befe86f51c25b8443f2c231388804ee3ec1f3320a49b6112cdb1db8e7"
      "es"
    end
    language "et" do
      sha256 "e94e321d3ac77cbc7b4f8ca0e554e436ff845f2c04f7d2df529b38411a4b9021"
      "et"
    end
    language "eu" do
      sha256 "1cddc379c0e3ac1afe239b2b15708f02db09fe057dbacf3e3eee79d3712ff1c4"
      "eu"
    end
    language "fa" do
      sha256 "fa973d174c4c8f69a0035a2d7b661f078898ca1963d6618e5309f9e7955d78ca"
      "fa"
    end
    language "fi" do
      sha256 "bdfee364ee8118ac73f00466509bf0ea16aefbb500401ecd7a940701474ba245"
      "fi"
    end
    language "fr" do
      sha256 "bf7fbd4ec1c7051508d5f0a2535617b3d4ab37eebebfdb7c33447288ffdd0e4d"
      "fr"
    end
    language "fy" do
      sha256 "ba73b649a322f1d62ba819ae2c6ce6d5ba00df55f9fe045d70ef765c56253fa6"
      "fy"
    end
    language "ga" do
      sha256 "2bdc46eaaa50b4ea4383aac58df7d6103d0f67fb4bf7d5efc574484c951c35c5"
      "ga"
    end
    language "gd" do
      sha256 "06f1011e7c45ab1b1c761a6462b047b7ae676c6ae9558eff8ee22d266be279b3"
      "gd"
    end
    language "gl" do
      sha256 "0b395d48a6c4f70c62df172d53b046cade9bbf05f9f2b55ead22fe5b5e4bedf5"
      "gl"
    end
    language "gu" do
      sha256 "6ce62effad5b27fdf488c8d4f998bff49ab389c3584c1f229393b354d781ed27"
      "gu"
    end
    language "he" do
      sha256 "bc339c4e061e42123ec11939568a538501fa45e15de979e70b72a26714efef5e"
      "he"
    end
    language "hi" do
      sha256 "6c8d5d7377a93e2386bd585678a8c5e802c67385f3107fe53ce7ad6aec9e072a"
      "hi"
    end
    language "hr" do
      sha256 "4b6f365d61c0d21b72e67abf8b92d951e37a8f324f88bdf5a5feabb758c0d96f"
      "hr"
    end
    language "hu" do
      sha256 "5bc47b31b8a9b0fd206421a1f404eb0bd81d0ee4dafa8fd61130fd2cc05a5b85"
      "hu"
    end
    language "id" do
      sha256 "d6811d927ea80328c872a98fed6cf4314b21363173a64b05012207d5c5f57eb0"
      "id"
    end
    language "is" do
      sha256 "d1bf9e9f915402bf140b84fb9927f3ca9efea8bee81cd02faa563fe6128f435f"
      "is"
    end
    language "it" do
      sha256 "7bc26ca32c49bb0d9220fc476c1d2a3ce98fe8e85c7312cfd852985db48b1d31"
      "it"
    end
    language "ja" do
      sha256 "0eb39df6e1c5fe6f8c0506bef065b76c52fd69dc72b27b615132f414df3edbcc"
      "ja"
    end
    language "ka" do
      sha256 "05703cfbf8f34330d9b956425cd7a89d2550d47d838ae4b378884858f6a024ed"
      "ka"
    end
    language "kk" do
      sha256 "c053273659a14d017b237a86c790bb643fa3462cb88f96230c97cd9394a1ab39"
      "kk"
    end
    language "km" do
      sha256 "3a00b60088c184a2aec929da0fdebba301edb231103c3f08e7303f8afb9ba0f7"
      "km"
    end
    language "kn" do
      sha256 "b15b00a1346ebce8729ecdf1615dfc34cef244fcb16606e27e82a34ededb81b5"
      "kn"
    end
    language "ko" do
      sha256 "04f8ed0459dae712ff125fac642dc9412979fc9dda1397c2d815d5869855bb3a"
      "ko"
    end
    language "ks" do
      sha256 "ba708919b6b2ada6f191b1205d2c511edcfa114ae9da9bc597fecc8550d5bfe1"
      "ks"
    end
    language "lb" do
      sha256 "11b5b7e0b965b30ba3db06694424fc09e384d5d8e3fbb3a876e4b95a8bd50f4b"
      "lb"
    end
    language "lo" do
      sha256 "a9869fd23f652547e0d46c9b1f50445a4c5c5be2fa964c5a9a67e3e9608fba15"
      "lo"
    end
    language "lt" do
      sha256 "4bf2d8a16722e852924637445e033f8427072e30e9228feef1a8205033153fa5"
      "lt"
    end
    language "lv" do
      sha256 "c578715e70b8bb7fdbc0e6e7c00b953216b3f082fb3c55b2409cd0709959c803"
      "lv"
    end
    language "mk" do
      sha256 "cf8d1d59c8998c75610da88a569cd1e7a7a95bee4e2cdd3be07d9ed74e641de8"
      "mk"
    end
    language "ml" do
      sha256 "51e0f05f9319af18d1b272bb042c32fb9520587545b13c5c148aee11d871c7d2"
      "ml"
    end
    language "mn" do
      sha256 "0f9d5ef20c0f244a9d87bd841db0e6b2f80b2650a9920d26141e21ca6d3188d0"
      "mn"
    end
    language "mr" do
      sha256 "814e79ee928afdc66f60eaa089b7b12877c62e1383c95a06c3f8f07f6c3746fa"
      "mr"
    end
    language "my" do
      sha256 "c2c4a74b495faaaa8cc62b984158c47e975b74328f115d5c7b7eedd5f27b079c"
      "my"
    end
    language "nb" do
      sha256 "8290ff836a165107bfc3b9b268deaac862351a7fda22209d4285eced60bd51d0"
      "nb"
    end
    language "ne" do
      sha256 "8196827b53fcf04899e1dcc162b41b74dd503266b81889ec9ab2906908649059"
      "ne"
    end
    language "nl" do
      sha256 "9009a7329d532272a17fe56800a5c2823a938eda21576762c1fd9799d4c90bf5"
      "nl"
    end
    language "nn" do
      sha256 "ee7ccac49565b4c9319d95a874b77280144ff35578cb439454ea9b0c659a8c79"
      "nn"
    end
    language "nr" do
      sha256 "08e32c38510df86a5f3c6fa4928332e49e4d6224f04f1c5cbde67d3e59b37656"
      "nr"
    end
    language "oc" do
      sha256 "241c5e18c8013195e1c568844e8f6db4bdead885fd9263d46fd5057929cee522"
      "oc"
    end
    language "om" do
      sha256 "618164dfc2591d50ec4cf74249bf10caaa3e7409f720bf1b8dfe33497a60ff06"
      "om"
    end
    language "or" do
      sha256 "3a4dd1a4d58bc58177146e20b220d893785fe8fa9ee29787cd368172ee7abd41"
      "or"
    end
    language "pa-IN" do
      sha256 "5cd4c0450b14f2347b169ebada84a71f730c6481409e8d70a8b291ed4ecc9ccc"
      "pa-IN"
    end
    language "pl" do
      sha256 "dbcbdec1a53cff836177928b50f67276892369294b8d1df61c0df549ca4cadfc"
      "pl"
    end
    language "pt-BR" do
      sha256 "ad88c15eb00f762137e1ea1416dfc616a05b556bf9a118e6c710dfd4c3e3b9d8"
      "pt-BR"
    end
    language "pt" do
      sha256 "dca9c8e97ca8d24d5e704858afe88dde445a0ab8e3ea9a345ccbfdc4633f4b3e"
      "pt"
    end
    language "ro" do
      sha256 "734c7b10ae71389b67af820668cf0704aa84412f9bca9f2e2d7b164cf5444a51"
      "ro"
    end
    language "ru" do
      sha256 "62b726565871ee2e662e9b4ceac31228d469c29c484164fa47fee3451bc5645b"
      "ru"
    end
    language "rw" do
      sha256 "f1abdcd99a1338633b73de05cf2e8eac2346b0a74b52bcacd8f768e36c9c23e1"
      "rw"
    end
    language "sa-IN" do
      sha256 "1f4245c36ea92f03eb40b0b1d23463c1c5e01618202089f685bd5984491b7e01"
      "sa-IN"
    end
    language "sd" do
      sha256 "661241be12574b7e152d20fa3f6ecc6b758736e5c725ecf67a4763e0e90981f1"
      "sd"
    end
    language "si" do
      sha256 "afcc15c373db5e7dc0366c58b3669c3dfc4cedfe2d0079ec95c58e280a563d99"
      "si"
    end
    language "sk" do
      sha256 "b605f0ebf7d0c450f2f3a8aa0bf4269353be0950f6070762d12834cf696a9428"
      "sk"
    end
    language "sl" do
      sha256 "716ba41123752aa78bc4126369251c15b1d6b1a025f40dd163cf378eafdc4b93"
      "sl"
    end
    language "sq" do
      sha256 "38e8f0a208b3167286754bb987c781a5f6dfd857981fb73e5c1bea6060f896aa"
      "sq"
    end
    language "sr" do
      sha256 "655fe456c44633ba838b0998a06cce63a46e07816ea71b4ae04179393022cc89"
      "sr"
    end
    language "ss" do
      sha256 "6fc271d14cf5e3723ab49d093da330a73e22aa14807cb77152f863f8f98cb737"
      "ss"
    end
    language "st" do
      sha256 "a28f527a665da01d698b4f4debc3d8e34b5e302e9d27749b5b95d05262ea7b15"
      "st"
    end
    language "sv" do
      sha256 "264b908b642b06fe1d0b97b593d76a7efc51f2239d86a1165ab9ef81143d76fb"
      "sv"
    end
    language "sw-TZ" do
      sha256 "598bb4e1bb23d41ed35d555d326ef9014d15113960c54e84d285adb2dc2b2c1e"
      "sw-TZ"
    end
    language "ta" do
      sha256 "5076ca18b489b7345d03bf499db780b80a57f81e7368c8fc92ab49de41777e23"
      "ta"
    end
    language "te" do
      sha256 "53bfacfafab5cbbb184d3a62af495da4dcedebe26ff02f2c116f20f17b29734e"
      "te"
    end
    language "tg" do
      sha256 "ac2074f12753a96662017713f285b0dbccb0052410b8b2715f4d31b724c4e9df"
      "tg"
    end
    language "th" do
      sha256 "f4e7ff227fe75ffd282ebc90779d60fc803be2acea90ed0eaa606be92ad81d61"
      "th"
    end
    language "tn" do
      sha256 "a9804b084cba12fd3c601682c1b50fd053f264f73bc6d1a331b0332fb065417a"
      "tn"
    end
    language "tr" do
      sha256 "fd696641d1eb631b94995e423779fba1fa07d19cd426913df56dd81d997515ee"
      "tr"
    end
    language "ts" do
      sha256 "4c99b05813dc8f40ef7ec6d2cf0227522601043b68a80eaa38fbb55fe8a8a096"
      "ts"
    end
    language "tt" do
      sha256 "4aea7d7323553b1d14cc3aa9c50463e4b0cd4b278e55d3442e8391bb4bd226ed"
      "tt"
    end
    language "ug" do
      sha256 "e24f09f84a7a089fea3cce7e7a461cdca636e4e2e03fa781c86aca0cb6b0c692"
      "ug"
    end
    language "uk" do
      sha256 "bec318aa2c7b208f1f045e87e13c15993f4002b69f4a04f63d7fc2ac9d920599"
      "uk"
    end
    language "uz" do
      sha256 "3f548b9027ef94c8598698f310643838f2cd0118f3499150cdffd0f4aa5277b5"
      "uz"
    end
    language "ve" do
      sha256 "258a200cb2ff5014903f6369c628afe64beffb1bc203c3129a2c4f98e28b2b85"
      "ve"
    end
    language "vi" do
      sha256 "d435f4d3dd8feeec03e2d81436771b14b7323918de922dec627b74addfd28822"
      "vi"
    end
    language "xh" do
      sha256 "594f0020612c05b00b65e544e25c1c75ba5c696eed736cec9c7655794a82b343"
      "xh"
    end
    language "zh-CN" do
      sha256 "1bc49a5bf11e4279bcba04891dccae1381ef00dba71dd48df36cef5b502d555e"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "e33517fdd32723b2b8b0c78d2aefb18f70bbaaeda01f896687e4f2d99eeea2f1"
      "zh-TW"
    end
    language "zu" do
      sha256 "69714cc74288cc20263c2ebed021c66858f74924728cb4dd1fd567ed4f79667a"
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
  depends_on macos: ">= :sierra"

  installer manual: "LibreOffice Language Pack.app"

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: "#{staged_path}/#{token}"
end
