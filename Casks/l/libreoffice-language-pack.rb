cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.8.2"

  language "af" do
    sha256 arm:   "fe7e5e62bf4d8dfacb88b5ed99b29d94cb1dc7d24ec9fec766bdf32ce92182a7",
           intel: "f6acd5594a3ebcf02500990cb7301bd8dcef39acc989c793ea9a74a4d22af189"
    "af"
  end
  language "am" do
    sha256 arm:   "d409e0e73dc80c96016c9786f698f39f046dc58dd2266986b51cb54ded5af76f",
           intel: "097082a9fb586aa056df355d151a3b261b639e3fe98e8557db2b63b567ddec7e"
    "am"
  end
  language "ar" do
    sha256 arm:   "a11773b6d07b35977efbf3a15e796218931316bcd5acdf6c8aa59298737fd9d5",
           intel: "367e1e989b052efd6c3396a246fd837ced902d7500e3ac5e77f0de80202dac5e"
    "ar"
  end
  language "as" do
    sha256 arm:   "ab2fbf8ebdb6a06e947389db51dc8f9cb14c901901b4cde7a1c3525c74a59e0d",
           intel: "521bb5b939e5d7b1a38c46e71484f5586e3c7ac108cea2cd678903535bc52df1"
    "as"
  end
  language "be" do
    sha256 arm:   "4dba02f2661baaf7369327d761e8456f4603c40762a066b5ad16c3a18cdb4778",
           intel: "029e06fd51c23c1589356d1715dbf8401b1e9f21d832a49951234fbe868df37c"
    "be"
  end
  language "bg" do
    sha256 arm:   "50aeb33507618ca74592df9d3683f1485c4470d3c528215f2529eb74fef61e43",
           intel: "7f60795980911ed3594379faa75bc89db8e72ef08b28659dd03643721b0c9ef4"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "cd359b5a031c377025355721beff04cd02c121b4c0b077b61d8b68ed8b720a88",
           intel: "c32a15f5e6b3da4c82ef02a8589eb6283151327649d1eb63f0214ddc641dfe88"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "f67733bdedfc1b798971fb3b9ebc73b2f081685b29abca7be63bbc9513499762",
           intel: "89327c85b716a8087430ea8cb3fd6b3e22868edf090deefca2e591325d30cc21"
    "bn"
  end
  language "bo" do
    sha256 arm:   "c76655f219f1eb93ec6f88b773eb143770d3137a6980f345c5b7be9b67f08c39",
           intel: "c18da9b78a89028db93c6551d3392df8b0efc8b74bb96189ebdaad29be94b01f"
    "bo"
  end
  language "br" do
    sha256 arm:   "f10dd9b178b414211c7cfe69554a3cb52bac781d96cd1b9cfd62f8b3686b6442",
           intel: "1b0078da2a11dcda003c86a307303b9e90cdc6a13baf64de5ec815adea60be56"
    "br"
  end
  language "bs" do
    sha256 arm:   "26c2c0e94412707e15d9ae911093fc8efb64328b94ed9eb271d67c2f6c0fd5cf",
           intel: "c55edb6cf68ccf3c163527098afe122146b7f889d02386683bac3974125b0dab"
    "bs"
  end
  language "ca" do
    sha256 arm:   "e16102add4a62c0bb7def8f78f0359bc2cf13e25b8feacf9586fb8f591cc7198",
           intel: "2d43cdfd773c59d5c06c25f5c23ab6685f8ab6a18bb1ceb18fdf0c127cdea40e"
    "ca"
  end
  language "cs" do
    sha256 arm:   "280f8e36a3825b7734a141957610ff9be8bd8625066d259e41aab76813d917ad",
           intel: "5661b796b9251034097f980caf849d711263d000077ade04d058a576e570dce7"
    "cs"
  end
  language "cy" do
    sha256 arm:   "c39b537e5b1886c103205dbcd0442ed99aa60e0302370a85bb330eabcd005bd4",
           intel: "06f0d580c41217310da405f30d2457395304101600011ccedd34b98d85f58749"
    "cy"
  end
  language "da" do
    sha256 arm:   "e2cab21c96574b87297c83962ef4c9a978ff0f783d89559ecd6bfbfde45b79dc",
           intel: "09ee0449a6481cbf7bec757c13d238e7107d0a99553c364db3c130c75579a96e"
    "da"
  end
  language "de" do
    sha256 arm:   "bd0ecad0a630ff5455ecd067c45542f65fd84a1a95c609b31c5f5a0e230117d0",
           intel: "6a5bc182d482411021b530f2fab3af472b6c84a1aa19ac5e7ac0c4a090f18e5e"
    "de"
  end
  language "dz" do
    sha256 arm:   "b61d45bdd517e7ed3d51989149256b36f807105961c50dc08c124a32b37b777a",
           intel: "8b2fbd8b64f0bd44786add3fc352db486de960c0655a615c9e5a9d46b411dc2a"
    "dz"
  end
  language "el" do
    sha256 arm:   "31d3cc51c0e2b8a64d7ea0adfcbb0829bf5bb8ed3d22c8c7843c76ba845c9224",
           intel: "58ed8a534e86d04932ef0f4c5d05afbf9cda6776ea93910be2976ed7e09280e3"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "992fc77027fe106c883280f3c47602d30ab94684adbaeeaab79e0a0febc613e9",
           intel: "449d4dd05d2ca19322cc4725d51315a925a53ad675c0badbb28abf1727050e87"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "f61e326b608eeab4c3024dc57a4c4f0e3682edb8b114bc19ab7ba755dfae212d",
           intel: "889131356777679e9abc35cc5c0bbef2ad3e536c58c59e247b3d3489edfd15df"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "3f2ce30c4d425be3c50f29d2896b949320553e21ac0c92cf568d2c0dbe5e2f1f",
           intel: "a44d33bb8d15d3120aa05c58d2ce1af0f90201f9560e7497707cb2eb2b031519"
    "eo"
  end
  language "es" do
    sha256 arm:   "1b88929d937938329612fa138ae3f1a6b10fa353c71636bf7d68c28c9b729e0e",
           intel: "6982c28b0610506519533047dc3a7abf48775f557a7297707be073a923d089fb"
    "es"
  end
  language "et" do
    sha256 arm:   "33d0f14a1b8714c7d45255e92a8d35805ae2d4e71264526f544d1f9ba6ad660b",
           intel: "95f6535f649c3977617ee76edb53077f578edc60f4d24c70952c9f8e7f63c10a"
    "et"
  end
  language "eu" do
    sha256 arm:   "56d90fd805816470b6eeebe4c1603054c5443463012e9a6664eaaf0f62b7f010",
           intel: "f623f1adae0c4e1a6b8c5108ad5a09d589eff904c214ccd5b1accf5448ee5a97"
    "eu"
  end
  language "fa" do
    sha256 arm:   "6af6f283e0cc8b2bac904c9c47f2a134a64cde6b1359ad813ae2c9e6d97d3b6b",
           intel: "b875222e5108cbfffd2a4d4fdee2c2c0dcfc67bc5ae2d32da7b19c4031003e9a"
    "fa"
  end
  language "fi" do
    sha256 arm:   "0ed1f867d8371812a544c7a54fd85ef25e307634887a402a4522a44b68671a56",
           intel: "7f63257cbf0408a9dfbc8ca30da541edeafc70250df9dbc47594e3096f178659"
    "fi"
  end
  language "fr" do
    sha256 arm:   "ddd69d23e26c1862cc6a1c70786e9635ab80b900d3a5c153a1d84fa0117e6e11",
           intel: "e45d94789ef28a56445dcdf4f07a93e2539c56e34032583120a37f690f586622"
    "fr"
  end
  language "fy" do
    sha256 arm:   "0e84b02a8acc3d05893fc4b647b62c36acd78200bb396a2fd238ca3d99f5f137",
           intel: "dd462b13d88a2ffdb9da233ea40b9917a71bb99e270c096d45e0a31822320b21"
    "fy"
  end
  language "ga" do
    sha256 arm:   "c24683534868679b06c1b93e543905d3d51e3b254a55ee4ac5c84ce5abcd68e5",
           intel: "512d826c2f1861b71f0f183656240121a598285c0066231fc22040a7c0f307be"
    "ga"
  end
  language "gd" do
    sha256 arm:   "8eab64cfaa23ff19d3d4100af0b53d07464a147eb0422c2c23a92b3f922dd9fe",
           intel: "f25ab3d170bdd2fe0bd6c397768847067640e8fdf4a664fc82b027a557b71ae2"
    "gd"
  end
  language "gl" do
    sha256 arm:   "dcdd91eb7be3fc504507f8cb442d1a1611ffa5aae9ed553b84661173f04fb206",
           intel: "b0409b2031c46db0420de1a0f7f44595bc0a24bf7686224b7ca0deaae4d8fb51"
    "gl"
  end
  language "gu" do
    sha256 arm:   "bb41e9930000a23786be4961c44db8915170ee704e0fafb34e905c0dd9cff85a",
           intel: "1768452a1e0b39753609f392b9cb1d77f6bac06d74fd3de3f460fb9685b6f6b1"
    "gu"
  end
  language "he" do
    sha256 arm:   "8b35859ab928ad5a179e082240f4c409ab9825289f618e4ffc1c3a9bf75a2005",
           intel: "5021b628f3ce4cb2f8f140aecfe3cef79e3be79264b35ba7800a43678ba0c39a"
    "he"
  end
  language "hi" do
    sha256 arm:   "7dd63339234e7f95bab6c1bf687d73cf82e7c8f14c521395f472e85dfa9ec8cd",
           intel: "f6f2e5b7fa8684a8cceb4d75113855a1949dc7947939902ab8c3c9fa95cc7465"
    "hi"
  end
  language "hr" do
    sha256 arm:   "4f453a27aaefccf62889e391445cc92a39f64fd9f59926dba14f0e0744f2add5",
           intel: "c2193f9e1b797d8064bcdda44aa0ea2c16d42e3719aeff1ed8b710871f0e48bc"
    "hr"
  end
  language "hu" do
    sha256 arm:   "82afa2166aff5d360a8a9958f1f8c8d8caf53ed9564e14cb2fdc1d463153ceb2",
           intel: "cbcdc55bc64c9621914e49731ded703b36bdba882dccb4097c49ceaa32fa3ea5"
    "hu"
  end
  language "id" do
    sha256 arm:   "a49d951b588cfc4e43e8a54db3cd29fd8ded5b94d03e7d56b1ae1cf9affed61b",
           intel: "e9a91d7b84c0bc2ce41437d744248f83019aebb254bc6e5ca48a0aed49a0d7a3"
    "id"
  end
  language "is" do
    sha256 arm:   "bc13b1cc51667ecbc1ab3067b8857c591887f238c6712524c256933a62db739a",
           intel: "298b88362d8ad68d19f700b4478a9e48bed2cb657bf1bfa15d7a7978a615ccff"
    "is"
  end
  language "it" do
    sha256 arm:   "ca288ddab392ccd6b52cc858167a92aa17b493d5ee20a9a5ba78e50451b7aaa3",
           intel: "807d2d90f4eff062168f72cf7fd92c76588ce7047a712117f0c5207811a2c25d"
    "it"
  end
  language "ja" do
    sha256 arm:   "87026255bf1b162c4adfa008bc1b5fa6a7bdadc213a29a65f909e9bc182906c4",
           intel: "d65e4196f29d7250169ce607063509db16472d75cd7e83cf7a6d9a4d51033d71"
    "ja"
  end
  language "ka" do
    sha256 arm:   "1dc7f704a63cb73e0cceb01f9b063c9024da00b890e85c0a7e61a38516c2d2f7",
           intel: "fbe90e57c73cff8c035451e22e6fde3be4bbe8247a58f3e3b20dfb3e71a3a4de"
    "ka"
  end
  language "kk" do
    sha256 arm:   "bcc20f790e96c4603f13b207b1b2b572a0d0f4098d07383c2f0920f0b7ea6042",
           intel: "c806b5713dc93683b06bd42051971d2ce7c6fa4c8044398990c99c1c03cd7485"
    "kk"
  end
  language "km" do
    sha256 arm:   "761c29b0861a4f3fccdf5ae742edf28a982295e5f3983cc5574741117d37bbf0",
           intel: "2c1e28e7a051c42777ebb620914f7e1c70e0753129ab2abe8e1508a845a412ac"
    "km"
  end
  language "kn" do
    sha256 arm:   "9bb167bc22ac8ee36109b9ee48a6510ef8f6912fa88609f056d1c64be8ccad71",
           intel: "7d980795331b24b57a55d44c3f30ddd6d0c95802d928ab180714f1e02ffd9bcd"
    "kn"
  end
  language "ko" do
    sha256 arm:   "ff2c6723117af382a7c7c03ee67a3e6a8472f46c6a921c27594a779dec8ae0f1",
           intel: "6b326173f046eca644434281c1c1564792e0f71e0c6a1648bb40ee57d3b4729e"
    "ko"
  end
  language "ks" do
    sha256 arm:   "eea99dae3d0350ece1e0e8305978a21a42aa2ac4473551d704f4a79739b1b0c9",
           intel: "8fbf619f231a7bd38cff489a66305c8301e8044fa9bde6c3a3f8d54ba9a8ad4e"
    "ks"
  end
  language "lb" do
    sha256 arm:   "aace30d642fc8e78fd21b0ed6a93b056c9b5ad7f3865e27ce71323485529bd4d",
           intel: "b5423d0602b1f71d5caa4df6b8c9e9448e1c3d8c53e7794e327e6fde0588182c"
    "lb"
  end
  language "lo" do
    sha256 arm:   "bf44550699064890805d6cedf229bd50fb437d7ab0c66c106fb49875f48807f7",
           intel: "7ce66fa007a97065238422f50dc4354d98384f959512dc7a15938cf1e04c8715"
    "lo"
  end
  language "lt" do
    sha256 arm:   "771896a6a6da03e438cc4d1f447cb9ddaaac8fac7bb962a09d4d158cb8edcbcb",
           intel: "afcc0173f109af63d14137db80191c7764bbafee225385b12df7917b37105101"
    "lt"
  end
  language "lv" do
    sha256 arm:   "63ae7552b065091e639d1cb8329c56dc69db8a4a4a18c82654bf833f488b2527",
           intel: "57a4b276f46f7614c625d549b104259aa2af5006bbee80a2494a98d0d31ff900"
    "lv"
  end
  language "mk" do
    sha256 arm:   "b62d0c9001c260632b8df37071160f32f60db71a45d1b29a923c4ecdda7a505a",
           intel: "142873548769a8ba94688e5129270f90ea1e05094fb1006da3c826a5b2d524f4"
    "mk"
  end
  language "ml" do
    sha256 arm:   "d312e61d2afd98762bfd1af49336cd208818eaedcdfcb4256cd1ba17882b0d63",
           intel: "87200458a2c25854a0026a630b28119fe6f56eb9274b06a517b92d2ae6b45341"
    "ml"
  end
  language "mn" do
    sha256 arm:   "34c85a5c6cf1d687425c98a92b1ae52f36d0bc44a2ce72b9f01e723f1838ff01",
           intel: "30f91b9df7183ca2bf858b8db2b0eb5cae7f0010c51e52f2084999a6de6a058d"
    "mn"
  end
  language "mr" do
    sha256 arm:   "70eeac7bd1a2a797d8f4135a336dc420cedb78743e6b6be04b90851c96c798ed",
           intel: "f51adc57ce7188f2a6dc8808f320d8dba34a21de31682af81c0ed0ad951f3882"
    "mr"
  end
  language "my" do
    sha256 arm:   "c1baf7e226d35f4aa64873e884fee4d14e48924778dc4eb0aaa6dff927e0f51b",
           intel: "3f54cf6112b4dc4516f359d3663e27e151ad6dec2970a0cbf811c9345c97a010"
    "my"
  end
  language "nb" do
    sha256 arm:   "070cdefcc3a7bee564c2a823e0b43ca0b09b60553b1bc1714012f50f0ab6705b",
           intel: "97a03f8af24b82473a8527f9df2cd7ef9fc96ac760f911db3f029d071a794619"
    "nb"
  end
  language "ne" do
    sha256 arm:   "ba4b856163b621ac0949aa2620b5f23a22d062406aa771115864c0ba341f930c",
           intel: "977acbe690122a00ac25675c7766466ea1b50b41e45d66eb3c1e0e238bc9ee46"
    "ne"
  end
  language "nl" do
    sha256 arm:   "f956077c4dc0b6c92d28ac62accafcb1175ee392c2d086be536359d0c82bfcf9",
           intel: "e8dd2ef7f552e53475a91c582ad3745143288dd46df4cd51bd296ee4e2505a7b"
    "nl"
  end
  language "nn" do
    sha256 arm:   "c39e508a1dcf5adaa0b733ce1bcb2c03e0a7bbff98f68ebac374c4ece42925bc",
           intel: "9af7682d182a0632511c9e1508dd8d818d02090f5e87b86893f9f0e3681d7a34"
    "nn"
  end
  language "nr" do
    sha256 arm:   "81536190e2afd0c1e0c1ad648a93eeda6b56dfede0721fcd263d75692c42012e",
           intel: "6b4ba5725d95a0957bc634aec8e0cb0f745105ad961b123fb9dcdcaa73d56d44"
    "nr"
  end
  language "oc" do
    sha256 arm:   "fdfa06d88477bf0509ab2eefb1fa5c889981a7df576fa3f627af6f967574c00d",
           intel: "2f748fb86e6efdc0ed4664c014f4417dd33e7487efc74afdc5e17783b2818f64"
    "oc"
  end
  language "om" do
    sha256 arm:   "f6cc886b90af4a20c9a979c099ccb71282e1dc3ce8bc024be46ded5fb8ef373f",
           intel: "9c154c912e641ae446eb9aa2902f7c9f1a16c44d365ab2019ab09b9af802ebdf"
    "om"
  end
  language "or" do
    sha256 arm:   "5fdf831863096cb20b292d6146b337ced3be93bab84b2a9ef69b0121b936ad15",
           intel: "c973c9c6524c86cf0df5ddd64e894a439ee590e7549463e124f5b4e66ba9f993"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "d9fd2fa331901ecf2d12a67ec8d8db7166bde3f686cfaa2625929e8a5676976b",
           intel: "6a242a7d0340bbff11c8b8c42a8efd948d5dbe40b267ae52bc641264195c48ad"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "5e6690ec7fbaac7439568aed5427c60aa6351f0f26ebb1cb236fd61448097603",
           intel: "31ed107c6e925332bae2bd0ade578e44961500080a53d64aba1037fedd4dfa73"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "baa43b164177d5b7df7a781e6e8dc76c27b503d6a420e4054a719a8bc0b95fcc",
           intel: "a93d6fb0f2956a81b845af648797227fe3c5632ca9d64b1262c5eed3fe82b0b5"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "f367f28a0a0c67a1ed34c5e65f2ac0d7b64bc1207ff2ae714bb448c251b9a79b",
           intel: "2d30f2c6490a1a9528487f4babeb202834914445f22340c1852fb035e6348090"
    "pt"
  end
  language "ro" do
    sha256 arm:   "98654b3ae4927b6c3ced5ab8d866b44e5ac9df1f87b20af35c56525725f6d6e2",
           intel: "e192e13194fbaebcb03c1a044aadab07d6e564c9f11587dede0fac4b2c43be76"
    "ro"
  end
  language "ru" do
    sha256 arm:   "1b7b63942f823c9737f9506b310a50f7c0b5b17d791e6eca7b0ee5c355f88258",
           intel: "5bbe000667056cd47d9899c4ade7a462dfe89953c8f7a19b5f2f097982af74b6"
    "ru"
  end
  language "rw" do
    sha256 arm:   "cdbeb0cddec20b8ef01c81b07780d7cb30042496516278a7c049041c3de1265f",
           intel: "f7868d7a57b6048fc413d43a3386380385402103ca93b6eb9953cc2c9d8d32b6"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "42540d52703d469f5d0ccd17b9c9f0bce1c6a607eca20172af78c08226cc9380",
           intel: "c1903b98ec1a9f8041a910b3411d9d0899f9e9fde707a23a288d80a4748c72ff"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "0ebaeb53688b3cb75e443bdd96e3585cf0005a0c203bcbe2886c03bc7f133c2d",
           intel: "1c18f19f639e61509fb25db80dade41fe2094e0ac63033f318555252b06d107a"
    "sd"
  end
  language "si" do
    sha256 arm:   "869fa5a819e502858977339f7c39343ad9c92d62220bd65cf4670ab297e044cf",
           intel: "8aba8ee83aeab6e81384ccf1bf393b195d576381464e5fd85842b8daf85967c4"
    "si"
  end
  language "sk" do
    sha256 arm:   "202280e42a1606668af633060ccf76bd8fdf3d57fcaf696a1cb0cede03891737",
           intel: "a003a8b690c2481ea13f97b2c0ff0cddd635f46bdc082009bd3e76dfd82156fa"
    "sk"
  end
  language "sl" do
    sha256 arm:   "867f4a28ba14147adaf007db08cf63c022129b298c051977577211475971eaad",
           intel: "069969667cff61cfcfea4ca614e557a1b442e6fb854d113c83fa29e3021ec656"
    "sl"
  end
  language "sq" do
    sha256 arm:   "47b4b4c48978d8ed4d4868d6f1650f4f3c373d7fb41bc5523d00900254c29050",
           intel: "54cf4fbe44974c8dcdbfa439a9db3b8a55bb01bccb2863681e9f39ef388de9f6"
    "sq"
  end
  language "sr" do
    sha256 arm:   "9e44bec084ef81865830811523b4a8fc5c38cd9ac4dd25d7730da34bd3521691",
           intel: "17c06388fdbffc1230fcbc86141913a46ae124615ca7ee5c781ad5bb66d84cc3"
    "sr"
  end
  language "ss" do
    sha256 arm:   "5ef55e02aa43b2dc7934ae7a9f1fb263f60aa04ae13a832c53ba52072676b38f",
           intel: "a29d853e5bdd4a33292520a1f5922504a05c77bcf1d02e9cf18a687991be1c03"
    "ss"
  end
  language "st" do
    sha256 arm:   "b06cb5036d3328e1a5ddebf6ff77bb78431854034e22365a13f80281c191d878",
           intel: "87d91ea84ffc984df44ce3c3a80e41ad18dfeee80409b8def4c076be1dd357a4"
    "st"
  end
  language "sv" do
    sha256 arm:   "ab7b85f5a7b137ef1c53c753d535c4d979b415100340dd4eeabd1d3db9dc294d",
           intel: "19b3ceaed436259350c5fdc41b54d16cd91763daea4e9a3f5e6d95ac8cfe486a"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "63e7628261a1489ce78b36a18537da86c1fc712349fe3a212544d1519671f581",
           intel: "12b8d370ff4d1d46af2b3cfb73dba010baf965e8bdedcb9d2eaf120555fc3f23"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "2cb0ea2b991d38bf0463b531947a3e138eade3ea3b8e84ca1e899f8b03b981f1",
           intel: "47c9280060149690a1b3101325e6e2b844c3dfd926c512cebcee213305e95b91"
    "ta"
  end
  language "te" do
    sha256 arm:   "16dcaf8021260edf1818ba03a5b554455c7ba040a5f5c0cf2da60940cefebad6",
           intel: "a9365189e5c64f0b1c24d153daa342238cd3a7a8e68a468168aa5c0c62338f79"
    "te"
  end
  language "tg" do
    sha256 arm:   "d7b0539f0fc6e4520b20e296b7f02bbc07a4420371fe014f2c82eccab9c6e9a7",
           intel: "489b54b34ef84433393d5cc78385872566b770c809e83477393a8e096f412c26"
    "tg"
  end
  language "th" do
    sha256 arm:   "c58beb7d2370d1b8b1e70b3544a4c1b79766f7cb615749f64e05ff392eab7f1b",
           intel: "fb238082c60a786a5be5dfea183f791b1d0b7a1385bf19cd4c81dbd57ae637d5"
    "th"
  end
  language "tn" do
    sha256 arm:   "487133e03a8c0c5ff0e8f8a752ade23a3c71799129d21959446d3636ce8c05c4",
           intel: "ecdcc46b3a4f08533f25a239d237c255db48ecfc66b95685becbce24a5b0af1a"
    "tn"
  end
  language "tr" do
    sha256 arm:   "694222833494690e55497b9a7827bf231f1dde45519af0fb31e3548a388e8bef",
           intel: "29de8c0773d65f75231073d57fe3feb3e715d245bd9ba10eb516ea7b061c3a5c"
    "tr"
  end
  language "ts" do
    sha256 arm:   "001cfbcb3c10f93c36498ac83abd11fbbee6cd58c5a022f13c727b91047b92a9",
           intel: "11aa920bbe560bc5e68fabc6ac1e0223be5eb977f162c8ea9b258edcea4e2622"
    "ts"
  end
  language "tt" do
    sha256 arm:   "2c98b49a4cc3b34e7034c41246b1faba58dfc23694063010c02b6595367949e9",
           intel: "87bc8c64942da762e83a45a592244e9e6d02ff01f1068d22ff7c3f7830d13d43"
    "tt"
  end
  language "ug" do
    sha256 arm:   "2b87c21828d6050b19bff4a6f9569d7652487e52acbc80bac98d3b2bc2017ff2",
           intel: "8d49b7698391bc21aee308e6509a061a115e38c9c58e5f8222beaeda3722159c"
    "ug"
  end
  language "uk" do
    sha256 arm:   "9e85e266ae342b23ec9cd8a014cc3fff8487d680e85d0b5d6b5483e31ce1a91e",
           intel: "9ee23c016edf6699dbe3ff8995ee62122e44970cc200956379272d0edd4a111d"
    "uk"
  end
  language "uz" do
    sha256 arm:   "7b7e96000a3f686f012427df94946ce8501ee6cc4160964662f0197c8bd9f238",
           intel: "6dd2847083d7b72c663d06d63cd5e1e7e1a812a5353eac3e844d69d4badd999a"
    "uz"
  end
  language "ve" do
    sha256 arm:   "37ae4565b209865eec95c08300d2a07b233a12ef85e9b35e7bbc0f11b49a2d15",
           intel: "2c6961626a67f2f95699d38febfa8f6397bb4c2d4595933311c02c9b1a710634"
    "ve"
  end
  language "vi" do
    sha256 arm:   "02fe62437786adf489bc46fc45ab52461f06116b5e4e96242f308a6a8b5c4c8f",
           intel: "698940a6c36bf3219f291cba7b785a0932cff19bb6a945bd52e1b26aea28f7eb"
    "vi"
  end
  language "xh" do
    sha256 arm:   "b248e01208f796cf27a81aeded657c6fb34d03ef81d8ad454e8d4bf632a2f5da",
           intel: "22f8b06c0321276840462de2aa284f555eb274befc3a99d211569b14f4cd1647"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "fe2e55298eeedeeb731497c9615fe67fc877410c007190b96161d88fa9d96e6d",
           intel: "1287f3a9717df21cdbf41eb1925b72504f1d6f84bc344960235a457b280900f8"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "813ea24696448a55f4fc091b50d32dc041c3f40fd2e6a407d12d93145aa44a77",
           intel: "a37a255c2d8135e850a4648ffec78c3902ddbd2078f7db63e73b8cce31e5a2fa"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "bd8cb5e967bf86b541c203611a9ae30af499fa79a9f20a4a5b9d5bd5a82586bd",
           intel: "818323bac9430fdec6f8e44610d084d1f5ccb496ae6a4ad33b6aa6855bb631c5"
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
  uninstall delete: ["#{staged_path}/#{token}", "#{staged_path}/SilentInstall.sh"]

  # No zap stanza required

  caveats <<~EOS
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
