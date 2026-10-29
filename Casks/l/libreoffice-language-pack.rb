cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.8.2"

  language "af" do
    sha256 arm:   "23c3c4f53c80bfd8b67daa0b68e0bd4d5eeefcbb361a4d27b1e37a0e28c899e2",
           intel: "55de5a21b257743436af21078df52b0cea63841273a1cfb17fdd1326187226ac"
    "af"
  end
  language "am" do
    sha256 arm:   "2399f01dc1f8b039af39a1311609fa2ade51d5cf0007e47ee3139b64ad025877",
           intel: "9ca08f487426f7d5d2f4090f699495c08536eab00f8eaad9d876b095e43adc80"
    "am"
  end
  language "ar" do
    sha256 arm:   "e0f28f6c0f095fd7134230a10f91ece455e48e34fd8be16c564068fe932967b7",
           intel: "e369d6e8466a47bd1840fdac5a37592bf6c94f564540df21087e1faadd6234fb"
    "ar"
  end
  language "as" do
    sha256 arm:   "584c2a38b9393333a0fe2520708a5050db7d5cc1b5bd24dee143b273afff1e5c",
           intel: "d52a3df863820d558ebb08ed05da913586b15eabd389328131f1ab3dc92910b3"
    "as"
  end
  language "be" do
    sha256 arm:   "7953b2c0dbbf07faf95ef2bafb8e75fecc660e1602e143a7d0f62e49b66363a4",
           intel: "bad3ddf98a50aebacb650d72556a64a518ca54ffa1911eb6870050398ed77c94"
    "be"
  end
  language "bg" do
    sha256 arm:   "2ef42776c4dd1b02348250ebdecf66ae3c5dfa905ff383390207a45e2f9e9164",
           intel: "7db71d1e1e265d28d4491d4bc4e7d30995b2852f6fde70de2b54195cd9e02bea"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "3726d0124013a0ba81321911551cd5ff36e6dbfd65889343d6eb5bdee76603c7",
           intel: "4fe054d6ca905e4c9abb62235facacb417f6cef9de076da02523a6e59f567279"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "e56023f2393867940a928fb1bff6f18c44ab9cf840e43006f7493f93362d50fd",
           intel: "27899a523fe9108a4cca0b82987e08c95b420b8768a39cf4d3f063d2dd5eac13"
    "bn"
  end
  language "bo" do
    sha256 arm:   "906d9fd8cfcacb7c5a097cf1f5e3437cc8d524a3507371f4d2d117205552bafa",
           intel: "6b39556c9300735fe9f40eea51709e89f966a0e96e865dd64bfceb72d6993d5a"
    "bo"
  end
  language "br" do
    sha256 arm:   "8ea5fef6e17bbaa2d1eddb74487838f943334730331e993690882abe5ed9a029",
           intel: "6bc5fd3d9dfc003f78b04402a05e2b0ee979d0db13035f5f63d971ce8858a9ee"
    "br"
  end
  language "bs" do
    sha256 arm:   "004d239cba46b6575db9990e6597761d1e74c36d19ce0670c21e31d4192fa19b",
           intel: "55a0f05fd21f2a3d8b06dfeb62af38c350a7db02dd5cad703fd343701f6989c1"
    "bs"
  end
  language "ca" do
    sha256 arm:   "706d67847f8ef79d09d4107da0109786b8dce7537679e3df54bcad239d74f846",
           intel: "25460e9f3f134c7a1efdd62171f2d2615bcaa8fa5e924387c479ccd3c1af9e71"
    "ca"
  end
  language "cs" do
    sha256 arm:   "efb41b76cb7b2de90e3f176f7790e915e2e76b725a94bcad64115f0c85fac8ce",
           intel: "78119d67224b3e19f424fab17519b54609c1ae08f8ae1639e2a3470b53560564"
    "cs"
  end
  language "cy" do
    sha256 arm:   "ca632fdf9af48ef3bf288b1d77631f5c31580534e3800ac582198e8445f8eb5c",
           intel: "59f1e9e9948cb597c3f8989e660d23f651197e1cf3e652ab54db930b52ad70dd"
    "cy"
  end
  language "da" do
    sha256 arm:   "9316bf5e5c440135e0af048ff78167922603c5ddd26639b9fd218dd1c8a37098",
           intel: "08285ddbcc37d9bfdffa2f003d07a98a65dc06236b149e18768d1502d93de613"
    "da"
  end
  language "de" do
    sha256 arm:   "77cc013700a82d8525d902b75020f8a14465e77a8aa695525e920c87fd5b7345",
           intel: "47ec369a7f5d4de5c45d30bf12338c7ac4097cfd610b7d163c5ca42e93e4162a"
    "de"
  end
  language "dz" do
    sha256 arm:   "ceed981a70aededbdf89c2c377bfd3084ab08aa7efd9160de31a859cadbf4a74",
           intel: "79b2865ed967b388c549601c02456b8959139c1697abf4b2033aac3e47c0a69d"
    "dz"
  end
  language "el" do
    sha256 arm:   "a26a7acd10c4b7254449446dd09bf74e467e8cfde78069233ce435c348d2fa2f",
           intel: "888515f8c1e9b7916c59f38ccf12d9de7c9f0c1a0e37ae96986e384486e59d59"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "30881a291fc8681144227768093fffcbfdc2f0d63ab89fea9a38208943de4787",
           intel: "fd6e006e6f44213eb73211e7f83a6e4df9de29fcd336d17b19d6f8fd2433506c"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "19463bbf83f82f434dd248ec1a12cb52ddbe2a2e71fd2159d6d39794e2c4e49d",
           intel: "3f9454e49543eb5e5894d7b259a8a8bcc2b485d9f9872aa6f73ae100a54b5ae2"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "771a3785f81f2f4e5cbcfb0acabe110d79747ae342d8aceba337681711a00d68",
           intel: "1d452db4f763df899072b4e097618f597942019dea296719df4199e6c2bf599d"
    "eo"
  end
  language "es" do
    sha256 arm:   "25ab46bbf2f91ddd1998a8cbcb57fc97873698c974498685fb3c60b95ceb681d",
           intel: "d42803ba23822b22f3250217893ab90dbc2e2ce9734942c46a03e091cc943081"
    "es"
  end
  language "et" do
    sha256 arm:   "182d97a89dad750263569696c08ebafde24aeafc42cdf26342e038ff328aac82",
           intel: "5c3ce4e4e2ce05f524be4df986e72f36a55349e096f849139257a4c9b2c9f9fc"
    "et"
  end
  language "eu" do
    sha256 arm:   "da47bc5bd0aec94802ae075a5ca46c904b21b49f50609ca6c0ed37c28ba78bc9",
           intel: "bc3300e84e91d3817d53022b9638706e87a75c4883d6051db257924b018afeaa"
    "eu"
  end
  language "fa" do
    sha256 arm:   "e46000c84993298ecb6ff5d518f1d79ecd5287c99e7474e9fbffe2916cfcf60f",
           intel: "ca39f12953f42ecfcf5ea7e12e43e50aa0f9d9cce20213efac8a9e04c32b3274"
    "fa"
  end
  language "fi" do
    sha256 arm:   "03d133dd2ec47639f81ea05e575e5b997b5ef51380637c07662137cb276f4c97",
           intel: "50ab12e1c797e8af9b2e23cfa79cf21c9ac0cd78642bc58d3c23610fe5fb5a0c"
    "fi"
  end
  language "fr" do
    sha256 arm:   "4f498581ca466cf7f5c901e7943947facbc5400bf86880150891874a23a8c10b",
           intel: "65720798619f5640898575eb5ef0b65b2e6b5e184945ed04f915f4b90fa57cf1"
    "fr"
  end
  language "fy" do
    sha256 arm:   "f363d3dca459253587e5d61009d7eb1b953f0d3923e023a2a1bdb0ca73bcb51f",
           intel: "cae17748bb6ca1f09cb225add988420850790791cd7964497baa4f0678dcb061"
    "fy"
  end
  language "ga" do
    sha256 arm:   "78b87b21bea18cf003e7c415ff079b70809740a416a64224587af792a56093ff",
           intel: "5cc719ba49533ddaf350584230dcbee6d516221500093b7b5c8f9bc543a43084"
    "ga"
  end
  language "gd" do
    sha256 arm:   "7af823320086567520049fee228d360beeca39ae45f3f0310c6cb4d02d4aa0d1",
           intel: "1aeba56b8f808529e18e7f6dc01b2010ff77ba290b0c082228f8209393905945"
    "gd"
  end
  language "gl" do
    sha256 arm:   "ff9fc81df5e7d1beb82255161b1d4aec55fc0cdf46daae3ff46194e6d0667d30",
           intel: "7dffefe87f3cb66b0384705645b8b38acde7df9c2277debbae54de84dfb6f79e"
    "gl"
  end
  language "gu" do
    sha256 arm:   "a801e044b9c177d6cd83d528518e028b4dfa5499c8a174b09296f734425373a8",
           intel: "4ae3ea0f5f1b68c4c7f0e99dfd230954c28f4074dfbe9504367ab1b1b50d75c6"
    "gu"
  end
  language "he" do
    sha256 arm:   "67cb8d99951e8aa649378022558b961758cedf3029ecb3614d82927293e17211",
           intel: "b3f8058772c9cee72ee535321c123b699318210e9bc1fc4fb8d4688d2cf2f4c2"
    "he"
  end
  language "hi" do
    sha256 arm:   "874171c5db944b4d01cbf1f43c11edfc5a6d481112ac97082c6c8bd4fd27cccd",
           intel: "72451464a6aa1b4736931094dd1eacab258e6aefa7b78c96d4c21e5d509e41e6"
    "hi"
  end
  language "hr" do
    sha256 arm:   "d28c5f4360c6286e6c743a367e82989c91c830db4e176735a335175a48f0509d",
           intel: "0811a3e77895a4a009f1750283bab56d95b7ee6d5f8541af4a40127d72ca42b6"
    "hr"
  end
  language "hu" do
    sha256 arm:   "f8b599139ad55ad1cf52e5302b8657404d5fc231d705ef59e50ab51e32d7658f",
           intel: "68fdd2220013698d329c3f210c591b9ad45053acec72059ac751ab7f2e8d32e1"
    "hu"
  end
  language "id" do
    sha256 arm:   "c00935c6056f127bddb58a4721d91ef739b7ba82500906f4ab76b8fa05101977",
           intel: "e92c036caa675eba76192a4166a90c50ecc03acd0b5309ce5cc77b6f8700ca77"
    "id"
  end
  language "is" do
    sha256 arm:   "ce7694b3a5667fa55342c8dfb563f60b8243e43b225ce45e089f3cbac602b657",
           intel: "97d399ac554bdeb0d56c2e0c517a1ccd605d750eb5ff2fef452bfe2327d98f27"
    "is"
  end
  language "it" do
    sha256 arm:   "419351fbaeda826ff9c8a8ff64b3a0779ac2cd3bf02b675af49b16fc2319c342",
           intel: "5a1fb3db34540867f3bf783cd7c5ae1c2d28437d9f5424b30ab6b1d85cfc804e"
    "it"
  end
  language "ja" do
    sha256 arm:   "8a129003f798d8b582291e0c920879057ed5b162aa60c96cdfbee8c6cf9ad8a4",
           intel: "e429406947d758e5b694e99522a49a00115716dabfd9473d8cfafddb75c80eb8"
    "ja"
  end
  language "ka" do
    sha256 arm:   "26a443ed0f8b8f21aedac2dc38f82d739065e95621734942dfeb360100628215",
           intel: "5310cf16c1d94d693b3f1fdf3797acb0dd768039e5a0871566d9f6255103191c"
    "ka"
  end
  language "kk" do
    sha256 arm:   "44bf667bea518ed680bb8c983ae83e4b0d2877f753135d5a85175ac80c09ac7c",
           intel: "4a3dcf9d2b6b43978a1b4f6abd33c57a00816d30364c4e82119d1d9d83a6aa9b"
    "kk"
  end
  language "km" do
    sha256 arm:   "45952f6a48a8a046efd78f995533021e5eba445587f9bbb7bee36b41d952c251",
           intel: "81d07b1b38cb992b9520ec74bf18f0e71f779b191f93172c5befe77defbe623f"
    "km"
  end
  language "kn" do
    sha256 arm:   "87617a9ff859fa9a943f0560ef6208ecb79027b4fe726ec62b44e90c1d4a5ba9",
           intel: "e3d6c3439a139473e4b6713aa530aa534f494837ab4426cb04287e5b360961f3"
    "kn"
  end
  language "ko" do
    sha256 arm:   "8b882d40d8bc9541ecfe1e2d3ec496cde7ef6495ce36aea3ad0f8ab4fce2d972",
           intel: "ffc3f466269442acf844bb00b0bd9383f135e3a83caa1d5b7cafd887a791b7f6"
    "ko"
  end
  language "ks" do
    sha256 arm:   "cb15af36e4e5e60a1393cff14120e55f94cca7936e7de0e7b839141a47055107",
           intel: "0ca4a301169cfa2db880b08192f7e71737ae4ca8dffdac89212506d5a14cd00b"
    "ks"
  end
  language "lb" do
    sha256 arm:   "b12e23ea1020346a86a62743435e24e28c17ab74e13f84714aed1f4e33046b43",
           intel: "75005db87cd4920bd76c6a7c5423e486eac6bce4c857a6ceb9d48b84552dfdbb"
    "lb"
  end
  language "lo" do
    sha256 arm:   "f6391fcfb3c960a5aa4d82b7cdf2f5f06275ca11bb710520b0c5c92c2a259d09",
           intel: "608958f0bc42998d4cc6372872a42048269c538e40c1e5a28e9b871e75e17d6d"
    "lo"
  end
  language "lt" do
    sha256 arm:   "033410922065ff6ff523b2feba4149444cb21a0784f1489b7a8aff54dc6f2100",
           intel: "e06d8af216282ea82db127436d5f0ef3313f5c9c2bf9213e81020f808d1b44df"
    "lt"
  end
  language "lv" do
    sha256 arm:   "b2fe3d900115c7926871a205cf33344a478abe1205f3a45f4f22f8b9f8ba99ea",
           intel: "c7eef901ad2f472d26dfc908709a78adf16668372004c8ef5222604d40fc66fb"
    "lv"
  end
  language "mk" do
    sha256 arm:   "721641a2943f73970297e11a4ba4942b7eaef40a59dc9997b34e04b63f068ed2",
           intel: "c61aadbfe70e577cadcd42924a4b048d759fae6e1807db127bb988f54bd0bddf"
    "mk"
  end
  language "ml" do
    sha256 arm:   "5ae177255621b71f0071526c4e81c6967d3667c7a16f541005ab4487fcc29132",
           intel: "701fa5ff6684505c63e115f467919721bdd8d2e46613fc277050ae973211cf39"
    "ml"
  end
  language "mn" do
    sha256 arm:   "dc648700730de1bd84fb6b53cb21da074247b0425ec704cc5223d7e5b40776ab",
           intel: "e55c436626c4e47235c34c6f3915a98382bc26bcbb886e1a5da8ad197b1989ca"
    "mn"
  end
  language "mr" do
    sha256 arm:   "ff6a9ac2f78abf43f1ce11ccbaeef52ba8ad67a4a377c96deaabd5bafd5d13d7",
           intel: "1db146c42d8236aea4e75667c43af946de8f759f9abb4c7a431ad74ffcaa9938"
    "mr"
  end
  language "my" do
    sha256 arm:   "751f871ea045e1d90f1bd7f640b5d7011303454cb894466e4712d340b2992be5",
           intel: "7409bf956cba4f7d4758f404639268eb80278f2a294dc0c09fbcdc3f615b10dc"
    "my"
  end
  language "nb" do
    sha256 arm:   "9ce6fb072d3f175da0376b7f8285ffd4bef3a0a6fc0f59fe5cc343237ca43c81",
           intel: "6ef922e115d0e179a279729d174274e926ddfe88d7c8740231820e6511524400"
    "nb"
  end
  language "ne" do
    sha256 arm:   "4721caaef7b0931d1614f7d9e60ae85d39e11828dc5a3ec019bffd40a99b4273",
           intel: "33f72cc75f574b711d2f2aa8eee28f11968efd72eb4e98ae3e2e6dd2e4b08ad7"
    "ne"
  end
  language "nl" do
    sha256 arm:   "3f44e843f41abfc2de4c5247e0d5ab9b9ced94e48061751f1fbe3007af3774f2",
           intel: "b0f1e70914ad830f36f9ca03942f8f5cb986e1471fb33249d690b10d23ae73fa"
    "nl"
  end
  language "nn" do
    sha256 arm:   "f0595dfcc88882090560c344042cca158a0eae475909ac03ebe511115ab6885c",
           intel: "472da691ee42e9aee3d72fe54d7aeacccc137a2b55c1401b65797a1a2c6185d5"
    "nn"
  end
  language "nr" do
    sha256 arm:   "016bda8d9e0ca4be120736be2c023a8073d63e1689f47af9d127a0080a1b5921",
           intel: "ff112d1d54d7b0bfa76053fc09796a1247fa43b4334680d159fed41023ff0b23"
    "nr"
  end
  language "oc" do
    sha256 arm:   "b1f1d676a4e65b7e25ab8983fef49a9daeebc8dc5aba2cd06e5469032e20ae31",
           intel: "9fce25ffa3fe163a18bc3010ad421aa5393db5d2f5bf2d38d0dac57fdbfa1532"
    "oc"
  end
  language "om" do
    sha256 arm:   "350e26fbb7258adb0cba42a088c0f77bc2840c495b489d955aaa4c91a20df8c6",
           intel: "42deb5d27aaa5f632f07d3bd260f3a5493596e2a72bb42729ddd6b9489975a5d"
    "om"
  end
  language "or" do
    sha256 arm:   "9610a5ef79d5a2666a3aaa8de1822746286c738f6e7d1aaebef80243fabb597d",
           intel: "20a843ade75733963071f19a076b7f72e0369757fe5d05c47475cb565dae6e40"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "54ddbf47ea337245aed6b235aec884e6df806cf4f7739775c2d6d444aef8cb26",
           intel: "7b406ccf5170bb9429b67c1115971b3e279d1c0d24d6d4da6a6ac52c530b2842"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "7d6855b94001dbd55e5e0313c0c89c87f5c2bf64cccdd49244cdca1f5da7e32c",
           intel: "a721c35f6fda9b611a5733d2a42f49cef2e4bbdce58e484c00af7f813acc093f"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "18b266facd3b135cedd34bdaeed8f60f04feaf602d429ea510391faedd0e15ef",
           intel: "850f7b336890064d895613651af051d914b1bdf0558c04fc8cb0492ab90cbe74"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "fcbb0ac5427f0922a059f35fd0bea47ae6b135f9312f5fa96dc05ae73a2b7d34",
           intel: "5e22617923adb0c6bb9ad4318e1a372af209b30e28cb230998d56b28e71e0109"
    "pt"
  end
  language "ro" do
    sha256 arm:   "657106cacbbe85dde1b57b3f50ea65befcf2a4fc24e248335514cea914e27458",
           intel: "685590b7c8caabf3d497853b7c88697fcb797ac6b5fc40a06aa323cace7795a4"
    "ro"
  end
  language "ru" do
    sha256 arm:   "b66dfd58747045a45c1699ed869031e371c48936aad77f26f956536803ce5944",
           intel: "e940c58fc56b873c340209ced081fa80f625f96fc6bce96d11a9a982e7af0c4b"
    "ru"
  end
  language "rw" do
    sha256 arm:   "61b098c021adb6230f66f791c465a1dffa928540d84278c80cba4ab1f3e0a4b4",
           intel: "05ee84fb7df3a323d0922b290a47a815e6c8022ac10ff65aa85c5ed876e51335"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "6268e8f78ab3089fdbe107c03b5602de68042996ac5601a6ff66918454c6f618",
           intel: "35cf675372c09da219315c6b7e6b233780da3e225698e3f7388560bc7d12db64"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "79356b882839cea2476cd3a63c03d00436ff2f5bd108fc1f87b9597b89c4cba2",
           intel: "baa44ebeb56e294edf6eb130b9166407e12025ac59039e57a85e8a75839e2612"
    "sd"
  end
  language "si" do
    sha256 arm:   "c8a6845268d07e0b6de73257578d6fccd5398a6d30f2a8b420386c81bc20868f",
           intel: "d6ba656ffc532437c31fe931e885883636a47c47fbc99d0c002dd384eb22e97a"
    "si"
  end
  language "sk" do
    sha256 arm:   "240f688d26f2863d97ea909c62af94c43556d3abab2131daa655902123c369da",
           intel: "c34134fc20e61b97a3341e5b4b018710d08c26d47de0e03275935617899b880e"
    "sk"
  end
  language "sl" do
    sha256 arm:   "505e0ca3d07dfd5c788cf0d8901a982c7a942fe2f4319ef59fb797117dbce1d5",
           intel: "17d598ad13502970ef4e200f33ec74b4f4394c7cf71ea56d2a1138c1eab6b8fe"
    "sl"
  end
  language "sq" do
    sha256 arm:   "c30dc9b9aa8ba1e2446d2fa7cf6696bfeafc33f416b53b57de1c2a1a8c413937",
           intel: "ef1a95406bdf07390d458bbd3c42948a8f448dbad8fb5e37e053bd879835f4b0"
    "sq"
  end
  language "sr" do
    sha256 arm:   "391aa86bd655b4b8f2a692f4e5db4d3bef5554cdc64888543aa5592c5ffa724f",
           intel: "21ab662e5b3ab8eb107a9458a9bb1b7d4b7585b2afca411fd7e8a65ccfa74174"
    "sr"
  end
  language "ss" do
    sha256 arm:   "88ecd190c6477f947e66451339209e9c687edf7d297765576a98819a87e9bc50",
           intel: "54f9228ac56794663bac107027362a32a3e62baea4e12d4246f6cd757e278b68"
    "ss"
  end
  language "st" do
    sha256 arm:   "81b328132a493b8b279ab1afa6805186ab58e1d717a729f87c18702d42c5e3a1",
           intel: "c86b624175c7f855420a92d7e93c44850bf251746c01f6d601eb89a340fd376d"
    "st"
  end
  language "sv" do
    sha256 arm:   "0d118dde66dd5f26463b16be02778058ab9060f31a998048a2c8fcc839f410e8",
           intel: "762666f8fa9a9cd3e4fe2d2727c76340c0dfde4a36e89f4ad338e8d2b6ef480c"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "284f1ed865c693289b180dfcb23b48ce75e001d6b8336a9c4aa9ffcf0e05ec9b",
           intel: "5ad930cc58e112df465a675084c8b0df308fad07a192241596f5517bdcf352b6"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "5e046146db8871558312f1066f0c7f2c08d1bb24785276e9df470fa45f4f86c2",
           intel: "3a1f13254aaab5d59beb08c5738894d5db3a0b443132d5c589a43b0bf3486cf6"
    "ta"
  end
  language "te" do
    sha256 arm:   "ea9b7a7290fbd8ad937d1fb193ff0e05a8b1b3e1a3a97341a8eaa465ca5cc1f6",
           intel: "33a01841af3ee33a0b6a0060860c16de318f509db34f7bf95b977bf769e43180"
    "te"
  end
  language "tg" do
    sha256 arm:   "8816a63e2693e1b05ec602dc060787b7f660f67a7b7dbc423a8cb461497aac6c",
           intel: "c30fd83c93afc2c6f90044fb695386521322fc4c5acb231a4e75ff183035d7e1"
    "tg"
  end
  language "th" do
    sha256 arm:   "f7b10929f7fefdb57e778853b7363e2218208488d56ed41aa5451be9a484db2c",
           intel: "02eca569f50bab97858f6dbcc53f1fe6c0094de3aca01ed87bb98dc3cf763a37"
    "th"
  end
  language "tn" do
    sha256 arm:   "8ed8a1fad823301dd766d58eec67d8ce0532f45c1f316366c6fa1078c694513d",
           intel: "1e54950dcf80eb2665004e1f778664664cb9d623a2daee1c1735cfaea414dd06"
    "tn"
  end
  language "tr" do
    sha256 arm:   "e271a58909a6fed218e863318716399477c74e44b8f3781688989384e882e98c",
           intel: "d766bd61be06de48c5c695060a2deec78f302a3c12d6d92c6fc3df9a7577215d"
    "tr"
  end
  language "ts" do
    sha256 arm:   "1b196715b7b1faae4c680d44d8889fffc3d72d19f27c7c9fd2521f682e07e2eb",
           intel: "47ab7b944b12a3b3a9de0060d17c7449ed0b336e47bec5ca96d89cd18ff52d87"
    "ts"
  end
  language "tt" do
    sha256 arm:   "fa7aaa77ff0f25448e0bab4dbd296f1aeb07e74925de2daa98006d6ca7668550",
           intel: "b002ca56f8882d6817c6e17731dd890543c3e286032e08f163b070ef84679b0e"
    "tt"
  end
  language "ug" do
    sha256 arm:   "b432765c45143bcf2957f672ec75ed93f2743f07f2b73d36038cd9c2e72c62fc",
           intel: "2b9e9216b434c6d5d71252a2d7b502cc0959d9f92795ad0dc9b43575a1bf9e03"
    "ug"
  end
  language "uk" do
    sha256 arm:   "dcdc96199d79f43e4902dbf21afc67e002abc300db638c00ef8210c61a76898c",
           intel: "e95d1db9f2d68ea2a7107df0d00b1bf8ccea503872358439b1ceec7a6c022ab7"
    "uk"
  end
  language "uz" do
    sha256 arm:   "c8fe66a5495d29d76f809ca5fb962516ee5feb51c93e8678395f0f1235aa4df1",
           intel: "f78c6b2d650b03f341f03613ec946a99ed04e14b23da0b28022f6806429bd7df"
    "uz"
  end
  language "ve" do
    sha256 arm:   "944019e5fc95f59eba5ab2c5fa780408fb2635d101a758815a67b2b4e937fb53",
           intel: "64bb6adf7aa314424c53364d6182fcfec4304efc4ed92bd39199128a6c2f9d0d"
    "ve"
  end
  language "vi" do
    sha256 arm:   "b88d062533e4c641e19caeb347d9d9f24c6f767882bcb89692a96a12bcacf4ea",
           intel: "2f8acc41b26598d42a566b853062dde898f530be32500c12a0c44bc154381a3b"
    "vi"
  end
  language "xh" do
    sha256 arm:   "6b92badf0af3e0cd7a875daaad058c3ca5d9d72e93347e72aa88652a753e5444",
           intel: "d1f321163b564ac9043fea7886db5b79db7dc683c550f261cf861c2f2f0c38ab"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "644e6a2b31fca577113b80bd4a205ccf92659c634da5925d63d4c185031a3344",
           intel: "adc1e888861509cf1895d96d5804754237a3f77f89b508a4b1ee9e320aebed2d"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "9531e62c074b7e7dc920a3f42d48b75017c025fa42b0d93fe92bf52c45f659f8",
           intel: "845405747ad732ddd022658696ece918210c59be5cef7da035d0b3623bda6c9c"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "bdd92e735c772f6a7cab57587f28cdc42b8efa218ef4326d09f02816fc9e7636",
           intel: "a21f6bdbcb210ae85435c60496ef19b5429d98767786578e3054f0336e808c8a"
    "zu"
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    cask "libreoffice"
  end

  depends_on cask: "libreoffice"
  depends_on :macos

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
  # Start the silent install
  installer script: {
    executable: "#{staged_path}/SilentInstall.sh",
    sudo:       true,
  }

  postflight_steps do
    remove "SilentInstall.sh"
  end

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: "#{staged_path}/#{token}"

  zap :not_required

  caveats <<~EOS
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
