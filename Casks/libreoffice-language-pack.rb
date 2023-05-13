cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.5.3"

  on_arm do
    language "af" do
      sha256 "c26810a7c128b9630a065b0cfb8c525f5627966758f08f1c24ed4eee848441cd"
      "af"
    end
    language "am" do
      sha256 "96a34175140ff538197f4150eba5db108d0289f9ba486f6f4166ffda3f6db13d"
      "am"
    end
    language "ar" do
      sha256 "42c09e1caf6d2334271b104476495346986baa8ae17c968f4cfc02a88e38f9a0"
      "ar"
    end
    language "as" do
      sha256 "20755ebc4b81e777ad02176bc921021b056f33a9bb5bd4b98fa90454ed4cd567"
      "as"
    end
    language "be" do
      sha256 "3f819106f4a52d65f907bbf046ddd89502e17d858d9295a2360a3bf4d472dea1"
      "be"
    end
    language "bg" do
      sha256 "c437dd0f4dcb4c7fb8c2ca728fe0361a47f2e32f16ac436551e15602fee5eb5f"
      "bg"
    end
    language "bn-IN" do
      sha256 "e2d2a3e0cf17a9e995945afc9a3c26b5b6dad8ab9028f886d2ad2a44858939d5"
      "bn-IN"
    end
    language "bn" do
      sha256 "5fb225e9030a8f1a7a5bfe31064cd1d177504d15ce89ef54b8edb6ecbb40e768"
      "bn"
    end
    language "bo" do
      sha256 "cc1bcef355f9debc5fcb3f88f6a26d191226c6a4e326af8facfc0c6bc00aebf8"
      "bo"
    end
    language "br" do
      sha256 "97f6d650028984cadd3654b0e3be34a55ce385dfea329ed66d4d538991bbe674"
      "br"
    end
    language "bs" do
      sha256 "20b946cc14e8530c4835eb984643dd001ab5cf961f877025a87d113abba89bae"
      "bs"
    end
    language "ca" do
      sha256 "7ee1a3b7f5b902d27a43fbed96dea80d5071bb36f90d1c7a2ba63a128117b6a1"
      "ca"
    end
    language "cs" do
      sha256 "42c0d5765c82c883212eb0f01abfdb45ab20dbc2fab2c9bb29d45afb68ef7388"
      "cs"
    end
    language "cy" do
      sha256 "1dce52600c89cdc396c398599dc42064f7b1cecde4a6cc8a51939abbbdbe5750"
      "cy"
    end
    language "da" do
      sha256 "70589caf50c079c9e0fbf73abbdf41d1e4a32394a24dfb605465c73edb26aa2d"
      "da"
    end
    language "de" do
      sha256 "0b914deb6a0f970850d6d05f6129b06827c2e9c39da45b6b668eb8f6c5524fd2"
      "de"
    end
    language "dz" do
      sha256 "5d945d10ec5cc4a5af8c455d5b5843b90f80cb7c7058d20fa53755075e13a940"
      "dz"
    end
    language "el" do
      sha256 "3a6af0be99937e6dab775628055f6519995d3eb8286fefeefc6f997f944f3171"
      "el"
    end
    language "en-GB", default: true do
      sha256 "a7f696cad17ba9010632cf4df743785e646255d4a8a6fe35412674a9800212bc"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "759904cce32faacfc35cc08f8024bda3fd82e09f52386761fbe9e3686fa954d9"
      "en-ZA"
    end
    language "eo" do
      sha256 "97bdd994d01696d5250c7753df33f0267b1cb6805e34368c0c952e9efeec6d39"
      "eo"
    end
    language "es" do
      sha256 "360a4503eb412fed00ad8b10ed51f20b246fb86923faa0f79750f104f4a826a4"
      "es"
    end
    language "et" do
      sha256 "df6388972dbdf71c778f96991b0d3261a55b7ad3171060341e2a454eea5b7f24"
      "et"
    end
    language "eu" do
      sha256 "bb9fe2041b5199e06a8389225bb8a1d7755f86f84c6767f4ed7fcc245743754e"
      "eu"
    end
    language "fa" do
      sha256 "c89669c479ead03207c45c93438751c090e8f46ac3311c03c4f7b3ab1220abe6"
      "fa"
    end
    language "fi" do
      sha256 "d525f3f98bd01a0c7d3ff953b1a5d5899437c1f1390f8a619fd97c86717fbb44"
      "fi"
    end
    language "fr" do
      sha256 "1a25f490f86608ed55c9fe546b06d4d36f093fcc7f5dbf9f8f2832a4d91116da"
      "fr"
    end
    language "fy" do
      sha256 "ab93f8aa409ff49087aa6212c87890abce426353123784462d0baecc3aaa2a89"
      "fy"
    end
    language "ga" do
      sha256 "553c8236fc88d28e22fc906309ec4fa0eb042e2aec29555bcffea9e0cefb4ca2"
      "ga"
    end
    language "gd" do
      sha256 "99514bab052b49aed1bef2611a082ba7eb6391c046254697d68294c24a5957dd"
      "gd"
    end
    language "gl" do
      sha256 "c495bf0885bb2b15aab9178b9d99c703cb9f22bc6a2330bf817a9fcae06923ff"
      "gl"
    end
    language "gu" do
      sha256 "78c73ebe0ad21d32165e855c04d92756820835403ab24fb6918ca9c701490a68"
      "gu"
    end
    language "he" do
      sha256 "75ba842988944ab387aece449c434a7d1e4d45b56de1be4d1aad4b9b97cd7f5b"
      "he"
    end
    language "hi" do
      sha256 "c2b4d936e6a6930f43b5d43ae6d98dcf696ee7c3d0f1f2ccf2b0ffa61fdac263"
      "hi"
    end
    language "hr" do
      sha256 "58e5763eb5fdf68b1e20a845d56213ce967300d01a20cff45f0fcee95c1d8314"
      "hr"
    end
    language "hu" do
      sha256 "463fa7085acff5c73bfe68d8d94901d1386351a7195e830ccbc43b979a439308"
      "hu"
    end
    language "id" do
      sha256 "6e8f1ca4f7be3172e4389b2c9cbeb6eb2a8c4bc73f7ddab1ba05c7c071595b17"
      "id"
    end
    language "is" do
      sha256 "3edd6b58641795afa24069e3690b1ecc451defefdc1f2debc7ec3de039e8dc79"
      "is"
    end
    language "it" do
      sha256 "456e01dd51b38c1ed49dc927c156b6322ba8c489884bcc6e7d9faa791392b846"
      "it"
    end
    language "ja" do
      sha256 "a2931ec08154cea2671fba1b83e87c152c288f22145f902277281c788d3ca534"
      "ja"
    end
    language "ka" do
      sha256 "72f4db9a61c8727a7f6710fe008c27554bddf6d3d3001c8182a77a00ac9f5942"
      "ka"
    end
    language "kk" do
      sha256 "99fa7862673de47149f8fd12b4498f33c3bbb16de64b87b650e91171bc12b610"
      "kk"
    end
    language "km" do
      sha256 "541a09afa90058495d8dbac26b6849b931ab30b83cf64d31b0928a518e134a23"
      "km"
    end
    language "kn" do
      sha256 "14c8a2210d892ddbfbf8a285c597f4df85ca91c4576ee65f786b87e406a35b78"
      "kn"
    end
    language "ko" do
      sha256 "87756ca6d12bb6d8b18d3a4aae3fc13fa42fdd7e4f5031de1e54798652efe5fd"
      "ko"
    end
    language "ks" do
      sha256 "2219e568dd5d71aeb203ccd4a829460b5dd83b06f156bac867208db3a3bdfc17"
      "ks"
    end
    language "lb" do
      sha256 "f20b10d33b484df049b527fc43841d495069f4d34eea0d68fba814302b7bdd08"
      "lb"
    end
    language "lo" do
      sha256 "4703ee582ae34d3b83e587b829c555b8133b7466af9b7f159495353bae815cf2"
      "lo"
    end
    language "lt" do
      sha256 "f04e62bc61537f66288547d2116991536ab9783ce47765bedb88090b7ddf39b6"
      "lt"
    end
    language "lv" do
      sha256 "3112e367d551c66ed641013757096ee9d2f0c175cc9c4dceb58aa43d2cc2c320"
      "lv"
    end
    language "mk" do
      sha256 "3dbbf0fd27801bae6e2279be0c77b2540d962fad17682ffa45364a037a73a07c"
      "mk"
    end
    language "ml" do
      sha256 "50243fa208eab7c3c4d00eb269224fcf2db2f5ad229a4f87190aa6e90e5e6040"
      "ml"
    end
    language "mn" do
      sha256 "59c0cf1627b05bc191f69fb7a5d8a208119b899eb93a6914035563de0e1feff6"
      "mn"
    end
    language "mr" do
      sha256 "fb05d1b21da05f5c7f96a9e0147da35c3eb2b287e2d848a579f20cd5e9e3bdea"
      "mr"
    end
    language "my" do
      sha256 "4cb600e132b0de654f0f9fc6a409f05f768c386c9016f26f92c8f9aad769caf8"
      "my"
    end
    language "nb" do
      sha256 "84b71459d49c8627c98f6b8812ec83b73a5cdb5d5a71e0c46434d8cb50f648e1"
      "nb"
    end
    language "ne" do
      sha256 "b2016680cb8272722f616fa522f5c78db09d2e441a728910ffaeb54e1e5ec780"
      "ne"
    end
    language "nl" do
      sha256 "fe2c83ea74cc4fad4a9895830084a557571a3c2aa7e7f2f5de65867493de2127"
      "nl"
    end
    language "nn" do
      sha256 "df3f03a5f9629dd106ce1ef55fd36abfffdc4d4b40a57ee87be3b7f860652a85"
      "nn"
    end
    language "nr" do
      sha256 "59b20142a385be928ebb4320c2bd736cb7f69ccd0ee6de8bd5a14f01666267c7"
      "nr"
    end
    language "oc" do
      sha256 "18dea1a359984e7251c403d27e94e33c719d389bdb7e5964e3d68efc83527d2e"
      "oc"
    end
    language "om" do
      sha256 "72b70e416e0ee0419573df296c726732b3f92a5c5ae67bb26d35394f2eb5308c"
      "om"
    end
    language "or" do
      sha256 "37f889931f2754fc300f272a3758804e039e49e99896338343b1e49fefaf2b9b"
      "or"
    end
    language "pa-IN" do
      sha256 "bbc3353639c129740015dc79035543b89403ae1539cab13e30a634e16e6336e7"
      "pa-IN"
    end
    language "pl" do
      sha256 "01a26c9f9ae3e598bae6aa6a11d2f4badf38f395ff9269d0caf31503d4bd4a19"
      "pl"
    end
    language "pt-BR" do
      sha256 "8c8ee067dff700fdcdb205a9dc1c4d593cd7e45b02ba539e0fd1137d8c72e895"
      "pt-BR"
    end
    language "pt" do
      sha256 "097a965673b5b9edc5867af9247a71b09b47b92885986ec37ea644cc92b428f9"
      "pt"
    end
    language "ro" do
      sha256 "c962de39482ce16e18046c46063b52e47720b579430edf1b77f6616f90a548ff"
      "ro"
    end
    language "ru" do
      sha256 "4ab434c67ce90db6913b7f7b1224f8234372a791f7e823695154d4a88c2cdd3f"
      "ru"
    end
    language "rw" do
      sha256 "892f933614275063d297b26eb0c9c8b1e6dcc4ba1a32db836e92b4bdaaf7ca3a"
      "rw"
    end
    language "sa-IN" do
      sha256 "156477c44b904ebb8bc8a0bb02f56ec52cebf23510baf505631ab861c245da86"
      "sa-IN"
    end
    language "sd" do
      sha256 "220553361ad8c0a620b2780a5f9e62244584cfceb638fa005fef479ed04fcbc3"
      "sd"
    end
    language "si" do
      sha256 "d856d019807719190302ef9b86d7bccbea7dbd6f7e78ab6bf81030a69cf90d59"
      "si"
    end
    language "sk" do
      sha256 "a7a20506fbd291784f7d32cc7f521fd6de0cc638f6f555bb111e91a5b9752e53"
      "sk"
    end
    language "sl" do
      sha256 "0af466d8c7807daa7cbcba0277ac2757b86c6d653525908a8f1ff6dc8f42cd7a"
      "sl"
    end
    language "sq" do
      sha256 "0ba6c57ce531f991994c18e2ff37639c5758d5081820d3463289f6e5c2ca47e4"
      "sq"
    end
    language "sr" do
      sha256 "89945052432772729db763404a62d0092402008115e7a3120d480b447a05e40e"
      "sr"
    end
    language "ss" do
      sha256 "93baf5885d2f6f1752e4e4d33676c2c648864bd2e193e7bca72e6e0bf9d04fbc"
      "ss"
    end
    language "st" do
      sha256 "de5851c815d0cdab0eb6d7d3a4bb08631aa22091661f5e7a71e1a6b5433e20a4"
      "st"
    end
    language "sv" do
      sha256 "f539fa29ebd49ed4d82b1137b5120074e3b861394204c2840bde293279abb797"
      "sv"
    end
    language "sw-TZ" do
      sha256 "e4017563dd1f2d9e1cb7c97116711341a550f9ed711d11e4fec09eb56b693f8e"
      "sw-TZ"
    end
    language "ta" do
      sha256 "5d6aeda5e6a5bbb138082420a98ad311dd4062f2cbec9594fa147d89d350f602"
      "ta"
    end
    language "te" do
      sha256 "8cefe050fabb90e65c6bd0925b838adbec06cfa5c2716e2fc5284df221d819c4"
      "te"
    end
    language "tg" do
      sha256 "3b7e368f183cabd9ec84571b7b07e11deecb0fe33eb939ed08e0feb7bfe685c6"
      "tg"
    end
    language "th" do
      sha256 "55ecb414fb9de90a029a1bd1bf7e6d5ea7ccd1890b42d9a9ae159285eceac94f"
      "th"
    end
    language "tn" do
      sha256 "ec571777d7175465996c2b5faf4ea060a2e3ba76c9b097a8c93452b0e6a1524e"
      "tn"
    end
    language "tr" do
      sha256 "b31d4b963458c307591d8d3e9c858e754afc57eae25cda1175bbf0102276efe0"
      "tr"
    end
    language "ts" do
      sha256 "ddde8f2aae468fc28ec002dc23843b84b41d300aebc6c1afe9b1e2ff4f349bfc"
      "ts"
    end
    language "tt" do
      sha256 "0a64abca00c672b0028a6953cf6b4789bf1f2a0f4e260ec9a408480fcff84561"
      "tt"
    end
    language "ug" do
      sha256 "9f5a247163d84b0f9787ec70590c578e4316d492555b28613a6431100c31a759"
      "ug"
    end
    language "uk" do
      sha256 "e978c948ac3f5656773bad294d7448e9bbd1374fed9f4f546a88ecbbcc08a1c3"
      "uk"
    end
    language "uz" do
      sha256 "b9962f56bf6a0bea0382bb9872b8c0c0a73991478db7bea6585d4b1ab5f81842"
      "uz"
    end
    language "ve" do
      sha256 "cdc51636e1c2c9b9564b16bc20ae394aa5c5798997676427ed313a2fe407dd2a"
      "ve"
    end
    language "vi" do
      sha256 "52208cee6bd8be3bda13b4e48a8e62f1cec9c6200a6f9d5e1c297cae2042f28e"
      "vi"
    end
    language "xh" do
      sha256 "8e2244c0fd1b9068cbd7d4c4bb0cd7125428c3a5b7924da40f964564815809ed"
      "xh"
    end
    language "zh-CN" do
      sha256 "74cac81a469352c0079957063970e3ae57b9cd67722bc217ed57ebf3b00a47fd"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "02704b8967f9c4996fae9ce087bb771c713542e474899c36034f650518bcc9b6"
      "zh-TW"
    end
    language "zu" do
      sha256 "0363e4603e949f58418c463daa1f2105b6b368d3f739739913c68770443cee17"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "5edbd17dd5ca54b2fbc3b301fddca8ff7d82e6e1c58ae4b83f77d165c615780d"
      "af"
    end
    language "am" do
      sha256 "3863165adb624b3a9b687eaf7f43fd69281587a53308215a18ecbfe352de55de"
      "am"
    end
    language "ar" do
      sha256 "99c7e3ded2fa9bea36db9a42d956e5987dc35ace1730a877a70babb5c7ff8e1a"
      "ar"
    end
    language "as" do
      sha256 "ce5c099ada4f20ef52d0aba8d52deb4a2c3fb317502cf11184014834e77aab66"
      "as"
    end
    language "be" do
      sha256 "5011431f2f5c3b8d26500cf83b17211c3b04c33eef29f150c7beeb45ce476074"
      "be"
    end
    language "bg" do
      sha256 "718d2e4cdab557c429e2828b5d8ffdcf0dc45ae0db22bdfe91b2164c98fad324"
      "bg"
    end
    language "bn-IN" do
      sha256 "3d0a31e47fba14181caa46c4a4e691e6e88449f781fdc91e8b5fad2f7069e3f9"
      "bn-IN"
    end
    language "bn" do
      sha256 "c5383592fc15ed2caa38c5f1136691060e13e906abb09d50545ddb12e2b08113"
      "bn"
    end
    language "bo" do
      sha256 "b165ca7d1902e5f4ee1bc43608af592364d301d03263742102fbd96c7ba4fa81"
      "bo"
    end
    language "br" do
      sha256 "68e412dfb6110993bad6e752045d38cf1f7d575d01d4bd5c20e582d07d35000e"
      "br"
    end
    language "bs" do
      sha256 "19d7ea4c169399da9fa380b1d04b4456b5ac7d73cc35911bd4c38b6a263ce6ee"
      "bs"
    end
    language "ca" do
      sha256 "516631ab740992d6480fa448be180d62eb6546b25d993384932b659383ca8f60"
      "ca"
    end
    language "cs" do
      sha256 "fb02e374c40466dc7ea0e0077ab2d507abbd8413b60d4346599dbca8b0d3e34c"
      "cs"
    end
    language "cy" do
      sha256 "829f9b55c00950094e9a42ae8cdfd4c1a81ef0c587f318d04ef1f1f509fa2b58"
      "cy"
    end
    language "da" do
      sha256 "623f9876396b58a17f231ae1ad4940e93ef635a3f28d824258db78afb204a82e"
      "da"
    end
    language "de" do
      sha256 "e8340ba5accfcfc18a29204868c70d76503a007056abbe633e7f560548eca848"
      "de"
    end
    language "dz" do
      sha256 "3b2877c6e93876903c3816aa25f69653d97288aa5c46083aad24437ad38b51d2"
      "dz"
    end
    language "el" do
      sha256 "3c69be8af57a224737ce7debd5efec5616de622ba67e3b15a1ec213ade18c907"
      "el"
    end
    language "en-GB", default: true do
      sha256 "baefa0cf7bc9d8d4dcea5ae6cd1da36f06b05047da6c89ba965591f1da63b159"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "1249688cafb8a7ddd3f0ecc530d43e7624edcd452099fe537b62a85069f6e057"
      "en-ZA"
    end
    language "eo" do
      sha256 "fc3fcee8df9864afbad48e9f968b1c8822b97c846a6c605b45cbe3075d015729"
      "eo"
    end
    language "es" do
      sha256 "fbba31944d2261814d5326c90b6244f8a4ecfa928b1da512ac0569691e478e10"
      "es"
    end
    language "et" do
      sha256 "db84d4faf2bef41655d8c5bcccfbb347badd432bb54b523bc26e21986df9df34"
      "et"
    end
    language "eu" do
      sha256 "6dcd4a5f925c7dcba287b40e4d8e526cf04f2031d505caa4be9fb2f70f3562ae"
      "eu"
    end
    language "fa" do
      sha256 "1f8bd714aed511b404a1586a5396cb80a1b6849418e2377df18eb705adddbee2"
      "fa"
    end
    language "fi" do
      sha256 "00b684045b0a398de4e537c7db23ab8f4e5a1d7bebf51ee4568887711147ba9c"
      "fi"
    end
    language "fr" do
      sha256 "b557dc6d7c6d7766966149547b12f6f77dbb5e8cf424db36003c7ac33a9032a2"
      "fr"
    end
    language "fy" do
      sha256 "c2e0654ff158bde2dd57c7036e742950d6e01cfcc91e3d70f2f76cf22509f4cf"
      "fy"
    end
    language "ga" do
      sha256 "2306665094c2df737ac4b6be483619737c0adb645bda314bbe773bec20d58a8b"
      "ga"
    end
    language "gd" do
      sha256 "cc8b40db15f071260f50f3b26d0e09268c8caf27525134e0d4f2ecd9d20d29c8"
      "gd"
    end
    language "gl" do
      sha256 "f58b5961788a16f5521829edd72c40b67babb49e690a4dd8f802fcf996e50ba7"
      "gl"
    end
    language "gu" do
      sha256 "79c6273dfdd94dcbbfb015ff02b61707c34289fba07086795b51156252997d1e"
      "gu"
    end
    language "he" do
      sha256 "8f54ec0b4bced0e1cc82f95c1eb79f5f0e05dd447d07e090a8b548987003c528"
      "he"
    end
    language "hi" do
      sha256 "390f6dccb9f7cbfdaff4a682e346b774fab5981e110b00352f87c0256aa9e491"
      "hi"
    end
    language "hr" do
      sha256 "1a2ab2d5a3df98e7debd9bc739157a2ce48008b585be5c2942f72bcc441d912e"
      "hr"
    end
    language "hu" do
      sha256 "4ff292fe80de408bb460c92baa99c5b78869fe07ff8ec937402cfc0b4caf93f3"
      "hu"
    end
    language "id" do
      sha256 "98b0a040d540fe8598a98ee6e8ea6c9fa603fc9c2c85b3dcd8f0fd43e79d688f"
      "id"
    end
    language "is" do
      sha256 "9a087bab5d34c886f6e126ee62018e171964ec9dec3b6e3363ff9255832f3433"
      "is"
    end
    language "it" do
      sha256 "c92d5935152525f5492e40749bc7977ec8c0dc1e5181ab8b326d7fdedb2fe770"
      "it"
    end
    language "ja" do
      sha256 "40db66352d81e65f848d57fc0a6b51629ec0d54983baec885daf22dac90f65d2"
      "ja"
    end
    language "ka" do
      sha256 "32fa13b66ed6dabee011e3aaf3dfea3f1bfccc63c07a2a2ce5adf30c4ca4b6b2"
      "ka"
    end
    language "kk" do
      sha256 "2fe05552552a8c87b687f84ad6d40277306fbb3f4568181d543d1e6a75ea6a19"
      "kk"
    end
    language "km" do
      sha256 "0688b961af172671e9bf96633cfbdf78d910c938f68fc6382449bbe9c0d895da"
      "km"
    end
    language "kn" do
      sha256 "c8b2f1d0c71fce473659f451d4869b6d79da1c77fc74021deb778e784a920129"
      "kn"
    end
    language "ko" do
      sha256 "28545c1ab8b4551c8364850e59bd51cdc9d1232563afe8375e6df0a40cd01862"
      "ko"
    end
    language "ks" do
      sha256 "534a5d0e8777cd124607336f459ab07c6a7009df472e9fca48333296a6b2625c"
      "ks"
    end
    language "lb" do
      sha256 "e48d22565d2a7358874d292d93d7e4c6b41373cf3f6c03636b34e106295e50ce"
      "lb"
    end
    language "lo" do
      sha256 "21c2cbe29ef777bbbe967402c202da93b4ef064350ad3e789c7661692d67b981"
      "lo"
    end
    language "lt" do
      sha256 "f2e5ab5afab49d4588a09fa682fea102b5eb4942c4e67eeb9f3d89ea7ab1b463"
      "lt"
    end
    language "lv" do
      sha256 "3cecd4a63d93f1f7b829eb05cebec42d6fba661e7de5767642a7a2dff328b2fd"
      "lv"
    end
    language "mk" do
      sha256 "7bd356ea0ba896db1441cf7c6dcaa8cc464b766ca5f15472d4078f80d3824c2e"
      "mk"
    end
    language "ml" do
      sha256 "30d3d8ba744306618826f370efe9d4a1d2713f9212ba6d27aae532cf81d3ca94"
      "ml"
    end
    language "mn" do
      sha256 "992906fe4e3ed5b22aca106f9e3f34c0f642342af4a65fa2a6ecfd593280decf"
      "mn"
    end
    language "mr" do
      sha256 "837f44b936eeb59eb898aea9274075f81ee2fb1725c766e744f02ec87b049ab3"
      "mr"
    end
    language "my" do
      sha256 "206c8415a64bcae486ad5f8fb586cb1778c8cc3507bb85a26c466b8eb63002db"
      "my"
    end
    language "nb" do
      sha256 "0df8751b086c800cb39e94380f6c609761b8ac533ed5bf8a2393dcd4986b4451"
      "nb"
    end
    language "ne" do
      sha256 "f30e5dc8fefca19af67fefa5cc77ed9caa37e6c43d6f3581f77a2908272df1e9"
      "ne"
    end
    language "nl" do
      sha256 "f66f6a25ddc180a7bbf84c701967a91850661dbe78e4953b25a226c45faf5348"
      "nl"
    end
    language "nn" do
      sha256 "713c15ac6c3052f15a30a7fb6de268d778c28ce60237408f0f5cf58a746811f0"
      "nn"
    end
    language "nr" do
      sha256 "da9965e6c4d616092e4171a429f14212e55e9f553eea535d64e21e88f159333d"
      "nr"
    end
    language "oc" do
      sha256 "7abc9fda133f6dca617ca0375a0c18a8386a2625b2747386216953a45dbf9820"
      "oc"
    end
    language "om" do
      sha256 "bfee18f7c7439b9453ec6aad653fad555f17b0af62d5241b5f5d817537f2ffc6"
      "om"
    end
    language "or" do
      sha256 "f76398a5e34ae4304004436f3cc8d7d688add91e2c0b7445d02f66a810571b09"
      "or"
    end
    language "pa-IN" do
      sha256 "8cce5c60961d7d1d41c05624e56e93164d811c4fd7f43643b8663874229a7df6"
      "pa-IN"
    end
    language "pl" do
      sha256 "5c7e145f55cb704a87dccbc3f9edcd081c6152052d69026e820b23204d243e57"
      "pl"
    end
    language "pt-BR" do
      sha256 "8a9ce101235350a5c995d0b67f84d43bbc4001c90577d8efb7df5a5b2e1c0bb1"
      "pt-BR"
    end
    language "pt" do
      sha256 "9308ebb2dc7ca7d8b10b0bda753659a35235c633f5584a160c1df8a98a0c1715"
      "pt"
    end
    language "ro" do
      sha256 "3e1d56e2ff158085a9837522060aef5882b5757b5554433452743cf24e59ac35"
      "ro"
    end
    language "ru" do
      sha256 "462e688f509d33d2d50fd8b685b0b6df4d2eaf4bb54fecf2506648ff95740676"
      "ru"
    end
    language "rw" do
      sha256 "9855ba2dac18903a02f5ba2a68f8304e85b08ef1cefc9e489e479ceabcfde115"
      "rw"
    end
    language "sa-IN" do
      sha256 "98b8c227190f572c6d9e370493c8b64175fa018b3eb7f7f7d5aa02b357880e7a"
      "sa-IN"
    end
    language "sd" do
      sha256 "0bd11192e93e0ce39101210ed1f274381d36b0c9abf0ffc3c35be2198d89ed94"
      "sd"
    end
    language "si" do
      sha256 "52c9b33c4c347702d6fcb9de214478ce01023c0bb5a4b6f6e901b6175fec360e"
      "si"
    end
    language "sk" do
      sha256 "fb5d59439aa41ad66d12fd267d26f9154c1dcbf96afb5ec7a68cb32f0e008d01"
      "sk"
    end
    language "sl" do
      sha256 "eefc1d16e9b7f1a5295d781e342dc3691176307753afb99d4dc9e6a77783b01c"
      "sl"
    end
    language "sq" do
      sha256 "4e07921287c923a58ead650cb51f8fa980fcb7a2e38b27b2737060c4c1325f8a"
      "sq"
    end
    language "sr" do
      sha256 "38c2305e47da26928fae86ae7a0ff5caaa51b841ecdba20d14aab7a8e9a19d22"
      "sr"
    end
    language "ss" do
      sha256 "5432c61388cfab2ded001392f84a1be3d31eaa3f9d35661df24038d879bf9c0a"
      "ss"
    end
    language "st" do
      sha256 "14bfe454765bff21297779b9b2414f2d5db25077061070d711da2a682f213d4c"
      "st"
    end
    language "sv" do
      sha256 "a8ccace69a6ea6c7ad1de40061240c73e4d6a5a8dbc4de8d824186fc6a0fde01"
      "sv"
    end
    language "sw-TZ" do
      sha256 "a05cd441a4a5971ee137b19c6bbff569113ea01a7748e5f58b5b343dd7003c24"
      "sw-TZ"
    end
    language "ta" do
      sha256 "f01632b7cb094bc2127452ffed80f20b8ef191c1dcc0c08d35e2e030df260894"
      "ta"
    end
    language "te" do
      sha256 "c967db82b85961af380e1ef4c815345e4b58560fc7148176caa08ce9cbe3f57f"
      "te"
    end
    language "tg" do
      sha256 "f8c738bb14b9482a08a09aaece413bdb52d47545ae077c96f7921c1e98e492ff"
      "tg"
    end
    language "th" do
      sha256 "60a95a6575ed884f038d0bd1537dcf6e98075c2b61e0baec8534f0fb8cfeb47b"
      "th"
    end
    language "tn" do
      sha256 "8502e07413aa9c85fb026ea340700e6261500955a9aeaba00fa137002e4fc46f"
      "tn"
    end
    language "tr" do
      sha256 "2daf9f2d53017d124d9e844e50040a8681d97ed01cf50b52e3bdf95e8e00f515"
      "tr"
    end
    language "ts" do
      sha256 "7a989a27d0029770b4f13a92a4eb1542f0b070c57bf2876368e85456ac2a34d7"
      "ts"
    end
    language "tt" do
      sha256 "79ab932e58e87663e621ea9d48e97432b4ab311832e3a8c090ec3d5ed4961a87"
      "tt"
    end
    language "ug" do
      sha256 "6e809ad450dd4650b046657587a998cebf5479b7d77d6dc7168f982534568e0b"
      "ug"
    end
    language "uk" do
      sha256 "f1674005e79e116dc05d1094cce566b52b120bfc22e2161288f49770a347434e"
      "uk"
    end
    language "uz" do
      sha256 "bb928c7805e5473314169a89b91028c737870948e74d4f15d126f8fa5afb7d06"
      "uz"
    end
    language "ve" do
      sha256 "94ab573ae6447368e13352a396aece4f4a83eb69794f624224111f5bfcacb92d"
      "ve"
    end
    language "vi" do
      sha256 "04a7398803aa0e8696fc39a2dbf49a9071e0ab3d28001dd4cde5467f5f128638"
      "vi"
    end
    language "xh" do
      sha256 "1f02c94158c0800e7de0b1e52b74ac1f32aaf8193dfc2e354a2a6b368b040892"
      "xh"
    end
    language "zh-CN" do
      sha256 "82a1909a7a912ae194ac65543f7869e0fc0296b5fb84f78ba20ee31be5d14841"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "25c44aa6a8dc8c1020180f3d3c43c5c090271c21a9e5c932a83cd22db90a5a20"
      "zh-TW"
    end
    language "zu" do
      sha256 "017e17db581b0b8d465ccd2a96fdfc6c789bed6efb30ace4f0548f17ee264b99"
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
