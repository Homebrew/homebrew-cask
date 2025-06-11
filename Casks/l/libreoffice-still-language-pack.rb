cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.8.7"

  language "af" do
    sha256 arm:   "0ba8ceaf36d7a09988cce9babdd0e6c67edfe243ca057728d030871890373f74",
           intel: "b9c2a1e3534ff47e4aa67bebad09a5760cbb53ac585d369dc7b70957baf82235"
    "af"
  end
  language "am" do
    sha256 arm:   "2dfefe819409e51ff151aedc9b2099adfe2dc100fb3804b84f586e43af19254d",
           intel: "9ce4c94cebeab557b26f0971c95c8247acea2b6aca49b90c4b99048cdb5c9b5c"
    "am"
  end
  language "ar" do
    sha256 arm:   "e384365bcbd5efd6af3aedc0cdc79572e81ac1a79b789e69fe9e29caaba569db",
           intel: "597e717d42cd0716109c14d4eae5b3ee731858c212c8e62ddaa2b8b4c1b18df7"
    "ar"
  end
  language "as" do
    sha256 arm:   "24aa8665b3e9e344df11bcb87b37230e396862fa6b674393710f5af4d1cc66a8",
           intel: "42fc0d9f84d8964bd48a7a98f5e3c8b5c25d03d34a50c1ab9d92a6c51bb54879"
    "as"
  end
  language "be" do
    sha256 arm:   "73f5e9e6241261817f45582d09e446847df0a12d8127d8758053e3287ef8040b",
           intel: "0ac6849b2ada431d7f10f0fc0db504d8a9daa01377931b8ad3c906431d1b5f43"
    "be"
  end
  language "bg" do
    sha256 arm:   "bd3962e692aa32e9de32e9af8de56f76bdc8c34898ffebb213676ab8c8b9e5ad",
           intel: "c4974b13a358082c4c2c098ee9cf5511b4f5abe752f63a8b49550e0699722ce2"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "ec7298c17c32d410e86e0466ec35ba7b4a43412dd276d5427c480f9df8d3c1ee",
           intel: "70bee8cd1951435a23a40d951b018137e2eadd20aba3dd7cfa5f6d4f0831c023"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "274c9ed69da7beb65763b0f83ba8a56a0e02ae44514842db811bee4a41e110e2",
           intel: "718b51b6c4e54fb70054f005f6b6250a576abb5cd707c7b356c5f535c5c14fcc"
    "bn"
  end
  language "bo" do
    sha256 arm:   "fc2cbc9e01ccb6f4ae5cc931fe5fdef4f1b9595f7b0d157739bf37a9bed8d04e",
           intel: "0010e15d75eaabae023f6bf8ba15d21d88ef818f5b5b61d76411e9b433dc26c3"
    "bo"
  end
  language "br" do
    sha256 arm:   "5b2e534218bccca748da2a33bf7b6c0f719ab1ed97e9af25d0adc03cb5294574",
           intel: "144976bfded80a20bd0bdfdeaa6e6d5b9ab79e0f68d45a74199d9879290466c0"
    "br"
  end
  language "bs" do
    sha256 arm:   "a4deb45d11b164bbd5861c7309cc59d3557a230e9ac2d5f578d63ac589b8a6eb",
           intel: "d9e81eef95d3cf1653c1061244b28120a7c122ce14c17d78766081116201639c"
    "bs"
  end
  language "ca" do
    sha256 arm:   "84781e7d789639c23832e477dd37e3638d91883ff66da88065602ec1fad90ec8",
           intel: "a59145453e72d010a8150931c687837cebc2505a4444aa71cd87a504ab163fec"
    "ca"
  end
  language "cs" do
    sha256 arm:   "1019c2d7c79f318d15f2aedb50d634d83736752ed337c40e9c23205024fe3fe4",
           intel: "6d96b1c9b297704ae81e39b2eaf3eaf004ed9b4fdf709f93ab0e8e4e4141423a"
    "cs"
  end
  language "cy" do
    sha256 arm:   "216f05d79a87e95768d52e8fbcf5717c5a1f96a7565c8d63f6a826e070aff517",
           intel: "f7b3a07a9d3085e28965cb7d56030e59110674e7cb6a45dacfad7090a82499eb"
    "cy"
  end
  language "da" do
    sha256 arm:   "026c59a4723124dfda40f7585df1dc0dcf656c1cef6c08bfb651268760568ba8",
           intel: "02d7419da1eef27d85c7eab1777ee86d0742674c24d3364ac99ee0858f0005f9"
    "da"
  end
  language "de" do
    sha256 arm:   "ff18723298254c5601354d776b07c5e1eb4a81e8b9df983fb932fbd6770739ac",
           intel: "81d62ae17d5341bec55156f74939cc2696e62a34301c1bfa296d2da58f979fad"
    "de"
  end
  language "dz" do
    sha256 arm:   "aca930d257ec34a6d60c2772ddda557a9c91a92d2c937f1dbe42940a8abc6e44",
           intel: "1da86a8c40443ba55f032287ec7fddb00f40378715064360ccfec19efdc6aeaa"
    "dz"
  end
  language "el" do
    sha256 arm:   "fa0c4dbe79e380b16081bed3b021db7932ae8b7c4e7bd41fcdbbeced037bd17c",
           intel: "2cd1d29dca2acdd97c26a7936730f3c775cf9a84d9400b11717cd56c55123a4e"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "d5cdfa8863e8adcd97c8b9230c752a563daf40abc619745d7cd22c7d70cd712c",
           intel: "03c460c81ec80e97875acf71dbe13da4c6d7a5de8cd9078145a8cf8bb2532769"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "35157cdca934b24d121f4c1f78c7f7e109c61ba08d77a1baa3631b4034fbf6e2",
           intel: "61de7b45ed8c913340bfd818ed20d856cdaee8fff9e526b11bdcbace3da4a785"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "065fdcf954d9f3e307bcc708fb6308656d1e4b2088f986166974facb9375459a",
           intel: "5c16f456af6a2d532341a7dde6f43cae2f9e413d13d1328f5061bb614cdca700"
    "eo"
  end
  language "es" do
    sha256 arm:   "a9297c4a5f17a4f69269087e678fb9a202b51e14ee00e8cb0e637672c78cec78",
           intel: "5ba842c8d15c2d8c3f1a45105d8a7d080fe1e6eb424e8ef837f0eee7bcecbdc2"
    "es"
  end
  language "et" do
    sha256 arm:   "87685f03d04c3c9902239413fed4b6acb0e716c98886bce4865c79df8584a620",
           intel: "13cada3e93d5393bd589e930cbd4ac36cc878df77d298b37910457e5f540ff88"
    "et"
  end
  language "eu" do
    sha256 arm:   "e069a968c5bc2878a2bd8576c369043d7d6f3d711643d9fca056cb4e9febed58",
           intel: "947fdc3a50b72511e2e5747dd8a61f188ae793458a3f3b60ac27c043d53d0d7f"
    "eu"
  end
  language "fa" do
    sha256 arm:   "e7586e2fa61e1a79487344dda1c4c96a117756c8035040c352ce9edf7d87d9a5",
           intel: "5e27d86cb7da64ce9903ad82f96fa573efacfd3b73cf248be4647802f91db7f5"
    "fa"
  end
  language "fi" do
    sha256 arm:   "c6633659c6495f9060f776b9e1fb023b6bb0dd971488f4ce74ffc8ed7b484aa9",
           intel: "a7e52c99c8ec572fdc23c128832044c65c8f4d0f3a8571c82f623acd10000a8d"
    "fi"
  end
  language "fr" do
    sha256 arm:   "1d3da9bc4e4c2943d4a71edcd54033287c1e7a84f490357d2ed4b54b09d81ff6",
           intel: "2ff80a74cab68858b2af9c826c32e404394e3934bfd8ac5f8538273eeb88d913"
    "fr"
  end
  language "fy" do
    sha256 arm:   "316d6c89b5202c0557460d4e86672354933401dcbcf8087e7ea2a0aa81453594",
           intel: "85dd8eff9d927773ff38b708d97dfed8d1bbb43386f7fe0b1e8a324d72781ee4"
    "fy"
  end
  language "ga" do
    sha256 arm:   "93594065894f1169b5ceef837842af5209c2a336728bf541a220cd2e3003ce14",
           intel: "c793d1d3f485e4ed9cc507c7b6ae56f5872fd1178be2fea3516b3159b25c2cbf"
    "ga"
  end
  language "gd" do
    sha256 arm:   "1c1c641a6907de5cfa31d49b48229eba385c7c5a655787fd702cf954e6eb95a2",
           intel: "752df5affb7e927c9b1f1386c5abdf85635e1453fc9bda28ab64311fa79990fe"
    "gd"
  end
  language "gl" do
    sha256 arm:   "52e1638c9b6629da5ac943c451cc2909aba2d11608cada6ae4a386f23672c306",
           intel: "ac163b5031c34439604168332db2d8fedac5a0206dd619ea98099f383355a290"
    "gl"
  end
  language "gu" do
    sha256 arm:   "0bd043868321376ae1f142e1eef0748d9302ea2da83fb66fa4b1ae314c2e3b93",
           intel: "97e18825fd8cc48366d60424f86d5e238fa6ab699055cc9597cd200fa27a8004"
    "gu"
  end
  language "he" do
    sha256 arm:   "fa2697451a3f5a49a504ccb827978fefa69a9c6734f4bd5ba25a398766ec111e",
           intel: "deb34f34d59ca348f0121832736c85160157b8508a5d5522c3464dfb8a2d34f3"
    "he"
  end
  language "hi" do
    sha256 arm:   "0730e104aaefaa0cdddb96f7675f9a2398e607c6ce6ae657ee0cf4a6da4c119b",
           intel: "188e4d13ae3cbdebcd5467a4618dbe80f58e58a5268edd90f485b2436296ca99"
    "hi"
  end
  language "hr" do
    sha256 arm:   "d4a72a49dc3e9ffb45fd863b49860c958dc0bf19519c18a538e91c1728a15e65",
           intel: "a4dcec9e1c3f2a72a9a2eec24498ed94567aa458d32cf32e9756716ec963d53e"
    "hr"
  end
  language "hu" do
    sha256 arm:   "3a1d1188868c6a434ef446d6f6580b918d18c236031687f16967eabb95a8414b",
           intel: "0fe973de606e5f7f585db1981dea38a801e3a8f516b943be7352956f79b23760"
    "hu"
  end
  language "id" do
    sha256 arm:   "0c1c7063fb4bf836e3ffb2352bb28fa7c840acd7f872adc26ecaf8ec985f5557",
           intel: "c07611921abacb90e82d997d92b67517ce949200884da48ecb2d0113e92f6d82"
    "id"
  end
  language "is" do
    sha256 arm:   "9f95434cf68c2e84be5e24f4f21318456761255aa2402a42f64b4d86171a2384",
           intel: "07852d30c2c722439586a0ae96b27f179ebf2775e695f1c60b4b15d5f4ae8b80"
    "is"
  end
  language "it" do
    sha256 arm:   "1244c5957c937355b5f3fc760904162696eeefbf0aa58e808c1ac3a2946d6903",
           intel: "b5e2442fd09715397e3c5e77c4a43c4ad7d8c735de9ba657cc3b686cc5e16e5e"
    "it"
  end
  language "ja" do
    sha256 arm:   "f57afbeaefefeedbebbfaa12a8b6df101e9825d1ae60da134772f9def5cb6752",
           intel: "f7945fe8e6decd93af88ebb4277a3a24800a56f2bfdfa7ae06d1de5e7e4ee4aa"
    "ja"
  end
  language "ka" do
    sha256 arm:   "8f08bb346359ee6d6e554bf38f35afe23535dc1769ade335c87f286c6aeae989",
           intel: "a5d5df053e2dced8f0db33474eac09dbbdfa5cfe2ec18f91351571f389a02793"
    "ka"
  end
  language "kk" do
    sha256 arm:   "0ade1a08ae4e33884a7a256be1002f5b9fa6c08c8d3335f25b6dcf0e07f2325c",
           intel: "11393c448b48ce54f150f36c0c464d6a2b61fe48fba5666068abd6664bddb837"
    "kk"
  end
  language "km" do
    sha256 arm:   "495e4dee15dda07d268cff222b60f574c010575a4d8fd7d5dd6e2e79699c004d",
           intel: "4bfb621e907d5a2d9dff10f8c9d9236b0aae0a4ec1f13e084a8ed709b9825fd0"
    "km"
  end
  language "kn" do
    sha256 arm:   "66a077d7a4483d603a4d41f6cab7cf91ce24b94b25285efcfc3b56c17bea1544",
           intel: "6fdbcb5ccf74243de38124da53311772be73bdb3e4d9fdb5d713e7679f6101f4"
    "kn"
  end
  language "ko" do
    sha256 arm:   "49f936e1bb63711a234c39dd8cb73334b7af71ce23bbe4889718bd6db6ffcb36",
           intel: "a84772712fd85f3542cad9ca30d3fce30c20d6346c607294eafc27e0f601bcb0"
    "ko"
  end
  language "ks" do
    sha256 arm:   "148237c4ce5060cd5077b3c412632bf68297d183445f7dc254f51ae8aec8eabc",
           intel: "58bcb22460329d7691bf6213a20d48b502007f53398a8c4bc70e65b25da3bc41"
    "ks"
  end
  language "lb" do
    sha256 arm:   "1a6917efe06dc0fb33c8db66b4ae18a2ed30fad2aa9252a8975d7739e582d685",
           intel: "af201cf202fd1d15d1d6cec8d3df78df319e8178f896695dcf3695386a62b2a9"
    "lb"
  end
  language "lo" do
    sha256 arm:   "a771364383a12d51a3f9a26c0c676a4b9ec86eb5d116fbf8dad3bd084a146450",
           intel: "606ac7598c41631d7c3b1495e2f27903ae48d1960963c2c32108fbeece843ba4"
    "lo"
  end
  language "lt" do
    sha256 arm:   "2d3b1c232d865654a76defbc5ba3a20f8cd4d57374488ffc64a4b0f64be003d2",
           intel: "ec72530c9120c4cc3a557b3bd0059f99ba9b431a14aee7e4ecaf814658d60690"
    "lt"
  end
  language "lv" do
    sha256 arm:   "7a7549407f20fd590e5afc590af0febea720217782e6796b79d148b0f8e7366f",
           intel: "1d66deb707fc94acbee3ebf56c64763f6600637b7382f7a29d186904cdaf41d8"
    "lv"
  end
  language "mk" do
    sha256 arm:   "c423cde387cde9e5528c9e25f507fcaafd5b7e15d8dff2bc3a139397d007f669",
           intel: "9ddf2d72d3801850abce49a0c9f75e3252be4595bd95557d04146be6d34445d1"
    "mk"
  end
  language "ml" do
    sha256 arm:   "d6cf1468f06ce71a9386137b71e489266a8316f50ef49e9cbf4d111d9ca6d61a",
           intel: "9f22da5ad07450932911be1ca3ee8144f8f732bc5cd865061d9a589c26a2a4a0"
    "ml"
  end
  language "mn" do
    sha256 arm:   "1681829407e1dc47060fb228668c0c25d1db2b1f35899195c2cc8bc69cdc1810",
           intel: "2b9853986757f469bf0529378edb4f468cb80f0d1105f447d387a2814ef027e6"
    "mn"
  end
  language "mr" do
    sha256 arm:   "0484b9252022d933d4c8442e54102c6800c8e9793bd0b09e092ca7aeb4cb8df0",
           intel: "348c9a9c16ff01fada1f4001a6a807d507bf36c8d1fd17f7815d5683417d9d72"
    "mr"
  end
  language "my" do
    sha256 arm:   "3e53b9524b93868fca64d4226bbfc55c6facda025893b1c652afd82775fba5f4",
           intel: "aaeab9692d43ad70eaa0f7aec3c38a1923ebc5c6a215c32c5a5559ba9e751874"
    "my"
  end
  language "nb" do
    sha256 arm:   "07250c6d192ed3d638c0641f34131fdc73eefb9f6d38a59b38109d1638a45885",
           intel: "8a24eb103b017000fca35dd694ae05b3424cbeaf052455cfafdebdfe80da13ba"
    "nb"
  end
  language "ne" do
    sha256 arm:   "ff0da73906a44d60e0a293d65a48bce69733b0cbab841e711933497b6a3e7ab5",
           intel: "3e30df919bd06b14b7bf1259f800a525091c229278a3c3e40fde16cdade2083a"
    "ne"
  end
  language "nl" do
    sha256 arm:   "24e85dbde23bd3d2f14db503e42a3109df5d2b62599abcb809cdfed5840327b9",
           intel: "d407922b481e8668bf31ee63d896f1b9a1178aa7a7bd2cdc08d2651f6e2db97e"
    "nl"
  end
  language "nn" do
    sha256 arm:   "219dbee3e2f1eda45a3d5c39119bbd7792fca49991f076d4b04cba275ebf8710",
           intel: "062365598437ea0af8542858cd40a573d52e0cafe3b8a4e2eebcabe47ddb4c3a"
    "nn"
  end
  language "nr" do
    sha256 arm:   "66ed8755fee2ee094b4575343e0d760b98a73bc7edb1950f2239049240e92743",
           intel: "0b2ccf544dcfcd9789ddccf4f8c77d4a368b5a8a2cfff17c6745a0347151fef5"
    "nr"
  end
  language "oc" do
    sha256 arm:   "a256f34b000f8923916d78bfb6feb65a289ef35c6e3d7bd2a8b8819ce362dea9",
           intel: "2d9a4c91bc9dd5a9c9f104b79b401447769b8471d31d6af53407dc400949e3e0"
    "oc"
  end
  language "om" do
    sha256 arm:   "bf76b9ec673341cb987046eaca0c615b11264cddeb4f67502f52b26d15d889d0",
           intel: "134ef17e6a22f9259948f689de5201f5396e9966f4cd1dd74c970246df9d7257"
    "om"
  end
  language "or" do
    sha256 arm:   "2eb36549009a4f3af43f16c18397a0341b41e0b59957a549fc57c6ed53ea62ad",
           intel: "9df13ed6fd3371c80e33c7960ba313aac018902268c20f5e1ce323c1aa56e031"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "45096867242f5d90c6e6cef78eb233e7f92c6b88da15a7a6aaf1b61e1955f377",
           intel: "839b845a2dacfc33b0be0866e0e6a5686313164a625536042601eab88fb441e7"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "c759fdec01a85fe245868847d3e27cc5adcf1da23f5ce4d6e82accaac274fa84",
           intel: "5b9082a9c3b75bd66cbc24689c95121cb8a81aa36da2bde1452ca07e9b25f209"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "ff06d99f1cd9cf292d04229d504abb585712848c56c9d838270beb9077dab83a",
           intel: "c753b8069b33e3f9d7327ae042e95d22006fe95dc4c57d05a3dcdd3642f2ef2f"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "87bd6621ff16f7b4c76be1457ac23d11f7add2e2bf22a2d71dace2fe94631601",
           intel: "d70936e02db7242e1d582e31cd7bbef683f5ca8dcfd8b508e8e7fa747dd81ce8"
    "pt"
  end
  language "ro" do
    sha256 arm:   "bea6e2ac21c3281ad7a037fa7cd2612c6e9c4bba6e251be4e6773be0ed186634",
           intel: "c1d11c1bf78d078d23498370ebe6cc1701be524984dea320e3d9ec4ece4a6f02"
    "ro"
  end
  language "ru" do
    sha256 arm:   "89595c1a3acf18bfb32bf189626a24239e7dde515b38708db3a6893386f56979",
           intel: "0dd882cc4b073721fba43ad60d75ef91f662eb8fc444767691faf40c7dcf80f8"
    "ru"
  end
  language "rw" do
    sha256 arm:   "49daf077f13e67d2acc7ea31bdb2841e198e9e0fd43c8151f05b45b38306394e",
           intel: "37c5741fa9925c9fae38ff73246067b830123218199a2ccf87e81d36435b1c11"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "36795b4b1d1b1d28b617b5c1af86cb92f527d35c0eceeb24538acd40df41e798",
           intel: "3ac5a7053ae9f82636e24fdb68ab20a3276190a0c48a55a7a3802450905addb8"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "ca478380d78aa0df28f7bf5991a1cfd2af35fd5992517a94c11f03356da55561",
           intel: "f8512283e2280dc314b54a5adabca61777a75ad635c6eda8552ab3daeb529a8e"
    "sd"
  end
  language "si" do
    sha256 arm:   "d5c6e96cba1ba54fd666cdba3dbd9dfd88f697d84fc87c6f73923c372489f5f4",
           intel: "0eba5fd563522ddca0fa3fcbb2fe10393c06689e6caa77991068d612993790e8"
    "si"
  end
  language "sk" do
    sha256 arm:   "d216a825d3aa2df5c292ccb761843d274593f88d5df1d419d2b420159086b4d5",
           intel: "11b9ad0a4b5e85055b52902ffc9562868637b7d39474b0a4e31a2f026d67af3f"
    "sk"
  end
  language "sl" do
    sha256 arm:   "0ac484b600f78f45ca27a5fa3d7715c392615a24f96eb8ab84713e1a9af2a17d",
           intel: "6f05d8aeed57fad613e85d128343adb7283558e5c34cee1e60d52e2c29300f4b"
    "sl"
  end
  language "sq" do
    sha256 arm:   "e90d12d9ba314fb280923f30ec0fcf59e9a2b750e4778512b657c9536e0e5788",
           intel: "7053cd43304d4d1c6173d41a4ef884c977d1b12cf4c5faa097b39bcd0487848c"
    "sq"
  end
  language "sr" do
    sha256 arm:   "12bb6feb8845249659faecd270f4a1ff7350919bbe986c00d79e469f665b50b5",
           intel: "c4e9686f876ad56c491048101941523fe5388e0a380a2b29a9292062ba3e62f8"
    "sr"
  end
  language "ss" do
    sha256 arm:   "dd0ce40ccd2451c5cdfda67448ecd9223f4d5468a2315418abd0baf164aea844",
           intel: "04733806686973c5ec3d32902447a0ea8ce0bb0ea45528835b933878fccb92b0"
    "ss"
  end
  language "st" do
    sha256 arm:   "ff95bb36fbbe0608dcd823ada62a2e86dbba2ee0646d7f9c3ec594a3c700ca9e",
           intel: "fdf52712ee169600819e84bda336a6a55e01302cbe1aaa44229755a395dff3e4"
    "st"
  end
  language "sv" do
    sha256 arm:   "df4d5026474fda8ec3ca13308af5aa0368dda15b493fe58780754badb418a7f3",
           intel: "c9f2a0033d4794439415b09544537f5acb5bda0fcdce84535d1adec3fbaca9d1"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "569112ea5b12477cc4277f3006c77a612a693979da4bc951233f9917828bee8b",
           intel: "cc7ccaddf1db447ad3be249c052589d54a593a57ec37023fa8f486465c1c21c0"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "e9dac0a9910ff0546e150c4bcfb1463bfe83e11fd27435fc0db691ae39bc5761",
           intel: "b11295b2d0ada7461ff4cdc8635ecfbd3e983e8784c4b4e957347b9adcf3e86c"
    "ta"
  end
  language "te" do
    sha256 arm:   "5143196b59f9afe32c58f76ec00a7a634335096f055b35b3cd7042b6e67ac1a8",
           intel: "0f88a9da6927aff4a2f9d3caa79cbf6341cc7ca695bad510acd7d5e60e9b9485"
    "te"
  end
  language "tg" do
    sha256 arm:   "0611f3727d1249bf6a287c795d1a7979afaf72652d70d00839d23ef84f901589",
           intel: "c65754bf431f932011de4ec2eb5773ab8f995311faec155dd9ea1b030bfe95e4"
    "tg"
  end
  language "th" do
    sha256 arm:   "e23f4bf636e1a99c8ae64274c3b3823eb14c0e8411339e06eb3d75576c61eb4a",
           intel: "0bd577551150527cf3990858f683176d687f131430c1757abf4dbdc7f1baee96"
    "th"
  end
  language "tn" do
    sha256 arm:   "29cf9c84768fc769d8ef286a8df13a9f2ed2fc04ea55407c5133f8dc11dd56de",
           intel: "a567e6969c57abd5efc1ea88d500e43c9a8c531003fceb91603d77e12cbf6500"
    "tn"
  end
  language "tr" do
    sha256 arm:   "f38e4e2ffe5d7ffd473a569e4e7aa84ab16a3d7fa492bf00070e24f8895d5ac4",
           intel: "0d956d5ac9b7ac3cdc70de4645ee9d9df7c633b749467f9b412a435491f04c85"
    "tr"
  end
  language "ts" do
    sha256 arm:   "3072cd9268906936527de42a4c4bfae3722b50ef173e6a5bcd24b2a46b6c3eb3",
           intel: "8c835462c9dbbff0245444698230d2c2bcb8f72f93020ae3f68e89077bffab40"
    "ts"
  end
  language "tt" do
    sha256 arm:   "850595c0b3f376d538675eba9d569a53226b78f756d705a72d08a2e745af688e",
           intel: "331beffe8927f88f0eccdba906e514c6ed8b60953a82164a8a69371348dfc795"
    "tt"
  end
  language "ug" do
    sha256 arm:   "f2c17ce04432c5fa1f1ae2804456356545e4bd8ab883a7f211edb93b2f4990be",
           intel: "4996578f044cd55f9666a6bab364648b03e04f967e263f64c3aad776a4afec1d"
    "ug"
  end
  language "uk" do
    sha256 arm:   "cfe49669c56f921f23ec3b254f99e904cdbca4e22b5e554d9ba54c398c5c0fc9",
           intel: "0ad8bb885d4d05db184917f52b1be885187bbc3081a51b3ba785d945be24bfbc"
    "uk"
  end
  language "uz" do
    sha256 arm:   "5a51c8f1b0fa878c27fa076283c1f1523332a0bbd615614cb82c5dca99619b7c",
           intel: "09b6fdd7e2d83ee8b46006c18f294278e5df7422339787fc2515c07cfd0f82b6"
    "uz"
  end
  language "ve" do
    sha256 arm:   "b3d323ab29dacf86001ca58d60099ddd1c1c72e75154128bdadabd8bb4ca3f04",
           intel: "f03b3f2f926aa422100dcca21b2b4a673e2c1a5360d973e0f7cc5a94d981fe2b"
    "ve"
  end
  language "vi" do
    sha256 arm:   "3be538deb65381dc3fe4cd812a4168df22479ad87ff376f6a4247f84c8306736",
           intel: "b58d2b1c0c4560516bcc4b849150c9658336822cede449704e4d89d018f7fffc"
    "vi"
  end
  language "xh" do
    sha256 arm:   "a5132f0dd649744c2e74a74905a15f294e419d51c4412bada8fc1f2566f282bd",
           intel: "8e45e65119247a0c31c71c9b139fcdcf614fcbb65a3a8c2bad8f4bd6e42fa5f0"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "674436e941212c10bb31df42c2a2570e9ce7ddaf1ec379f7b561b438e6529527",
           intel: "cf5de5b6b877828d749f3ced138168a611ab38fe1d46f736f2f6848a9cb15123"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "fc649f04371a801c77d12859dc3f47bc1336948dfab29970114f32f3501a8134",
           intel: "25ee96811cc9dc04ecde91fca02e5230f672d5f6cacb0ec87c3b445aacdc65cb"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "46a4d3116915d56b4b454a0c819328b69779d1d4020a1af0c186ae9bb1fd631e",
           intel: "b4f7dcf94cb5606548efbbcd543adc2274013a49b8e19439b2587eba2fa4c45f"
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
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
