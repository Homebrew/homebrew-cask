cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.2.6"

  language "af" do
    sha256 arm:   "012ba5bdb94ae485d361bbc87698a928fed0a51ac6827bda97468534fba42e17",
           intel: "66b899072b55643e62bea44fad32732e23c7cf1109d6b35b1c1b81a98280f3a9"
    "af"
  end
  language "am" do
    sha256 arm:   "929c5f2a69f62cb5e720b49cf071df7e250cd561344ef660a3ef1c843b0811f9",
           intel: "3d05ddff3f109e5ed41fba53efbd76abfa51d23b697dd41663d6bf0110f73506"
    "am"
  end
  language "ar" do
    sha256 arm:   "6ebb07b1265d5c5f138646a965ede6a4a320dbe62f818e7c73f25d3700e2ac38",
           intel: "9c649dbf7d012b34b3cc8f791c90ebd27349c59ed4dc0700da35b664983afc73"
    "ar"
  end
  language "as" do
    sha256 arm:   "6a49571619ca7b0b1fb418f625a21dfc6bbe6cde45028aa9ebe712e84027f8de",
           intel: "d2b0d1a57ac267619236ab3e428310cf7baac2ffc90450466d3298984aab9203"
    "as"
  end
  language "be" do
    sha256 arm:   "bf0b07f55386a078841dd6a4d050ca3b5a425f0feec8e12773525d208a2ad834",
           intel: "86564c6d02eea1e4f5fc407d7d396cf50b67b5908fcbe749fe608975201b0ada"
    "be"
  end
  language "bg" do
    sha256 arm:   "5e2242e31c71d563cce65233fd02ba56bc95a9e9ca56a9abd2cb2e3b1debd8b7",
           intel: "e6e9f4dc7872cd78ad210fdcac41f6404cd83cc118b57583fa4196eba2d36911"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "6270b2babac9708ec15563658631667b3cb8ccc6fee20c71516f848f2d1cedff",
           intel: "acfb16dd84cf21058ad149f3f2811b9d3f8b066325766e511c25e4937ddd4993"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "43e7a2b8945bab7691b177ec9c4640875ef9393563c4d0271b58c7d91d049023",
           intel: "ea45e6cd2a3a185b464f00b75484dc8b35a8feb2a66e3839b6adeb90bb7702e2"
    "bn"
  end
  language "bo" do
    sha256 arm:   "d002623d1ef7791e5d114d493e85f494e8e7e0f91df7e42bddf43572a0c8a043",
           intel: "34e21c5771f42f1e1f0a56a9210aab4128d2fbc26d1fcd340d9fefbab04501bc"
    "bo"
  end
  language "br" do
    sha256 arm:   "b998c24c4f954cfebe5a833b17cd47cc92c4ed0d2e1c917b1aa345588d28ab8a",
           intel: "9699c1957b852efb28cf4d8bd43313c45ee7ad69d55c8ff3e3e9c9b461a4c2e7"
    "br"
  end
  language "bs" do
    sha256 arm:   "65ab21dd865638ad6e31904d69ddc5518081f2afec9667a859e3227cfa30e034",
           intel: "5cdca8b24ae3fb6eb777e536b74ef189fd9abbada04a77effb0b04dc52932ae2"
    "bs"
  end
  language "ca" do
    sha256 arm:   "6038224b2354794c7e3902b3d886f97c82945d9b5dd3bdb99397e268be06f865",
           intel: "e662baab0455630a89c1ed8dbdb40ac1f8f3ad9fdf3de9bf091db88fcf0c5ffe"
    "ca"
  end
  language "cs" do
    sha256 arm:   "cdabec83c6385dd5246a480a73924a080d57fc0a4ec1f5a126999527f0dbfd43",
           intel: "fe0a293ccf8be101280c603da6f578edc988ef6cfd33c8ee45841cd96341a501"
    "cs"
  end
  language "cy" do
    sha256 arm:   "2e503a2cefc1df000c121e1ad581b18cd520298c9a727edb6f0be0e8187f3728",
           intel: "e1777a0ec2ec04f0dbe7b2c54c2dae8ff73d1fa25d8dbb335593a0e14829c7a5"
    "cy"
  end
  language "da" do
    sha256 arm:   "6efc526481525924b018f18e6c9729f8387bcd6c1e17c68d5c7763713717f905",
           intel: "544af64e0911aaae96b0abbb48854050002c6772facce6f0dd82545ef81aa4ad"
    "da"
  end
  language "de" do
    sha256 arm:   "147010cd6578d746c6593d696bfaa962a2b822d0ab1ca2e6ac879c8be68852d6",
           intel: "da269c804d5efa1b0a669a751dceedf7c2c7f321669c3465d017ef8ef52ee404"
    "de"
  end
  language "dz" do
    sha256 arm:   "3418c06467af44078c7ab8bebf477034b3a40526fea3b28f88f33023c2d83eb0",
           intel: "8f9f4f71c62c56e42b3071ea8f263189349802f6f7279952667464a967ba83d6"
    "dz"
  end
  language "el" do
    sha256 arm:   "84c68bbcf56c30268e86406c6a8855e98157ae4cbd92f78f72a429f96258de88",
           intel: "5a7bb56d7453d04a1a9fc24cbba1cbd25b43c52c9ef8cbf131d3d6d511d69c43"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "fff1ee329afc50bcd685d34cd0c99954cfc6fa57f416997208db6274a305a4a6",
           intel: "2c42e5775e1bdf8c7495e4779c862ed3e6c53f6ad2dff9e6bd71f8393a6a2f61"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "404ef5cf7e2e322cfe2791d6317fdeec5c6d510e69dd1eafddfdd257c9b9c967",
           intel: "7c9f6eecd0a4e2fec530cfccf819b403a39c38bb205efdc67e6842cc40543137"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "defdf960967c542d92adcfaa86a98db49e0db87f7302d0e7571dda0368cd5146",
           intel: "2507da962ffbe86be405217b58f5ac19a770871765e46b1e4e5627f70c90f278"
    "eo"
  end
  language "es" do
    sha256 arm:   "8faf1588a97094808ccc0102b6eb79a6957db4295beb171cc0a08bf3f8381a8d",
           intel: "d10b93eb579bad3ee9033ec6618d7e10d841e00786ed58d6a3b3d8ec18c4ec2f"
    "es"
  end
  language "et" do
    sha256 arm:   "a1256d8ed96588f15afbb7986fc39e0f2abdd20238633b7ea1f2bc1788cad547",
           intel: "facb419c3994c1f9e3fa44cec178db67424d81282c81fb9f9f723d5eb54af5b3"
    "et"
  end
  language "eu" do
    sha256 arm:   "f2f0b2bb3694fa9f4b6e35651d70dc31a04862ab3bea86e762da419c1cf8f659",
           intel: "d747756a022c51123f0aa3cf5ba09a326c201bc34f448a57b0ee8a3e983b68fd"
    "eu"
  end
  language "fa" do
    sha256 arm:   "7d1fbf2fa5bde1616902471ac1c2d4d250ff523204c81743fd4f5d9ecc5d5ee7",
           intel: "798acca67ab6742867715e800b79093dafaff199c307e1bcbd2732591553f9fe"
    "fa"
  end
  language "fi" do
    sha256 arm:   "b5c73dcb107aeae92cc67e30f9877fe37d98e1297ea22d3a3db926a68d1b3255",
           intel: "adfb673c16e549177c655a3dcae47601d468d1116759c630da2a4fdba57dc01d"
    "fi"
  end
  language "fr" do
    sha256 arm:   "0e5753c5f36e1917cf511f9b84e87bad5d0a1ad9156ec37e8142b2388ccd10c1",
           intel: "d5d30990ee1bea1deca2b0ae07282362b9327a38f92468ed4ada02b417f19618"
    "fr"
  end
  language "fy" do
    sha256 arm:   "e16faeafc69d8521f955cfd6ee84e19fe4749e9ab4437d58ea3bf78d50fe3cd8",
           intel: "aa4e1298d663f033d7787b051749df5098f54492d7837f8c65aa0d83dfceecf5"
    "fy"
  end
  language "ga" do
    sha256 arm:   "ba806905d88b587ea9a12c3e138d5466b4a94d48397de9646d8e1e3cf787ba17",
           intel: "1259da54d7f34f64b99cff3c2404c908ba4aa7d31801be28e6fcb97587ef4537"
    "ga"
  end
  language "gd" do
    sha256 arm:   "7700c4eb43a153475aa86a3b2e06db821de63330e8d2618352ba846c8f2751dd",
           intel: "094fdc43f31efac3df5c4e313acf8f3c8b188bea2b5d18e5ab9bd21b7171ad70"
    "gd"
  end
  language "gl" do
    sha256 arm:   "ca166a9a229f91a0fdb932204155501f1190b57cd05aca9546d11a9881b28432",
           intel: "56f6dca026780bb901533e79958dab707cab39cb6dee55c294bb672ed2ba3d85"
    "gl"
  end
  language "gu" do
    sha256 arm:   "12c0c3319cdd2c12f43fc7909f1a853fcec418108fb616deb9e0df62ad86f90a",
           intel: "9e63604e468b7f3450d25e69031baee8067f031d3c95d7d82f21e43045031839"
    "gu"
  end
  language "he" do
    sha256 arm:   "6f60067b6f1da77db40928e8371fd90ec0f59c45a0f2e46b5a0f439201189774",
           intel: "e01925c9e66338b0140491fe172e12d5f76f5642c136ffc4ff0821440e617f06"
    "he"
  end
  language "hi" do
    sha256 arm:   "a44e1f6b4c9bcaa29411109bebe3abeda9e6d7886a830a5e7d6a14b2a5b3ea64",
           intel: "50af0139130e7adcd7f9ae9cb8ebc8f70e3b553d617af84b6e2769799b00af81"
    "hi"
  end
  language "hr" do
    sha256 arm:   "2e94c16adb63d2bbe209296d5a264b71afaf025de91b097cfbc3cce5db9390cc",
           intel: "cee245e9af6b51ee1a73b9020b4c86f2cf258fcdeefcfe5dfc40ee5f6a8b007c"
    "hr"
  end
  language "hu" do
    sha256 arm:   "7dc61e18239535974ab6ef888ea4f3fe78e0f60629497764ba564f3be390bf2a",
           intel: "a28ef4e6c03e6169e76c5c2fc5890e8789d72e8b8b287c0f296419f24fb6ae02"
    "hu"
  end
  language "id" do
    sha256 arm:   "5648bd81b8752d367fb874c00f1e6dba533ce7f79b8256fdaeb9df5fea9ba021",
           intel: "8226a2f0eacdb7c13369f2c1b3ce91515c59141ddc0f577618c9f8ea6cd62429"
    "id"
  end
  language "is" do
    sha256 arm:   "208f8cd1d8d46df965578b9a90f7b53039187458e34e5eacfc8d1992c43201b0",
           intel: "17018f10155883f0eaebcd157d6e1290f9d9ff88e5b7d9ad7cf6e6f95f8e260c"
    "is"
  end
  language "it" do
    sha256 arm:   "11b4fcb1082867ac6a4e0908a81d4dee2578f43b4e9fba16033c54b01c2a6c8e",
           intel: "e7bcb0fe22ddcd383f473553ffa9e2ade75fff1d31302b8b678639c6586c5b0c"
    "it"
  end
  language "ja" do
    sha256 arm:   "836bbcd84ab462b7f075a23b27c42a6c3a4986ea65b34395c4c659bf39234c3a",
           intel: "58d15b60e88a824d0f5c15ee949fba0b287a711629b83a29981d87f5562aad56"
    "ja"
  end
  language "ka" do
    sha256 arm:   "93cdc8c9aab18170c0df6773bc861df5faa321d66ef20dc3210ad8b564b89c60",
           intel: "3e91374f2bef54209d3601c4c2376ccccd9db3e0e2fd54d348de68787e82fe94"
    "ka"
  end
  language "kk" do
    sha256 arm:   "b90caca51b562bc8b224465b374362666622f401baa1183ca9078a3ed76ee8f0",
           intel: "a39da14e2fe4dc581ecd1e2dcca747af6859052ef2e48fcf78441a0ce448edfe"
    "kk"
  end
  language "km" do
    sha256 arm:   "23bca3658c05f151eded4ad2c5583486b7810b91e05f1b2644a8cd5a9ae69b61",
           intel: "4cdb6dd93d922ffebc932bafaf8d211c4d69cf81cc4aab5648a80be1ea7cffce"
    "km"
  end
  language "kn" do
    sha256 arm:   "7df70b631daa5ef38b290e902d880afa8d7ea58bac5b494dfc0e42aa75e80e71",
           intel: "84b6eadf13790d084a1e412a68e6a25bfb4eff60a47569b86babf53e23de64d3"
    "kn"
  end
  language "ko" do
    sha256 arm:   "f6a8c55261f7d97bf4f6c03c2f5e60f242613aa667048e11934ef359852c7555",
           intel: "a430a4542ae7be6b24a2244dacb613aafa4e6dd434e99c4da1bdf5bc1bfc7bae"
    "ko"
  end
  language "ks" do
    sha256 arm:   "fe60cbd20741381f53cf02274396587265422702405e2b341ecb68d078f2995c",
           intel: "53ffcf91caefdb4d2d71e7adae228a75f3546b860a24d8cd4468d2b6ab9967f5"
    "ks"
  end
  language "lb" do
    sha256 arm:   "e5903d8eca8990f95cdb888569529d22401d5f7b1aea2fa3790a80876527dba0",
           intel: "28808178440b31e692521d6e2d2353d31da8fce9fa2cd6aa11de7c09b927185a"
    "lb"
  end
  language "lo" do
    sha256 arm:   "25747181499e23302e022d122fe3ab30aee0ef06d9c368c297cce4113d716579",
           intel: "9ba0cafb139c9feff8cfde8b7b1845ba4e25be663515e065d892735f1303a252"
    "lo"
  end
  language "lt" do
    sha256 arm:   "0bd1bb918685c3252c0c30b7fc02d15d128fcfad4bbbe4e94b72eaf3057209a4",
           intel: "cd0f8cd96eae41a14517574f103b04aad6b788fc0af009fd2bdfa0b8905cd79a"
    "lt"
  end
  language "lv" do
    sha256 arm:   "16bc371dee276104487c6b0b6f9558a56ba9927408c52791ec764b461eb4a5d1",
           intel: "f7b28f3f2c92179d9d431d6220f52e936fcf3450cafb4f454a3da5574032e0aa"
    "lv"
  end
  language "mk" do
    sha256 arm:   "cb2bb1dea8b0c6cc139035ae2a571390837a11a3b60e2b994cb8fe633d205386",
           intel: "259770b1950772c400c3c231dde7928a72cbe46e97a3288b8707908f4770cf24"
    "mk"
  end
  language "ml" do
    sha256 arm:   "6ac2234d70f21d7ed5f2a5e8f2cbd63137077d69ca8fd44f7dd480620f6c6484",
           intel: "7b72fa2ae41a827e05e5bd5b5637b9553d4dc0ad96f41b91801e4ea5a25833e3"
    "ml"
  end
  language "mn" do
    sha256 arm:   "a881b36f3268e829637234fa8cb2bd9d040b8c0ab2c8c6eeb627ebb91dc10238",
           intel: "5985e8cd7934be71d63834763cd1aecd5f3de93f30563752721c43dad326cdd0"
    "mn"
  end
  language "mr" do
    sha256 arm:   "dbf41fff74e0b28d78c7924e19c7791a4252f3c28876658e4d26abbcb54365db",
           intel: "62e0d7aa251a2698ae018206ae29b3a8ab914f25ba594afdb4db74f04519d279"
    "mr"
  end
  language "my" do
    sha256 arm:   "b696967cb7e930c32ce57196ce03620f4beabb1ad917b24e52a6f10421420409",
           intel: "e9a313172dfb550a770fed475db73fa31a46093407bf8cfeb49c6539fe5e975d"
    "my"
  end
  language "nb" do
    sha256 arm:   "4d47a04d10ce7436cca1c09b54aa11bd0dad85f3bad9692176cdce93e19126ad",
           intel: "168bb98d3a0598b40058e0477673694089d9a615870a84e30accc4b0ca53f207"
    "nb"
  end
  language "ne" do
    sha256 arm:   "e855a009ad80624f8eb10cfbd47b33cfc2d04217848acccc0d5bc67aa0aa3ffd",
           intel: "b00709b6ae0711b44291b71b129f4be2d79124cdc70ecf88c78f0dbdaef4e3ea"
    "ne"
  end
  language "nl" do
    sha256 arm:   "a634b1cd9eae840f98fb24f5dbae3f0cd50e74ff8ca24aafa5da1af7bb065849",
           intel: "2839e838331bc482d150212ac29e57be0130a057d7650efabb7218fcbbb35ce0"
    "nl"
  end
  language "nn" do
    sha256 arm:   "0d3610e6eb28db42a65a173cde86ae36c8f41e3cac6cb535a115e3da484bb1f3",
           intel: "84ecb0560c14af1d4b8f82383c76f0d8d1a7a88f35b2514b72a6608811280bb6"
    "nn"
  end
  language "nr" do
    sha256 arm:   "58efd979b6d8e3dc761338ed2a339e2c4c66011debdd94b37340e39b2aed61a5",
           intel: "385cadc75efecdf0d461135a05aa6ea54ee374450391b69eafa17924883d8bf2"
    "nr"
  end
  language "oc" do
    sha256 arm:   "b28c06944a366116110394e8bad8fa24ae47c2aa02d8c3d23209c016168fa7ab",
           intel: "80cd7c9949dbde9fff71aefed2626361a7cd18fd286480f51f69c3d8ee994a4b"
    "oc"
  end
  language "om" do
    sha256 arm:   "dc1fb8ca42720ff3dde5db50318aeff4c51ac5f3dcf668df4962eadcc1801349",
           intel: "48af727c8294da505a79cefe7ee7f18e9621a8540c46e4d1276db3c0bd8fca51"
    "om"
  end
  language "or" do
    sha256 arm:   "6f73400f68270f4a30b871780014a38da6d4fdae00dfd40cf618dc7401eb40d4",
           intel: "502a7c5518173ccb96a4a74c73ebb734e8088ac1a33fb25fac0d5566b579f3ea"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "498a6d0c660bbf15f182a4e1e0194b0182baa4336644de3612e1f4c5f68d6785",
           intel: "9eea7a1c82c98fd23f648f968862165459dfa1b4881ec8115447488b25115dae"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "4f7c077f50f2f1e3a594e1148d37f0a61adfe1a8075748d8d3f411f98de5ae6c",
           intel: "38c1373cb3d560701cf63d73873e7e088e1bc4cf05dfd382cb49ef55dcae2741"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "6966029ceaec53ac662f739490b76940d6cbb2d4abe40728f63422071c734062",
           intel: "33e4b9cd5027c2ade1e7736d646ba4b02d370e7381aa8fb3fa7c05246ca93256"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "82524cd823ce07aa4012f5c3d216371eb90da14d8d3ee6d03cd155f0c18c68bc",
           intel: "689b233146c9fc76b043043bb0c2d6e7a708ab02ca89d9b34ee25332a4200f2e"
    "pt"
  end
  language "ro" do
    sha256 arm:   "720270a2de491ad84e5a37b5ae6ba00710ec8c2a459af40dfc5b97cf23ee196c",
           intel: "defbbd0089bc5156cb2b0d6baeb7ed12b587737de78f788142f6f16cb5db0764"
    "ro"
  end
  language "ru" do
    sha256 arm:   "a2f7d935c708f21d94d1fada5babb70ddb0320ee273e6ae98cc50a6e667d9f4f",
           intel: "ed02e108bfdcbd8e644a848a591bb981e38e0997cbdd8d9273ebf9099e68fd17"
    "ru"
  end
  language "rw" do
    sha256 arm:   "35945cf0126aee0b3a9fe152f4ac1682fb594e003d7df104a28375a216d80382",
           intel: "88dbf8356a2f9794073f709c9f1af9aa2eb8035596553b858c173ac4fe5be6bf"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "d9512e00ad071d65cd0252e7bae4d6e21b9449631c2dd2b34d7e582e5323fd39",
           intel: "4bd38718193bad318ef8375832cc41d57c196b56b3673d286d95b7264e95cb6f"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "4d659fcadd8816ceb0d79b11b5ea8501aa539e7d9af43463cebd20f0a571ddd2",
           intel: "cde6ea6b8375293d04432753813205ba16f29c21728d4fe0dd739a1df9a1b521"
    "sd"
  end
  language "si" do
    sha256 arm:   "5cf5b3e92db37d5628ca8480dca55355dcabdbcb95867f80ec28c24731a9fe7d",
           intel: "4d7bca75357c79f637ac65d376b0d34d133010f981ddbc266a44309a6e47692e"
    "si"
  end
  language "sk" do
    sha256 arm:   "fd6aa3fe74d06b8ddd308e1c6dcd5ea161495256de95791e8f64199f5a730bf5",
           intel: "2e89f66dace76481d8f28c9525cbb201aabda64593a0b22e7af9e039e093b476"
    "sk"
  end
  language "sl" do
    sha256 arm:   "f92f015eb1862aee2bcbc64d0335eedcbfa1a19ca17557210dde1cfe5d2b0cd2",
           intel: "7b0c300b927dc0864624d0c0f0036b11b34f3cae50a2c65ab2a37b1600af4759"
    "sl"
  end
  language "sq" do
    sha256 arm:   "477a04762b13cd9d90e4cd30fbed34a48504b1fd6639e2bd1958881b18890302",
           intel: "efb1b4b3d630b32b67ea02dd1fca298f5ffc078611ad6216a9ee1ba2fb2486cf"
    "sq"
  end
  language "sr" do
    sha256 arm:   "334cd3f63500222e8f2e2689b060bc1a767e93847304ec6a35ceb18a21f59e27",
           intel: "4b86184255a6185bcdb121a77b4e84e575215b3664285f5b404055050f9a3993"
    "sr"
  end
  language "ss" do
    sha256 arm:   "16bcde2a5edc709e541c12a262efff89b389cc92a58fcd78c607c3f8fb0656c3",
           intel: "f2f818c35ce56bb582fca52912d2590469596655b0d260552581a03eb672cc00"
    "ss"
  end
  language "st" do
    sha256 arm:   "258646739bfc32545c0826747f8dbb4f896fcd2fab678706f63c84f65ea586f5",
           intel: "4464ef9795efa0c198540e507b4a0b4e11845cc24d83554f8523ee770a1b34d2"
    "st"
  end
  language "sv" do
    sha256 arm:   "bf2cf66628d1cf3a24e97ad170eb2dffb96b2da1a0c6ba0cbab23d65f0e16484",
           intel: "669448bd0cc9224fb76732953c0858b8a234b02ed4e89b9536ea4e071eb31149"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "89fea82b8548b28ce02aa1e0ec84db0da460e33cc4f5a36e649f66f063d00756",
           intel: "b76ba957dd29b16e8ea3ebca40e9af19ed16d12cd27518c20c4d79c7014de9e4"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "5f90535610138c60dd8efdba0d1a3471ae9d29777b4c4c6e247a7b3e396f68ef",
           intel: "e12a62ab0563e6435079e5e02492f7bd833be6e825d1d8af4c7aead8db585eb2"
    "ta"
  end
  language "te" do
    sha256 arm:   "e5fbd7fd52c1c3afc53c66733ca1550226206acc3d1a97d32b2f419cc17c9776",
           intel: "b9eb722dda2488b2d204191f24d0028acc11fd29e2149fbd68be1f49c2080688"
    "te"
  end
  language "tg" do
    sha256 arm:   "c88909e5f987fb4882669802fa71c0ea68e4cb29ced91a63268d84220fd29af7",
           intel: "da1d7cbf2fbb9c222a372d301287ad2913c7893daac55004b0aa88bdb46027a1"
    "tg"
  end
  language "th" do
    sha256 arm:   "0b1908b567b6fc7868ed3f482f9388306bc8f3a0233fef832cd372294c33bc7d",
           intel: "854aa581c3e38bf66675d3b46445da52c2fabe32580005136e2cd5e93e3e1885"
    "th"
  end
  language "tn" do
    sha256 arm:   "8e7a620a261c1aae7416abc812532b047f16d7811729f986e8716ba66b7ca5c5",
           intel: "4dbab76654b9b351b18f769dfa61455e0adef5d54dd5e08a4190ca81c6e7bc1a"
    "tn"
  end
  language "tr" do
    sha256 arm:   "73519f8ab95020578ca52fde6cd93e35602e74f93b27962136e1648d6451a508",
           intel: "3b0134b48df98ba217d4a5a3b841be289e5f71dff67edf6876a8f90ba23b6da9"
    "tr"
  end
  language "ts" do
    sha256 arm:   "e11fd051d679f6a990d68896a71d40b6dbe5961dcecf1a9911069e33d95e5032",
           intel: "4a7dd05c0fee59bd4a42f62fe6e6fa217391da055a716fda23c757118869835e"
    "ts"
  end
  language "tt" do
    sha256 arm:   "813bc17636d637266485842c69b096ac4bbd7c92ea2aa42ca894042eb154a367",
           intel: "992c1de4410135af6dacbc0bb4b6339fb233dfec34def61dd1395aca41ac65fd"
    "tt"
  end
  language "ug" do
    sha256 arm:   "a198473ba76e9f6fb2d745fd9b70cb906789408aeb9e9fa8e80c176c1a83d6c3",
           intel: "b03b9fcb5d3deca3c940a47e6598a76e8af3038d3a819d22c01079637476f1cb"
    "ug"
  end
  language "uk" do
    sha256 arm:   "50059b1855e9dfd92d8a47aaf369067e19a698cfed5f4767d253588749bf8c28",
           intel: "7e4f50e7f3c98d2191b3faa2d57a259935479d934841ca2ec0188b1a808d5837"
    "uk"
  end
  language "uz" do
    sha256 arm:   "dd7586b4fb79d3fe58ac8f61a211def1b8853b9eea6081eea59d064a5e11b626",
           intel: "f3140205a0afb7c8cc62859fe132b90df436ee11419d120249a1b257ae1e48c8"
    "uz"
  end
  language "ve" do
    sha256 arm:   "98502142e4a9fa9a32f362f117ab5b588cc7a5e6222bbd501b38926185232394",
           intel: "52b482085b3b11445325dd6e92707581808c0b83589d24ad2c0a5338b277c3d6"
    "ve"
  end
  language "vi" do
    sha256 arm:   "8feb618464cab201eab2f25119f7df0f5bd437323d4c320a61e168cd2876d2c1",
           intel: "048b6e5d2a6b24052d5f8b78e9a4c6e32c093ca6d68dfc145446ba056bab8f5c"
    "vi"
  end
  language "xh" do
    sha256 arm:   "9a36bbc37be52a7093867173c8a2df51a991f70a3175a2b9f50a31fd78cedce8",
           intel: "fde9897dfced8bf11cd7aceddc6824b4a06e0bde8ca67a29f6e3b6094cb3caa8"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "04bf92f6a220d890ef7a64d040dc9582af09b7394aec402106b8a93aa8e1e0c0",
           intel: "7ad4d7a604b738e16fba7db57ecdf80e6104e6afa8e0963e22131f71321a4505"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "f58644ad9439d42252a63d3af48e92111b5c4fec577bc233d787181d2fca614f",
           intel: "c39ed438efa942a768e4b7eadf3aabf2fc7cd05e17282351f1209ab268c95215"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "8761bbbd4b703dca5c3975880aac43e88c89be13934429534a7e0e0105c67dac",
           intel: "8bde4888b4aaacd6218fc2c2296ac572272e50da56efbec154167498c8ddf778"
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
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
