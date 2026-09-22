cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.2.6"

  language "af" do
    sha256 arm:   "29b6579a6e87e639b19934898ed257a6718f52879e24ec2cfd212c9124a25ded",
           intel: "62629ba75ebc3c45ad31744d669d171fc82f8225645274f47422f4d97cf83f67"
    "af"
  end
  language "am" do
    sha256 arm:   "fc5944691ea8b31c084bda5abcbc90bcc894cf4ccb6ca2da2f6ca34514f01dbb",
           intel: "efd2f02b6df3b590e23f18163f053bf65207c08b3f1f0f2f0f64b0a9637e65af"
    "am"
  end
  language "ar" do
    sha256 arm:   "9e6adb515e21bb4f06262533383588eab9d28a1f17dc6923a210f9a6c9a74d30",
           intel: "59a39549665a1dd84dc926aa670175b5106000958014a0707e3f751373a01d5e"
    "ar"
  end
  language "as" do
    sha256 arm:   "3e9b8b440c924ec63b8c24c5c456b42935a1018c3c08cd49b2dec87db067336c",
           intel: "b3df471e40615d677f5d9f60517c71cbe8d771baaa4e6f111ef33144574d550c"
    "as"
  end
  language "be" do
    sha256 arm:   "f823ded639576cf1fade11ec79100b706c1d08d8431df620a8920148ea03fee9",
           intel: "c695ecf06091bab6cc0f1fa4d6b7f735ec27e0bb52db734d1433af69b9522d25"
    "be"
  end
  language "bg" do
    sha256 arm:   "8116db32751c815f7bec3f84fb86583394bd3856d79ed46a36506c1930fce783",
           intel: "405a43464c1ead2474114734dda943b5ac7cc9bc721a60024921d8814f849eff"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "8fa7c209aed5c99075ddf95128895c7fb379833e9e9e735065e022ccaadfb07f",
           intel: "19077bea36679984e02ea04a082daf2217c37ebf3118577050ba9e93bd3bf4ba"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "bbc62be7fdea03cd1b52d4a443601d6d7f308836381a2f3d00a0e3551e4d1350",
           intel: "9bf74738fef398e03b5229e4175dbb8124a7b767bcc90b0cff2bd1a270f4ce7e"
    "bn"
  end
  language "bo" do
    sha256 arm:   "a5bbd64001becf042c9ec47e5039efe9b65ab126f6ff703deb62072adc3e190b",
           intel: "9c4f1dbff902957f347c13486daddd30ff1dea130b8996efa845442bd3f0845f"
    "bo"
  end
  language "br" do
    sha256 arm:   "9d6ffd67daf82d1c3c3ccd1fc8c8f3391d0c92806f0554837dafbf0230ab42a2",
           intel: "fe4593d20500df393805b75ac3e16dfa107dece5fbb73fb5e6c0b08718bfa39b"
    "br"
  end
  language "bs" do
    sha256 arm:   "96380b4b25e9e2a95f81121a3f0a81e158211d6d383f3e99f4430f5c02bf0190",
           intel: "edfed977d82a62be38ce9e92bbbfe819c84135611a4e3a2a2efd7ac00104d882"
    "bs"
  end
  language "ca" do
    sha256 arm:   "61fd7cd07ef5a20fe29f8043e0b778f2e87fd6c15d6a56082ac50d4584cee245",
           intel: "925c10b828c31c5828c37a27998851ce545925231f954ab10efc94bc938423e5"
    "ca"
  end
  language "cs" do
    sha256 arm:   "22e5fa09b342276826c86a8840d00b37e32e99b5f2c1857e77bbb273e4334f5e",
           intel: "3a931d8014e68457b71abfc3974ec3b6a74cc9faa060db00472bad1adb916fbf"
    "cs"
  end
  language "cy" do
    sha256 arm:   "f7c4c59cd2cb92a9b3face201721427214d3c1529e6645bc381636ff70fdc504",
           intel: "4cc601036546581b6dea86339b4dc08ec2626bcdcec5c25d389f6141f7116406"
    "cy"
  end
  language "da" do
    sha256 arm:   "3af2011708f8a677d5111a8c28ccb9868dd98dbbca62972aa0c38ef4178f91ac",
           intel: "1c98d33d5b51ea059add8832d5087c15b821ee79515e443fe748bed2b4a09238"
    "da"
  end
  language "de" do
    sha256 arm:   "6efb6f96ca1c9f940fef1639a2abcd18e4b2b5f35e82c79b0b0ffb37bbb41577",
           intel: "90449efaa5687927a22597d8c2f33b2851b306ba779f520e9c31716b345ec44c"
    "de"
  end
  language "dz" do
    sha256 arm:   "6890da08c3990970d0a0b3fefd056f38005b49490e1b6ac667fcf6c52a9ff85b",
           intel: "fd5ec6b05f10291fb828464ebf04d70f353c10bec28f5ce6672d246ff22f41b3"
    "dz"
  end
  language "el" do
    sha256 arm:   "4e622e46abfadacf5ecba3ad6fbda38e0c46dd203de0abef86d026926ba7aad2",
           intel: "e322d611386e04d30345aff6df533d9f19c494b7856db5e2613646478210d3b3"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "43f55457932e0d47363c2b1b5953bde20881f6ba8e1db3273c00cd4f3bd353c2",
           intel: "b315a6125e43bf8c058f5d92b62f44c8c71e54f84ace8d3fff7a34a453d32376"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "d2c042cffa5f7babc75e685ebb1bcbde7bcfe558753c570ce13b956fd80e1ffb",
           intel: "76157a92886ca44f7446424562b5961f60baeadc8acf07138566d85a6ecf2927"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "36ff015904129cd368d812fc44cf36a44729d5bc8966eb0957b372a0bfc71210",
           intel: "7fd6705a7ded72b85724d769e7819c84c151443a369f68cc7f3f298e80af350c"
    "eo"
  end
  language "es" do
    sha256 arm:   "ef62f31d6321569fc8e1afd98f772ab210b5d8614d3b0910efcb6e3e63f79563",
           intel: "272c90f002a0ee032afec5e4c92c1dae7dab39fec1c1059cc6339c1bd9c9f816"
    "es"
  end
  language "et" do
    sha256 arm:   "74c40f0759b62e4d3a7dff05d7ed9651e0a5c2e567b12abc9b40c499717e60c8",
           intel: "b407dfc4f55a66884893c29d3369a56ce46d567d1abd7a2167eb95041ee8b355"
    "et"
  end
  language "eu" do
    sha256 arm:   "1b096d01c86b8fc39edf41911008bc5826cfd64bb348667dc0660d708661c706",
           intel: "bd0ab3022a226be92fa4815183d42623ff434c64dd476a22e5184ce07c919e86"
    "eu"
  end
  language "fa" do
    sha256 arm:   "22fb59a9a5dac03b0ea55f51832ea9ce7d7e382127ffed1b6c77b79d27bcf309",
           intel: "bb970fe9cdf0c01725a6abe52cd7d4804f20c2fbe86f69c6326c1249ae8dbdf0"
    "fa"
  end
  language "fi" do
    sha256 arm:   "f319a1b9c1809a73b8046e853483574e5d7619ba52303dfa8ebed7f68ffaf0a6",
           intel: "af767b994f5c853ae61b481e739d92e06d8da9931b445de9742c3e37a35a74f1"
    "fi"
  end
  language "fr" do
    sha256 arm:   "3792b8468ab6327c011ab9d7c41513fd6cff3c1c309a1567e1822cb4faa3fe47",
           intel: "dd40fd11e1115bd57b5f0c303297386192a7cfb015170a048c9d0ac441d7906e"
    "fr"
  end
  language "fy" do
    sha256 arm:   "c460de4e520a58fad62ab6f2426a0397afd28842dec069834d1e9e3073fee460",
           intel: "69c7c43506f4e21a670ad5b75b5a66d80572358cbde66ecf11dad033ec149cf2"
    "fy"
  end
  language "ga" do
    sha256 arm:   "963e224698bb694591f9fe0b1cab2ef9ad2369dd08e7815d97c88b24e116b95d",
           intel: "90253855413c50744fc585687f8f2ecafa52349669c5793dc4ab95ee1136d78f"
    "ga"
  end
  language "gd" do
    sha256 arm:   "3f87814a218c9842a52591bbfa36242a6e6356e8c01ee2b3fa4d1abd0310bea5",
           intel: "55812a605e87dd026eaa5d132b2091ca9da988588eb6a263b97c46f53ffeaa70"
    "gd"
  end
  language "gl" do
    sha256 arm:   "4a3da381f961b359e75f7b7f4dc362914fc8ec0a04048f209849942474f9416e",
           intel: "dcc567a9f63c187b3d9e85dd3cbcb159fc518e2250f63608a439dd70ab5063fa"
    "gl"
  end
  language "gu" do
    sha256 arm:   "b74797332fb6e7ae01357e37e103d5cbf35ca6b9cc006f71cf72fe4bcdf92e70",
           intel: "11619ecc335a4d13be49d1674e9946ce22ae32fed5e9a750a3856ca2ba099673"
    "gu"
  end
  language "he" do
    sha256 arm:   "cf22eabdcd1d05a506756df83cb08ff44da55543bb575062d46a67dd8c11faa0",
           intel: "26b0ab6094ee0acf21fda153e07dd643761c5e556a6efa685a5edcdaef5bdb09"
    "he"
  end
  language "hi" do
    sha256 arm:   "5134b96509df0c0eeed7acba794f15415bac9afa0f23f136e1c0bf03839c6957",
           intel: "e6d30f40f4890f1cf642ea8b03c5f1223c5c5357e208c7acc9e518e58d8229f1"
    "hi"
  end
  language "hr" do
    sha256 arm:   "f9a3aed877e61c59fc3d57e6f366f4ade8c6773df57de406876a9564a91205e3",
           intel: "b62bb8376f742b9255a71c3d388967a682495f91ff45f16baba82e28c55a1b14"
    "hr"
  end
  language "hu" do
    sha256 arm:   "900eab9ce2022a45e0217ab931048f87763d4e212e69ddf8d05669435faa9433",
           intel: "329782fedb3b71fd6f6994b6298152687cfeef5d37f9d54218a93d0e6643ba59"
    "hu"
  end
  language "id" do
    sha256 arm:   "6e44ade1f70c5d4441cc432be6157e1073eee355571788c2e5d379bd778481ac",
           intel: "af4423e48187f60cebf28a20bfe1127049f7bafc0f4b30951128297c91b230b3"
    "id"
  end
  language "is" do
    sha256 arm:   "db061749be3c53fee3f991d28a2fdabbff23e4fa1b02a57e1865d9c35832dfc6",
           intel: "c4b26f57697b77553eab21573f43aa53de6f544898a47c029c8e7e2b3cba0079"
    "is"
  end
  language "it" do
    sha256 arm:   "f4a06318f172f36eca7aeb0a31e2b1518d8af80178b9dfddf0245ddc1f7921d3",
           intel: "b9f66ecbdd860653de62dcd206ab451c799f137b8c3dcc8e4c004437252ac270"
    "it"
  end
  language "ja" do
    sha256 arm:   "a3aacab6e0d37cec075daddb59867d07226708607cfbd377e6fab52866660aa0",
           intel: "585a34f83ef1792a3d182245b9b46bc7163793dd99ba080e1d68a520095b2d02"
    "ja"
  end
  language "ka" do
    sha256 arm:   "872b8ba121c28e8773d5ced5ef1396933d0989d777344df12f00cc331fe78331",
           intel: "9b0901c7bae354f06782d663b423ec54dcde74b7735a702643ff1861a832307c"
    "ka"
  end
  language "kk" do
    sha256 arm:   "236558a5c68b31fe911c2e3281517b4ec52eac3e6f6e6c1e638546f1d2f04e6c",
           intel: "391f530eb2c33592ff0db24e8cd2327affde428e2b17fbb58d060f0dba30397d"
    "kk"
  end
  language "km" do
    sha256 arm:   "8d57cc34ef89e2bfbc8fd7f14fda29d263ec34fb6a9c405b52641264fcd8bd0d",
           intel: "686a4089c59abc662da34404ca53b83be2bdc247bfb48a89297f16bb338f8b07"
    "km"
  end
  language "kn" do
    sha256 arm:   "301e0a751b01221477dcf932428020003b2b923fbcd198072ff17612b18fa75e",
           intel: "e7ed43631bd69fc808e66d0985d800459667f91ddcd3eaef65229a9e1004474d"
    "kn"
  end
  language "ko" do
    sha256 arm:   "672e74dda116bf819fe454a06eac0c40fcf5e79791305b6e86e3e6db16a84813",
           intel: "8b8e07e02c95f8549f8d9d33e1a4402363b10d7ae0a6d6e790d793c74a0f2e74"
    "ko"
  end
  language "ks" do
    sha256 arm:   "b86328753cc4ae7c0b1795dc465043ca57bc043da9bc87b066781437f1892071",
           intel: "4e8a104a4ac067ff5455a2d5c225acb47dd593db98935942a7d2706a630818ff"
    "ks"
  end
  language "lb" do
    sha256 arm:   "414719a49c5c2d69b2e7a55d2b88db8579bc7733a36d5d56331015e73aedc731",
           intel: "83525bd30cf72b2157ed933cfb88f9873f38e56c7f68e15a7b006935d5c4e098"
    "lb"
  end
  language "lo" do
    sha256 arm:   "3b4d6d338fdedf9744989a5a66b6c6bb19448edae09c9f9560f47ef34b3a2378",
           intel: "795d93f31096f371daa3ebdd85fa6c5a25211feae468ddacd317d3bd60607279"
    "lo"
  end
  language "lt" do
    sha256 arm:   "b63b966258d7cadfefbe8666645528fc11ba6dcf062ea471ccf4488bb73a92f3",
           intel: "d452bd96dbe31630705ea299ad725055388a90d95c7201ff9ca446bb66b2f440"
    "lt"
  end
  language "lv" do
    sha256 arm:   "24c94d1428a8cf6c39532380c9a1fb09c6d131c7295ad99cd5e6de6ec3692968",
           intel: "5735abbe81dea8d366cf37a4d74d15430464c5d5879b9376da7360b43a67b577"
    "lv"
  end
  language "mk" do
    sha256 arm:   "68047f4ed084e228ae6d618693cfc322cf9d63b1508e40232cea14371517de54",
           intel: "2eaf28933f3afeb24a12dde53a3720bf7ccf8d3dfbe5ce1e9697cf0ef1ba5f41"
    "mk"
  end
  language "ml" do
    sha256 arm:   "86dea69af737e0cbd4f91f3a57af3c6b356c1bceaadeb16d1df60e4962123b4e",
           intel: "a11586e710b70adac2cca45ac24ce065f6c6521601126bd5c28fb210ba43989e"
    "ml"
  end
  language "mn" do
    sha256 arm:   "492851a2f8b95ab2d36aea0bd3160869968ae9ebb450cbbbed1865fdbcd44c5e",
           intel: "dc7e252fb4bbba0b561bd8146521cfdf886a19609897decf3213bed977f7d714"
    "mn"
  end
  language "mr" do
    sha256 arm:   "18ea27470514ce6206dae38135ac9ca9e2e69706d07fa8578a872d25c5ad20cb",
           intel: "bc1e16f40ec8f53df94147233273896edfb66761ae5c133ddbd439345fd49658"
    "mr"
  end
  language "my" do
    sha256 arm:   "5f0f073e0c380eb113deb684ee019aba5c852a16f162e518fbe17f46b50a287c",
           intel: "b3afd74e600d60e5de9e2c681c39fa131aef7cf85ce93344c9aeb7872d8e4afe"
    "my"
  end
  language "nb" do
    sha256 arm:   "d6955189bb80440d7a1433c46e0a11903ede4642c7dad9a3b0fe5c9dd32e4fd7",
           intel: "00d05356d85afe5192f053286cbf6e941f85a64d487171617de565a70ce38fee"
    "nb"
  end
  language "ne" do
    sha256 arm:   "f54846dc3f7c0ed18968e0c72ecd59807f06b1375f4e7699373e87050c02aaa1",
           intel: "d245943e59893196aa2b878748f31b9b5b4116d4680dd4afc44df265788d7e9b"
    "ne"
  end
  language "nl" do
    sha256 arm:   "9664083c166c0f5e7e89517abadb59091000369ab85f54b4b3f51ba2ba810eec",
           intel: "a3e891a9f43f34e51a6bd09d807354bce87c19c1ce65cfbbda266793c782e0ba"
    "nl"
  end
  language "nn" do
    sha256 arm:   "941d8cde96bb3690095886fe7556557cfb7e0819a724288ae1a7bdbd18863655",
           intel: "73e2e886b4920f2783c4ed969b441e0626975577dc581ad4722594677137e58c"
    "nn"
  end
  language "nr" do
    sha256 arm:   "c2c684a0bcad83dc0fb8d9a8c5fd85656bcd963ca75e11861f0bd21851445a38",
           intel: "0d453e7bfaffd6bda25df9a1a356f442b0e1855ce864b7f57e8c1867c7c47442"
    "nr"
  end
  language "oc" do
    sha256 arm:   "cb41ba96b597ce1026602fd645721e7971f8a4096dbf79e20eb877909ad24ae3",
           intel: "0c190ae1f6320406df984add239f98fc9759e42adcd55f758b1f401e8bde94d3"
    "oc"
  end
  language "om" do
    sha256 arm:   "ee1b13b2074a2752d493ac482f5926ecfd97a75fac6db780afe9d0a232ee262b",
           intel: "48174ec7e3503aa12b54851a41a173b2b33cd48c0229ed33f0e8b0b52a0f9c92"
    "om"
  end
  language "or" do
    sha256 arm:   "66da9591edf225c64630ee35cd13d8f88949d0acc052e775d46b5ad844326a60",
           intel: "ce0857e2e2da7fcf44468b927a91454d88b9f236a0ece8830fc022fc085f4d4a"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "d000afdef6ca8f8bf8273bf76e9224ea13d3b998659b0944247e62490e871b37",
           intel: "f9c2410cc86683d3ecff93d01b730cd65669caf13a96f4fead6304e4ef03cc83"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "74ada90f68eba09987985bbed607c94c839051e13968c83f5fd98fb990561c19",
           intel: "ea8caffff135ffccfe99c56fc44c9209159cfb6a59f6e8a6270fb96e7e8b78fa"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "7b827e361bacb5670bde3606b9902c81f7506a8c164a3725c8e822f97bcc3801",
           intel: "4a025d81166badfeb25a66b19b7a152fbfcea53cc3687c30b9a16ae0ca04519d"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "d359d25bb1850b8de6389b1a44b629433afe72beb5132db502f16458be73ea03",
           intel: "19b85ff4e221dfd824af1c2516b73e0e151de161195b410f85a5611992bcd879"
    "pt"
  end
  language "ro" do
    sha256 arm:   "d4717856116c17493f012e882c380c7fd795bcb6247722ba7d6a61c77fcfc509",
           intel: "b7748c3582ce49bc1b125e238fdc68b91b6d990da11b9947f91415ee0b86ab85"
    "ro"
  end
  language "ru" do
    sha256 arm:   "8d9f955c41ba66d7a9ea3b2a7b9a13837101102971acbf8c88e92df301d3f962",
           intel: "af6790ab3f740bfcdf365cc1f459595aee091a3729814ad9652693046195cef6"
    "ru"
  end
  language "rw" do
    sha256 arm:   "0145327189d586bcead0f923d9646f68102d9a45ccc832d654c4ca9acf4705a0",
           intel: "4532935e6d56c0db09b6de7c342e126375728c0d6ce307ef757bcfcf28a318f3"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "d33612392da22c8a8ce37556fdee5966f48a064486bdd491823b8a99df3a0443",
           intel: "42ee6c4f7a226912500fa3f298a54ed33374939d973124966548c8ef822c59bf"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "e0af8cea8c8ca00f751d2f04800431da7149e5d5f38fc07ac082212ac39727c3",
           intel: "cb052583f8f83ca1967e95b95bf0697a543a6228aa817951397939e51ead92cf"
    "sd"
  end
  language "si" do
    sha256 arm:   "ff057537dc713841d93d3db36965b339e807ec8a36f158e06334ca6f677a40c1",
           intel: "79b3f8b80b408ddf62d9ad1eb4465ace3121244ceb9181c2363fd3661b35f667"
    "si"
  end
  language "sk" do
    sha256 arm:   "84e2f69b0660afba5fefe2f401c402aae0a15614cb16916ee9789be910cc39f9",
           intel: "448306888ab2b2eb884256d7aff39651975446ff1e7d8bed075cd6e4a66f22d1"
    "sk"
  end
  language "sl" do
    sha256 arm:   "e6ee0efbd0074535ed3c1eb1823e2c84f49f8b5bcb2200f098864c2f4bdf523b",
           intel: "67e6e58b503f402a315eab0ca52744434e377b1274d9a2f29cef991fccc0cb1d"
    "sl"
  end
  language "sq" do
    sha256 arm:   "3f872b53c9f9651a7c0e5437dca9c039997f9596605bbc7d1cc697095c37b97d",
           intel: "16aa290b031ff67d48ed96749a199a9f1c757914b68c328e550f820139c05145"
    "sq"
  end
  language "sr" do
    sha256 arm:   "7c3303d92efd5d747ea0edf9f82d44e9f175d1182feed11e2521987974b565af",
           intel: "dbec3d5806795d71166cfc1ce82681f0ce5764ab81d364f4ec2856d93f7b4437"
    "sr"
  end
  language "ss" do
    sha256 arm:   "ac07a263bc634eb10f8e976c92434a63ce0ec825593fc4f4981d837e2ec8f3a8",
           intel: "98f38cb919d502d5cd5f9e67c43748a29937522f870abfe7a155a3f0d52ff956"
    "ss"
  end
  language "st" do
    sha256 arm:   "f746b84610b1bed2bada1ed8a4c13614163b635131091d2866c27f489cee926e",
           intel: "92ea93d61243bae19d6e7e80521aa159cfab143f7f9acc5defedda5a27ceeee0"
    "st"
  end
  language "sv" do
    sha256 arm:   "a6e1bdc959a516aafed5d38f4d89e920d3eb210db6ebf8d3064f7f10643a6b52",
           intel: "0b632242395d51dbf405d26a2b2d833c228746353ce07d81ee72b0ec0e9cc315"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "6f6f70bc9fb07b23ee1c514b30ac2eafc09424564f8313c1d9698131a7eeb20d",
           intel: "73950c042a6c54d45290d8e209ea61942fbc700474d36c1766a50118cecdd3a4"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "dae7523865c318dbbecbbad20cc684ee67885b5d7926b0a307c5e5f89f103590",
           intel: "bf0369ef601ca250fded92457216e01a4887e8c3cda963effe4cca1ea835bdab"
    "ta"
  end
  language "te" do
    sha256 arm:   "98311f78d5b25b18c10277f26554121ebca492765a0a6cf43e192130d84ce86e",
           intel: "aa36fd3cfb75ac7bbcf79e4848f866197e4f65d5098c0f486a2e921767d1f96c"
    "te"
  end
  language "tg" do
    sha256 arm:   "e65f52980383146f1a62c10c651e670bd989f0cc9353dc7333c11cbbf0cb6c0c",
           intel: "22c0354f4f6a391c47851f4d4aa470fc5a3f894002998edd3974ac784062e945"
    "tg"
  end
  language "th" do
    sha256 arm:   "de117b30d6a25a374e2ee4b9ce6c45496c5b0d69ce477db646dfd35e4fbb11b5",
           intel: "392c9f5baab5e7fae66f73b07bc6fd361c53b6c47da5f8560e3410d9946c74e0"
    "th"
  end
  language "tn" do
    sha256 arm:   "959431f39f3afeb31d8675c726f0ef3aada470a9404d51be4d3c24e217f5be3a",
           intel: "2334bded02b8967f4cb7ef9f0602045733451fcd54ed28c8119906bce3c895b4"
    "tn"
  end
  language "tr" do
    sha256 arm:   "48594a35954ec26b7dc17ff7b22404f581abfa9bf462b04aa8332501a7ef09ac",
           intel: "b60396410a1b26e0a9d76d5c21cf54b4aa0d762619938cfcbda8f8ef0fcce89e"
    "tr"
  end
  language "ts" do
    sha256 arm:   "e1d9376b4517a409a2a23f8af487fd77bccb1117aecc1c0fa20fad014b3b4a22",
           intel: "ada1d832d498415cb6b89e4f10eca364f26cbdb38af22c7fc05f258be6367e8e"
    "ts"
  end
  language "tt" do
    sha256 arm:   "fa51c964cd37aed7935e0ae0798e1b63b70ff99e12d1276807000d30a1f1700f",
           intel: "042a0d7703f454b2e9fdce96bf7bfc123d8ec13bc59a8fd5eee781cce421f1da"
    "tt"
  end
  language "ug" do
    sha256 arm:   "7915ab95894eb1454570820fa09ccc775dbc5c9c1abd4cb7b78f021ef56c3c6d",
           intel: "72f09d8dd2a64108547bc128a3075f9720c562eed5372d924e0917f05a559f75"
    "ug"
  end
  language "uk" do
    sha256 arm:   "d78eac53998924a04da59eff82410049567e9b8bd0cf815c84f84e838202301c",
           intel: "83c6580749ff1700f2f3a380840593e8fc569e264a0b7c1c77084d3e9ff7c398"
    "uk"
  end
  language "uz" do
    sha256 arm:   "edcbb86a75342fef613cd983a30b3cfadc1789db84aeb417f62168f688f34f7e",
           intel: "0b0343334339b6f0988e12200427cf3b823c5c3e107e4d716722be646e53b92c"
    "uz"
  end
  language "ve" do
    sha256 arm:   "cc5a711de7251df4fa5f50d3fa9cff3d31f7ecb36d1e503c9e3421a0977f5c96",
           intel: "9a5d74da19e2244274caffee057d9a8c1a42e4fb2ca0e4fe18938d5f234caf5d"
    "ve"
  end
  language "vi" do
    sha256 arm:   "87cee409260f41ec88265893e0c04bc418aed7a83c679ec4aeb19a821af05f3b",
           intel: "3f0d48a41ca147f4a9418a0186fabe43786473aa24546c71d0b3cf6df72d39a4"
    "vi"
  end
  language "xh" do
    sha256 arm:   "0958b24cac3d9892bebffce9e1f8be06712a88371aa4f6f389ad0cf411a27f14",
           intel: "e8c1502b301859fca8d3d57cf22be527317330d74b28e4a61fa80290d61385a8"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "637f1402a39b8b4643e8efac6de1ff288a8d8bae6d1794cbb7bafc6425cf61ad",
           intel: "8bd8e1965ed0156f7c6fde67e24d6927e61b86330c016344a74ea87436e18dcf"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "ea2e76a0a659a1891559fc1f4a1b1d0049012a2a3a8e8165e50ed77b53650d82",
           intel: "9cdb1f8684858e748745bf09b9179415b44e04522991838bafeb35c0d8433cf7"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "4c9107d629ec3a0906cbe8577b7c6447e27675eefd67f643a69ebe63658e77bd",
           intel: "730a39dbaee0eb5a75339c65b0de51a256a7a0c5350bc0e72ca288f9473bc537"
    "zu"
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    cask "libreoffice-still"
  end

  depends_on cask: "libreoffice-still"
  depends_on :macos

  generated_script "SilentInstall.sh", content: <<~EOS
    #!/bin/bash
    pathOfApp=$(mdfind "kMDItemContentType == 'com.apple.application-bundle' && kMDItemFSName == 'LibreOffice.app'")
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

  # No zap stanza required

  caveats <<~EOS
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
