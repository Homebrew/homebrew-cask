cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.2.5"

  language "af" do
    sha256 arm:   "60ac9be75b63549e0d25dbd0cde190f72c8858368383253e52e1c90d83a07922",
           intel: "40077bf26d7abbf253eea00db8eb3fe7b6f1311f597ab5117153ee0966298560"
    "af"
  end
  language "am" do
    sha256 arm:   "e82bd72a2bbf4022cb2057f357ac55968136e0fa6f262da27ca15bf281d421a7",
           intel: "c5b74a5307ecf7f432e27743e5b2dee3e20c3b2a9531e3a4f9b701b2ba50413d"
    "am"
  end
  language "ar" do
    sha256 arm:   "9d6d4bfc8fe167256d31484b902a70733c22db3b78c0d6b335c7605b391abdbc",
           intel: "bef13afdda026bb7b81af2a4fb411c069220bb4dc625f7ab3d6e0234bfac80f8"
    "ar"
  end
  language "as" do
    sha256 arm:   "6fd18f3db64c8df811a700e9a0cec8dec83fb192449bb15e23bfeefbfe89a4cb",
           intel: "5b77146d7bec51cb96c2dc6c5d353587b03ba27a7baecd445186a15a27b56370"
    "as"
  end
  language "be" do
    sha256 arm:   "de16213ea42f7c831182f782a0da122afc14b4aed2e3aa8e5483f9f6368e76e6",
           intel: "0e5eed76264c6ba852c71e637360bf82b738f704e0afe2252e8cacd3a509849b"
    "be"
  end
  language "bg" do
    sha256 arm:   "01d754fee5d07762e080d786096e8d811262b421b5254b46525100a32080c787",
           intel: "f20db42aacca3438842fe6d753c3aac0dc39494c1c188eca4836c92560e5ca92"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "28025bd74d93e026c855c40ed0fcc5c8c89cf5e595fd6615db1808afba0c53f0",
           intel: "6c7b818b22e0d1a8918771abdf89e4049d7e21aea819766eb7a1e6713afb9dec"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "bf2fefd084980f800fec185f590a65249aed239b94e12fc9135ed4383dc5279e",
           intel: "5eec67de6ca8051f1651a0c936e3b36f4b69dadde907007a90d7c53c61ae571b"
    "bn"
  end
  language "bo" do
    sha256 arm:   "f2888782cc6aadbd59c19a4d9791953ca5f53383286f7fde4db8b4f68bb70156",
           intel: "98772cfaea0c82b1f9273d4a24448a41b03aeb774c0fb8cb50cecd2dbe5d4007"
    "bo"
  end
  language "br" do
    sha256 arm:   "6a90378854663b2230caaef5b3ca702d74b2645ff02821811f2cd3b2a7289dff",
           intel: "e5376f2ef98e5d319a8af710199928dda7d4a9a8f672ee6ce485f206d63d976a"
    "br"
  end
  language "bs" do
    sha256 arm:   "abe1912037c348b2f8eecdd5a238e7cdaa72e8ce92b8fade2869961df0030f6e",
           intel: "0e094abc22e75829a4c7c772e6fbc41eb5abd71572e1956c29c555a8fa0b76d9"
    "bs"
  end
  language "ca" do
    sha256 arm:   "191aa0bc646b8e56b4e4fe87f27e7df2ff096e90275b19ee6df57b7e9ff755ca",
           intel: "649999364ba986365d38dd2fd482567d8d34a7903727cc6ef4e2edd55cac17a5"
    "ca"
  end
  language "cs" do
    sha256 arm:   "d8994db6d7d5953c17c825d6a68d9ee258348313695241d9dd28a074405e9f49",
           intel: "ac5f41dff9632e0837ad3fddfd42746d5a1af9797babf98b6bef2ac3ee788552"
    "cs"
  end
  language "cy" do
    sha256 arm:   "f7b79eef8943f91f24621812aac30259184ab6a077b03bf7ee9ecdc3cf30080d",
           intel: "ff37288c5ce99ccdf57646c568726e3ef0cf57aa365fd4ac58e37972b6c52963"
    "cy"
  end
  language "da" do
    sha256 arm:   "19b0f839ad2bfb59737986fc9c021ad7003489294f7e810de130640eb49a53a6",
           intel: "19e3f6d89ec49ff79ca1d980454296f5bac763dc1664ce811c1ed2f10c8969f1"
    "da"
  end
  language "de" do
    sha256 arm:   "caee8bf0cf8c6c82a41cf033ff79c8ce6e6e95ab012d412580c175e70ea42df8",
           intel: "f66b90437f6e392a92e7dc2cfdebce481dc2412c95638aa421f2bdfc8b1a69d6"
    "de"
  end
  language "dz" do
    sha256 arm:   "03f4c4947e9fceaec707a76409a0ef82ea7c4b9c4ed20a5c5940b58aa06798ff",
           intel: "92f2ebb77d125623c28c15ab5b30c777aef467e5f9c6e5eec25ae50ce6b4343c"
    "dz"
  end
  language "el" do
    sha256 arm:   "26f20e7ed329e4abab5a1cc7262d6176ce140cdb697ee837ed07d523b357adbb",
           intel: "5b2dc5feb4ae0e1fc79f2ee3ef64d8636083fdcf0b47072feb14c637438dde10"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "875dad76e792a81495fa10497647d85545b1a7d74aca4fc9aad240065c31b30d",
           intel: "8e1147df7f3e53078ac4f23c0c71fa1dcfaf5b755d195867018e693276554376"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "c981660cb75ab3f8c1c1908a3bfa30aa26ba9cb20870eb219058108fc16fb09d",
           intel: "01daba12cf0bee6ecc26b96f9685f775841fde62eb256aa89eb1adb47e264d30"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "42aaacbb5dad249c3058490ef61ece26e7433ea031011c359c0d0ccdec293e45",
           intel: "64ea89fbe9631fb8b30e41280303713998e84d6ca6e2fb12b8cfe6892c205039"
    "eo"
  end
  language "es" do
    sha256 arm:   "97b4abd789542a7131a445b2befdbd6f27d7a2f13a59a895d2998d99c5cc257c",
           intel: "e187ea7913b237603732eec1a70b7bbb93e89a10ed341f1f0f73fee1450bab2c"
    "es"
  end
  language "et" do
    sha256 arm:   "0aa3f4e8ec6c6e652910a276015e1cfc814eff3b16f1801b7794a4ccb824f5cf",
           intel: "dec131af3a80d8a83dba9c96d257086e992a1110ff17578e8e557f76af76d107"
    "et"
  end
  language "eu" do
    sha256 arm:   "d4a791eeafa2159ed488077bc1b155a5a9e86c14737cdceec7bcbc7e9bd61767",
           intel: "dc90dacf7424bff9321e8a8beadc3d3323c8dd3d2283bdb18078fdcbf37de7ce"
    "eu"
  end
  language "fa" do
    sha256 arm:   "91942d097cde752af06950855a07257a1b3abf8bc1b9009d1f77bd720110d9a3",
           intel: "ba2b7f637f6180798712366b9fb84dfc84f88ab58b248c07cafacf612c76de2e"
    "fa"
  end
  language "fi" do
    sha256 arm:   "6128dff16fba08b11a315aff35ff2ba99252a76f801a5346c00a5e683b22565c",
           intel: "c611708836e4f31c98718681269ad2e149f34c31c1687cffa26cf4647dc56e9f"
    "fi"
  end
  language "fr" do
    sha256 arm:   "c803b48fdc711818b8a602fdb68241e21cdd6790744f62c25fcfde68587c7b49",
           intel: "db2022379c8b1d9caf5b48223a70e548847ac93de55be982d5ec042f093ab01b"
    "fr"
  end
  language "fy" do
    sha256 arm:   "f56dc1e238608284346deb05c98029dfa0d35de8643bc2ee486df13b5a414af6",
           intel: "3c11a6e7133b87771bb51a6b2ffcbeadfa2770b4fee8162750a6bb50e83cad52"
    "fy"
  end
  language "ga" do
    sha256 arm:   "8a599de70f1fbc735a2a154274133ffc1ec54c8d9555688f4b53f70ca7ac1069",
           intel: "bfbc019b5ed5dd814b8392185b0d1ae35cff9498c97e2476a9d886bddb87a102"
    "ga"
  end
  language "gd" do
    sha256 arm:   "707663350dc0cc4c89391940d4a3d832698ba05d2843751eb111e745206a3170",
           intel: "ef86868f1428c3a8957f8011205cee65a701acc7a45cb2810ff777815d021b96"
    "gd"
  end
  language "gl" do
    sha256 arm:   "8f682152d007af370713637ac20ddb7c5912e44e1f62e13e6fac7c9988cf3704",
           intel: "1cf23980a7348f5d1a7720f5fe4dac18fa967c54bdbbc8aea8e0568dccff5736"
    "gl"
  end
  language "gu" do
    sha256 arm:   "13aeebade3a6a46af9449c837d432f54e595be939e1dbfa8521bed0fc10b9019",
           intel: "f61fb943ad81e56b93c6a7d04e7eaafa968e36d30731836754ba9264fe1d6da2"
    "gu"
  end
  language "he" do
    sha256 arm:   "a602324ba65db2c6c0d19b7b438975c866c176b45bc74d83fadc7a821f67e172",
           intel: "81bee776784a61fe7b451592d34692539cd4f28303e8f4de77fe79c91a17993d"
    "he"
  end
  language "hi" do
    sha256 arm:   "7b2b548a9c88c6a56fbd79b3d84ad90bb6da788f5791d235dbab4dd532f870a5",
           intel: "de49a46112179cb0f5b9a9c33fcfb9904f4936a4bcc7b5b20efbec5d4f7309ee"
    "hi"
  end
  language "hr" do
    sha256 arm:   "22a5e941e398ac0c22cc863e763d35f13e39361eb987eda95497f3457d6f4681",
           intel: "7aa7b02f51a8d9aeaf2ace73deea2e68d1874d31fbbb0a3cc9f14dd123b9fd97"
    "hr"
  end
  language "hu" do
    sha256 arm:   "179f6f286d17e820bd69ce00572f5dd7c9de6d9f03252a854082f6ede9a57f86",
           intel: "4de8d072d9ddff158092fb48ca6759a5f637a9c1484d78bdae5644c0b448bcef"
    "hu"
  end
  language "id" do
    sha256 arm:   "c65dc8afa2af2916359f91ba6c5d9ad77cb65a019e2601c4387746f04cbc2f26",
           intel: "d6336a0fdad59c78d626410f294c41fff50ab6292b524858666bf37102cd4ee1"
    "id"
  end
  language "is" do
    sha256 arm:   "b55c39c9bd128048a7f28fa628b417387d92f509e8701df78a7a3fe4b8fec938",
           intel: "07fbcd170f5ca953bd67a615c2c82a4f6aef917f1f8b9e2c426123d2231479ad"
    "is"
  end
  language "it" do
    sha256 arm:   "125f1c265f8912f6429126d6852fb48d0b9baf7fbc10e253d280bc249a34b9f0",
           intel: "4bbfeaab65783676d5e9931cbf2c60246fe24556f3da64fbf2c15ece215e40fa"
    "it"
  end
  language "ja" do
    sha256 arm:   "c84526abe3fe18e802ce4b038315f096f5abe84b68f21fd9a8e66f52081699c9",
           intel: "dd1660bc8234d59f07fc51f83ac138c361988d06f2fcd6ac9fe5131873792373"
    "ja"
  end
  language "ka" do
    sha256 arm:   "1d968c7371f8404299a72e386d22cfb23d7b5b230c5b4e5f2c78a5ab29559c7b",
           intel: "5e31d1257f2db7e3c4d1dd55270320c01a734ed3313193cf84a2671a98e8ae77"
    "ka"
  end
  language "kk" do
    sha256 arm:   "057924a8a42b40e244fc7232cc6e5a62fd82a7295df5fd273a7ceb507de052f6",
           intel: "a9062d0f58b3988488be8a92ce5fc2482d27fb678b32f1c41418910be23ef71c"
    "kk"
  end
  language "km" do
    sha256 arm:   "eb1992430b9c449a42414c16872a6d2b90cd213a9c18b7fd30b6d414cb79d156",
           intel: "35eb3ef815ee63b6c1d80a85549025d1bf2c4b6a88470515b61e389946456a8d"
    "km"
  end
  language "kn" do
    sha256 arm:   "eff8edb7f6bc5b92368fd61603148e93b8a9377b124f5c0e3021b54e3a22288d",
           intel: "6130acbacd096f324737c460a6092fc659352ad18e5fc77b5bc6eddafa1e0136"
    "kn"
  end
  language "ko" do
    sha256 arm:   "81c8c4d5f78ffa5a6c6b83863b283d15827466bc9ed046ae05683a5d9914e2b2",
           intel: "540b517001f55d9758181d5922ae3816f9ad8c3497516407341ccfa5aa692abc"
    "ko"
  end
  language "ks" do
    sha256 arm:   "3740bd87f3e3e1a516fd43d9c9e4e8ab59fd177764ade34f723a9a2b4c9e89ec",
           intel: "e9bb7d5df0258710716b7f4497281e0773a8d82bb40e809d9bde55b2331bd2b0"
    "ks"
  end
  language "lb" do
    sha256 arm:   "7038cacf62b9bfff1194d59ebd2202ccabeacfb4b8edd1e7b88109948532a48e",
           intel: "c3dace469e4b5c5e5703135d96f556433160d59936d68acafcc1e89d045beb3b"
    "lb"
  end
  language "lo" do
    sha256 arm:   "99f69574d287cc456bac75d9436b748501df8654b1b501d0ae1545f0d098b6aa",
           intel: "d255819517cf90a41d5e4f7d7108d28046cdddf64d05f1e2f56fb35140aaab62"
    "lo"
  end
  language "lt" do
    sha256 arm:   "0d279358799cfaaafcbe2f850f4813d35780cb7287e7bab8c537b54acf82f8ac",
           intel: "d03f9123970450d5524f6b90fefe267e5a2f2a7efb0b4af5750d0d0dbd89d50f"
    "lt"
  end
  language "lv" do
    sha256 arm:   "d3d25e11240e2c4c8ebb1971b48e46437d8904f2b9064420704325b94db9e707",
           intel: "cea68c444d6f3704addc1018bcd633ce8cd958ee6e74e48525ca8db810a95a32"
    "lv"
  end
  language "mk" do
    sha256 arm:   "097aade0a5e37c0da7eb3aee755236dfc24271ea14b621555d9a05384baab132",
           intel: "74ea23df6dd24600c87d24046c4764a2eedbc1d1550192c6f1771c6b97e3c048"
    "mk"
  end
  language "ml" do
    sha256 arm:   "201cddde77dc0d9d92825040175dce102fefa446fe77a2cc90f2b329bc19acb9",
           intel: "e489b8d94927616c6e0eed066c4380acfebed8983e395ef01dffc529bf96b94a"
    "ml"
  end
  language "mn" do
    sha256 arm:   "1c4e383d3e3834703b63e08a770ef587083e7c28013ca5d8db646ece428a25a7",
           intel: "d9b2e06f20dd69b26ec1208cfc17147c658ab6eff6c42766e7c00171ddb5f7ac"
    "mn"
  end
  language "mr" do
    sha256 arm:   "d2e33046f079d300113e9e48abd978946bd72325921c518d04ef420ceafdb120",
           intel: "716f44b692cd893dd574517ca5ba774e5975b92a30bfbc4d4028d52f7b2dec27"
    "mr"
  end
  language "my" do
    sha256 arm:   "08a482f5576067bc5976491c1a6bdd82f56033b335b70ed842f3a1f5c90ad9fa",
           intel: "0e9fd8984f1ce9af1b12d0601679b3d61f5a9ba46436de1282f74beebb4be33c"
    "my"
  end
  language "nb" do
    sha256 arm:   "8615e7444e8b1f460229f683851e51ff87c6e638e390a54a873b92419bfd1bc8",
           intel: "5f7921f8318f0de9e99f218089356932b6d22ccf1370ef9e21b35e5f62875433"
    "nb"
  end
  language "ne" do
    sha256 arm:   "92eea7259393eda69b1b4873b92f5c9b7d68610c6feb9ddd05dc92a8a67080da",
           intel: "091710b4e9bd5c7f56e109d7ea714035921227c80a043dba6bf12be27623a7ab"
    "ne"
  end
  language "nl" do
    sha256 arm:   "a7d4b15a3eb776932e797a1daa808d39463b1bc1c382c8e4c409c9952e7a2af7",
           intel: "bb94d7f0199ccaabd2088e1da5e8afefec2d92d8eff4ca7b2b9a418697b1261c"
    "nl"
  end
  language "nn" do
    sha256 arm:   "5bf1feb51d92168afd36fbdad0468dc73da92ed59796cb99238a73ac55a64394",
           intel: "90979d2627856d8a2079ef17d983059794effe188190642ba8d0efec72e20021"
    "nn"
  end
  language "nr" do
    sha256 arm:   "37d73810dd18a9052fb439060131bd55399f1f640031ba3f72ba949e974860cb",
           intel: "b7fdfba86d31588af916e12665395a46f272b054cf2942eee5c4ceba6de1a2f2"
    "nr"
  end
  language "oc" do
    sha256 arm:   "6e8e176196bcff970cab9faa4474c471f6cf251e29421d7a7100ee99bc198542",
           intel: "b4fe71eb3bc18cf20728157effce20f509d5a1a7c46b76ff6a439b67ae4cbda7"
    "oc"
  end
  language "om" do
    sha256 arm:   "2d9a4be759899a51ddd9bf1cc8c3858bec3b2f76cb074a014e4053614170a356",
           intel: "05a4411401fc2c6fbc2e829c33f084a71e3c1d17e4308bf92e548fef7e4ebcc2"
    "om"
  end
  language "or" do
    sha256 arm:   "053bc6ee802748b02b668ffdb048fb893f899a974e0352664287d59ca402481f",
           intel: "ff2156ec40230a7ca0c22c4ae859c868f2e7b3aa55ac3fa8e81cf88496375dda"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "bea5790f08942cf3a2dac32cb911ff9da76c19935ae86fceb9c94b488c707166",
           intel: "b927153a8684380e592a66582d6088aab4d3c871ab1c900c941e5ad8ef651227"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "3dd2d3747f1ccfeee90f06e061b6a2e742193ccd4855d2dcdef1e8d20dae6521",
           intel: "aeedb3f29f702fe7ad60bfb6ff3fbffdb9d1a630c9e20b1c5cbcbcbeb9f44004"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "2a1613a4fdc9ce789226f4d7a63e40b8be7b68dc235d87896353156615622db5",
           intel: "b978f27da5c40b69c313bfd73a6311a3d10afa691d4e61c7368236b7d4b46905"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "0c23180807249b8f4b85fbaa5b0e8a03707a6bae8f921cc260a4683925817e9f",
           intel: "689a79a5899065266ce2a0764dfdd7a1faeca7f84112b4e52759c90e2308433b"
    "pt"
  end
  language "ro" do
    sha256 arm:   "8426a76e1c597b8a7d63ae2fb183b408c79869bd572e55a2570c1e4dd2bd1ddb",
           intel: "bb88ac83d94fbfec4ef5bdd9562eeeeb5408d18e116bdaa6f35e877c0d36e8c1"
    "ro"
  end
  language "ru" do
    sha256 arm:   "62998fb7878d5ad79932a54a45bac1c67c160a3c92302f39e954f196001f2a41",
           intel: "f67a0237c230d880ae97104cf7b3105b6dd18a79504deabc3d137985f18b937e"
    "ru"
  end
  language "rw" do
    sha256 arm:   "3d1903cc78797b295c36092de4e17c1774f8b0b87d7515c02a0ae900bf7130b9",
           intel: "3dfd80a54e3ccfc941166517eac13e4822b2224e2f3e65752a04d9cd9d4baf9f"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "147519c40ada12949d62e9fc559aac907191a8f65073448a3ce9b0c20045d058",
           intel: "9b15d289bba5abf093edfe89b0345f87b4d7720ae4e2f40db01ebf8cb3c050d2"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "8820ff178fbb44248c0a1cc338fc9c701770aa6cb0faf1c5c6ecae982534ff5e",
           intel: "e62097e74ecf2ca386b2ff47873dfc7007fbb9340ae5d2ae670887dfb65163ce"
    "sd"
  end
  language "si" do
    sha256 arm:   "787d0d5e00eff31a8448c12ad51689160d570224dd66bf5d3500ca10610d0bd3",
           intel: "82075b28829ffd16a67b64152b893d0344b6a458ad974fcb64db2bb48e6989d5"
    "si"
  end
  language "sk" do
    sha256 arm:   "ff477f31aab70e7cfd21afd650b76f83450bc985d4ac66c321b25619a74ce332",
           intel: "9acb2238fd33b555a5559254f4aa554d2f8a7db9f60a9ec3d0dbc13e3b079d22"
    "sk"
  end
  language "sl" do
    sha256 arm:   "bd01145069d03eabf5537b9de0b878f215dcc5fa7492c79dedb0da1678ce6629",
           intel: "80bfecd72ec6c876daec1cbd62817e54202cdc56d584f7d77cdbdfcd19545624"
    "sl"
  end
  language "sq" do
    sha256 arm:   "f6f2f201e69af179182932926a49568ac22c30aa839e20ad5cbad38ce660fe45",
           intel: "eae405033e63a746843021e4c36f3897c19c60b3fce635a2c1d17365ad8cf8e2"
    "sq"
  end
  language "sr" do
    sha256 arm:   "888a47233fcbe6929f221654b7fc5dc7dd49c4f8076619fb3214379a843d40a3",
           intel: "28160a3023a28738bd957a7cec7f93b5430966bd0e61162b0acd1a3bbe0de98d"
    "sr"
  end
  language "ss" do
    sha256 arm:   "971272873433e7c2430356aef332bfaed549f6ff2713b262b4a4faaf3a744207",
           intel: "cb416fe74715b842cfc771dff8d957b03415fca75ec157300cc752112886824c"
    "ss"
  end
  language "st" do
    sha256 arm:   "4775ec1d0bb8fca79b73fd9c897a8752960d61417b47a55909ca038c9aaf63e4",
           intel: "1d9e6c2378420021fa5dc6501b1a1725c712db0485cbd339a7ec42ea808e96ac"
    "st"
  end
  language "sv" do
    sha256 arm:   "45550f671d289c27e9d82cfcf0807e595483bc2734b4ec05efdf26c425552b80",
           intel: "5f2d9ba3d5c5a8f3df8bd7a43d1e1b4fc8d8d1a4424d27509ff0d785713da50b"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "3fe6ee1d79fabc5fedf3e4931c42121e1e10b1396f9dfa43d121a43a27c8d79e",
           intel: "e074e9aba12e7d6096852b63e5d803d99ac4f53ff4fbc4ad0ad65111af2ab1d2"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "77e2d71e497865e83f2b858c92e9db73826d1956d4dd379fc237a248bd7dbac4",
           intel: "9a90fd181ed5ab50f95780d5132ac2e70e5208dc91e0629ca96b2d8a9b93a647"
    "ta"
  end
  language "te" do
    sha256 arm:   "27cef6e596b5f3a027d14ba57b77fa3a7979cdfc21abf130e6cf289a1641fe48",
           intel: "57c69883bb51ad41931d1278eeec97931ee842ee6466bf26750b65b57e53a40e"
    "te"
  end
  language "tg" do
    sha256 arm:   "3681602a6ec1b00b5696c71ba8b459dc5874d9df0bbeecad0257c07c331eff1f",
           intel: "8bb4ea5c7477ba6847ac8207aa4c0ded9de48a6569da82d9ad862793248b8d12"
    "tg"
  end
  language "th" do
    sha256 arm:   "470334567e36cd042ce351a916e5ceaefe251808ecd847cb70e4a3ef82e29cc0",
           intel: "a8915572c3df96856a13aac8af0166766d393e4f2149bbfe1bba01770e4a054d"
    "th"
  end
  language "tn" do
    sha256 arm:   "ad82c669fb9a192b4a3d0ee6b1bb370cda29f444fe797a8516cb4843d1993755",
           intel: "63cb7756f3aa845627f5a931ea35357208e8fe26142f6c23b37c30f5bc9e6596"
    "tn"
  end
  language "tr" do
    sha256 arm:   "5bd64b591b78706f9d626ebe02a347192a351f16bf068a136726c4fb97d882d8",
           intel: "1b8cae637169e901da8a3e964910d97ae1c9633e6424b35cfd0ec877ff4edf77"
    "tr"
  end
  language "ts" do
    sha256 arm:   "37ad797e22f2e0f4afd8561b71f7704811f0d3dd65169e4c332b3628e706b1ed",
           intel: "574c6394ab19af9955962e5da9beb5a1d9f48381226444049d5ee84a4a0166c1"
    "ts"
  end
  language "tt" do
    sha256 arm:   "d62913d4a51398487a3c0fbfc840f067241209f9dcb2525806aa87497b6f6ecc",
           intel: "c14ab65d58709ecbc62a5936a27622dc5f801da872267cdc48ced26686660ad2"
    "tt"
  end
  language "ug" do
    sha256 arm:   "bdfa6dbe733c9f10752ae7c7fdb8cf97f26a3f64fd5baae0f42fe1f936c4513a",
           intel: "ee1068f42f267275f8a984799de3a23e4b93fb0fc2100c9d93f55e97c4c9302a"
    "ug"
  end
  language "uk" do
    sha256 arm:   "1c59da49845ec47e4d3f58f614404f48734c768f4a50991f0aa4426f2564755c",
           intel: "45ffc8c75f7f3a79731670d9821dcc52d527459abc58112ad101b30519297d0e"
    "uk"
  end
  language "uz" do
    sha256 arm:   "50c06d0b7f5154697415e237f7977709b1c6d0ac0c283a3a5aefa625c8de56a3",
           intel: "fa8723b8b1ac05be0c85cacfe52fba11b16b896f9a33876ee1c9d80852e3b9ad"
    "uz"
  end
  language "ve" do
    sha256 arm:   "32b11a4c6db871ed97da292262763bc8a4edebb336ff4b446bb567cbffe9de2b",
           intel: "fb9e59f03cb3997a46a7ca39a065cb00764f25417d8bd2f4720d84fa389871b8"
    "ve"
  end
  language "vi" do
    sha256 arm:   "37bffac2b6c0bd097a5c9585b5600023a3fa67f752ee0336781c1c663d1b2778",
           intel: "8c4ae4c574ebd81bfa6d7ed90cfda449e4b60208c5d00534cf81b6c55912ebc5"
    "vi"
  end
  language "xh" do
    sha256 arm:   "fb03ef1e6c4f28b48716a6c51bb16c33dfe5654dc331f05969fcf7f1df81ce1a",
           intel: "d4e1ac65324e2a85e585e4ced98af4046d5bb2024c2ab1bd234557d18d9a31a0"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "9fd1c056ec4290c50f4a90071f69d21eccf79d9db4686f3626cc8ae634450d38",
           intel: "639acdc6c9dca2710b94b61f7785a38af16b7fe5ace003625e3f8ce0b0342aad"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "d40f933f2694216dda3747064451309c8e48ef967108666c5a077fb3243f4cb3",
           intel: "d083abf799fb4e62452237194faf2504bdf1af78611716d04443029e823981b5"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "063587ceaf32a0b636bda879744d6925eb85988b206f3f5b0580b9979396d823",
           intel: "f58cdec33b146288f9969f518ec18fd8d518c54d627392f0e8f1cc46a144d9aa"
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

  depends_on :macos
  depends_on cask: "libreoffice-still"

  # Start the silent install
  installer script: {
    executable: "#{staged_path}/SilentInstall.sh",
    sudo:       true,
  }

  preflight do
    File.write "#{staged_path}/SilentInstall.sh", <<~EOS
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
