cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.5.1"

  on_arm do
    language "af" do
      sha256 "5d55bcb7d46d02c1f25a4b13a6deaa7bf455005c67417fe18cabf101e1f6b9b6"
      "af"
    end
    language "am" do
      sha256 "be1bc975685e487cbdf1f3a5428e5632c1d85fe88d599aee8ee1889fa0626adb"
      "am"
    end
    language "ar" do
      sha256 "28dbb7c7d0d53aa5a2aacfbdd293e3d86088d6076d0df680b090a346663a1e1b"
      "ar"
    end
    language "as" do
      sha256 "546d3c4216f923bf8130cc2ee1510d1086c9e4ee810bf05a9ef48a4ab14cd151"
      "as"
    end
    language "be" do
      sha256 "4e955d09561fe530b936b698ec6e5d886786d477831dd39765908741836b4589"
      "be"
    end
    language "bg" do
      sha256 "44135873e1e0714993fbc8c75dcea36a5e945970afa10caa3b91b784c7026568"
      "bg"
    end
    language "bn-IN" do
      sha256 "041e979d9e940a57967544d956722d6cc2ce02b4157a6eaaecdcbbb59e7ed4a1"
      "bn-IN"
    end
    language "bn" do
      sha256 "6d5ca95344ff245a69e553636cf4d2f3a77eda255f003d6a530d10ac28d31f50"
      "bn"
    end
    language "bo" do
      sha256 "d77bd7ef5168786a5145bca971f88571e65299c51858df5481c7741b423dbb32"
      "bo"
    end
    language "br" do
      sha256 "f1860abb8d185f73a95038778512bcea112ac8e67e91dbde84f02b7a0d57a0d1"
      "br"
    end
    language "bs" do
      sha256 "4b1ea1058f8e44ca4ba0f1ba5dbaca4fd41b3f5b03ec5dac6bd4c1bd5d581158"
      "bs"
    end
    language "ca" do
      sha256 "0ad6f1f63705589f2ce9f9c41aeaeee91c3bb8bf8c326d405fd0172074f08e51"
      "ca"
    end
    language "cs" do
      sha256 "620534de849e89a3bb87a4566b1ac91a5ec1b3b653fad0e0580c383b6697262d"
      "cs"
    end
    language "cy" do
      sha256 "189d1b80e66394ef1351cf88c10de9b00bd4988ace0402c7163b1affc691decc"
      "cy"
    end
    language "da" do
      sha256 "d40184c9617c59ff4fa0405727c1ff12d48ca5db4329a85535125b9e7b95294d"
      "da"
    end
    language "de" do
      sha256 "fed999e6bc6ae6ef262551176b6c922d96abe073aea9d7fb2d9e2f041d12e01c"
      "de"
    end
    language "dz" do
      sha256 "a39dd72bb72bfc94ae9c160b8cbdf60899c4f7d815f92ae3801d3a89368c2f24"
      "dz"
    end
    language "el" do
      sha256 "4a436d352bf0d2a515baf130f86b1d086fda7fc75e7f974003a66e552b13e074"
      "el"
    end
    language "en-GB", default: true do
      sha256 "41333e565464df4c3cf70b63d5e76dde6f4b8ddf9eb6e51a676bd400db997318"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "ad42d0dd13fadcb3b4c3ddb4c5f446d1667c665abc4ef67a90d1a37cb9fa4063"
      "en-ZA"
    end
    language "eo" do
      sha256 "4ddf491ab302fa4e92056759f1f78c658363e7498c2689a7e4129ae425d8c45c"
      "eo"
    end
    language "es" do
      sha256 "d395c44b2de34fafec7d648c6dca622b561493ca5b9c5701aa6662e3b1c43ad4"
      "es"
    end
    language "et" do
      sha256 "2b2bae0baef0470b862c5669efba4c56c1c0dc2567c3113d6da317e3b9664331"
      "et"
    end
    language "eu" do
      sha256 "d6c52e3e0d1541f747bc1490d08d1c27a83acbcf7f872debc8c37b4817912ebb"
      "eu"
    end
    language "fa" do
      sha256 "d60df0a0c9441815d4836fad1274156b112788e25be2468d8ae7e4e8745e5f1f"
      "fa"
    end
    language "fi" do
      sha256 "d6a1fbac1566d4d96c60c42e7562501f485984673877d288d3e96b6c7807f9c3"
      "fi"
    end
    language "fr" do
      sha256 "908a3aa2444c472cd322b045deb80c4a43cbd71d6e3b5403f3a57d996abd3bb9"
      "fr"
    end
    language "fy" do
      sha256 "a068c9f879c87c94167be5834338c184d5a6bdb6c900ac228b8e564a70bc813f"
      "fy"
    end
    language "ga" do
      sha256 "f5ddfa62cfd57f261874b9ad25c8ac286b0a64cbcf0bb198676a9836da577034"
      "ga"
    end
    language "gd" do
      sha256 "71a83cc62dcdbbc53a582b6cf82afb1979f6db2d2019e901c348d348be76d054"
      "gd"
    end
    language "gl" do
      sha256 "d40a11f9050907cfbaaa6ddfc2f63af23028cc1610e1a38d83abe4a1607dacf8"
      "gl"
    end
    language "gu" do
      sha256 "276643fd1ca9517e003cfbb9008bca397d2fdbf03cb4d19045e9e06f3071961c"
      "gu"
    end
    language "he" do
      sha256 "4ae5b17abf8b821d50b30c480d7a82a3ee0974bb6dacf2a50dad49b703853285"
      "he"
    end
    language "hi" do
      sha256 "b845017c2267b5680d85002934cb033284805d9d606cb7757a62a841738b1bfa"
      "hi"
    end
    language "hr" do
      sha256 "9915da7c102d0fc360bcea2e971018e2cd4201e38bc3fe8cde090f11e9710acc"
      "hr"
    end
    language "hu" do
      sha256 "62896abda6f3ebad92518d6a5f4a69e3eb32789bd6388b70208441fa13c62e31"
      "hu"
    end
    language "id" do
      sha256 "688a1dfbc0db755f2ef6a93a9a28b13f92dbe4bca9951083ff59f0467c7acee3"
      "id"
    end
    language "is" do
      sha256 "d54c5670fd4011dc6ef02e9f489cacc7e299db2a4f56e2c2e6a6e39622a362ba"
      "is"
    end
    language "it" do
      sha256 "401b57d9ac66955961d1c9cdd17d5fef595d2b6502a7018c61740f76cbec0543"
      "it"
    end
    language "ja" do
      sha256 "d69d44d7fbeb223974b1e80cdc192319d1cd2b1a3e6be5a6f0efce6183ad2b37"
      "ja"
    end
    language "ka" do
      sha256 "fb7f4ce19f425726507dfec818169ddfd54c744667c50bbe0758db3fcf01db07"
      "ka"
    end
    language "kk" do
      sha256 "e75c404be9dd8dfd92036931810d517cb3c1a108310c206d8a8f606f38ec23c8"
      "kk"
    end
    language "km" do
      sha256 "62ab1f6c19117d5fbcf64211689106a4f7f061c242d270dbb388ae99487c53f7"
      "km"
    end
    language "kn" do
      sha256 "6f621eab806f554bd2e4817d54727e1677b30c785bd434348c182caaed10f165"
      "kn"
    end
    language "ko" do
      sha256 "28d68a5acffaeae3bd3d49f1b3f9e8bdd69e9fb58fcf34d1045fb5c20570da83"
      "ko"
    end
    language "ks" do
      sha256 "1e78067f44fc7a1c5976e5aebd9286209b659a8192104c59d1f6624ec9013083"
      "ks"
    end
    language "lb" do
      sha256 "b0af9da2500d684eb0be0dc78f4a930bbbba61782942b973054f0e3fa6361830"
      "lb"
    end
    language "lo" do
      sha256 "1cd61fd30ffa998f8324cd23c2e668737601c2a3c7ab72b523bd2f6931e7d61e"
      "lo"
    end
    language "lt" do
      sha256 "6042f61a1982853db9892b337e9a83f395394efb23c736ceedd9503b6838b8bb"
      "lt"
    end
    language "lv" do
      sha256 "5f9a26411339ea5296561a94d00a81c02600f877cfb770aa37fd10d3f7f04990"
      "lv"
    end
    language "mk" do
      sha256 "a7d132e158e87ff3c10e66216551ceab5e97df09217546d7f01db993ddb59a2a"
      "mk"
    end
    language "ml" do
      sha256 "1b0d7de8fa8bd238b37c19945e63cf88739aae2f6fee1057a2321f840b96381c"
      "ml"
    end
    language "mn" do
      sha256 "76f8d42e202fc278ba75d514876e754412dda7f3fd4337818084d72bba19d482"
      "mn"
    end
    language "mr" do
      sha256 "76c132456c15e19488301d91689f929dd91d1e7e132e2fa3894b7c37ecaa5620"
      "mr"
    end
    language "my" do
      sha256 "20e3e305ea2548ec56d7e1d7384963da32d6b82df4fef871fcb53f58b7dee48d"
      "my"
    end
    language "nb" do
      sha256 "0df126af4fcc9ac8caade80e6ef182aa17578097de8a639935ac22e2b6c5f48e"
      "nb"
    end
    language "ne" do
      sha256 "e224030547514fe5926b3ddd82033580353fc831bccc96a15d46b2d644a05821"
      "ne"
    end
    language "nl" do
      sha256 "bfe9ddf242fd641bad3c10640eccd1f590c83c296b4627fba3560a4674ad6715"
      "nl"
    end
    language "nn" do
      sha256 "07119ec9e13bb221a2e83d655ef17f748dfc4ff69377267fa96f0e0cfda5d5c1"
      "nn"
    end
    language "nr" do
      sha256 "a44e60b1c7512e828a9e239748ae6a31462821b7902ece384382cc429380709b"
      "nr"
    end
    language "oc" do
      sha256 "969db3b7550c6e2b39b833f3b2b979e459a26f4035d1e6d95ce5893e853904fd"
      "oc"
    end
    language "om" do
      sha256 "65dc5cfa64bf1089b46af2b46d2f6fa0843cf1bafe411511b6652ccc36e24fc8"
      "om"
    end
    language "or" do
      sha256 "babd5f4f24cfe3e10cec739c06fdb6f82653b7922629fc91f8c0b161534f078e"
      "or"
    end
    language "pa-IN" do
      sha256 "7059fe481b8c7b811a43923a58e9e0c1d2bed44f09910ac36bbd3ab368536505"
      "pa-IN"
    end
    language "pl" do
      sha256 "08e4113a2140e5ee5ce289e63e8df917d22399c565c7323c0aefeb6c6c48de08"
      "pl"
    end
    language "pt-BR" do
      sha256 "fd630dcb4c2ab55ecd0f05c4b53c17831342056ec4c6baac98d3590292ed54ba"
      "pt-BR"
    end
    language "pt" do
      sha256 "8944710441477c510cf723147d8be0c223405c9225caf7e7b8572dd82edaab63"
      "pt"
    end
    language "ro" do
      sha256 "32efff2c16b70a6e73bb911adffc58cba166e78c93b407ec0ca64fc2a3c378d5"
      "ro"
    end
    language "ru" do
      sha256 "0bb962ef576eb4577719c992103558821e4b600f67871a55c4d5e9a1965a4132"
      "ru"
    end
    language "rw" do
      sha256 "99fa9a10844b70491a82aabb0bf3fb6c6da31c265e49e37c886c77394a80fc25"
      "rw"
    end
    language "sa-IN" do
      sha256 "80a0782e10545ba700fd41236b11008ccf767a0fede65536bfc16e8b6ccd9c33"
      "sa-IN"
    end
    language "sd" do
      sha256 "b0328a455970f1ad769d8d146939308173f5af96821b1a4e9410f9e34b17e17f"
      "sd"
    end
    language "si" do
      sha256 "d18e1b3e6050c3b6051ec94712093b1e2057e61c84989d97d6e3a6e8b4afa13d"
      "si"
    end
    language "sk" do
      sha256 "1ea98162e64497caa1f56207e050ba262f11b242337c684b6ed25244d5832038"
      "sk"
    end
    language "sl" do
      sha256 "5789e4898ea93055886fb0ef52c45ca51f5b76d62a7913d2ea29391305b61b64"
      "sl"
    end
    language "sq" do
      sha256 "3e7a1204cc5af24bf95fb453f4389c232a6df9cec394854b64c93c2f3526cfc3"
      "sq"
    end
    language "sr" do
      sha256 "0c095754a75335944dbc4f228c9191a42e2f421598f9ebf1582382daabbd80fc"
      "sr"
    end
    language "ss" do
      sha256 "b5c257e8303cd118ff8caf268841822677ae673d6944ff96cd1f9b8d59dbb0ce"
      "ss"
    end
    language "st" do
      sha256 "35893fa0437e5e187af0c2cf18e7188beb197cd7e8e7eac4b9354178c8493fe6"
      "st"
    end
    language "sv" do
      sha256 "51a18c0314f235970b6a874a505257899ae31a90a97271707d0259e557b8b907"
      "sv"
    end
    language "sw-TZ" do
      sha256 "d98b42dd1d8dcc782a0a7d84051f85c56a4c9dd79c5cc82c472f7fb15a3232af"
      "sw-TZ"
    end
    language "ta" do
      sha256 "8224e072537a925683fc453ae155daf157923a3f0d96717578e436290d129ed5"
      "ta"
    end
    language "te" do
      sha256 "4ac569de29387855c2eadfa9c32d8a3dc0194d0e7b37f4443ce3094f0ef935be"
      "te"
    end
    language "tg" do
      sha256 "499f276fd7052e5bfc1d2a2d5fc2378ba6bb60aaaa22861b672fed66eff36438"
      "tg"
    end
    language "th" do
      sha256 "fc179d4ac700756dfb00c7c1ce5dafac3891e8d0f68871034cd05d5a7f3ccbf2"
      "th"
    end
    language "tn" do
      sha256 "73b594abcb531e0cc794115f3cc7c0e8fb5b23a18a7fb43f224f7b1b1656e1e5"
      "tn"
    end
    language "tr" do
      sha256 "231672c230b8e16611838f47d217066228b64ea4143e7b0c3f1e452a6327cc65"
      "tr"
    end
    language "ts" do
      sha256 "b6d0e7f4993848c5f4ac85171682be55ac5ed99c130f17ae02e9fa5970ac53cf"
      "ts"
    end
    language "tt" do
      sha256 "de6b55c0939cb559988d76acf26cabfebad9790045be2b5b721c695c1267661f"
      "tt"
    end
    language "ug" do
      sha256 "27d126e46ca5322638b9bad080e8d7c9b7000207c469664b911669f7b465b889"
      "ug"
    end
    language "uk" do
      sha256 "318032f9848b11d5c989adccf7b00925298bcb3df13e5c96fca27e3735dc8f1f"
      "uk"
    end
    language "uz" do
      sha256 "286c2b1bed2e24d035541d9804fd6f97330f6f5cb63bc2e6ce1aae501e54e428"
      "uz"
    end
    language "ve" do
      sha256 "3241ab51eaddc418c2a17cf1fde996e637ad6c3d3b5b45ef3f5b5c6bf9607c89"
      "ve"
    end
    language "vi" do
      sha256 "3b4a302f13d1f26a4677d026ece79475ce2658373f6ffe81f1fcd93526111314"
      "vi"
    end
    language "xh" do
      sha256 "13a6cddf71eb8bcef4026dbc12870a8e47d94476a833e6cefb91d978c37a1ccd"
      "xh"
    end
    language "zh-CN" do
      sha256 "51b5b773c857dbdb0d556f80c43ac7427f878fdb9d38dcaba432acf513b3c517"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "c4b0d186355ed02c9a2875289f62033070b1be48dfbc89b1c4cb7aedc69366c7"
      "zh-TW"
    end
    language "zu" do
      sha256 "8fcd47fccfb0955b034f8ac20014b89c480f561b0376029b83b3e12de0174ed2"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "0931b515cd55e4e259760ad991026deea6bc07ad20bf0632e75fdd89fe66f30f"
      "af"
    end
    language "am" do
      sha256 "269933c43488ce9cd8a3e3f085905892a43e807209c2860988602d2b7945e8d1"
      "am"
    end
    language "ar" do
      sha256 "0cbe5d90c932b864c5d5cec359cf7a74298fc47b820fe7e24c46f4b0938d281a"
      "ar"
    end
    language "as" do
      sha256 "e32f7ef6228cff6101bd351b233d0b1e3ec5f414eb8698b5f03e9f144a83021c"
      "as"
    end
    language "be" do
      sha256 "fe22c3b9ad31e4a3d988d0dc2162642abfb1010fb2deb875e26a94c3be11f6fb"
      "be"
    end
    language "bg" do
      sha256 "bf4b656bb371796bd9ee62015458e7581ecf0439c6785edfccd3dea570dd7ee8"
      "bg"
    end
    language "bn-IN" do
      sha256 "9bf71c07007fd47c47a08d5d21549a7808d58263f3b26a0f1b93557b84edb781"
      "bn-IN"
    end
    language "bn" do
      sha256 "c282cb77e814ddb5f08996e2614f4f34a6779fa2becb4ececfdb3aef50f3fcf6"
      "bn"
    end
    language "bo" do
      sha256 "ed9c851bde7deab68c29ba9946f12fa739b79c25505ffb6a24d773ac7530aa1a"
      "bo"
    end
    language "br" do
      sha256 "fe481632d05430c20c0353d26daef8ec3eb4e78dd693521beb01420bae864211"
      "br"
    end
    language "bs" do
      sha256 "fb9a93975252a057a6fd067f8c3c4e146cbffa6ae058a9848d907b9dfc7b75bb"
      "bs"
    end
    language "ca" do
      sha256 "408b6efbece5d5e631aafbfe4d25925b408be43c76d532cf9c708a7ed66c6b41"
      "ca"
    end
    language "cs" do
      sha256 "0a12e0445edb119ceb06e70444b7066e7a48f158333891db68f134c8fbb79c49"
      "cs"
    end
    language "cy" do
      sha256 "55b63023a89d72e4638212b162dfc5d2ec72e8809cb890a04791e248ec2ce313"
      "cy"
    end
    language "da" do
      sha256 "b00bfa690c243154c03d5fce4d9aa7ff88b86cb7df3792d0415f3d0c15915396"
      "da"
    end
    language "de" do
      sha256 "87c882916f7944c1b3717b24e5eaec2f596684db2cc07f5744f6fa664a8e6569"
      "de"
    end
    language "dz" do
      sha256 "be97fd5678c23aa29d2d77e50c2f5f747a62a3046907f446622d95e151981ae2"
      "dz"
    end
    language "el" do
      sha256 "f7a101fd64296e96f3c622ad7dc7d436c0740be58be6a40a88563b4862b33bb9"
      "el"
    end
    language "en-GB", default: true do
      sha256 "b14506396b471c65966021eba8fd6966a9a9f7063418999b12b09d806872a735"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "12dc7038e01f46f73c96af9fb3b364a1c83ed976bb10bc93d6052973cf202caf"
      "en-ZA"
    end
    language "eo" do
      sha256 "e8153f31753d11ea7fb1a6de7124ba3e41c9ec87f893b177c36df6a44974f7a3"
      "eo"
    end
    language "es" do
      sha256 "3ec86aef385d3cc86cc96c7f22f431966fde6cae66ab6038dd2045744c85d6ef"
      "es"
    end
    language "et" do
      sha256 "358f633a9770fb2d559dd2304c2e1b3d3ca62b5273c314b8adbac4146444d7bf"
      "et"
    end
    language "eu" do
      sha256 "955812af92db06e474f059525dcf0738bd0d80aa8cc771fd63471babc1a916d7"
      "eu"
    end
    language "fa" do
      sha256 "875a338eb136a82af986d56a8388a430568929d222d4e7cc863be894943196f7"
      "fa"
    end
    language "fi" do
      sha256 "603d7fceaeb96849f21aafc8bbfea72bbfdeae3cd996341dd10cf7aac5c8df8a"
      "fi"
    end
    language "fr" do
      sha256 "549a8799cbe3bb6b65ea9fcb19e538154d1cbb28f56cdfa7d9f9f0bf9d389e68"
      "fr"
    end
    language "fy" do
      sha256 "c6835afc915dc253b7d613c9497c0a846828b2e3e3351efbde13cbc54ea6b75d"
      "fy"
    end
    language "ga" do
      sha256 "6516a3e89a00bef0bb0bfc807a63f15653a9fd298f9cc6ad02e0600946fe9f65"
      "ga"
    end
    language "gd" do
      sha256 "c887496916edc10d592434970c5b101b943fdf4bd209053931dd41d72e0a4149"
      "gd"
    end
    language "gl" do
      sha256 "1c41b708cd4357c9900f175c7afdf6d0bd4240119c7751defdb752f009a3f8c9"
      "gl"
    end
    language "gu" do
      sha256 "36642bfacaa9c997f77bede46b08f5a4cef3dd89ee5ffff9a2492f6ca75bbdcb"
      "gu"
    end
    language "he" do
      sha256 "25d58fae4e53f15b3fd72009f469461859ba42af940362cc58a7aabe44afb152"
      "he"
    end
    language "hi" do
      sha256 "548dadb51d87ac9f53b16a5dd30cd010fdbd8e1909520a4a22963e816b239c1c"
      "hi"
    end
    language "hr" do
      sha256 "06dbca3ad15a3bedc6a006fae7c5687e57fef56ab0dcf6dcf672d240fe835792"
      "hr"
    end
    language "hu" do
      sha256 "0b9772d43b7faa4737b5331829bc777afd7671d7bb5419c845fd67a029e649c2"
      "hu"
    end
    language "id" do
      sha256 "c7d08f7f56728810255dfafe0aa45cb08e5c33f4033e6a6113fb22a426089038"
      "id"
    end
    language "is" do
      sha256 "5a341278212a7fa1f2356b24ad73c131fc7796a67234d6fdc7daa611eea7e03b"
      "is"
    end
    language "it" do
      sha256 "33d2b2a69d2ea6768d9180cf957b932308df8ffce515ef466addfd087dc4481d"
      "it"
    end
    language "ja" do
      sha256 "313cb917b2b5e48883f98ff093b06fb380d4b3684538f4b4f13aa0ef61a1ac0f"
      "ja"
    end
    language "ka" do
      sha256 "0f652cd5726e9f1264dddeb2cd30dacc5bbb139253485ef2bdfaeb0ded0c6763"
      "ka"
    end
    language "kk" do
      sha256 "15f5f5423c1b77127da0d865d20fabba32638207d4f9f2ea3056a1ea63569f42"
      "kk"
    end
    language "km" do
      sha256 "7d8338d5e073840f37598b37a9f97adabc18e45f0160e097254f49104514895f"
      "km"
    end
    language "kn" do
      sha256 "a747c5754260d877fd9299416529ce0342cefeb8f738336fe7dd74743d0993e2"
      "kn"
    end
    language "ko" do
      sha256 "f02a1198c8e2841a3578c02604b7b276b2c99b46f074aecf4755a11e9470336e"
      "ko"
    end
    language "ks" do
      sha256 "f07fbfe1576ca510a0d075b926f0b59ef94734cdd8113bbe4a79d37a09d1717d"
      "ks"
    end
    language "lb" do
      sha256 "5664278a6ca15e2e2fc73f6bd13b12f8e85a1af8e553cc6e56faa51b554b09d8"
      "lb"
    end
    language "lo" do
      sha256 "5bc40ac86703079414b6d4561af81eff3731c90c116f61dcdd7fc6681246aebd"
      "lo"
    end
    language "lt" do
      sha256 "722f42b1a1039cbaf2c18a813a0852b58e2a23fd0c71fdd01e1535db4390184d"
      "lt"
    end
    language "lv" do
      sha256 "e97cfb436f9b36c3e19d694c7f1dc86e54436c263811122334e3a9742162f5ae"
      "lv"
    end
    language "mk" do
      sha256 "9df22823e1fed0b89482eabcb0253745d62116f9aab612778afd5848eec5a328"
      "mk"
    end
    language "ml" do
      sha256 "6757102d6700bd97e038619d5ff491df01585908d43d98d9c4fa2e3bdf7e8cc5"
      "ml"
    end
    language "mn" do
      sha256 "2ad2a26a2a8b4ce15f67fc2fb936569f299aa91c1dbc0df5d497a68b13948210"
      "mn"
    end
    language "mr" do
      sha256 "6ef7a48d644a445528a8d316e66c76af62396260725e314d729132e1167d02b2"
      "mr"
    end
    language "my" do
      sha256 "4474980f3f7baad6bba6d95195cb772ceb12b33ee87e9bf998772f38a1e31a88"
      "my"
    end
    language "nb" do
      sha256 "17188c9592089b81eabc2de5521de42ca958529fa4fe857ba865a6cf8b4fc5d6"
      "nb"
    end
    language "ne" do
      sha256 "4aab1245b8aa14c3dde55e00c8412f40450298da8e2c1ec0a3252a0418f9a6db"
      "ne"
    end
    language "nl" do
      sha256 "b7d379aeb8cb15f834c9e2f2049809bdbdeef9a19c71519eb5205aebc3929575"
      "nl"
    end
    language "nn" do
      sha256 "553518dbd7748c8c4b048b6275379834bc3bb1b0190d68b74e04dad847a114bb"
      "nn"
    end
    language "nr" do
      sha256 "cfafedb9ea5ab2b9612b3131ccda3300be55ab91fd5b1ceae0554004d187276b"
      "nr"
    end
    language "oc" do
      sha256 "3c0d2860460e3ca97ea7168283e5fad6266d087fcdf7c95cb03f7f2d29b9a582"
      "oc"
    end
    language "om" do
      sha256 "f86c32b2a24fb72c0379057bb2b0046ddee781ba95e6dc48377db7da7084e449"
      "om"
    end
    language "or" do
      sha256 "2973e6d26b6d2ecca02eea209ce35112a51cef868c66f2ad2996046b6ed50095"
      "or"
    end
    language "pa-IN" do
      sha256 "9099d1885a869cf540d011f129a3cc1f02e8f89e61c4495704b18555e5f2c604"
      "pa-IN"
    end
    language "pl" do
      sha256 "a8bf19838d6863fca9e41178e3f7afaa80d404ff96d37dad200a0a6993f51424"
      "pl"
    end
    language "pt-BR" do
      sha256 "1531ebfaf5cbb2cc58018bb2a262ea9df4625704c90ff689103478ba105b2f86"
      "pt-BR"
    end
    language "pt" do
      sha256 "9739b8860d0f8313aac05278b3213ac05b0bfe902c78ffccb77b5ad87f4fe8af"
      "pt"
    end
    language "ro" do
      sha256 "09d91a4e5baf81bbfd7c1c786786e9c1ce6299fa6e02a091e60c2dbb96d89823"
      "ro"
    end
    language "ru" do
      sha256 "c6e6470fffb88330a2590adbab2521e8a41047da889cc4fffc6093de4b4e7c17"
      "ru"
    end
    language "rw" do
      sha256 "6d52e957fb92777128fc23adc43de61200a551c6c981ea1bb70ba901651d1482"
      "rw"
    end
    language "sa-IN" do
      sha256 "8eedd078a3abb3006b165d70e3010f48295dddb93575c2352b9208e91b68f3b9"
      "sa-IN"
    end
    language "sd" do
      sha256 "286edb579fc010feb41a1d913aadc103a6e350d781e137c22eb5f002540507a6"
      "sd"
    end
    language "si" do
      sha256 "1d0617dd46aaf1f3c844c6cea336329ffb977df20a313995bdbeaaf6f6a8d8f2"
      "si"
    end
    language "sk" do
      sha256 "b13f8258279c08d291820cbfea2b271b2002fe94354bb490a590c8f34cf98ded"
      "sk"
    end
    language "sl" do
      sha256 "99ffafc77fe872137d7e4330628c59616a5d88c8dc98265ca96ed7d12a6206ef"
      "sl"
    end
    language "sq" do
      sha256 "fa2c179e6faf67a667281ba38747c9795d8ac6b44c2618f5994b8d63dff3be26"
      "sq"
    end
    language "sr" do
      sha256 "48342cf366738ee616ea30ce398dde3a7ad6d58cda576806b69e304949c4cd11"
      "sr"
    end
    language "ss" do
      sha256 "4feea4897590ee3e79c07cc0b85d32a9c6d160ac21a8fbefd293ae1f93b56d66"
      "ss"
    end
    language "st" do
      sha256 "1104f1c5b1e53c61ffbc1927a21175a044019d99039cc5e51a1dda1f936d16eb"
      "st"
    end
    language "sv" do
      sha256 "3af4dfeb30ea3ebfdcbcb0b76f9fd4c5b84e3800716610d6a450aec954d60db9"
      "sv"
    end
    language "sw-TZ" do
      sha256 "76a94e86676a4134ec408e6c92925fb6901624cb34ff6ae24c66d21a91f43ade"
      "sw-TZ"
    end
    language "ta" do
      sha256 "3db2b43d37d4eb775232981e69dac932897ed70fa75c589ed9bc0d79dbb2f7ba"
      "ta"
    end
    language "te" do
      sha256 "a26dc6636b6ce0d3bab5750a71c0fb7cde47699ee61ca8a62bad2c55b8a039da"
      "te"
    end
    language "tg" do
      sha256 "9cb2d3afe3735d2a0271ac07ae73cbbb76679328871495e25ce56549f98c13e8"
      "tg"
    end
    language "th" do
      sha256 "412857e759cde5c2c541566a9378998b83064c6a8884b0da42c8ddc2a4f2dd68"
      "th"
    end
    language "tn" do
      sha256 "4c6e6e4897f7dd18f0e5fb4a7996120cc1027fc8206d9782096486b5df6f515b"
      "tn"
    end
    language "tr" do
      sha256 "1593aa2476a991014f6fa9756bbbf57f47a3806adc495a135057b86929d204fb"
      "tr"
    end
    language "ts" do
      sha256 "aecf759f6000f5bd6ac3221b87c070a632ad18ec614484c42ab2c68d92105285"
      "ts"
    end
    language "tt" do
      sha256 "df99ab40d6fb12bff8371dde9e2a48683f2517e29b9424fc289b8b885f6da209"
      "tt"
    end
    language "ug" do
      sha256 "edd7117760fd83ef386b2740824764cf2dcfc509e59c234cf16436265b34c439"
      "ug"
    end
    language "uk" do
      sha256 "9bacc6c4ea69da0942f9499cb49070f1f1f21588477d9ebc03747aefbe319f5d"
      "uk"
    end
    language "uz" do
      sha256 "a0cddf36e715cdb92962f72750de3652daf7de6a4d25df231a33872a6df68ccf"
      "uz"
    end
    language "ve" do
      sha256 "6aec0306f41482a0e8b84e3f6840ac11fc892a44afbadec6445b58f35922e7ff"
      "ve"
    end
    language "vi" do
      sha256 "c129732e05f163998e7765263775df99b6a7bfefc4586e954f03180b45ad585d"
      "vi"
    end
    language "xh" do
      sha256 "a14e17c8d239243842c8a8914fec9eb572f9ba81ee16e53e5b0d8bd0bd651ef5"
      "xh"
    end
    language "zh-CN" do
      sha256 "4809f81bfeb3709b6ffc53ac7c03abaaafd55a19795670d6f0227769d631db51"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "c7fb1d2d49ffea299ed5e646195285af6faed11c535035862429bff9fe884a46"
      "zh-TW"
    end
    language "zu" do
      sha256 "08cb81c06c9884a77f1dcaa6b4d9fcb6aa60e8fad7ad60bb98fc4a47ae6e9932"
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

  installer manual: "LibreOffice Language Pack.app"

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: "#{staged_path}/#{token}"

  # No zap stanza required

  caveats <<~EOS
    #{token} cannot be upgraded, use brew reinstall --cask #{token} instead
  EOS
end
