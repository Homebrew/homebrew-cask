cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.2.0"

  language "af" do
    sha256 arm:   "e90339e06d4b1ac7f2571ed31e1806d3ac2fe47511e1cfb3417627fb289fe278",
           intel: "5278119d7e59be4faa441c953e6423bc4179a07aff0562fcb429a303277d75fb"
    "af"
  end
  language "am" do
    sha256 arm:   "2dba3c1f9d6dc8b7ed22bb57edeb4d135b7747f15fd736d5178c52483d9aeb12",
           intel: "5e0127f5743a76798914f5bcaa936f140ef571052f293f5e259f62a369be296e"
    "am"
  end
  language "ar" do
    sha256 arm:   "5f658c6b22a991642a05f3bd7a84bebd95758d2a8e5e7194209dfa8de64c202d",
           intel: "806ec7fbd518aba198c7ae5f18301a9879b1cccfe46bf4d9c0b6c164b29e416b"
    "ar"
  end
  language "as" do
    sha256 arm:   "b132295c458c7f460185b813339689e538354a34ded420a1c79507a940fc1ec2",
           intel: "a191aee63b56a082a084db83f5630744e527a29ae303a980f756423522251bd7"
    "as"
  end
  language "be" do
    sha256 arm:   "fa99d1006818d7d9baf6fd7aa84269d47d812c6d7e586f6a4994721cc5d055b2",
           intel: "f93b8e8a0a57aba535136f2cb9578c32acebcefa50e252f0e07ce20a6dcb3b79"
    "be"
  end
  language "bg" do
    sha256 arm:   "6f61c61d5b980e74c92a2fa1e7c243c415a684a76fa2d8099d3e51fa11ed871e",
           intel: "fe78864fbf4d1a2ae5413c41d2cd94078ec3693b7e421392c7e23c9c79c82620"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "6a5bb90fc47d6be57b4dd5a84e8c74045f1fce4770255b2a6980b8af32b1bfd1",
           intel: "7088e70790820bf44b56df40b3d2c33f04e9371582a2262849b8b6740456d8e6"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "a093fc0034bf9861fbd7786846f1e42424739246a329fb566afe0d8b6bdce84e",
           intel: "61688f3b202a5609be993b584a1fa904384196f4e4adfcd06246656786d3df69"
    "bn"
  end
  language "bo" do
    sha256 arm:   "45f3649a28c46c342bec16d00be96ec49064b23f7557b1343856e4af568fcd12",
           intel: "d5cd8bd65b2d42db201690ceca6a0db66727d94be4096b792392c81564a44c5e"
    "bo"
  end
  language "br" do
    sha256 arm:   "88b6540cb91f9c6a1445d56fec5b250907895da06f20813abb99e208be73adc8",
           intel: "540bfeac081708e025350283a1f2a7c8da73a78c99e6e8db42a10cb321e87528"
    "br"
  end
  language "bs" do
    sha256 arm:   "9dd9d06fd6ccc07e0910b199c0899ef1c1554e0bb34fffc7e9284e33f6e4d63b",
           intel: "bad4f0c93067db4af1b12a8d095fe3659cacb371aba9757a7596d13a17904074"
    "bs"
  end
  language "ca" do
    sha256 arm:   "f481e464fd2c38147c82865bcbb256d34faed6ccbabb89f2cac27de62bc8bd2b",
           intel: "2bee52bc9b893a5370e89d5f311c595de286420e60ad22344640b860592c6c20"
    "ca"
  end
  language "cs" do
    sha256 arm:   "1ef3166ac6e4252ac1dfd7e90d05caa3d862f165e93c39450abd7bcc97302734",
           intel: "ac42467360e5a72a8598cf48962900e5ba3b42d8570640beecd00619590af7d6"
    "cs"
  end
  language "cy" do
    sha256 arm:   "f412771fe0336adbccb732bcc03632e9fd5fe845b04031a89f1b288823ff6a8f",
           intel: "9d75b76da5b43891a0b209c5a2a1b2e0ddd9f88fce34854da8cdabf7f35707f2"
    "cy"
  end
  language "da" do
    sha256 arm:   "933f40d0c93c09fb75d900c9b2a08d96486a75fdb91f343c24f5749813acf292",
           intel: "047105e07f1764889dcad2a802f18772eb276c4ea4ce02819d30c0a7ac2743cf"
    "da"
  end
  language "de" do
    sha256 arm:   "c864e5e14a3de327af7a3002fad20b17516f139423c49415799f9e435a25789e",
           intel: "10f810392c333e82ea78e169a951e8014af005b9fbcdbe4376a5e49c1984efa1"
    "de"
  end
  language "dz" do
    sha256 arm:   "959ae2911287f367c862533141f225e0068e16ee82a04dd97b2e448244fa3cbe",
           intel: "4919e5fdab3cd59950f0aa0ac58ab3aad8f2e7ac5d6358aa64e026faa40881be"
    "dz"
  end
  language "el" do
    sha256 arm:   "1c63103e64a490ff8ecd7252d3ad4f12ffead94c044a11e5a0ca936afe9d1752",
           intel: "5e175e4086dc391918b48ee70238cce4a3ca8a69a77e743f97ee1acf00128b58"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "13be19e692203da05d1b10e907bf9b92afffa3408a83b12c31882d5656d1fd1e",
           intel: "b80aaea4e15739ac3a0d864f1eee19c5ac5f65ea372a9ef1b86ce878eccc4a99"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "3ea2ef618f835fe906891f3f33653652ae0cc3f9ae90aaa3296c6a4e131a6915",
           intel: "458d0c0d5021cef74f84df45bcabe2a3af60889f1c470289e232912c1112bf68"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "64ec98f174aa26f66c607e788af5fc2f6675e638bd46310a938804ab4b27df18",
           intel: "add138c50dee66410688366609f7eac02c3f86d43293927c18f8d3d65ff1562a"
    "eo"
  end
  language "es" do
    sha256 arm:   "43a3af3cd56f4ec211bf3df66674b126f1fed7fd5f2b74734db0dac0819d13bf",
           intel: "59af3b07f8a7b6345ca240293921196a9cd8774540f596282cad7a0c943bb985"
    "es"
  end
  language "et" do
    sha256 arm:   "9fdd9ebf45a4f3f61810f08933b19dee14c72aa8726b70c9206f2fe361ab8419",
           intel: "88e590d0283ba2c1ff77b5719d0772b2830a5bef96cdc69372a1c6618dee5150"
    "et"
  end
  language "eu" do
    sha256 arm:   "a3787e68166414520a7e6c6bcd843f0c0bf754ba7625c733db1e9f00c8e9a5cb",
           intel: "67a33e41a1ff002c4ee1a8c5be5cc3cae81c048d24235ee4a5494763163d538a"
    "eu"
  end
  language "fa" do
    sha256 arm:   "27ea7c5a1db1788297a9962150d07724332776c47081a8f3b7339d1e84730c71",
           intel: "fba9ee6e8ec5dc7ea003138edc8db24f0e187cd4ff1cd0c445774e14603637c2"
    "fa"
  end
  language "fi" do
    sha256 arm:   "71966b593b7ed9cb9b646546beca8356be2fae98672a1519655fbb94165d7a3b",
           intel: "7893a36c9bae4d0c581518c193fbf5e65f84472d9ea7fca4efe7ba0166086bf0"
    "fi"
  end
  language "fr" do
    sha256 arm:   "df6ca7209ef512e1cbd12375d39a369daca4f80e5a318964149226a8277a87cf",
           intel: "893eee96e899219a7cc752a335549620cbe7e65ee817b058598015a074696c68"
    "fr"
  end
  language "fy" do
    sha256 arm:   "edcfac37f8fb039f1849930fb4d68ec2784d24b4537bcf69dd5ef9d9cd032397",
           intel: "67238fd7955b39c0b7e5b21078a5f5557b35432afa0048359c0bdcd6b668547a"
    "fy"
  end
  language "ga" do
    sha256 arm:   "b18f4d381c10c3fcd18c090ecf942c21696dc5c80abfd17b7c997d7f83848ffa",
           intel: "a3c41b39b5220571d6b2608c220f4054c965452c670c9ee1a71c717a116a726e"
    "ga"
  end
  language "gd" do
    sha256 arm:   "d1e84f89cc2e1a925b0ceacee8efd1f5921f962c67f0e186c85b9bb4fe6edd4b",
           intel: "1e89c292dc25b2ef20d5adcecf508235bf7b0001f4cefa688c3568ab06ce8163"
    "gd"
  end
  language "gl" do
    sha256 arm:   "e5b2796727d80de9ccbd590107498d3b172664494f19c0b4c4f2e003f6d55a5d",
           intel: "daae702dd7e881e2ca7feb2116d75e12e31e12a383c7b619628069dd7437dfd6"
    "gl"
  end
  language "gu" do
    sha256 arm:   "200662b1214ddcd5cab061bcaf0f07e5bee73a2e87dcab4585a79db4b5de08ae",
           intel: "745af6636efd93d0d05b6f8b563131751b51c9333b6ed2d4fd30892893645840"
    "gu"
  end
  language "he" do
    sha256 arm:   "32bf9cfafa8aa41311164701ddde1758f9d70cb3811a305ce09e538003e1d540",
           intel: "1faad5c3cb0e9b33e9774e4e9b3f3ee8df39794babc77ef66875175585cc3986"
    "he"
  end
  language "hi" do
    sha256 arm:   "249c5bb674a1d8f64db0a416b3145592705845774388da176e3fb125a5b9e8d8",
           intel: "5f328eb5b42e6ee9765ec734763b1c0106066f21576d836e16bb07c3305e64cb"
    "hi"
  end
  language "hr" do
    sha256 arm:   "b696c5d07393b9d333478abd270b29b3bab17f98e0ba9722b33a33f34cefe162",
           intel: "bb1da18f1d9098c448afa647c7e5731403ffb58d996fe49f307637217889d151"
    "hr"
  end
  language "hu" do
    sha256 arm:   "7dc26cef71ef0b1a4867a429b73e057d441a11d7e3a3197dbc6eabc8945a9206",
           intel: "8360e244985472fa880c2c7a2e0e0af076ee040720e83076a37c3727ac7ef433"
    "hu"
  end
  language "id" do
    sha256 arm:   "df3d0c6229d13e5bf3482f68ab061109097f8d423d0edbaec7ed557eb5173b58",
           intel: "16ab4d42c1a390725305c982b7ecee1edc288d28b3ae0d1386d9b9290ce1dd4b"
    "id"
  end
  language "is" do
    sha256 arm:   "586d0e8c14e390f0475c138ea6f3f1380174be18544b5202dfdb91d363898890",
           intel: "55bf4f80356fb8c364cdcb83d5192b4f4929fbcabab968080aba9e05926335c0"
    "is"
  end
  language "it" do
    sha256 arm:   "f098925a21625d62277ccb15f504a920273eb7ffe04e9d2075b2ed0b94f99b92",
           intel: "a84ba2d577064f35a3f8c943f961f5b0c7086948b9d2a627f5965074b6a999cb"
    "it"
  end
  language "ja" do
    sha256 arm:   "f7fddfa09267c9338cca65692890f289a630fa87586502b1b9786d690d6658cf",
           intel: "8b9812dbbc91309e6df274205d4b8a489d72ff732fe74f00589674d8870d69a4"
    "ja"
  end
  language "ka" do
    sha256 arm:   "3177b7ab9f57f0e55f41829b0e6a8df38a3ded3f454c9485329c15584f35f14e",
           intel: "8527763c9e533cdf2c730ad02a8c299c317f5e0a9da9575b4fb1f720fab1d9df"
    "ka"
  end
  language "kk" do
    sha256 arm:   "884b44dd651dfa33634b79fc1e9dbd6ae9338e96bef389264c7a31be31f1e7f7",
           intel: "beb7f09e690e052e818601d811e64938eab9e9669c415a3afb93f61aa4d255b1"
    "kk"
  end
  language "km" do
    sha256 arm:   "6dfe67095fbbfae9b85bee918d3a7f7bda126b77395904d72f0369396c097a10",
           intel: "ae033ae88ad724926b5c4a9e9b9eb1082ba9d5579cf5f86f0a1372547b554dfd"
    "km"
  end
  language "kn" do
    sha256 arm:   "0d8badb5dcc6d70429c6bdd8e9cb71e3741bd6b868e8c45568cc15f6d3a2a03c",
           intel: "8bb6aba3e4c148b220e29516aeffc0848b32c1c04453085df7acffedb8408664"
    "kn"
  end
  language "ko" do
    sha256 arm:   "15978a1356be5af7d308889fb4938c76b0d79874590a7be5918a18400e496b44",
           intel: "579c61e77cac762f164c630d7f0e5360ead5570f53dd003170d328f3d29308ce"
    "ko"
  end
  language "ks" do
    sha256 arm:   "ff339398d931d5b449a753e96cd384651a9e11a9b4e6d2300e627b29901e46eb",
           intel: "306064626d009ce301c11e72b0317c2148eca0873cc90d14d553f9663ebaabef"
    "ks"
  end
  language "lb" do
    sha256 arm:   "942cedbac992455239c5837d3a755e261dfa6272d4f467855050acf59e5c558a",
           intel: "4efc8b4c2891981f6a2c7050e268f449d26130bc1483e5e2d4b7e994756f2d28"
    "lb"
  end
  language "lo" do
    sha256 arm:   "98f4a51fc6c64a6547fc75c80f829a653b5ad0ef11f9052a6762745a8e5da8c7",
           intel: "3803773059fb867ef5a52f04663d9d714457012c760562f22bbb1d35669534e4"
    "lo"
  end
  language "lt" do
    sha256 arm:   "9386fafbca7fe676567d8e17c66ef6584b76c455dd05a839b0e14a335b8b3d79",
           intel: "acd28123def166246b800de42de9fb3f89310a0442377b5b8d76eda89395871e"
    "lt"
  end
  language "lv" do
    sha256 arm:   "10184ff04a780805b273ebf619a9ee876711e2dd935d306d9efbbd22d8b9b4c2",
           intel: "8ef35a691e4e2af4b0c3219c4ce5b733117f00e68951ba5ac7b448502861a272"
    "lv"
  end
  language "mk" do
    sha256 arm:   "11f0023f1022d87a9cc62b4b4f2d4ab4af53de5f8c4828aaff90d59460c7c267",
           intel: "7d60d7d372a6f107cbf348a3139620fd6ab23863ac60f3a4cdd5faeb1c8ded1c"
    "mk"
  end
  language "ml" do
    sha256 arm:   "fcf08694d03cc425c18f040666e5fa148dd28214e6a2a96cf158d350ff1cbcea",
           intel: "2b4414862a6e46d0b60077d755b54f4c38c2694550b6800ea5b8053261ae8e1e"
    "ml"
  end
  language "mn" do
    sha256 arm:   "64b61c9202cc0e27836dea535370f46977f120e8a4aa28b6cf870e4a5c9ec76b",
           intel: "56669a400034fcebf389d20316716eeba2c4cf2dd9391df70e93836977969814"
    "mn"
  end
  language "mr" do
    sha256 arm:   "1a04b869ec2978ecb234fa1065745444f62290df5d7f25ca8f1d064ef140a900",
           intel: "9100219ab16a29baffc3f7e6ea6d323372956647febfcbea51cd950f78993bde"
    "mr"
  end
  language "my" do
    sha256 arm:   "3c4814733db25798bdf69a57dde660e27b675d9a565e6bb00c0d4efb08b3b3d8",
           intel: "d97bbb23ca6761547880f07ed8ddf1fa2528cced4d9d6676e3214ac6d62e51c1"
    "my"
  end
  language "nb" do
    sha256 arm:   "f99726998c2d69ad5a5102394fe71582c3453ff44dc966601f7f4e9af0e2c9b2",
           intel: "d0710a8d44acb84fa84558fde0d1d2d2a65eded0b95c2e17405565b610db9dee"
    "nb"
  end
  language "ne" do
    sha256 arm:   "ad62e653284d1235268a754fc0dee04070a05a025dcf344c1a7d432b9c38a20f",
           intel: "a34042ba0ca3d6e75e39b729c6b882f2666f369ec6223ae885ba2a6b25c1e118"
    "ne"
  end
  language "nl" do
    sha256 arm:   "ae53ed7cde2b883ba49ec5356a6beab2905a574045c5e1267ce5ace6328d1bfb",
           intel: "7620cecf58d46e5d76acb01b38baf620aaa5ce59bf5f9bdcd307b403b1525fc2"
    "nl"
  end
  language "nn" do
    sha256 arm:   "92e06dd24ab4930fa0d94f3fa2caddf9784fe94c903a66ec6b945e449ef97324",
           intel: "2d25f738ad231aa5854023aa85d4f19b4126b5bb51405936c9c17be0c1d1a856"
    "nn"
  end
  language "nr" do
    sha256 arm:   "dda61d1e5654f0c612393e5f04a5c9345fe3d8d6b7718ac55a10d16c6cf1a483",
           intel: "67c65ebe13d9edf09192c900f342a51b8c82e1fe4465001451a0b8478766614b"
    "nr"
  end
  language "oc" do
    sha256 arm:   "21dd7973e3da9c2e0bd25bb86ee6692e6aefbfb661518e480c66011b106afb28",
           intel: "c320741301c2e8f1ce2235de91b9abb1a3a23e865d7232cc4346c16ce97d4247"
    "oc"
  end
  language "om" do
    sha256 arm:   "3d48f26f1e0b2a443ae47b8e8f68b06f56a36fff6728fb20731765d7460cfb3a",
           intel: "175f20466267fff3e9652d1f8268a156f61a6c34a8876e1e4c8abb95c803f8f7"
    "om"
  end
  language "or" do
    sha256 arm:   "7f6a793fdb9257cfd999c3de8e7a86440bdb79226739338a16b9c73e3bb6ab1e",
           intel: "d6f2b64b78ff8decb03204f3daea449b4f012801ef9cdd5c393b2fd971dd910e"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "3b411a07677818b58493aef4ba072fa2aa1f232a2a9e5660919fe191a9090e47",
           intel: "6f3f6bde066967296b9e71fc699c19ee664ee7f2abbf0e8a436c19137845e5a8"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "86f939a6f3d04b479376a75fc9100ca90bcc858fb2d9f7f20271fac040785d72",
           intel: "11d936f12b09b76a4330b181e98cc893e09094035e4ae2dafb9dec41f72be298"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "4ed2c6d8b7a359140d05c2e8ec17904e067197d419a452dfab81d39bc92d74d7",
           intel: "d0789ddcf1498b64d3a76115adcf560aa01c6d5a91a918cb262aed53a969164b"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "095750831531011d92ff0a3741e3ad8265a28395b7e1428cc980c1f27a40e3a1",
           intel: "0caa42930a825c2cf27af8a08d425232d9daed13bdbb140004ad1cd52a4d78eb"
    "pt"
  end
  language "ro" do
    sha256 arm:   "f1a0c089ad3e624b8948c0c0783a2a0699f0a22ca2576708a65e323629a7218b",
           intel: "6d634789325f27140c14c0fd6604f681f0bf8c745f901646b41e9c60bd286c08"
    "ro"
  end
  language "ru" do
    sha256 arm:   "568e1df3c0bfbbf2d4463c357cd57f124b7afb6e94186b17392e59ed61547048",
           intel: "654c797a97c9ad236bd6212d0341301aa81c0e179f10ffa7c4c57e843a4c5047"
    "ru"
  end
  language "rw" do
    sha256 arm:   "2fc447237758e15e118d64fb04b907a05cbbed7fe8201becb54aa6828879b7d0",
           intel: "871c12291c8368e992648d15c22703a3ac6f4cf47f93e6f3f6e7a8a8bc893392"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "1c868e4adb954a44b234d13d5b0a23d8eeb13e40d4158d93eafbb230f131050f",
           intel: "1029e91f73eafecb4a2b9280ca786b1da6176fd2219547c8e34194ec07bff313"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "859428e96808f97116c0022af5e4dcb0b840023ea304a6c4c092fd0b8aa5828e",
           intel: "94f2061b12fa1d65756b6690b3c296cc95b5f64fd8aa7a9c9dd1d71b16be22cb"
    "sd"
  end
  language "si" do
    sha256 arm:   "32a807375fd8901e19bffd948c1d0d4c19e74ae28f0063d0e8048e5c6c95da78",
           intel: "109ea3aa14d19c3c6a803f8093fac595fb6aa69fbeb5a04cb87e72dcc8dc7f5a"
    "si"
  end
  language "sk" do
    sha256 arm:   "17fac25ffa5aaefade7ddfe9f538db6fad0137170b13a854d2b76e8d1cac61ef",
           intel: "df802836d515045d02f1c67ca141179d0914071bafec336036ad088a6f47339e"
    "sk"
  end
  language "sl" do
    sha256 arm:   "689cbe31c740994550a1699592087dcf4be85ed7c0a1ca8abe0a23b5417fafe9",
           intel: "57a2e04efe3f1481af72ba2b881e92acc3adaf7e810645eeefd5f2246b23496a"
    "sl"
  end
  language "sq" do
    sha256 arm:   "4a56738f390466bf11a1d4f273c5095b2aec9ebf43bce40a30ae8fb7676633c7",
           intel: "731cfdca2432ef132658ca7a374823c0e66f811d70af613de2ce39dacf1004f2"
    "sq"
  end
  language "sr" do
    sha256 arm:   "8723eabb3b8265a278ec4fdcba092b93c62e089fa986d8d8c1da9a062767394f",
           intel: "95d63ace2cf9700d343169163de50163aaf97d5a90447a3fe210edd03cc351f8"
    "sr"
  end
  language "ss" do
    sha256 arm:   "aff8eaedef2308f8dccbfa98dad0d2615b2986633b7a0e738b4f2f0abd8e510c",
           intel: "1b09038021597361267a1ccc354246b521dc64d87697a3c29f398a91b5c195bc"
    "ss"
  end
  language "st" do
    sha256 arm:   "be344c75a2c2890f61bc51f9b4a6d41b544a550efc2acbe0a2e37604ed37a06c",
           intel: "ee6f25fa792bb12c9ccf266039ace4f9a022b0b207ab9aa0d293c55ca35bad44"
    "st"
  end
  language "sv" do
    sha256 arm:   "08b8efe402b78c53a21cee307726c2dfaeefe7536a049b771cf3472e24096279",
           intel: "d6bcbaac29c20189b4de2a711ab1f6b274dd356f1d239acdc238b5421fa58d6e"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "d9c2a9e19b900b2d7ad8cf0520ebc5223e9a7321418cfd0db3b2a60b4731a96f",
           intel: "65359cd7e28ac5ac9365f353a0530f99d6bb629f1addf54a493221cf99b32370"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "401548ffb01bfb4963a31a3c3095dc454acf3b3a52530b6fc5d461b8f0045fe5",
           intel: "9044e7798721a9b23b7dd11a276cd0c9c07a0f616394ccc40c80f902aa0496e2"
    "ta"
  end
  language "te" do
    sha256 arm:   "297b5fd12a1878068247c4345f305b27027284b3024620ddee0dcb1e476a473e",
           intel: "8399962692b7460b7daaf457d8ed06ea89f50f47a737e690d6c6156a3651014e"
    "te"
  end
  language "tg" do
    sha256 arm:   "a76047665aba9c5f2e97997d7a9be53f17201369c31fb5abbe596c24feb1ea95",
           intel: "25d56b7cea2a06538d13158bb44463647e35675247f7e72ec3f9533cce0b8438"
    "tg"
  end
  language "th" do
    sha256 arm:   "82ad0a0e87d91e266e45e8945d5534b37ec9128129efb911a1a4a5d5358b8a6e",
           intel: "ee09ed1faa90fa174fd7d3f30646e9a42bf8d80b3b8e695864eef7c1aae466dc"
    "th"
  end
  language "tn" do
    sha256 arm:   "9a02a923037206e6ac03319ac59af8589b71019d3a8e522fcee8ba17cc3b76d2",
           intel: "73fad22cb12d8ac7c83f70fbaff117494664f4fc3abae6baec74d65d5685373d"
    "tn"
  end
  language "tr" do
    sha256 arm:   "51c932f292be5c0ebf52165d1ec1d9bd1318a05c650251bc215fca0cf3d8c30c",
           intel: "859c4fd8e00b7f7d2d83776cf908697657f0ab4f290cf8af810c16620705db60"
    "tr"
  end
  language "ts" do
    sha256 arm:   "182d18562cc54d7fe53d9bf3d0cf39139ea6b2ca503301b299d70fd63d11eedc",
           intel: "337c5c7d838c61dac6362b6a2346b97c4031051881f4da7e8332b7fbb33137ff"
    "ts"
  end
  language "tt" do
    sha256 arm:   "5dd33019609dd159018e7a3335896e890e3214f5620307e432888db67f85d8a9",
           intel: "e5a428e0f1659d1573fb09d5b6cc6a27fcb9c924c9bb73fc49bd61fcf8843ac1"
    "tt"
  end
  language "ug" do
    sha256 arm:   "ec9d33ba6ec8465e79707b48587b7d2d123439def9c170be336033a03a750666",
           intel: "5c8776fb953cffe3e2ee08031c237dd81fd43e14f048ca64412b6712c4aad82f"
    "ug"
  end
  language "uk" do
    sha256 arm:   "30f0d2dfb51204069461dbf4a96c97e04941793110cbb5951abb8ecdda26662e",
           intel: "8995553242886378cd5e605069b96aefcef60afc8a8a11a42780ffc1385333f0"
    "uk"
  end
  language "uz" do
    sha256 arm:   "360b7a2a395b956972d9606f6305715193a36acf51239cc2300c9d1892e96312",
           intel: "32d84ecf2f134c244b83140037db5404f318f2ba8e28ccf1d2871f76d6559c65"
    "uz"
  end
  language "ve" do
    sha256 arm:   "63c9ba0820133aa1d53920fad01bb64382610a9e07df32a3d02cc04c910d2373",
           intel: "f76f48b1700f2c3781bfe59e71cde086e05ef35acde71a409600c8ff2062691f"
    "ve"
  end
  language "vi" do
    sha256 arm:   "bd680180d1203e9c555f6016458bed98e8cc8fb6eaf2c394f4d149ed847db018",
           intel: "812d4ff43116510abb36b89e3b4d266a51cc8400d7ea65f4a2b5c487f8078d32"
    "vi"
  end
  language "xh" do
    sha256 arm:   "0843e951474cbf3f71d24753c5631bd6e09215fbb6bd4d0d7ccf42d27c214d6c",
           intel: "8d13b1ff5866e3774e520fafa188b47020ed2b94f693b0369c32cd65a6072ef4"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "06c255805bbb428296b16d0d1c2112824b193f30cdeac11883f0a01131b5b25c",
           intel: "fe571df1b7ed5404742a8196d23c915e540ef4c3307beb18d4c767207b4c9b56"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "282f53e22e462291b69c63619dfedba4dcc4ebe897bce2bc9cf7e4de01b15d42",
           intel: "6e6af0f7c0e16ce0e9dd5900f20b0e21d07f4dd1ac089e06861897a2e4021621"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "e735a72356e89368673052a900857a93121a64592b28f88f2d18f7cac9d22479",
           intel: "38b52879d7490c519704c722080f2bc5e2bf961c1dbe784bb32016fbf39e5969"
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

  depends_on cask: "libreoffice"

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
