cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.6.0"

  on_arm do
    language "af" do
      sha256 "68e8dfc3e9e6f7a834986332d30fb58a599f02ef877bbada84f4e016976c6b21"
      "af"
    end
    language "am" do
      sha256 "c802dca33ad3b9e38581ae47d07c9b9e608dc1f152ea4470f884680c7bb06801"
      "am"
    end
    language "ar" do
      sha256 "a67f5dc32c24760aa13728ac07986007dbed89a0fd39452a571d61cce1379d24"
      "ar"
    end
    language "as" do
      sha256 "31ee56856bbf165dc3177f39c0c641d749fe3a61323ece5afcbbd8e6de39b9cc"
      "as"
    end
    language "be" do
      sha256 "b568a804c87928b9d4dc5c56ec7c007a224618d9284c49c12f044d500499afa8"
      "be"
    end
    language "bg" do
      sha256 "f1f5ab0a74c81ae6d3799c11075ed263392a08e0b6fa16f0726c50cf764b6806"
      "bg"
    end
    language "bn-IN" do
      sha256 "e4ed8c227353921c0922adb0fd1754188f95ef966aa3e980dcf5350218429b68"
      "bn-IN"
    end
    language "bn" do
      sha256 "1fe8bc667e9c252ba7fac90649b149fe64a62c4911aaca7475a8a0cfd78cc53c"
      "bn"
    end
    language "bo" do
      sha256 "473df5bed54600a71c41ad43c2e6731a0eba38c6748e5eaeac9808a4840a2714"
      "bo"
    end
    language "br" do
      sha256 "0c8aa9813d8159cd98f964bad813fdf6e510ed5d4740e986886e3823bc4e9f44"
      "br"
    end
    language "bs" do
      sha256 "f012eaee7cb178497fc26738f7ffd796eb27a190ff95be047b82f823d0e2b0e9"
      "bs"
    end
    language "ca" do
      sha256 "159d04db880b339995ead8281feb80c53865e4485103e89b65ae19e1cb20385c"
      "ca"
    end
    language "cs" do
      sha256 "2ed4d677c4082a227abf6816b8129a4c6f77f07427c32bd7cfce386bc1e8785f"
      "cs"
    end
    language "cy" do
      sha256 "3d4cd390c6162a3fe2fb6405cfab7f8b93c2ca56e8d334d51eb19472de58403c"
      "cy"
    end
    language "da" do
      sha256 "fb43f0317b5a004c5c44c1e07698359941180cb51ec607b61a222ddb418ee411"
      "da"
    end
    language "de" do
      sha256 "b9cad512d46d0cf51a6110eaac90ef2505efebdd62475d8ba8e20082c01491ed"
      "de"
    end
    language "dz" do
      sha256 "2b3a708a8ac547c7c409b46da5bcfadcaef7e3c1a0d97090a3143f3b4abe635d"
      "dz"
    end
    language "el" do
      sha256 "ba908675e367033541db2d2605cde9f4c00df26b198bb86d3c5661a019bfca2d"
      "el"
    end
    language "en-GB", default: true do
      sha256 "9b30be60383e14635ec4ef53ce4ff9ac98cf580f802f61cfc51a74a6fe78c654"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "2d204a2e5cd6bd4ea061918b7f5694bc7042328b81a27d790c2641ec21f108f4"
      "en-ZA"
    end
    language "eo" do
      sha256 "8ff84bfd0f135ebb42458639645001e0e2a16febf50b2704575cb22ad779f970"
      "eo"
    end
    language "es" do
      sha256 "ab8d5b18eb5b97be9ef7977265c01fbf74187d962f294f317c521614f01b46be"
      "es"
    end
    language "et" do
      sha256 "98ba8a56069d8cada1637cd75d0ffd3f665497c887143c7ac332f982bf32646f"
      "et"
    end
    language "eu" do
      sha256 "467c134f11060e930c6e2ce45224678527623baf448ae940ac2074d5b0fa545e"
      "eu"
    end
    language "fa" do
      sha256 "ad3b22ae6123bf1a84b7524f3b467beba4ebd84a3fe4fb12a6a0346d1f97b1f2"
      "fa"
    end
    language "fi" do
      sha256 "2af1afde79f18bd593d7dfd76b37796471a0771ce5036cfdd0d673c29887816d"
      "fi"
    end
    language "fr" do
      sha256 "435d1b39642e0a46cbe8d28aecce3993bd32ef8c788d35f87b74f84baeda5d2a"
      "fr"
    end
    language "fy" do
      sha256 "38cfcd38d75695e4846e9f02602e8b51271993867fe8cf0fe6c916061bd05bca"
      "fy"
    end
    language "ga" do
      sha256 "bfb2f5ed3b50f719e624a51be4b5c59960dd76b56f848b462c2e1fcde1da84a0"
      "ga"
    end
    language "gd" do
      sha256 "921dbf5d71aa5cab83f04a5c79d421ae47770ac4cd33e57acb6884ceb6f09a1d"
      "gd"
    end
    language "gl" do
      sha256 "6c06d306d1a24e6dde617b65638c0c559ce440d1fb29f7eb26c22850f0663caa"
      "gl"
    end
    language "gu" do
      sha256 "e15f0060c292a0b20f221940058ff14490eaba5f9aa25a15e85bd21e38b2ba39"
      "gu"
    end
    language "he" do
      sha256 "bd5b312b5876eeb39953fa520d04070028ed7411f5c93aa7b1a6c2a2c6f7b173"
      "he"
    end
    language "hi" do
      sha256 "16ce74dcd7ca6682e1e44f1a1572100c406ccd128cd4c18cc8aa462a72fed1ae"
      "hi"
    end
    language "hr" do
      sha256 "7e25574c97e5de8aab3137203f1f291f09170fe08143ee98ec89768f6fa347bf"
      "hr"
    end
    language "hu" do
      sha256 "06630c3ed3c9660261695aa5556164e1b59dcadc6c56cee04a09ae1493e30b02"
      "hu"
    end
    language "id" do
      sha256 "65cac2b1d97db765b4f030d6c2a638856c891d9a96cf0831e93603a436ae5046"
      "id"
    end
    language "is" do
      sha256 "c0aaa5f727b34992b79424d6ab06bb6b0d6eb0b71f05fbd43b15efc4ace3b726"
      "is"
    end
    language "it" do
      sha256 "dba64c8b125597b47c11e9a18735e640d969c229100d14de8ab9325d3d881c04"
      "it"
    end
    language "ja" do
      sha256 "7f3ad5b6f8f85b71e0bf94121e2b0db0d4d662b90df510730e84d124ce605414"
      "ja"
    end
    language "ka" do
      sha256 "19de1573fec9b67fee2be8cd330dd16f361718063e2747820b827cb40c43fc35"
      "ka"
    end
    language "kk" do
      sha256 "bcfadfcc0ef3ef3fc0bee2468ff5b1436acd378f4d8bc4da12bd803078b7f280"
      "kk"
    end
    language "km" do
      sha256 "d620eb21b04c1aa5bf912fc9a987e766336e2d36fbfa2ae502014d3a2aadc318"
      "km"
    end
    language "kn" do
      sha256 "5794647dc2802244487a8c9c1714f8ce99bd312471f4dbfc81b913acd810381e"
      "kn"
    end
    language "ko" do
      sha256 "df690b6a4e88a983912eb0ea263c6b78a5c20e3d3e7c8a5f31e92cda37dff128"
      "ko"
    end
    language "ks" do
      sha256 "505e57217a90472612da4414733f521a4cd7bccf3be71d92b04bca1ddc6a4b2e"
      "ks"
    end
    language "lb" do
      sha256 "496270ddd89e501bcbe9ef3f05d461b6081d18484e492eb0522e586ac407fc99"
      "lb"
    end
    language "lo" do
      sha256 "1d357a1f9e2ba41ec436059372f2730a0d9b690289edf663b4bdb55497df9dab"
      "lo"
    end
    language "lt" do
      sha256 "b1fa2c9f1706bec8bbdedd0b18d1bf2940f604cb132ac868407d8d2c8f47b7cc"
      "lt"
    end
    language "lv" do
      sha256 "1b1f141f80f0988a2bd20c2015b5f7e3bbbe0fb3bbb4e7aff90896ffc24df76b"
      "lv"
    end
    language "mk" do
      sha256 "d99c30e9931b2e35aff19bbc446f8c2645aa7cd5c7f4d03c13d845ddee36b021"
      "mk"
    end
    language "ml" do
      sha256 "0e432e73ab4e6450e9ba77fc15df10194e4bd84e3f9343a047db7d3094310919"
      "ml"
    end
    language "mn" do
      sha256 "5fc007c23c91ebab9e72c2899f92ae9c3f51d258fd50800f89560b9b46ebb67f"
      "mn"
    end
    language "mr" do
      sha256 "758cb7fb2aa137e5787a18edc16de871e5ddcd6586b9d263ef3d3b9c8161ec33"
      "mr"
    end
    language "my" do
      sha256 "c72933c9436ba9b2d8bbba0c7fc47d175e99c2a23536d87ed7ec36a6cb9828ee"
      "my"
    end
    language "nb" do
      sha256 "b21bccf87c4a98fe2c8f75a0adfbc48214402feed262688ba050756c8727e8d5"
      "nb"
    end
    language "ne" do
      sha256 "bb4e318d80fda7c7fedb69630927f83eeadf98bc760f164e087ce8d5c139b602"
      "ne"
    end
    language "nl" do
      sha256 "eb3f7575054a188a278e548e44671f9dc404cc4184027662d16aeb0e5600a25d"
      "nl"
    end
    language "nn" do
      sha256 "4730c23b934d03089e8939fc5563a8e15c3a581aee4fe43d917c6ef9cfd35ee0"
      "nn"
    end
    language "nr" do
      sha256 "1ddd577c775341203d212d18f84c5cc7ab3e4bd97a7308c8f4e7a26c83e86686"
      "nr"
    end
    language "oc" do
      sha256 "b2450bbbb6178ef044a55063441e2cc1759fd7bab1b38bcba32d2f390d497343"
      "oc"
    end
    language "om" do
      sha256 "a0f0daabb8a3f9901c4f1016606f8095d9c39c2842b45715a25c8f0e70b33877"
      "om"
    end
    language "or" do
      sha256 "64f722f25e7eced2e1f25efbd7643410ff6ba384148cd642b302c9594f2dbc69"
      "or"
    end
    language "pa-IN" do
      sha256 "d8e1c8aba4ac24fb8b1e5d059049f1a7d10be31b4e50dc70bb7dfbabfc6fb4f7"
      "pa-IN"
    end
    language "pl" do
      sha256 "30cbcafff43a996e82a3017384b2121480014d4c775d4cb4b1f3ef0f0653c267"
      "pl"
    end
    language "pt-BR" do
      sha256 "9f86795811f7c10c7389a30c0b46fa7a5521426869916759d5ed165c5626eef6"
      "pt-BR"
    end
    language "pt" do
      sha256 "632d87909e4a433a5c5b8cd32b7b8f36687b0ed1aba5ccbe5fba515e626c5e77"
      "pt"
    end
    language "ro" do
      sha256 "9cbe8f5765812982c09554092797da40e949d3fa25fd4d10c728d93b9f99074e"
      "ro"
    end
    language "ru" do
      sha256 "9f195ce5706937b4d144e90824334c19d5cd73c982650e4d6f1fed442982aac7"
      "ru"
    end
    language "rw" do
      sha256 "3f79bc12953255c4f9bc73a2b661d6ea52e88f1833d4cf3b77bba8af38f1f81f"
      "rw"
    end
    language "sa-IN" do
      sha256 "4909ed8d31429563afe4efaca46c235923bda59d82d0e76b4643251fdb18a3b6"
      "sa-IN"
    end
    language "sd" do
      sha256 "28e82cace65f64f13322f53a64b2142d4d43b8338fb5a90d8b9505fed7366569"
      "sd"
    end
    language "si" do
      sha256 "5fecd6ed18877ce9f6bd67f7c23f6d2126067ffed7c1f6b6611aab54259e394b"
      "si"
    end
    language "sk" do
      sha256 "3bb32d843cadb689ff168795ece297058765e95e128e32e9123334e299bb7bfb"
      "sk"
    end
    language "sl" do
      sha256 "6ef2e07f69d81a3c727ddc1dd8f0f7ad43221c6a07603ecb6980fcd9fd2486c0"
      "sl"
    end
    language "sq" do
      sha256 "f1332b0c3b70dd06839019b8a9a369e04ab42ba81464a3e97be1c0a26b9e8011"
      "sq"
    end
    language "sr" do
      sha256 "bb5dc7543ee8278ab0b85f209918404531b8b97699085a43d5b62e6e88ce0043"
      "sr"
    end
    language "ss" do
      sha256 "5586b83c26f416ca916d728a5ea8ce4a6f5db433eeef88ce557cac52047096fc"
      "ss"
    end
    language "st" do
      sha256 "4bb9e2c528114af84916bf0050491478f4e272d0f9e2e52486112a29a6075fbb"
      "st"
    end
    language "sv" do
      sha256 "56ef6e1fc10c031824a986e9e4313e00ae4fec0126cb51559aec69130129d48b"
      "sv"
    end
    language "sw-TZ" do
      sha256 "10b5da354d079e4f8642f15f3b4051584846ea7ac38631088a11c951c44eacc0"
      "sw-TZ"
    end
    language "ta" do
      sha256 "0306a16ee62895f7405bf1eafe1bdb7407af7363cc1475b67b00fc1bbc6dd6ef"
      "ta"
    end
    language "te" do
      sha256 "a04f12bdf339057d7c0c864fa63824478e05005544344315f2c8e0c14af62164"
      "te"
    end
    language "tg" do
      sha256 "fb08db1633b70d5ec6526f20ea7340340b671f613c4d092ac4d337a3092a9030"
      "tg"
    end
    language "th" do
      sha256 "6f2491c3dd11c99786fd42718a0cea5adacde91fad8b3949752b96e1ab32ffea"
      "th"
    end
    language "tn" do
      sha256 "37de2c1df52cfa386fcdef118697e2a7c872fe24285578f36ce4c45aee66fbcc"
      "tn"
    end
    language "tr" do
      sha256 "7a3962732dea9c0530f0a54c4261fa4b7925e6674e6971df9fd1824ee4ad3174"
      "tr"
    end
    language "ts" do
      sha256 "e51479b8f2e58bc3f95a49e657e9e1ec2856f07160412b443188eb8a23e7f230"
      "ts"
    end
    language "tt" do
      sha256 "8056b466a0af033242e6886b28a0ead850c6e94c0144e73b7066bdd90261e8ad"
      "tt"
    end
    language "ug" do
      sha256 "b14b921e708ad286047d1369b8727f6f9ed8692ef629ae4de5a9c6128536ac36"
      "ug"
    end
    language "uk" do
      sha256 "29885ecf5ee943e895865298fb6386c891a470490de6b8af557e1aea2f150fbe"
      "uk"
    end
    language "uz" do
      sha256 "ce66da2eebd03e7b55df8007d49a39272818f351941ae49a0017697f10910ee4"
      "uz"
    end
    language "ve" do
      sha256 "f9564af663eb1a2678059a153a46bdc7192fe62889bce1b9acf87d788cc6ad55"
      "ve"
    end
    language "vi" do
      sha256 "084176519554008ecc3091069f9d87325e0027b66366ccd342ed791bc8a87a8f"
      "vi"
    end
    language "xh" do
      sha256 "75070d992de12fb85cd09b532b7310e856fb4648824a9e860f1fda148a1ecb31"
      "xh"
    end
    language "zh-CN" do
      sha256 "2840f1e56a979fd6262dc2f0f0d147d45a54b5d435a6890ba12645214f800c20"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "65b36d7197c11f1db5381170978178b2fb8e92f336e763135ce8e287fd58b9fc"
      "zh-TW"
    end
    language "zu" do
      sha256 "737c17edf169c88c083ba57628a714cf77e01ac1488e4634f485f9da16f29d13"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "9226b6d738fee21744a7b99e5f14e323b30304ec61569fb5797a205171490292"
      "af"
    end
    language "am" do
      sha256 "a02e4c3e30ca912f9b8d89d8276d7fd8c2c86f7653ee85dd80650e5344cfa2fa"
      "am"
    end
    language "ar" do
      sha256 "b56a41b69d867e0562e5b14b36cfe9379afee6f822bfce5cf850f4c055890131"
      "ar"
    end
    language "as" do
      sha256 "f80a722854d2dad78977b247d2dae7c56f7878eaa8d89dffa4c143d9c613800d"
      "as"
    end
    language "be" do
      sha256 "d5930c6b1b6b2e8e20173e074992a6acdd2888136563f50995aec06338b6bcec"
      "be"
    end
    language "bg" do
      sha256 "ae9bc3e0416c524b6af1fcd0ac6af3cb5352e62a4aad8cae23a16a0ffa18426f"
      "bg"
    end
    language "bn-IN" do
      sha256 "78d800628b7645c90a40c70e11567bf9beeee8e15dee1fee17f94cbbba0f52f1"
      "bn-IN"
    end
    language "bn" do
      sha256 "64648473e8ceed6ecd8d6ecb55a5f3df4214335cf97dacfa9fb34ce847692eaa"
      "bn"
    end
    language "bo" do
      sha256 "5f11b6e24413b748f7aa15ac4ba8fb9ea8512906cc5792582ac6e0ba31da949a"
      "bo"
    end
    language "br" do
      sha256 "8e075eee82c9bc5ba7836d60bb454b2caea2c6a60c1400dd6e44b798208b9f2c"
      "br"
    end
    language "bs" do
      sha256 "f768a231565b466d2d10aec2f0351e21f869c04eb3e2f98c039af353e6445a87"
      "bs"
    end
    language "ca" do
      sha256 "952cc0a972339e618f94b1598e5d6b68a5215e79d60f718798ebee4771c77ee8"
      "ca"
    end
    language "cs" do
      sha256 "4586f838e172a63bf6a902a7b86442272d457f8028ab5755f16bee5d15520dd8"
      "cs"
    end
    language "cy" do
      sha256 "2047df17b13498fae115e8f3df808efd44e95d06caddd8ad522221a331f3d3d3"
      "cy"
    end
    language "da" do
      sha256 "81a574eac885012283d77fadd5bb4560a432f994ffe6c061891db9b2f06632cd"
      "da"
    end
    language "de" do
      sha256 "6561d1ed0b1d03cded9cff014ccdf7c5f550efbd43f8834cffa753834df33946"
      "de"
    end
    language "dz" do
      sha256 "80e015b2a3d5816744810a4b36a5ae84d3e0a2fc5872f5497579060f5b7ffe9a"
      "dz"
    end
    language "el" do
      sha256 "efbbe4b20201732b87a005cc81c4dd6d149e2d402b947c852f87605151ea024d"
      "el"
    end
    language "en-GB", default: true do
      sha256 "1c3676e3b0169a397a25d26e5a0599a172d58865e9a56a4b962026a07d5231b7"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "2f187b4d7ee5599ad2cfd68274b0a5bd90900d768d32e1d4b6af0a921c34c787"
      "en-ZA"
    end
    language "eo" do
      sha256 "55054f2d06f324342dc3502fcc5904e8946bf99269b20ecf0a4ae41c33fae022"
      "eo"
    end
    language "es" do
      sha256 "4ed1ff55e26fb06344a57417f438b7c15355eb458a99be39eaf29ca7cd11fd36"
      "es"
    end
    language "et" do
      sha256 "3724a083294e3da08d53193e3db811bfb8012d13432d729456d63ef00674b062"
      "et"
    end
    language "eu" do
      sha256 "df7cefdd72d40ab6c9152c1717b9afeb8f17f45c671002044f09f3b701af7244"
      "eu"
    end
    language "fa" do
      sha256 "8bd3ff89ed6e40d4ce11b25c1b0d61540980bc6f5e1bed323906fd3a72522966"
      "fa"
    end
    language "fi" do
      sha256 "a5826a346c1ef8683bf8d4ddd8f8f74f4e094f60ee3ad0252db689305a95c59d"
      "fi"
    end
    language "fr" do
      sha256 "27a15ec1c0620a41171586862f62b32a1b19499c6234110d9ca05f362c122df5"
      "fr"
    end
    language "fy" do
      sha256 "a9bb23333eae3a86cbdd82bd6bb5dbb1f09a498261e32ac4f01417f21eff81a4"
      "fy"
    end
    language "ga" do
      sha256 "4bdd1a481b5a499f2cfcd812f5112d197fe58f683ee27e9a7892fb8475705db2"
      "ga"
    end
    language "gd" do
      sha256 "18477f60366d876800b4f061101063a93cbae4dfb17b4e808dbe7b4f53aa51b0"
      "gd"
    end
    language "gl" do
      sha256 "359588d5f5e7f77ce16dfa6bc1ed59ff65f1c8f585464918a0bd881e33a4dbd0"
      "gl"
    end
    language "gu" do
      sha256 "7fd196e00ffea77e6c9702dd1c42c87ea706d05861fa1771efcddeea4b6d1ab1"
      "gu"
    end
    language "he" do
      sha256 "ca404b5a43bd4916f1364292281083d66e8e6a4f2ad0bea9fc93387ca181597e"
      "he"
    end
    language "hi" do
      sha256 "28e3913a506e46620611ae8a0994b460deb26a63f7769edda26418b654085c89"
      "hi"
    end
    language "hr" do
      sha256 "2a88b0efad0aee958ef8c1faa52f18295e1e9c7435b143ef7827539298ff41e2"
      "hr"
    end
    language "hu" do
      sha256 "b545397ef4a64be6958b129ed8d96c8166139109f5ed78f06bfb8fcdf7e1e402"
      "hu"
    end
    language "id" do
      sha256 "ccd2a69cdf163102f1ed6262252a90498700dfbcc25f1c2546494c891e9ba835"
      "id"
    end
    language "is" do
      sha256 "3838c7ea0cdd007aae4077633ce4cf169421667e656689cf75e76c430c55cc96"
      "is"
    end
    language "it" do
      sha256 "548c6a16897dfb0660067399f803ff9ef249f558e5775289561e5d8234dac62e"
      "it"
    end
    language "ja" do
      sha256 "f2de5237e51191e3070b2c33506150c515c3b21d1eebc675503efdcbade42f53"
      "ja"
    end
    language "ka" do
      sha256 "4484da4582f8b69ed1c8a164736e91f60eda7c468e9094e7c76dcbe6083d5f72"
      "ka"
    end
    language "kk" do
      sha256 "93a38ef67ca999920d830060365ce2690021d80c304b18238955ecd6fef1f78c"
      "kk"
    end
    language "km" do
      sha256 "b3504add7b143bc8d0d2531109f2e938604c465455ac1b3ce5382deeada80bfc"
      "km"
    end
    language "kn" do
      sha256 "19b26254bd05142a236daf9e9efd877c8ad796bb1dfb4496e01edd5f08fcea0d"
      "kn"
    end
    language "ko" do
      sha256 "1c9d6839faa55bc8954d26c9422215924934db9a7154b22123b7b49b612fabc5"
      "ko"
    end
    language "ks" do
      sha256 "db3c25699f1477189e65f50e7c43e5f491d8ea5deac14875e76e7611a10a1e6c"
      "ks"
    end
    language "lb" do
      sha256 "6fd616816c51d61b2979a946d545e38657a4fbdc0f2509ac5369af0a4565dc7b"
      "lb"
    end
    language "lo" do
      sha256 "ede4991d17874016713575aaf6b8daaba9aeb22639b9a7654fc2a8793d885d98"
      "lo"
    end
    language "lt" do
      sha256 "cbe56c4e75fd51a76bb6a87c1a1dff5333762a0d839cbfd598d489ab5dc76747"
      "lt"
    end
    language "lv" do
      sha256 "e2a096498e754e80baaaae7ad04fdf8ccec4540484e3b7d453b4252650c68c9d"
      "lv"
    end
    language "mk" do
      sha256 "487a1eee42f86d84ced827bb96e5a74012730c9ddf469b3ece02fe19f64ffdc7"
      "mk"
    end
    language "ml" do
      sha256 "e29acbb99452aa0fb84d2a21ddec8497fbe9bfb6631405ba4fd6c762b5ba02c5"
      "ml"
    end
    language "mn" do
      sha256 "d8085110b0e13161fa76b62d0ef403eb05427e0b56842cca9d9a0f1cf9e59710"
      "mn"
    end
    language "mr" do
      sha256 "775174acff4550fdb287b5d5268b666dbff6b78f23f4cca7ab79e775631d9f3c"
      "mr"
    end
    language "my" do
      sha256 "e7670265d0466368a8e4fe89b44109faf0f7294b9862c8bf0e764b6804ac1ced"
      "my"
    end
    language "nb" do
      sha256 "73970c32bd50d8275a5c462c3fc4ca49b937cab476341e9dadac97aaa458e64c"
      "nb"
    end
    language "ne" do
      sha256 "5ff80920f772d04d5b5d3a92ed8ae382436967fe73ba39612f8a05685d8b1e80"
      "ne"
    end
    language "nl" do
      sha256 "ea9b229b7e72fb480ebf9730ec2d73f79d04657bb608374e98e0ac153d3638bc"
      "nl"
    end
    language "nn" do
      sha256 "444d52b546a7fe100ab2a8d6155c406f5ce4cd4f116036969f9d4d4417cc2584"
      "nn"
    end
    language "nr" do
      sha256 "b4087a64862c2f97d7469d0d3c32d5845bb40e09aa927c5f16a8db3d4d166d72"
      "nr"
    end
    language "oc" do
      sha256 "2f730c632f32f9394e54be4f0e23a758364d9df758974d3f8038d2754462aa9d"
      "oc"
    end
    language "om" do
      sha256 "ad35398769b2e1474a59a0953ba64ebcc0acc34431e4bfd8746d96fd1f3fd9bc"
      "om"
    end
    language "or" do
      sha256 "51e3df119b2f0812fc93c012f79a03ac07ccb2c6c61d6e7b1cb977c4608e5e8f"
      "or"
    end
    language "pa-IN" do
      sha256 "0bf40e8a48753cbacbdc320b25fe9cbbe7f45a6f08a277697cac1a362460777f"
      "pa-IN"
    end
    language "pl" do
      sha256 "6cf14bf03552a1a696504a8b7149f2e20476b59873ec7c61f27aa92df9ad5f55"
      "pl"
    end
    language "pt-BR" do
      sha256 "07d6608cf557493c1ffe54bf1ef41dce52e4a352e6fdcb24fa0c7a958373d4e9"
      "pt-BR"
    end
    language "pt" do
      sha256 "33da14c39dd3cfbb6f6c53cf7c498bad20265a7ba12a0ca2bd9708d62ec856fc"
      "pt"
    end
    language "ro" do
      sha256 "3a483be4450e34df2b148989bfcde2e0d6ead6b4e52059b9011ad1c826f496c2"
      "ro"
    end
    language "ru" do
      sha256 "85f4e9414b6f7b53e4621721d9b8abaeec0b510783511ba490cd643571446490"
      "ru"
    end
    language "rw" do
      sha256 "8c5a3adabbf2ae9f1cdd7ad6e88cf99d24f2edb56925269818357ba15ec524b5"
      "rw"
    end
    language "sa-IN" do
      sha256 "04531b6f4d83066c9679833231c2a7f204948b41330f1ecc1c9e0c7e9151d6ef"
      "sa-IN"
    end
    language "sd" do
      sha256 "f3b9204deae6ceb9ebd0ccb1b59057ad0d8fc55844e7fc2494e1d003530c9820"
      "sd"
    end
    language "si" do
      sha256 "6a437045055c48465705e40801ca26375a91355a798ee604389e8665a118ca38"
      "si"
    end
    language "sk" do
      sha256 "924536216b4aa8c509fb68ee954f93f0d0f967ca5065c0e5de8bc8ccd44a819d"
      "sk"
    end
    language "sl" do
      sha256 "555850efc5c586cd6c2879bf1c2df55ba25de25a711eafdbc9449662bcb6efa4"
      "sl"
    end
    language "sq" do
      sha256 "4e7d6987dff054ed0d62ef0b40f07cd55cd4f9488556089517bd7a6798102761"
      "sq"
    end
    language "sr" do
      sha256 "be336415d816ff324c45c51a989bd2485683e45da7309d8248a8f8434bee3598"
      "sr"
    end
    language "ss" do
      sha256 "30cf5c1b296b0496ee2bf7e35bafb96d3af58fe7aa54807bfd2eb29a8bb16e9e"
      "ss"
    end
    language "st" do
      sha256 "78b013c1d749e8844d803249275078cbfbf72974ad9b657357f99a55eb3e0000"
      "st"
    end
    language "sv" do
      sha256 "812f0e361f6a45dd18608bc1944137c9fcab918702984df935c1b4ee1a1ad185"
      "sv"
    end
    language "sw-TZ" do
      sha256 "74b37ee1bde6ce8928f4210e7e4d60695aa3f3c92c854556b315793a5c5c1b57"
      "sw-TZ"
    end
    language "ta" do
      sha256 "312fa44576d1407fb785956c3035d9ea1c3e37f34b71a78713e713b9389618ad"
      "ta"
    end
    language "te" do
      sha256 "aa56288b3cd8c2bf356453620323c472d28eb4107f24353abfd0466d8d6110a8"
      "te"
    end
    language "tg" do
      sha256 "5c327909c9ecebc5fdf3252ba2ffa4c707dc5cea946677efe7695d1b7ee1f9fe"
      "tg"
    end
    language "th" do
      sha256 "3e59e253c52c5338f62189a9dcbbc98150a9bd3a752892064510418499ce0355"
      "th"
    end
    language "tn" do
      sha256 "60e019182d41323e7aa41cbda4b0d31ed9f8593527fea1209e2000ba8647fc44"
      "tn"
    end
    language "tr" do
      sha256 "291fa400c02c7350325642c3c2e140ed74f9d498524b5b5bf4aaedd303280ab0"
      "tr"
    end
    language "ts" do
      sha256 "421c6911f713d8cf4cb525eb67b4b4c5dae611a71ad6e5fa489e30316cd953cd"
      "ts"
    end
    language "tt" do
      sha256 "d57d44a6a4e966e3bc698f15d27bd7a138084d6b22ecd689bd0798eb71def191"
      "tt"
    end
    language "ug" do
      sha256 "c6fefbcc52b05fddab1057843bb1e850fc3b1a21a110b9d02e19036216d0db16"
      "ug"
    end
    language "uk" do
      sha256 "d26fdee3c2409113b9a1066154ef44561876b085005bb298cd3fd46115a4a777"
      "uk"
    end
    language "uz" do
      sha256 "c20742e601a5cc12de60ce55aeef8d48ad00795209f8b72da6d91dbe89de0b3e"
      "uz"
    end
    language "ve" do
      sha256 "7a8dbfa7f58b0f99010176bf5ad5c9f7156e9ca42e845c261aac5969eaa6147f"
      "ve"
    end
    language "vi" do
      sha256 "d998e5626de52ccb1f7d83e990781df298c0915d63c153e6127a5410f42ebf72"
      "vi"
    end
    language "xh" do
      sha256 "67da993dae02bf63129a327d9a05e747b12b14c89f296078af01e31f851591d2"
      "xh"
    end
    language "zh-CN" do
      sha256 "6f514bacc93fb8a0ad499151d8c514820c23a9229c6a0ee31c812c3391d79fc1"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "f2976b7d9472699e1c2b38502114eb9218e8851c09b3a6be000ff1c43f810807"
      "zh-TW"
    end
    language "zu" do
      sha256 "ca5b51d49b7e880b9c6b8b7479edfab7bab6028d17159f4991487ee3a04f7e51"
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
