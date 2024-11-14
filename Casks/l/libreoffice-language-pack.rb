cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.8.3"

  on_arm do
    language "af" do
      sha256 "c214af29bc4a5729d4d7f9ce5a0cea2e507d5759f5ed5c1170f5115e56b46b92"
      "af"
    end
    language "am" do
      sha256 "feb717a10214fcfa4f91d991ec699b6688fb9a520d73ab6167e00621493dac1f"
      "am"
    end
    language "ar" do
      sha256 "8a3c71524cc3f015d1473fd05b7d7a01afadd2f5f76e00c5de9d1db356b5362d"
      "ar"
    end
    language "as" do
      sha256 "273768710dd32b2db250f2f2da8151de1a8c6102ac8d05f05ffeb3789c210db6"
      "as"
    end
    language "be" do
      sha256 "ede8b6808f5de7f0e2e6895db0dd5137beccee5de0c26c24682ca05ad24d9b7f"
      "be"
    end
    language "bg" do
      sha256 "a669365877511c8e454926f37f12522e1c2281377153aaacf504241cd014d9f9"
      "bg"
    end
    language "bn-IN" do
      sha256 "7da1d89337affbb420f3c37f8cc6b0370065633090e2ac1e32c7275c5e87a81f"
      "bn-IN"
    end
    language "bn" do
      sha256 "48f46da6bab4b8711df1c71720438804f9ff1ca96fb16342fe46c7142cbeb25e"
      "bn"
    end
    language "bo" do
      sha256 "5975847cd5a5f3fd339c9b0205371bc3dc286e5d3b0ba3b2816d54e086c67bfb"
      "bo"
    end
    language "br" do
      sha256 "005e98b4aac99a4f90ec721b938e2407af120aa0dfdb36243c8361d4e10de0e8"
      "br"
    end
    language "bs" do
      sha256 "ac98cd51d5d981001b4b885db013d5c0bf89b48c226586d9eae09bda8926e6b5"
      "bs"
    end
    language "ca" do
      sha256 "e8821eda89076b1fdf2f6a55656d50bcac00a8194704836269d57441b4baf083"
      "ca"
    end
    language "cs" do
      sha256 "ab911ea4f520d603662da7dd120a232cc8283c454c21e8f31d015036b227de67"
      "cs"
    end
    language "cy" do
      sha256 "f22a7cc5053e645a2f3f182b9f5b3396c4fe5fba5d7550b1070af4111e7473f4"
      "cy"
    end
    language "da" do
      sha256 "4b3d062a10581139217dd7b7bfbad49cc0681786974496a46c3a76812cf3e5d7"
      "da"
    end
    language "de" do
      sha256 "219fd94a31c2fd73929f0c6c7eece16a32a558dce28ad57d647051a224af2778"
      "de"
    end
    language "dz" do
      sha256 "5165c44843e054b1d0b72f8f8db0ddbd8f974173719046fc90d9c6368ce9c3dd"
      "dz"
    end
    language "el" do
      sha256 "1eaaac202418f8cd35a528a62997603a4ac510122d0158bf0b04fb20e7f8c30f"
      "el"
    end
    language "en-GB", default: true do
      sha256 "90cccb0613f07bad4ed350d74976ef3985f5ae9ee19f0ca234ce8e1c61286a28"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "5121a1db1b254adbc0bb738ae2ff72f2920c8023d5c698baecd20702d13a1100"
      "en-ZA"
    end
    language "eo" do
      sha256 "e4841ee815bd7b9d2c340eec862846b4cd56c7c13e5fea09da763d453008a34a"
      "eo"
    end
    language "es" do
      sha256 "08b740cfbdec0719d069ca6f2b92076d8d46da3fe71eac36ad7947919ac5fdcb"
      "es"
    end
    language "et" do
      sha256 "41fc8870dbe1b430463098f5ee05b3adc7b67df959458ca8cac5bf4166fa39df"
      "et"
    end
    language "eu" do
      sha256 "0cdbaad7de4daf33eeadd78b9680186686494d0bd741fc940c9a6fe9246edec2"
      "eu"
    end
    language "fa" do
      sha256 "bc638a95d21a0e8cf257aee3ed661e21c9a0eeae5ef48f5f36cc1e289e27f757"
      "fa"
    end
    language "fi" do
      sha256 "d2db99dabed3bf93dbffe5a6a3929814021316dbc24b61c93e84c5d408255484"
      "fi"
    end
    language "fr" do
      sha256 "fb0ab675dca6755c14f259d192825c12d5faf5e3e651a4702ee0636bc8ac4a2f"
      "fr"
    end
    language "fy" do
      sha256 "b9f26f662725a266173a3cb77b2eab0b396da85427cf82c3548ab7970e4ac241"
      "fy"
    end
    language "ga" do
      sha256 "8c98b21a9247e4ab74a037d422a26a1ec204530deec412db24e568c2715498b8"
      "ga"
    end
    language "gd" do
      sha256 "85a3f56f9bb2f0f57893a109568319d11ed94729d96d5f59b9c740617244b1e4"
      "gd"
    end
    language "gl" do
      sha256 "584e2e281b126077921398bf3937f047508c8096d72a69a601ccbc4dbfea2a4f"
      "gl"
    end
    language "gu" do
      sha256 "d48efd2211e09b2499c1169c82e896bb7cc0bcd36f0e91ff5a793be7c70b7e52"
      "gu"
    end
    language "he" do
      sha256 "42678acf56619c65b047c77ad614886997aab09440fcdf6f0d31a016106d0c78"
      "he"
    end
    language "hi" do
      sha256 "023120c9fce34629278610795cb5cd4eab2fcc7ae8c122e686d16c0a757293bf"
      "hi"
    end
    language "hr" do
      sha256 "f4306e6d5e4d03173ec529c6eae055409c2f9e95905bfd0f54e7e9f107e52caf"
      "hr"
    end
    language "hu" do
      sha256 "ab8fc0292301dbd4b070e9e8ec229ccb1b77736780a3d0a2eb54a7d78643ac61"
      "hu"
    end
    language "id" do
      sha256 "b877f925227e0feb2ca1731bacc2ed58a8e19cdb6b88df26a6249ae360dea9e1"
      "id"
    end
    language "is" do
      sha256 "1f2d246f0e92ab7ed615803544aab136d776bae4844a039c1084e770b9523f5d"
      "is"
    end
    language "it" do
      sha256 "3773b3f9c862b7394ecacbfa8e7fa474e8b8b04cb713676caa8a53cb63a97314"
      "it"
    end
    language "ja" do
      sha256 "6c2a408096b9ccf35f8ce6ae887830ae2e1d44eb4fcb9c34d3ee38fb0256250b"
      "ja"
    end
    language "ka" do
      sha256 "aa14e43d6f7d466c6475d55f723655b9bdf55e5573c289d099af321032e66a63"
      "ka"
    end
    language "kk" do
      sha256 "9c3b92a26883cbfc4555b7961ae11b47d8bf4a9d29af15602ca5e66b94d0d7cd"
      "kk"
    end
    language "km" do
      sha256 "ff50f09dfa97ee32ed5a8cade286fb6e04705bfd136119d9fc3831935465a4c0"
      "km"
    end
    language "kn" do
      sha256 "ca72b54295af5fe82b31b9a1208cc1fe6238ced3507e0473db9b221463cb0c5f"
      "kn"
    end
    language "ko" do
      sha256 "a9e6a57592876972b425f570a2afc0112099d919fc03fdfd0d021c70b0d1b6a9"
      "ko"
    end
    language "ks" do
      sha256 "6a898a08bf52949b4e4d9974f3e805a6423dc65e33f807ee21126b5cb67cbd1d"
      "ks"
    end
    language "lb" do
      sha256 "ab879d737a36fd43d72fe854912f72708eff1df27b507387c97f462f14a198c3"
      "lb"
    end
    language "lo" do
      sha256 "2c72918a7ad8891e0fd92ee30815e23aff38a6dd94b285fcc7bcf412e8a6570c"
      "lo"
    end
    language "lt" do
      sha256 "6096c043a1adce98ba2905dcdf253b006e8770dabfb832d54882f320fb3cb412"
      "lt"
    end
    language "lv" do
      sha256 "ccee9cbb4334813ea9d4fa136a49f2770e082a72310db1dabb9814da2eea6eff"
      "lv"
    end
    language "mk" do
      sha256 "3bf9749b0f6e913a5f845a35f0a2642e3861cbe3f3b1d80055f3262d43b9aa5e"
      "mk"
    end
    language "ml" do
      sha256 "32c12dffb06b63eca592415ff0a38f2a20e0fb7a5d04eef06c1af457a2f6d906"
      "ml"
    end
    language "mn" do
      sha256 "1361ea226e68356662c2491fa716cd7367e4181397d1ca3387fa1e95e8d764b7"
      "mn"
    end
    language "mr" do
      sha256 "8e3aa7209665a5efc411f9609c38a9558548f28957cd5409519aad4fd9b9568f"
      "mr"
    end
    language "my" do
      sha256 "a068194599e3d0a5d884f9a0a21c181db9d433e36359d5f621afe92868ca2482"
      "my"
    end
    language "nb" do
      sha256 "58d632d9f82f28de325e2b0a391349d7fc6372c48e4b2864049328ff8c37a7fe"
      "nb"
    end
    language "ne" do
      sha256 "7f316788b87a3b49c2294ec4bca234b924a1b1f228d0e89fdbec7128e1f8cce5"
      "ne"
    end
    language "nl" do
      sha256 "776ff9668e4545155bd7175a61ef6a6bc5b8dffacf8bb25ed706a592fdf16c10"
      "nl"
    end
    language "nn" do
      sha256 "ee5768695eeede6710544a5a6bc55fe0f1ebc83c54e0d350e2a51775d3a69d29"
      "nn"
    end
    language "nr" do
      sha256 "55a8bba44c3a0221ed15454e401e315d35f43197c193825fbe84eb717bdbdf79"
      "nr"
    end
    language "oc" do
      sha256 "464575f8989e4b49a2ca43214a8d8b4a13998a8b942a672b20fe642934cd786c"
      "oc"
    end
    language "om" do
      sha256 "1cba89497c183a24524509f0410b9fe6f44d746836e49d0514d3d543e969a3f4"
      "om"
    end
    language "or" do
      sha256 "324a084476e86ef51757e63c4b24b23e24ec4fbfd62ee169afd0ab2a6df1a474"
      "or"
    end
    language "pa-IN" do
      sha256 "ee572c19faaf71b86492c5b11336b68486866a7f1bd11e997de35f78663a1235"
      "pa-IN"
    end
    language "pl" do
      sha256 "5cf5d69f09f66d21ce67c6fe0d23ba565e5912cf8082671de3806c3124d43c15"
      "pl"
    end
    language "pt-BR" do
      sha256 "14a741b0a5d29add382e75fa03b302274d3b71a69b5edc06334f52d38a743274"
      "pt-BR"
    end
    language "pt" do
      sha256 "3ea0987d4f9cf3c442a5b8f0fd850130dff30225eb14afe45b51cda93f145704"
      "pt"
    end
    language "ro" do
      sha256 "650a4b2e648227115b1af7d7ff10f9a269098f24bfec38f757ac87a8251528c3"
      "ro"
    end
    language "ru" do
      sha256 "01e66e0ac74032e7acb4483741478b65b06e4953056ffe4a598fb8f02fbe92e6"
      "ru"
    end
    language "rw" do
      sha256 "bfb112c8f2c73a7312cc03e9d9a2c20d1d3197c3480754b033978a16590a1519"
      "rw"
    end
    language "sa-IN" do
      sha256 "c199afce7b11bc771a6b5f6442120f92237f23a23a66d6f7a2fc607e2c14af7b"
      "sa-IN"
    end
    language "sd" do
      sha256 "0ea4eb75b5bcef5928ed7ccd5d986977ccf9394dc265eeafe0750ba6870b3e31"
      "sd"
    end
    language "si" do
      sha256 "fbfbef610355ebb00fe7efd35a3e32bdca97d2853a5067412554bed4086373cf"
      "si"
    end
    language "sk" do
      sha256 "c353054ed76b922a52e8430c75b36b033c0f4209eda2bfd795244aebf46036af"
      "sk"
    end
    language "sl" do
      sha256 "96fcb4d807c3f882e3c0c375770c6d2de83c2565ecae1c4703ff88308c8500ab"
      "sl"
    end
    language "sq" do
      sha256 "0c14b97d98025c6e0b11e7f1f57de206cc4b4b605043e26116f30d92036172fc"
      "sq"
    end
    language "sr" do
      sha256 "eb3c4dcb3a6cb7846e8bbfe9d487239bd4af4a63f204ac811f83f2b40ff47536"
      "sr"
    end
    language "ss" do
      sha256 "bb12f6c18d67f7b894438bbe5309830970fc88a663ec44e9423ac341cad93d5d"
      "ss"
    end
    language "st" do
      sha256 "0da8f49abd7882190a8ec86a047188da79b8f00acab6c31b3320626c98f19f3c"
      "st"
    end
    language "sv" do
      sha256 "1794c353166776f2d28710c39a602c591d221b3439260920de68b84cfbba1267"
      "sv"
    end
    language "sw-TZ" do
      sha256 "2c224decbd2b6e35bca4c38b4aca58135bfa8b62654f348e5daf605de79e73db"
      "sw-TZ"
    end
    language "ta" do
      sha256 "d06a69620936a9fb16d0445612a05f5cfc88900289196123fd60c38b3b3fe22a"
      "ta"
    end
    language "te" do
      sha256 "2584e691e23f4378e6c014ad66914d16fa52bdfb6269fdb49a86cfe72f4e4ccd"
      "te"
    end
    language "tg" do
      sha256 "13d0e029176f1447e0378fa0359a246772c26ded6129477ef70188c8404b2a60"
      "tg"
    end
    language "th" do
      sha256 "b64aa9eb80a333192a5762b963268ee454f6abf188271a2f9f41c47a91e3f216"
      "th"
    end
    language "tn" do
      sha256 "9fa7135c0b1033534dd0294b3dc8030b751d29e0c5707ff3791b2cdab02a5159"
      "tn"
    end
    language "tr" do
      sha256 "095c80b70e0db4572db8fe55d4dd30adf0f11b4d2f0b4b01600ba2d322353c0d"
      "tr"
    end
    language "ts" do
      sha256 "2786b3bdbd39047fb7be8f16beb49315dc03a850052b8efd5cdff78a2d88825f"
      "ts"
    end
    language "tt" do
      sha256 "0c3bd9b20d3fd7b23629214aaff4418771ce5548d7949b18c32087223129716f"
      "tt"
    end
    language "ug" do
      sha256 "1f82e6674e56b012fefad789e1c0dbcad19337f6b6c13d697f9693bab41139e1"
      "ug"
    end
    language "uk" do
      sha256 "d69de5c2a72c412da14e63162d338e302c33700e83c5c27f5865b2628c36047f"
      "uk"
    end
    language "uz" do
      sha256 "a59dfdc4760cf70d46eac8a72505eccb557f3cacafd4b5f2ee9849116a548a3b"
      "uz"
    end
    language "ve" do
      sha256 "7dfd4f01df45906cb1b79ae3a281cf203a958c3f12672bd672d1327cb2b13219"
      "ve"
    end
    language "vi" do
      sha256 "44808e5381264f4ea26bde4a855b400b28f898666e2e892df450f4c67ec4722c"
      "vi"
    end
    language "xh" do
      sha256 "93f77dc098df9bc72f1c7f555556033c4627f52b66d790a653f2c5d0875a4feb"
      "xh"
    end
    language "zh-CN" do
      sha256 "57b37df8698b0218641840b915994210ff96c6534e827f7aae696fd047a9a74b"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "a113dc52518baa1cea2728d0b44aa0a08b5c334b6f1dccc0a4f4bcbc033039e7"
      "zh-TW"
    end
    language "zu" do
      sha256 "8717f7b47d4504c9314274c80764a40e2f073380fd38127f646cec2a3263c031"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "f1bdc31ef445904496acfc5062fe8d12e2fab011e6597393af5589b301340d9f"
      "af"
    end
    language "am" do
      sha256 "43dac7e43688c109e1ae339f07df0fa4d789342baa84dd173cac2bb4ff2f60a2"
      "am"
    end
    language "ar" do
      sha256 "05ad0c61db328c2f94bd8b9d35a15b2debe24ffec4a5d06a4888953938764872"
      "ar"
    end
    language "as" do
      sha256 "f8752ea2f69da1ab97c1b74097308626c6d4056e6bd06434e068c7be4d015709"
      "as"
    end
    language "be" do
      sha256 "c4bf29ea55956b718b1e53baac64e60dda08815aba2dcae20eb0531d777c80d1"
      "be"
    end
    language "bg" do
      sha256 "b9fc7cc4d7e7387fb0ad51f459c53530faa40029faf246ec593110aea7ed3f07"
      "bg"
    end
    language "bn-IN" do
      sha256 "f2ebfac89a665048e5d4080769462411f06b5a3b40dc09e1769435f8fc9d88e7"
      "bn-IN"
    end
    language "bn" do
      sha256 "ab8345382af3bd2f82c20e9af19acd3042dcc4027bbaa5385d5f050a6cc893e1"
      "bn"
    end
    language "bo" do
      sha256 "626cbe029546a36bcb2ca42b997c4ade8afbcc94a08c172d85a6cdce641f8357"
      "bo"
    end
    language "br" do
      sha256 "bf93027e20e123c83d5703b2c1687078b058f264d9374dc41a914a3902e76b44"
      "br"
    end
    language "bs" do
      sha256 "3a98a3e222bb1ea5cda23f836de92b49944702b9bead9dc060fad92acce55044"
      "bs"
    end
    language "ca" do
      sha256 "debddf70884c33d667104ef2296f9eb97376928bf7b152b98312755954e7cd12"
      "ca"
    end
    language "cs" do
      sha256 "a38538ea0de85e3c3b17375d5a55e7af177cb003e37773eedbadcb6e54d79411"
      "cs"
    end
    language "cy" do
      sha256 "55b5738dd63b9463ec0595ee44fea09ea06aa71f9bd7172999573181b238792a"
      "cy"
    end
    language "da" do
      sha256 "4fc1e1285c7d2edb7beacd67462711db913e27b091340bdfd98ee7f7da7aa4c8"
      "da"
    end
    language "de" do
      sha256 "4ca2a45db0b70ecc9530f2dec741d247f7626d0495698e90a94cdcde098a09d8"
      "de"
    end
    language "dz" do
      sha256 "6418faf5fda759136835215a6409578f116f2cebd916eca07dd6c5237718d743"
      "dz"
    end
    language "el" do
      sha256 "fe380589df2b20f767dfccd25d26aa846bf83319597808b5f7aeb53c7005f87c"
      "el"
    end
    language "en-GB", default: true do
      sha256 "01f37c452ac360c9770143e2c22f8159620ac5a06ab814b9c60dc76c1851ca46"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "a9409e4e6678e40b489273a58d5d8daf096d32e19274cad0131c9d9dccc2761a"
      "en-ZA"
    end
    language "eo" do
      sha256 "031cd05cb77e9abb4c19d135de31973cdc8c130ef3b1021086ec3c06e0f86267"
      "eo"
    end
    language "es" do
      sha256 "575b0df03f0d1dd5d383c68fe3bed4fb69f54bb015b9ba31a90190394bb3397d"
      "es"
    end
    language "et" do
      sha256 "f6bf2471c3c7466fa3bc23fea34b726f826d320eb0bb1b341cb3f9dae1965356"
      "et"
    end
    language "eu" do
      sha256 "1b8161853f9a4b97fae1261c793bcdeeb482c57cd04f1ed9611efce756e13c5f"
      "eu"
    end
    language "fa" do
      sha256 "c7b3f3b4c9306e5fa9c3af784ded056eedf5fb86eb1a7991dbf21889d1c3763d"
      "fa"
    end
    language "fi" do
      sha256 "2d58ee85b8751470cfdeaa523edbf57f1779f27757fa7bc771f97036c81d55c9"
      "fi"
    end
    language "fr" do
      sha256 "93196e9f78967f3963a025769fed05bd9345b46d12110db30a3f4e5119c0083e"
      "fr"
    end
    language "fy" do
      sha256 "6c3195395832c23fe27152cc059f9b3d40f00aebe6d8bd602792b064dd4dc9e0"
      "fy"
    end
    language "ga" do
      sha256 "a01be2df573426feba43f8b30794d0f0708ae657df17f925d5e45a2ce19a8748"
      "ga"
    end
    language "gd" do
      sha256 "accc419710e3cc7f48f90db84a4e60f5cce10d08b9565402fe362480246bd324"
      "gd"
    end
    language "gl" do
      sha256 "300373e83b0dedb95b27b7a351b2da63b4caade3fa5a5cb5712a48e28965f7fb"
      "gl"
    end
    language "gu" do
      sha256 "2d4040330c40caf512d9301b5b5deb0a76d1bdf6c748902c5351cfcfee7ec2b6"
      "gu"
    end
    language "he" do
      sha256 "4bec89b606fa764bbea6f00e6caa4b1b1a7671a9eacfb4bf14ebdd03c7ab6e2f"
      "he"
    end
    language "hi" do
      sha256 "9b8614ad6185fc41469892ad5737bcbf6387987a902ba6914b4396e875e01c7d"
      "hi"
    end
    language "hr" do
      sha256 "d021522e3946b9a471008f7660f18a809db1b27311a8c871e02fa9b3e58b2a50"
      "hr"
    end
    language "hu" do
      sha256 "e6042c6a80ab6455171d06e75b6c560d3ad441efc83c011568cc23e2f3e30bb4"
      "hu"
    end
    language "id" do
      sha256 "262b0b9aa55d0a12e64c312900f6f3518ae9fce4241d7d9c86af5198f6cbe435"
      "id"
    end
    language "is" do
      sha256 "47521d7bd4d03fc49c93254405fdde34212a95a5112d835404d68969bbbd2d0c"
      "is"
    end
    language "it" do
      sha256 "539ae70b077b5338dd714dae415e44536198fddab428f6f5abce9f7346f238d8"
      "it"
    end
    language "ja" do
      sha256 "663002507ee4334ea7d735c2779583ed52d6bf777ffbd26f1e2564130891685c"
      "ja"
    end
    language "ka" do
      sha256 "f924c6470ee61217a8b8deb414571ca526f9cc0c7f1c4d74a29855694e852508"
      "ka"
    end
    language "kk" do
      sha256 "0dc725862cba3ba965af624de86713a498a281cf87f857e8a893ba83aba4954b"
      "kk"
    end
    language "km" do
      sha256 "95a6edb4c054cdf95dbaefdeb9b1612ef11af356e718cab5031b903655033e96"
      "km"
    end
    language "kn" do
      sha256 "26ea041eb9a7d057d5c595435d0274da14c846a605a6c69ebc3336d40d71dee0"
      "kn"
    end
    language "ko" do
      sha256 "c81c0b02fc04170d51665d9486af32590dd200b015c984fe1d2fa433fcc2d202"
      "ko"
    end
    language "ks" do
      sha256 "dfc6263bd0e36dfe1d57784dc3ffa5e7a2d8b45670e81ddd0712e54e8ac4044b"
      "ks"
    end
    language "lb" do
      sha256 "c0827c639a9b1c84a98cdc6eafdbfd6ea148927919209be0d13750a4be77d347"
      "lb"
    end
    language "lo" do
      sha256 "30cf742520020c3588a3f947fcb23563f92ee40f43418538925d8fc61cbb703a"
      "lo"
    end
    language "lt" do
      sha256 "64fd6f78b973a6ead9d0ac22713711759525460a8acdf2f5b51c389e10f05596"
      "lt"
    end
    language "lv" do
      sha256 "e3f6b1a329ffdb1fd03d982fdcfb4649e057c891460fe9fcb98268c4354b1c21"
      "lv"
    end
    language "mk" do
      sha256 "642abdaef79aa5983875e81fca67e558e4eefa3b93c036c28cefe904af2538a5"
      "mk"
    end
    language "ml" do
      sha256 "3e60d48605f969d92019492b8317e4fe2b5c5a03cf4e6c66c14986bec7d8ba22"
      "ml"
    end
    language "mn" do
      sha256 "132a90460639d6dcf05a42e167c3cddcc313a3b0dd825cf86d36fa29f410e0c6"
      "mn"
    end
    language "mr" do
      sha256 "4521394958f8323b10b473f83ad77db04af62e904fa231e87ee50bd1f54386df"
      "mr"
    end
    language "my" do
      sha256 "e03f6f7bb83d3cb6a524c2e6d49ccb3e6c81e4418ae457b6feabc30a16ffa648"
      "my"
    end
    language "nb" do
      sha256 "4c9a7d7de2eccc8e49eeccd4bafe004d975c48938015a0562fdc6f263d56fb78"
      "nb"
    end
    language "ne" do
      sha256 "3ef52e22b5ba797e67976d31a1c12e4a06f107c25dc48e97e0b9d81d26602ae2"
      "ne"
    end
    language "nl" do
      sha256 "d628fd794d7c2e95eb1e63ea0bf9caffdff1c92e0e901f025b6058f2f2e4e23b"
      "nl"
    end
    language "nn" do
      sha256 "8b89bc9fcd07ff7fb303af1eb3565266350d7a04e17922a7ff1f871c3eb2a415"
      "nn"
    end
    language "nr" do
      sha256 "7bc73034c4b1d8955180f07ff89ff7f068abf80c94a7218038a3ba8be60da9e9"
      "nr"
    end
    language "oc" do
      sha256 "c26bd4aa5e0c3e11a7af661e9e7843fb8c4cf81330177121f173042231bfa884"
      "oc"
    end
    language "om" do
      sha256 "7abec5c209709867aae187c68c5eac0316e3b87fd63b9ec2f5a3d2cf75d17a3d"
      "om"
    end
    language "or" do
      sha256 "39b855f8aa4797834dbf74c18d5ca1ca3e786a6f21166be467fef64a83c4c79f"
      "or"
    end
    language "pa-IN" do
      sha256 "84ec6be8fe9826b53724cfcc67628e4c3762e014c9669ccec53cd81d66f2dfcb"
      "pa-IN"
    end
    language "pl" do
      sha256 "58ca02550fe4c00e16eb404cbac0a0e2d7c797b51fa4922374452d29591f51d0"
      "pl"
    end
    language "pt-BR" do
      sha256 "7a37d65fb65a706b9f44a946bdbfe641ace8b3e40787539a0a93c94854385566"
      "pt-BR"
    end
    language "pt" do
      sha256 "9d33b44c8fc180a1a172b5f8f00c9a3d090388d06e211bced84513356d690829"
      "pt"
    end
    language "ro" do
      sha256 "79489c43c8d2cbf13c1b35ed38c610dac94145e5bda4a054a9f61e57e5aa1102"
      "ro"
    end
    language "ru" do
      sha256 "ec59dd3e227cd554e1fde1413b7e610e486301e88848519f44c1358429e7f0c9"
      "ru"
    end
    language "rw" do
      sha256 "40a48bcc0255bb11bd723aa86b75933dce96a6f182d2d971400e56bce5b4c790"
      "rw"
    end
    language "sa-IN" do
      sha256 "762a189b83809986ffe9651acbc91083e0f357a6aaf1ce1ea9751c73ec64f56d"
      "sa-IN"
    end
    language "sd" do
      sha256 "1fba78e7788be12e745f9d9a89b3dcb060159af22d69a733fd49eaeee06cdb10"
      "sd"
    end
    language "si" do
      sha256 "ac2d9dd33d76efebe1ad1a19382d02defedd3d12624ecc52ab306b0aa729cb1a"
      "si"
    end
    language "sk" do
      sha256 "6ad27231efee83dede4c7eabb366487e2fb68ee9574b5165d1ab01deac7eff9c"
      "sk"
    end
    language "sl" do
      sha256 "aa83cd15ee30bdd3a376311a689f0a826fdfee67347e75a0a85ce10efa6889d6"
      "sl"
    end
    language "sq" do
      sha256 "8fa152d9f82020d8b6d204aee0f46f9f00a5a9b752a41764db694a363ae54909"
      "sq"
    end
    language "sr" do
      sha256 "d6ffd1e591f0343091540dc78502014ad76156e4ff1c1f80e02ec0e13de57f60"
      "sr"
    end
    language "ss" do
      sha256 "0aa982f7ed1f5a654bdf32d93778a015cf7973d028fd0fc2aaac745c5c2082b5"
      "ss"
    end
    language "st" do
      sha256 "414bc52508f5f93583cc637932af202df69fcf9eebb8e111ee28400f154eb7fa"
      "st"
    end
    language "sv" do
      sha256 "4b1d3e456938526f3633f3870d5ad8a014d973fb10eeaf5c29c359be765f0f96"
      "sv"
    end
    language "sw-TZ" do
      sha256 "ca69164f1ad11835f31392509380f6130a95cc72b22a88d1b04dd451a3b96662"
      "sw-TZ"
    end
    language "ta" do
      sha256 "a66cbf201bf34e88951fe38f8bc7ccba6bce537e5f27d904fb58a41c83eb566a"
      "ta"
    end
    language "te" do
      sha256 "faad38f1767f83d9250f0aabea95ab2d5211b97e8fbe374d77b7036786c69726"
      "te"
    end
    language "tg" do
      sha256 "3dfad1f57018c1fd42a8a996dd0d9a229612699b0cbc7aca103f3aed157c7953"
      "tg"
    end
    language "th" do
      sha256 "7640736555d0817a3bba18389968a1d17e9178bf2d852751b06682159ea7c3b3"
      "th"
    end
    language "tn" do
      sha256 "a3713c3846e9325bd0370253b856973a955e0a00cfa093b5a2bd477dfdd81cc1"
      "tn"
    end
    language "tr" do
      sha256 "da7b16298705aad5e6c54a0f63b0021bcb38d0fc7efa9cb4b93245de890050e4"
      "tr"
    end
    language "ts" do
      sha256 "30a80c5814b5f046f327ee3eec528fc78a5def65227d5df75d3a645f91cfe925"
      "ts"
    end
    language "tt" do
      sha256 "f43fc582c2bdb1d4280df1c0ccdb0424a5b2147a7030238bcf6de7808c91f3d6"
      "tt"
    end
    language "ug" do
      sha256 "e064215c27691d921f56068a09d469eae8f4ad1c6135d63421efc12f374c8f10"
      "ug"
    end
    language "uk" do
      sha256 "474a55ac1036a1809d1df551dd9ca4a3478b286699ecd7dc851ea4d306e3dfce"
      "uk"
    end
    language "uz" do
      sha256 "6bbcc618e7a6103c6f3f77168ac85b9824c00c966b53a90b646c82825b759fb1"
      "uz"
    end
    language "ve" do
      sha256 "e241b5f5d68ed56ee7ba17f8db84f732fd108f5421733e1d22344495b4dc64af"
      "ve"
    end
    language "vi" do
      sha256 "58f8eec56ff283c8dd183eb7b59bedbd211f3b4e937d0e5fbf4040569e075027"
      "vi"
    end
    language "xh" do
      sha256 "3b86aec80cfd9b65a479d4568577de6515bb2aa14163c9e8dd74f8a3a7f75240"
      "xh"
    end
    language "zh-CN" do
      sha256 "91c1ced4ff24d4ca0a5d74c64f84e3eb583f3124460d2482181beb2d1d338cbb"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "4314440a19a08642eefc68c5cf27cd3bd0201e6064ba16f90365000a4a336d53"
      "zh-TW"
    end
    language "zu" do
      sha256 "ac1f073de604fdd3c0e6c107cb8ff2753426abff971bf8a183460eb6dc3e9d75"
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
