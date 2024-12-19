cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.8.4"

  on_arm do
    language "af" do
      sha256 "5b49a231555f07467c69a263306c4f2fd402b896cc8f6a9a5bd9d72edf1f55f9"
      "af"
    end
    language "am" do
      sha256 "8a55a34a5df311f7bb690856ccd71de9dddb4e0a98f5f35c5f10b4f815a71bd4"
      "am"
    end
    language "ar" do
      sha256 "bc823691e5bbfca0f0f50df14f3cd3b0a750fa1af19015764816c81edcf44ec9"
      "ar"
    end
    language "as" do
      sha256 "4aa3e94c362959253b3e1bde0e3d2bb8e40a0c20069525709beced4be1130ad1"
      "as"
    end
    language "be" do
      sha256 "82bb0ef6aea80ea930555fccc06f3f2a4cc1b7bc1e0af1cdadcd59bfaec98f44"
      "be"
    end
    language "bg" do
      sha256 "7a43ab3b1e60757c1f5d326ba07a395e6ca39bc255e6b659a64a8c06316e57f7"
      "bg"
    end
    language "bn-IN" do
      sha256 "8e0b08db6e7ee9e3ca379e6cd9a6fe97c75f9302985b85c807bed45d61a0dabb"
      "bn-IN"
    end
    language "bn" do
      sha256 "c445f15dbfef02fc03eb7ff5d9c8a8ab22167b77c123c0e0259bb866a2f5b4ef"
      "bn"
    end
    language "bo" do
      sha256 "c5b3a8e2dc7e91e8e255d3aa9cf28f69c74a4ccdb40a8c53ef989e7fea733aec"
      "bo"
    end
    language "br" do
      sha256 "0595091ee83d26c9553f9629f18d200d8296eacd015ab2c69491d01069f028ac"
      "br"
    end
    language "bs" do
      sha256 "d846ed889cd834805bfa5a38a86aeb48c57989f3fcb89e8766b19154b8e319ea"
      "bs"
    end
    language "ca" do
      sha256 "73962a697ba0c4f73251d5e40fc06cc900c4c569cdd2aa75987e84496926d359"
      "ca"
    end
    language "cs" do
      sha256 "cdfae93e3b8f87e7388e540ee235f917d6ea24761be248bc99323a0000816a79"
      "cs"
    end
    language "cy" do
      sha256 "0d675bb6530e1fe99a724c8df5d2053712ed4c09b9b61fc4f41262b94f279942"
      "cy"
    end
    language "da" do
      sha256 "a7c937b5f2a43ecaad1c714144d0f39e21ea309b2eec32806638a8f6716c042a"
      "da"
    end
    language "de" do
      sha256 "518c7b2cececd0d5be2a0e570675c7bb35cfbfbfd79e3173485830a2daf3a75f"
      "de"
    end
    language "dz" do
      sha256 "ab3072734056e6e63ca507de1050cd3910d82f3c75de1dc7635e0d427927e7be"
      "dz"
    end
    language "el" do
      sha256 "c56d7df18ab61f075f30ef4cbdeb5cdaba75fc4007b94b61a7b09c8f209ba94f"
      "el"
    end
    language "en-GB", default: true do
      sha256 "3afab9180624a1a252816dfa2d75d02c75fd7640625ff710ed7e6b349109e082"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "c9322fe7db14994e3d6f8cf6172d4fea44a33733f0d58bab4a42b74c7a7f4141"
      "en-ZA"
    end
    language "eo" do
      sha256 "c4f4d6e93a319bb91007810a97a21621110e366cf081040c2d326eb84f3ba834"
      "eo"
    end
    language "es" do
      sha256 "fc4430c646f832689271020edf5099495290eb61053a136054502935c881e775"
      "es"
    end
    language "et" do
      sha256 "6e1a4022f18a99cf156502b56620cc676aadc05d2d1fc9278915b2686a7f8de3"
      "et"
    end
    language "eu" do
      sha256 "9c20293db474700b54b466cb4fa86f089adf7c8d5791e3edf514f2179b86b36c"
      "eu"
    end
    language "fa" do
      sha256 "47a52abc1467cf219f8c0a3be586f5dd34a9bdea0bb50382f5bf28cf305d3c11"
      "fa"
    end
    language "fi" do
      sha256 "261d44ce410cadbe9584a1b1998291a1193dd82a737776307bd73c11cda6be7a"
      "fi"
    end
    language "fr" do
      sha256 "78e612ef6b4140c24df973a6a0995f0ca4e706eef920b2ac0e2fa7f94af901d5"
      "fr"
    end
    language "fy" do
      sha256 "e393552fec8320e4a85df3b9080776dfba87619480b34945276a598f00dedb49"
      "fy"
    end
    language "ga" do
      sha256 "0db720af13ed8a656e0359cb58414b36d6e2b43d4e200a6863847b2037df6528"
      "ga"
    end
    language "gd" do
      sha256 "923394862473125fdfee8461538a7d7b082790b6dd3e8bf34203f3b32107fc8e"
      "gd"
    end
    language "gl" do
      sha256 "14d90e0f9113b161a455a6181085d1232dd91044b99c1c6bd8834f915484c283"
      "gl"
    end
    language "gu" do
      sha256 "049fe6bb5d39d0dafd07857ad20f96a9e44ed754d519a0f1324969df0524ec31"
      "gu"
    end
    language "he" do
      sha256 "71646b99ffd67e0060fc7ce5dc7981d521d94b4d8e210f1f775136b7634313b0"
      "he"
    end
    language "hi" do
      sha256 "81d1553605aa8f4842f072e0f8f104432ccbd604781f233f9f552475f4f61e08"
      "hi"
    end
    language "hr" do
      sha256 "76c19103cb19a566ad902d78e18a1e8abbf3feebbad3872bd3fc745aadc6795a"
      "hr"
    end
    language "hu" do
      sha256 "e33202c8e554fcb41b3707051bf85366323a9f4b0021baa418d423a3913bdd03"
      "hu"
    end
    language "id" do
      sha256 "fac6b3e8c51e37b156433053dee24983a99c3a531ff0addb46325981fc3cbe1c"
      "id"
    end
    language "is" do
      sha256 "bcee10c78933de32c7618ce362ef8489306c2d5a3d06d424446d42bc7c562a66"
      "is"
    end
    language "it" do
      sha256 "7365b570d43c41f0b78522717aa99c7446bef0691375723f5dc4693a0d39a04f"
      "it"
    end
    language "ja" do
      sha256 "9dd2871d7e8e937f85c5791172d98abf5185071377d6bb9e6a2a547d7bfde363"
      "ja"
    end
    language "ka" do
      sha256 "84312e2c028cc784d85b625d85982f63f756c44461706190227d6c43cdec477a"
      "ka"
    end
    language "kk" do
      sha256 "05df2ca299809288a470abb50314e2ded4d46c2f01567db0c4b37cc8f9bd20d8"
      "kk"
    end
    language "km" do
      sha256 "7b7ee1ed2f29f9dfc1fb0a456eda9a6fb07111155875c711c4d3b35c8117e145"
      "km"
    end
    language "kn" do
      sha256 "d25bcbc365c7a89843c165b4752b9ec368fe54feaa0efd9afcb5e44451679472"
      "kn"
    end
    language "ko" do
      sha256 "f402a1f86015e5c9ea3cf77d433cabc1044441109f22cc1423b9a071df140e15"
      "ko"
    end
    language "ks" do
      sha256 "9a1a2844b8a964c7e2fef1aa84b87298795cadb7ac3ea01fe01ebb1e7d64c3d4"
      "ks"
    end
    language "lb" do
      sha256 "2c49b85f49736fe3aaae5424335e596dcc03ff21f967da502205c37864ff0f9d"
      "lb"
    end
    language "lo" do
      sha256 "f6054c96946af1257777b47a030a3b37cd0fea4cdac95eea40925f0308514885"
      "lo"
    end
    language "lt" do
      sha256 "c52109bf9733734843640ad50ca3b26ac267edbaf00ba1c350e521973ac55075"
      "lt"
    end
    language "lv" do
      sha256 "5b5233619c993d9e6d2035e86698ef58b511860db9a14f71f4696ed26ea7dd6b"
      "lv"
    end
    language "mk" do
      sha256 "5b0c3844635229a258c801987f367da7baa23e3613f087f7c718c480d1e8c164"
      "mk"
    end
    language "ml" do
      sha256 "29244cadc9071ccbb8ca962a8bfccf0187e2bd58e1b792427568620ca4c61b05"
      "ml"
    end
    language "mn" do
      sha256 "a3aaf6c21006839f3a95ccbf85d0404e87064d354bbb75ffdc71a54ca475b4a6"
      "mn"
    end
    language "mr" do
      sha256 "78a21c5454ea960c9938bbbf5b9e15b837e907f60b33a8f2db5051de446f623d"
      "mr"
    end
    language "my" do
      sha256 "73a65bb4fc925604beca7d79d32655902ba4ea9bc1dbfe3b17a9984d064e84d2"
      "my"
    end
    language "nb" do
      sha256 "f4a8df375bccec0196629a5fde189d82e11c80d27a0537ff7a74fbf2d868bdf0"
      "nb"
    end
    language "ne" do
      sha256 "2a65890ca50f84478526e1acd5f35ed21a134bee5c9c2f975ad79e6dadc9ab90"
      "ne"
    end
    language "nl" do
      sha256 "5879cf48eaca0c4e9befa38031493718c68255fe58458dee4ff1be7ebc1ed0de"
      "nl"
    end
    language "nn" do
      sha256 "5a03292e3c2b9c01d26dd8f4ccb857333a9b4a2da8823b57d5fd8b8d8bad19e2"
      "nn"
    end
    language "nr" do
      sha256 "e5973114fac5ea8ea8759f716d759c83c895563ebad014a8508dacc6fc3b0071"
      "nr"
    end
    language "oc" do
      sha256 "cf3440093145f60da29050f1371f8c4ae7e04406e8853214a832a66eaba5f8ef"
      "oc"
    end
    language "om" do
      sha256 "0b27453e453d35e758d986a9cdc0fb7edf5281de172986450beb5b7ec7b44144"
      "om"
    end
    language "or" do
      sha256 "4061291ca5a9de0d98a3408aa02bdf9f787887fb8b14ef9822b5aafb8e2f5b2b"
      "or"
    end
    language "pa-IN" do
      sha256 "2144d7720276f975836e46f81293adb3d87a76a323eadf28b18b067622e130da"
      "pa-IN"
    end
    language "pl" do
      sha256 "c357f2e160c1ef37892b54bc5063a963199cc9d8a83a77bdd7760eb772d1785e"
      "pl"
    end
    language "pt-BR" do
      sha256 "71f8f910a2c1debc22a428f42bfc28aea1cac4a9a05cb2f2539f3153f973deab"
      "pt-BR"
    end
    language "pt" do
      sha256 "442c711721e291ac31915771889041054f480ee7626009fe2c54b7d4388a4392"
      "pt"
    end
    language "ro" do
      sha256 "b7d5b8b33e8d12fb30583abefe263e49f7b997aea577ce8006a9afb9b1d84acf"
      "ro"
    end
    language "ru" do
      sha256 "8582ffc6601fb14b18aa76cc73b48d775aaf814f83605554bb6eb0f210523d53"
      "ru"
    end
    language "rw" do
      sha256 "5f259ce7772614e1f31aee80a32883ba0fdfc02722244b8d6a9aa0e0afc207dd"
      "rw"
    end
    language "sa-IN" do
      sha256 "40bf9fe0051dd91ca877f3ad844a9d8f61061c443ebd42ad7fa9d3e4862ce6ce"
      "sa-IN"
    end
    language "sd" do
      sha256 "9d9b019b1b8cbd4768b6a10f9f9f253a14521b95b87a3655a585dedb7fc57bd3"
      "sd"
    end
    language "si" do
      sha256 "0109715cb2ba80a1a32b299d23738fbd8c975ea31c3309a462c890b8d12b6fb3"
      "si"
    end
    language "sk" do
      sha256 "a0f8c8d79364721d3740ebf0b198accc081202c340dcbcee7f49c0a69047b03b"
      "sk"
    end
    language "sl" do
      sha256 "0c91bac4c872db1b1512427155f063feaafd53ae0135404c9ad7ddfa125205c9"
      "sl"
    end
    language "sq" do
      sha256 "de79ce4f8e45a5893d0ca989525d7ff0c01bb89741b8b175a592d8423ae904f1"
      "sq"
    end
    language "sr" do
      sha256 "d491835081255c8cee053c625409b38b7bef3eec687de1f5619ce89a484dc0b5"
      "sr"
    end
    language "ss" do
      sha256 "07f061314a88629387daf731a283dd864173b060612925a434b2492d4eee31ea"
      "ss"
    end
    language "st" do
      sha256 "e65450775cc6529d98edfd53fe37e5dd1c1df3650e9fc1a7351835788d76b4f5"
      "st"
    end
    language "sv" do
      sha256 "ad0f963aa6eff23dbc766eaa6055ee5cac8f75c3e71fecd59fec7bea0c7c879f"
      "sv"
    end
    language "sw-TZ" do
      sha256 "b7d54008a1881be7b50fa45e2c39caa779c8296c7a86fe208e2291a7022d4af0"
      "sw-TZ"
    end
    language "ta" do
      sha256 "d0419c703186ae2b65f70b50fe611c0ee7d4f9e957a297af54f48cdaf5c2519d"
      "ta"
    end
    language "te" do
      sha256 "51d87d1d43d9ef45ce4e706fa8631640d342610616bfbac408b6b0db6aa24d60"
      "te"
    end
    language "tg" do
      sha256 "5c7e88d891c8b63dc8b3b3bd93140088107d46d5d439b2945243a5572cc07fea"
      "tg"
    end
    language "th" do
      sha256 "a57b040ebb43b40c69a173218dfed18fb38d67c109e485c05ba301dc1ce8c0e3"
      "th"
    end
    language "tn" do
      sha256 "affbfbfbd74d2efba03e2720b90afd774fc1f5e4148bf6b9bb21a6f0e65a7c1c"
      "tn"
    end
    language "tr" do
      sha256 "91df4358ac194545e25336cfa73fb32f1b6e024d3a86d555c7cb63f93b87d60d"
      "tr"
    end
    language "ts" do
      sha256 "bbc85a01ab4c83c9d73919ab969e912a2d882f464072a538282be3bbec6f6f2b"
      "ts"
    end
    language "tt" do
      sha256 "34da4c472d3dd73af878f19d75ad1580abda3bc8c09df01dbceea0176bf5c684"
      "tt"
    end
    language "ug" do
      sha256 "d4747d94a64c5ccf7d14442dadee03ef32ce9f648cfbfb712d9dd4922b843249"
      "ug"
    end
    language "uk" do
      sha256 "7194305a4ce47b36726539fdcbe402faaa58e75d9c70d74013cccc2998316888"
      "uk"
    end
    language "uz" do
      sha256 "6a5f176a0da9873c53ca917b291424f08ef3a06aeefeba0e439b98e188f5bec7"
      "uz"
    end
    language "ve" do
      sha256 "ffe7e8b28cb14c049351860f1925d7275db098655f0ace4b217c74b11d374c2e"
      "ve"
    end
    language "vi" do
      sha256 "1cffa649520c6f37014bb13a906cd16ba938873378f3011877b11238249c138c"
      "vi"
    end
    language "xh" do
      sha256 "9757cf84b2deb2ab8658656b3bdcff215766da166eaeb32c136ac1775240db31"
      "xh"
    end
    language "zh-CN" do
      sha256 "8352a03252c08fe671a720e6411f29a1a8c090f0c5aac8939fd64d780e76ad8e"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "96f1108284074c1ee5f461751a1c90ab6475eecefa1f846e04fef00a1daf2a2a"
      "zh-TW"
    end
    language "zu" do
      sha256 "4e107192891418a5fb8f7870aa85387f6b5ad96271e521cda0fce55c634d7b1b"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "821ad058e8cc18e612d719be025e07adaddb2960b2f4e69a00f817d847c2b4e7"
      "af"
    end
    language "am" do
      sha256 "ae9a97c3a40bdf6f134f9f849f1303c77bba4665e0904ccc2b769656bb8791b2"
      "am"
    end
    language "ar" do
      sha256 "e22fecd0d7c7455c6b48df2e33e865f29e3e559f61d99802bfb0119eee4947a4"
      "ar"
    end
    language "as" do
      sha256 "cc5870dd7ab18ed11a76af3fd0986cfa1312884e41f3bbdef5c9fc860f7eb189"
      "as"
    end
    language "be" do
      sha256 "586c6efc88080f5a743b687491e809e3b09ac819a9410429e9bfbebce01ef664"
      "be"
    end
    language "bg" do
      sha256 "4a205360d3ff71321ec5572b256061d72a889959f36e4b8a6d482a054144d3c3"
      "bg"
    end
    language "bn-IN" do
      sha256 "4cd49038233e8ca805b04bbe7199bf411d3fa0764f703fc445291e345ac906cf"
      "bn-IN"
    end
    language "bn" do
      sha256 "1d62069464a5142404338c06f617bfd3645888cddb9df6281dc2b51f915dcaf3"
      "bn"
    end
    language "bo" do
      sha256 "59cfed8ae48836089afcd0501fe633bbfe54802c61311340aa214d9a40010297"
      "bo"
    end
    language "br" do
      sha256 "bac5005033b4a22231e383dd31d0f48f6994cc66ffb09d89c2bd2aad8f1e63f6"
      "br"
    end
    language "bs" do
      sha256 "a94af256d43a069798e28c0245a7531c1eb4f06750c309ad5c77efc32cd7f50e"
      "bs"
    end
    language "ca" do
      sha256 "ced0b186487a4c384df93890101910dc89fe29b506a452cedb76441e34c21102"
      "ca"
    end
    language "cs" do
      sha256 "fff062d78d7a7b602333bd235e2ce9f3d51467705434b92a3b7df8a8ce168255"
      "cs"
    end
    language "cy" do
      sha256 "e16ca763179de71345e79254941bbda43c03815510dda0fa6258881431f86bc6"
      "cy"
    end
    language "da" do
      sha256 "6ad1b24dcd572ed58994470b5f36b3c9a96a08267c8176bedd49cf69098509fe"
      "da"
    end
    language "de" do
      sha256 "9099465e951b630561dd86b45d74e8972d58939d4a8f6ebcaa29f0729bd392da"
      "de"
    end
    language "dz" do
      sha256 "88f09c8e1cef9eedc75d1ee1838a687f74fd35d9b2b24d07def927826d1a4181"
      "dz"
    end
    language "el" do
      sha256 "7f47c05de8ed1f63f11d728edce71aa18267111e1ca2be69dbc5f51c95e2e509"
      "el"
    end
    language "en-GB", default: true do
      sha256 "6bdd26963a8933b85176824400f9bae33adb2992f4dd3c22a2a83960a0c2c8b5"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "44b0de08a95bed1de5366ac6af27ced6a1d204053744d2959e7fa8c8cf57e980"
      "en-ZA"
    end
    language "eo" do
      sha256 "6bb416cb5ecc753d053d2797c356f0663051af21c259b687911d4dbbaaf25c30"
      "eo"
    end
    language "es" do
      sha256 "5420e35df9e5d82d8f8fca704fc3b63c6f65920da6feb24877cfbc8a15278999"
      "es"
    end
    language "et" do
      sha256 "d26c4fb6b52110457ef4b7a0427c7746fb46945fbba201d7f4078f007bc74d65"
      "et"
    end
    language "eu" do
      sha256 "b61ca711e2f4ba9c29f5f68924d98e991ef86486807499af88f7ba0d5fda7c36"
      "eu"
    end
    language "fa" do
      sha256 "fde94a06aadd7ac63428890ba0e911b744a94bc5c721a5cf1669c0e98e5fd4a7"
      "fa"
    end
    language "fi" do
      sha256 "078e5e64c2ec63999081640b2f7a5e8a06263545c15f4d009a117398c5fd1ab5"
      "fi"
    end
    language "fr" do
      sha256 "90c5eae638c74982fbbf1c70d03a66d1aa538646842cbebb159d7420e4588913"
      "fr"
    end
    language "fy" do
      sha256 "55b0844602a70f27db1e2767cb2ea20062ce90019575e4edd75a633cda8d2a24"
      "fy"
    end
    language "ga" do
      sha256 "815f17dfa0c3665bd3bac1817071ed0ddd025f6c4a1cbea980f2963d7cc9d852"
      "ga"
    end
    language "gd" do
      sha256 "f8d7db2b78eea22fc53ba1b54c68e451d76603ed30bfa49556bb25a34d32c0d5"
      "gd"
    end
    language "gl" do
      sha256 "4cf978c35d4931fbace5ff6678749e9d07598ae47022ebf013d9e173de74c616"
      "gl"
    end
    language "gu" do
      sha256 "5d1e07d248b5b9f0caf31996352f9fad7790a3188ec72be7f670d52ff6ff8f63"
      "gu"
    end
    language "he" do
      sha256 "3085e853fa55fed59f99b3417b52ec898888bc293f42dd6b0964070ae1d4021a"
      "he"
    end
    language "hi" do
      sha256 "a77f367550624d71e4fa2f59318afb895eea36d4fa31e8304471a90d8dc2e07e"
      "hi"
    end
    language "hr" do
      sha256 "19eff738f977555bd106467b23c45bbc691af70b1089d9191fa454d997c67537"
      "hr"
    end
    language "hu" do
      sha256 "813f572bfc8278fa0d9d05b68e1eccf9e1ffcd39f75ebed67ecbb3146301bf15"
      "hu"
    end
    language "id" do
      sha256 "d57c1d1c0f1941faf242484c92815045c9df988202e64efebbe161fa94502130"
      "id"
    end
    language "is" do
      sha256 "c4d3dbd47b45dac5bf2b4509175d20ecdd8436df8f14374c92db5bb9a08fd8f1"
      "is"
    end
    language "it" do
      sha256 "29d5adee778ecb045db853edb5c40f933e7e38e29cea393f116c8d68a7f7a981"
      "it"
    end
    language "ja" do
      sha256 "da119b80bd65f0c56eec218950aa26b4bc4112689bd2e4d9a1f4759058a660ea"
      "ja"
    end
    language "ka" do
      sha256 "7673ff8dd752d278208991feb764a2721e247d85918f498cfc9d19dc9cbcc395"
      "ka"
    end
    language "kk" do
      sha256 "2f1b424bc16d07de306c947ccbcc7539139d3d8b91c9c0089478e23c514e9022"
      "kk"
    end
    language "km" do
      sha256 "7e91200f0e1defb9661384eb3c0c6118efce203b1f74b543680c38e355fb4db6"
      "km"
    end
    language "kn" do
      sha256 "abb035b5e63f9403d9c62aba7822c204feebd6f27433360954baae955f103a15"
      "kn"
    end
    language "ko" do
      sha256 "44cc94d9c409e9c39f0a74a93973fdae9da45dfad9175bb5f4a42d071465d820"
      "ko"
    end
    language "ks" do
      sha256 "3f115ec81c3e5c004232f52e499325b2b0973bfeb6a990cc8733d2a59843dc3e"
      "ks"
    end
    language "lb" do
      sha256 "04483cbec5d8d44dc4519e9b3b7612bfd8b78f0b921ea09b514d46677a21b348"
      "lb"
    end
    language "lo" do
      sha256 "b84394fb7b2c230aa5845b75b74e8fbaa55217fc9eea1858dadefacc021d1a59"
      "lo"
    end
    language "lt" do
      sha256 "9677408f0eebd398e50cc17c2bcd0c86a53e7d460c26a57b769b266eaf563726"
      "lt"
    end
    language "lv" do
      sha256 "bba24c7ad3a5b9731ee745b510d16df710fcedcc7a0e0b54c566d753a84f68f0"
      "lv"
    end
    language "mk" do
      sha256 "aa822ff0560908fd00f07c509d841148a0908c6cca0d8d0f8c50345656d7b505"
      "mk"
    end
    language "ml" do
      sha256 "70b101407ff89ca047e15a5e1bf267574f68006aa68213275dc1b9b759846cde"
      "ml"
    end
    language "mn" do
      sha256 "e1ccd95ce7669237361d3768460f2c3744f0356abc778abffced23a34e184300"
      "mn"
    end
    language "mr" do
      sha256 "5412cd243bc0e4e7fdfbc0b02966074dbcabd0bfa186b3bae51d01377413839d"
      "mr"
    end
    language "my" do
      sha256 "d5858f67d06c3b33b2d695e517f78906398f5207215f8c9708f32d1b0df1ad73"
      "my"
    end
    language "nb" do
      sha256 "08080ad09e94e98fdc05edf91189322cf530e10608f94a169ef7c0b1d3b8f367"
      "nb"
    end
    language "ne" do
      sha256 "ba6a1e3c8ae4ade2e1d435c01bc353cb5a8df41d1ead2f95a277c950cc24d41b"
      "ne"
    end
    language "nl" do
      sha256 "f711af0a062872634a2ce0a6af740a1ff17a71472a53f9aa734c5f2c9a74f385"
      "nl"
    end
    language "nn" do
      sha256 "4584a526c8463eec654ef9354757cfe9b7238f87ab110defd7403a5113ed0796"
      "nn"
    end
    language "nr" do
      sha256 "1efa6d97864b0f6dca1d54906c24f875ecd77148824b9f83c25389a9aea3cf9f"
      "nr"
    end
    language "oc" do
      sha256 "cc7720b910011ce4de7bf8da7160855c9d832f40781244446a57e5805f62e9a4"
      "oc"
    end
    language "om" do
      sha256 "43af8f389d932217d14db01193f637120582f8fe27d94596fee1831b85c4fe58"
      "om"
    end
    language "or" do
      sha256 "2564702f69c5663ca1753b142e3227cdf241db717aa3a5561552af874d287c25"
      "or"
    end
    language "pa-IN" do
      sha256 "e4632babadfa356953001140e7cc65a5fb7535cdf4d5bd4708be2f632f6dcf75"
      "pa-IN"
    end
    language "pl" do
      sha256 "da40f6828daeca768527ae720b69713ff8466f7033d2ec09ae323f5e5c1bbd79"
      "pl"
    end
    language "pt-BR" do
      sha256 "73f74c013cd25df6f3abb80bdf6faebfd79543b4ae4e1ba183f5a4521a273fd9"
      "pt-BR"
    end
    language "pt" do
      sha256 "63c1eb51bc9b9ce59c37bfbf0057a9c3728bd23afa82a88979b63415cd8f04c5"
      "pt"
    end
    language "ro" do
      sha256 "48a2b8dbb002b59f38bbf29f6ce22740399b7146877eb7a1a7ad111c562f0fcf"
      "ro"
    end
    language "ru" do
      sha256 "42154346e039cf065cebe5531b37a21c7bf979712f7399b82adc346c0d655984"
      "ru"
    end
    language "rw" do
      sha256 "81b99977cf22357ba38eff029694ec2005e1dbf077f8822b71507e07f6b6a35a"
      "rw"
    end
    language "sa-IN" do
      sha256 "5ceb90867dae2a3adf7581ee405cf893430183987baf331cf6dfa8a585ef3e0a"
      "sa-IN"
    end
    language "sd" do
      sha256 "14afecdbeda5cee9be6774dc7aad5a0bd6ece8a1c6c3b86caa4b3327a302dbdb"
      "sd"
    end
    language "si" do
      sha256 "225665ad7d513a85f2d70f67e1f388cf6f9ab9cbbd8360cc257debdc7abe056e"
      "si"
    end
    language "sk" do
      sha256 "0aecd9e5561a4fb871fbd3787164e539cd6d8504ed5cf5a6c50800e7e975df5f"
      "sk"
    end
    language "sl" do
      sha256 "15b8e999a52c511bc10dbedd73b7a08202cc234eadf3b70ce6b106ed345ba1f6"
      "sl"
    end
    language "sq" do
      sha256 "3862f02b6c4f14f42a47b04b2d06c48150ae8a860ee578408c253b52903fd228"
      "sq"
    end
    language "sr" do
      sha256 "82dd81e652b961c6227ecd70aca6d48d042960ca85020f6759016c4fc3260009"
      "sr"
    end
    language "ss" do
      sha256 "c74d932839ec65719a25bb42745123966b4752820569ab68884832c53e1d6846"
      "ss"
    end
    language "st" do
      sha256 "cc3ae78b12b758d817b0abb4ec84b86c14f72277983534c8735e956cfddee234"
      "st"
    end
    language "sv" do
      sha256 "4496b77cc5d2bd69c9917151327c81056e444c9e40f5084639bd5776e923ff55"
      "sv"
    end
    language "sw-TZ" do
      sha256 "bd32fe5a966cb908cfb557d395e5cc6f0eb50b7a2457f8b7fbd4250397d30920"
      "sw-TZ"
    end
    language "ta" do
      sha256 "88b5e0cfbbba3cb04d9d7c164469882a2a79935c4b04f6330d605b14d283ba24"
      "ta"
    end
    language "te" do
      sha256 "4bddb07b891f16281d168f2d8277eb1114a1aa6e8a614395b14d50231afab4ee"
      "te"
    end
    language "tg" do
      sha256 "f3e9f2d8b2e0e567850174d9a5ab494538447ac8211e4a60760823b6f43840d3"
      "tg"
    end
    language "th" do
      sha256 "f53bb9e09c598be79de3f58738f77491c18c0dcee4ccba635320782dbe44fcc9"
      "th"
    end
    language "tn" do
      sha256 "f23d20cf610ffc6458be0e4d95f5ad9a2152c4a356655dc9fba89914b99acd47"
      "tn"
    end
    language "tr" do
      sha256 "7f59576b70fb5150c493838b59610ebc22698d3e4797a503752bbf13068b4f85"
      "tr"
    end
    language "ts" do
      sha256 "726fc65d80544ad4bf232ed2155621138b8975299ddbf34e5e48bbbdf12ff73f"
      "ts"
    end
    language "tt" do
      sha256 "bb67f23dad0aa8342765695e86a1cd3852baa3c731ed6c7c234570b37c6d5634"
      "tt"
    end
    language "ug" do
      sha256 "b3d88979b15ee5162502331544771efd95a8beb8685f12d901f874696572ec72"
      "ug"
    end
    language "uk" do
      sha256 "6ce3f433e4653509005f56b8e32c7c12d11a158f21d5b3d2e9c2a1b8be7ead71"
      "uk"
    end
    language "uz" do
      sha256 "ca2ad6da11ed3241405bc50f7ad4f98268573f4e43562089de2c4c3cec50c98d"
      "uz"
    end
    language "ve" do
      sha256 "e1c4f05c4bb08929ab2bff539da4f61f10f93529fb9072d611042670adc9db57"
      "ve"
    end
    language "vi" do
      sha256 "2bad4bc8396cc1d68e7b33828fbf20ff0e9d1e220f1f01956ea8bbc058f79e2f"
      "vi"
    end
    language "xh" do
      sha256 "9f4afe126450a73389fa153e3ddf3b7f79e45548bd3edae998fe74b3179a6f2a"
      "xh"
    end
    language "zh-CN" do
      sha256 "cde8dc264b59399c116a85f10f45203c8dfdaa932959365761ab36ad14310360"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "2ef1f95ff9e3606d680fd7cc6ed268ca862a951b27a9b3096a767e651c3d68ff"
      "zh-TW"
    end
    language "zu" do
      sha256 "8d3f4398020c00dc8b3c7d8dd455e0f93e0726cb024a9fe39da88214ce84dd82"
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
