cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.2.1"

  on_arm do
    language "af" do
      sha256 "400409bba38e2fafef25abf458d644d441a6c0707b73670221de03938e065448"
      "af"
    end
    language "am" do
      sha256 "12ff02dcbdb46bc804695980588620dab222e164331132afec2ba3dd186c703e"
      "am"
    end
    language "ar" do
      sha256 "6ec43931cfb84ce5febe5cdb69f1f189b7a936d3c1f31f0df950b92e10a343fe"
      "ar"
    end
    language "as" do
      sha256 "36ca7dd388d7becd209ba28b78218171f107ca57e8925419ec26a5fc7da808be"
      "as"
    end
    language "be" do
      sha256 "3e955d3d2df6272ddd5bae0d41281d30c5787bac740d1af39b70481c165c518a"
      "be"
    end
    language "bg" do
      sha256 "9e81aea23b6762579af51a79836954ec07e6f093d311d416653547622a8bf0a8"
      "bg"
    end
    language "bn-IN" do
      sha256 "074e3449d8e73d49b4abbdfe11e9b5ff4c97df016ceaf60bed13aad5b238f95b"
      "bn-IN"
    end
    language "bn" do
      sha256 "7be9aecdd71eda2726d8384fe645d0f949e3cfad39f7add65403be73b570b881"
      "bn"
    end
    language "bo" do
      sha256 "a4236918bf1734691c763cc3861c075d82b15929ce09610744d1c53826ce026a"
      "bo"
    end
    language "br" do
      sha256 "8a93a70329e420c06513f1eabdbe617359f6461f58b74e04fc68267e02b8c3e6"
      "br"
    end
    language "bs" do
      sha256 "3a1d7400c1e867375cfdba936b1b94606d1bc9075d1293c5f1c64bccf78ae1f5"
      "bs"
    end
    language "ca" do
      sha256 "d03b66bc6fefdece862c44e5437b2c5026a752ccf17c96fbd5cb2137135ce48c"
      "ca"
    end
    language "cs" do
      sha256 "b13f5903d3aeba8ec6e71d3e1afcfa97f5285cf27b8fb3defe22fee9e70aefd1"
      "cs"
    end
    language "cy" do
      sha256 "ae97a0eb0bc32381a07ca5f4415a30396f5d5cc73fc856b2839f6b96d76a126f"
      "cy"
    end
    language "da" do
      sha256 "4282fb2b4a1a2b58aa582dab4db7f759099189e37c8f28087dbe85a7af18e2c6"
      "da"
    end
    language "de" do
      sha256 "bb9f73997c70ca71fdfc90bb515757335081a895fae5675558b683b3085a591a"
      "de"
    end
    language "dz" do
      sha256 "72494ebd6d168653d48b21ca23399abedcbd90b5034a8afbb70a0b90213b301a"
      "dz"
    end
    language "el" do
      sha256 "11a54b7518ab2c20b0499a33a7b761eeb3f05a583073130c54307c3297bac53c"
      "el"
    end
    language "en-GB", default: true do
      sha256 "c9bade40a746e26e43375c408964e33e693dc947fe0be2e747b2e267a725b39a"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "bf465351a701eb45f7dca3002a229517656b785c01958b4c5d5e18f3ec09407e"
      "en-ZA"
    end
    language "eo" do
      sha256 "6a929642c29d26ea80205ef29d5861e5ca83ebb9084ee5307d8c7bafaf9cd630"
      "eo"
    end
    language "es" do
      sha256 "0dd335633909aa836678c38d3498d53c82d29a525d855f5cc9b3cc312811a15c"
      "es"
    end
    language "et" do
      sha256 "fb19fae80f8683f08dce27eeafbf3bb3e486930fd34b9f6e787a3e8873e95fac"
      "et"
    end
    language "eu" do
      sha256 "dd726c2300b47b481377940dc5c1baa062689a160e5cabb13212987f842c6eb0"
      "eu"
    end
    language "fa" do
      sha256 "b8c9574628209545b1b56fc7018bff960a8985dd6a2e64692febbe6f476dbdc5"
      "fa"
    end
    language "fi" do
      sha256 "72d20b15bd503c8e7b1856b2d4e6dd003d07eb07061ac45719b16835e904fc0a"
      "fi"
    end
    language "fr" do
      sha256 "deb82d013b604d64594d74dc53dd84c21fc87c88e924cce06e399ba3b77c6d3b"
      "fr"
    end
    language "fy" do
      sha256 "7e6fad8004db869a130d66cbce85a53d827fad6fdfad2c7a3e10d0e509054097"
      "fy"
    end
    language "ga" do
      sha256 "83acb177075641a3d19d12b822025f3f6540d049ab687a41c36f5997194cf6d1"
      "ga"
    end
    language "gd" do
      sha256 "b175dece969edd50f5b60d25f2befa197c3b265bde82a6896c7408b6345e8074"
      "gd"
    end
    language "gl" do
      sha256 "2d8af368445098a420420921e47717d8b38edca712b35d19cfe7992a8b21fa4a"
      "gl"
    end
    language "gu" do
      sha256 "bf103b91b5a177d3186ef6d1c868202d23a2906d6771fe9da23604c37d18a5e6"
      "gu"
    end
    language "he" do
      sha256 "ef063f798276f0db9ac0a02ae5f0a4cca3fc61a50e564674d6d7132c83ba7449"
      "he"
    end
    language "hi" do
      sha256 "52c9a36a579aebe7375c996a20da8cee938872c3d2b9c8513a508864b28e7c6e"
      "hi"
    end
    language "hr" do
      sha256 "b1d89ea3b3549e442d137521ba176328679dad656833faf1e9f091217b862fd2"
      "hr"
    end
    language "hu" do
      sha256 "5821e9f15e36abd21f41cfe7afdae16991bb8aead779ab8faeecf8a1922afd18"
      "hu"
    end
    language "id" do
      sha256 "8c95afcfb5bf2d75917098967ce75de0439bb72ef26552369931a1e7d9a98d35"
      "id"
    end
    language "is" do
      sha256 "cc5ff342cbe980f2070d2a1b1907cd7f6d99fcfc009b9e1f96720655c618a90f"
      "is"
    end
    language "it" do
      sha256 "81c4ff4bbd7c6ca667fc6e236ca92648bf44659a5936b248601c302f3c97c97c"
      "it"
    end
    language "ja" do
      sha256 "502ada31d6148e0c67d07d037247c84966ae254cb2e23525bf7e7442f2fd1794"
      "ja"
    end
    language "ka" do
      sha256 "fb212f8582a99827d9970204d0ff65628a266246ebce62d9203aafc6ce264ae2"
      "ka"
    end
    language "kk" do
      sha256 "05299db324b3dd821b32151468fb44e75436e98786fbdf2ad97743c91545fb44"
      "kk"
    end
    language "km" do
      sha256 "ba404fbcf39f980f14df0347049dff5998324fbf5c309147d11aa8b106f5cd5d"
      "km"
    end
    language "kn" do
      sha256 "62c7feeaed96aac50e3eea305b7366c40dcf6d4581095dab086c10279fbbb975"
      "kn"
    end
    language "ko" do
      sha256 "6dd7b561831895fd09d5032e0a6a6b4b47e0a3b32da1aeff3a9df62a834d0d33"
      "ko"
    end
    language "ks" do
      sha256 "b288dfe38bbb51fdd9fdc1eb76fd2561bec4d57a324afcf3d67f81466b9d992c"
      "ks"
    end
    language "lb" do
      sha256 "a7212025886eaad536434215107c13aa04a5ed233793e0744578179d7f17b6d9"
      "lb"
    end
    language "lo" do
      sha256 "7949577301ba6ce4c0721f19d503a06442a6920c67bb31cc34f42bf5fbb2a06e"
      "lo"
    end
    language "lt" do
      sha256 "ffd8e17f123ef9281750d0ab2f266acdd4f9a9d0dccf80d4f8cf4a1b04b3a8b7"
      "lt"
    end
    language "lv" do
      sha256 "2e75a609387de3b85d273bc28bced38b15d2237231612b7e0f1c567a8c87a93f"
      "lv"
    end
    language "mk" do
      sha256 "ba9cbe1496b40219fd467c29ff7395e7b2291790d7481b335bd64ed2acf19006"
      "mk"
    end
    language "ml" do
      sha256 "0154ee22914e84811fe2e940362d67b6ca4afed49a4185902b12d2f0932eb12b"
      "ml"
    end
    language "mn" do
      sha256 "e835232bf62e2d5e4bedc58a470837346e66ce84be3976c8470c4717453aade4"
      "mn"
    end
    language "mr" do
      sha256 "604b78d168bc26360befc94b586908453d3a7839e54b2b5a3edd4a4629d8c773"
      "mr"
    end
    language "my" do
      sha256 "5346ef748f07c61e5f4c8e5b7a9dab33ee8bd7a63f22a535b4afbdb3ec1f40d7"
      "my"
    end
    language "nb" do
      sha256 "8dc9cdb954acb30404c95bcb9f6a5f0546adb40f974d219cdb00c70d56c9e6ae"
      "nb"
    end
    language "ne" do
      sha256 "8333c2e0bd90db85197bb6ef4fde4d252dfe0e293bf3f13b17f550a305545656"
      "ne"
    end
    language "nl" do
      sha256 "dc8653e74261408c5317adea24a6a6d4a02f5ae04afebec3e589884be12340c2"
      "nl"
    end
    language "nn" do
      sha256 "0c44ca8e61d5043ec5d08cd5bc54293e635296d1bb3f9bf22958368f2c930d7d"
      "nn"
    end
    language "nr" do
      sha256 "1ddd002f52a9518c16e7b411f002df63f99839976074eac1aab4f2206fbf785f"
      "nr"
    end
    language "oc" do
      sha256 "0afcd1b9f7877354fa9a4f1255bfcc0d44f223cc681468d169ecd3a0904575e2"
      "oc"
    end
    language "om" do
      sha256 "81c8f5c03ca452fc2fc959e337b99fbb5fdceed3e70f19d87f45176f8bbcb0a9"
      "om"
    end
    language "or" do
      sha256 "0a35364d2a22e8223981a47fa07b5676bb8e8b7156116cd57da1c8252babeb3c"
      "or"
    end
    language "pa-IN" do
      sha256 "c1e8fcb08aede5965815e5874b1db46f1e317e19f71dff999072824544c25dfc"
      "pa-IN"
    end
    language "pl" do
      sha256 "7ba56b0c131399d720d010f81876477e09a4823174a94fcbe548be99494f3aa9"
      "pl"
    end
    language "pt-BR" do
      sha256 "0a235b04f1444857e58a8db0d84af8a181a6afac6cfab2e1cce95d87bf82c3a1"
      "pt-BR"
    end
    language "pt" do
      sha256 "fe41e13ae03ccbd1cff62f19934bea0b279d2bd4f3ff40498267c6700c783fec"
      "pt"
    end
    language "ro" do
      sha256 "7a8f314b9239bc24bb34924629faa5ae28792af2016d1e150f82a41ad78ca9ec"
      "ro"
    end
    language "ru" do
      sha256 "d5d5bfecaff124a04a994db27ea1a6dc33f9fea155a8f20d440b30864067b360"
      "ru"
    end
    language "rw" do
      sha256 "e2eb03995eef506831bd2875a8b8ff2d0c7dd6158335ac71043abba1795b8686"
      "rw"
    end
    language "sa-IN" do
      sha256 "68083fd4ec6c97eba814a1c9a00cc771faa9318bb3989bd68efa4485d3615620"
      "sa-IN"
    end
    language "sd" do
      sha256 "a145d55c7f65311c0d1a448d9919bc2a90c4038731e1449465bd7ec4e3718fa9"
      "sd"
    end
    language "si" do
      sha256 "f03e1c2ed312e7710fc08e12c38289c6c8b4725fe4c0e8b80e8118b1682fae17"
      "si"
    end
    language "sk" do
      sha256 "d9b248ead80b089339f3d75ad96a00736741182e7d8695f64952576fa3af4ad8"
      "sk"
    end
    language "sl" do
      sha256 "be66ce7b88547ca24372cb80f3d503e07357a41ad9f81912fb44a835f48c771c"
      "sl"
    end
    language "sq" do
      sha256 "12f834cb4ea7e52a7d751a26a49c2fca888375bf79a4d98a3e0fdd589c55e460"
      "sq"
    end
    language "sr" do
      sha256 "5cb93b6074a0770d04ef221ee3364c004701e4a804ef9271b5b6d4eb0c053c13"
      "sr"
    end
    language "ss" do
      sha256 "a8899347ab83297ecccbab8c185d2e68b9e50c18691c5d97aa5f307f57e175db"
      "ss"
    end
    language "st" do
      sha256 "8046f61d610afd40df7e18bde82ff9165c24e34f4b0988635dd4c2570ec30dfd"
      "st"
    end
    language "sv" do
      sha256 "d96e835b41bd46d0e69ca58b9f4426cd5a17d6e57a10116d76fea41652129bcd"
      "sv"
    end
    language "sw-TZ" do
      sha256 "081727b487ea84933101e6125bde1a611e95353f87b43537544286a04cc88d40"
      "sw-TZ"
    end
    language "ta" do
      sha256 "b1f8aa36658df2975ce50a324738266dffb9bf0c33a4d684c2089b9308b4456a"
      "ta"
    end
    language "te" do
      sha256 "693dbfe9b999566452eedc3d8a90bc87c15b7f0bf0f475c932a04270faee08da"
      "te"
    end
    language "tg" do
      sha256 "14c8b156b7760d63d14d6c97f1c94992e6fa7b9bcbdcc0540a9a5e4b1749db4a"
      "tg"
    end
    language "th" do
      sha256 "d45f2e2c09ff878a7a7ef69789b591c406daa2d097ffe29925c549d6ee5b13ef"
      "th"
    end
    language "tn" do
      sha256 "74783fb681dff998aab6f606bf883c19a63c9606d2264423da34416da68d5080"
      "tn"
    end
    language "tr" do
      sha256 "7f223f68e20e2a0ebbc02180349b72d13c0723677388c0e0619cfa900a29a5fd"
      "tr"
    end
    language "ts" do
      sha256 "7a3c1a9b9edc7550bd4f75006c327771516a814bb7d2bd818f849bc344d5806b"
      "ts"
    end
    language "tt" do
      sha256 "cd58dffc9c2d8944e235832df8ada482247fe31afc9b28050ba9eaff26b6462a"
      "tt"
    end
    language "ug" do
      sha256 "421c220e1b5c26505f84f5f1675361f1edb1dfa309e3bbafe7df834bdaac612d"
      "ug"
    end
    language "uk" do
      sha256 "496a25820245130677ca16788c27dce64ecd0f1b15960ed755009926d144d62b"
      "uk"
    end
    language "uz" do
      sha256 "87069956a70b510d8f13b1dc52da7aec30c27a6ba5bee4f3720c242c5c41940e"
      "uz"
    end
    language "ve" do
      sha256 "4c461046f024e96a7d31e5f71ee8a05b2db3b50262dd362d48ee80f0ac9256fc"
      "ve"
    end
    language "vi" do
      sha256 "f01a829c004d191c787a19cdb8d11780695ad704f38097270af7441969ad47fb"
      "vi"
    end
    language "xh" do
      sha256 "5dfd9581176e151abde47bfc16505533f53234da040ae573b8eefae43daf2517"
      "xh"
    end
    language "zh-CN" do
      sha256 "794462bc3757d8ac24b3bbfd0555c559052581b7efac16d4fc48d0da80be36a1"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "275c433c652c823314be3fc4f77c3ec50f60b95691ef70937e47ac31ce76338b"
      "zh-TW"
    end
    language "zu" do
      sha256 "47c801ce0ce2cd2c5b1fb56ae9e3db5ab03bc1c643ded8e0edbfb0bfe0adce42"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "442ba858f46df90561c71e6fd1bbd342db28faee0a812251b69782b04451b666"
      "af"
    end
    language "am" do
      sha256 "069c8b5f882dab5fd8c84306962a55f477773dfac68c66013e36db32fe1abffd"
      "am"
    end
    language "ar" do
      sha256 "5f4bb6e6d2673ed32827459a96f4815c78cac523bf80b8f02d04b68e6675995a"
      "ar"
    end
    language "as" do
      sha256 "e8f5518efc5ebf1b94d9d44eb863b50d75c8d39cdc4ee43ec6068ad13312898c"
      "as"
    end
    language "be" do
      sha256 "ba5dc6906b00d07c7412130d0e96e143804601ee1507d6738ff7887c43b6958a"
      "be"
    end
    language "bg" do
      sha256 "2a26543ac9ed759acc8a43ab1ac14cbb99ce29f7da4df1a0f4783b6a94246ba6"
      "bg"
    end
    language "bn-IN" do
      sha256 "1219e391eb22ae858a722b8826752b15c547567730e3c1b296f08c777202429b"
      "bn-IN"
    end
    language "bn" do
      sha256 "99f1ed5f4944a49b8ca16ae374307625c1d5b5196338a94a5720d39fc984590f"
      "bn"
    end
    language "bo" do
      sha256 "848068a2c897ab1cee87ec58bbae22daa3a7f9e11e5498a5300e11b85925c920"
      "bo"
    end
    language "br" do
      sha256 "5e1ab844abedf8a601ff5ea9b37c29149635e315d42fbd90b7293b2b5c30552f"
      "br"
    end
    language "bs" do
      sha256 "470a32aa013037cd283f9e7f7e6fa1886d5078c5ea68a228e4ff2ac3f842a1f3"
      "bs"
    end
    language "ca" do
      sha256 "2750a22006cbb3b70d8619d07671e0d671331ce903046019bc94ba84c10f0092"
      "ca"
    end
    language "cs" do
      sha256 "027de63538aebf5041aa940bf782432346cd4b853e84f3a497fad52448fedd21"
      "cs"
    end
    language "cy" do
      sha256 "876205d3185c67272c3646898acb870fb65bfa189697b0582534e7df3965282f"
      "cy"
    end
    language "da" do
      sha256 "e633aef2d21bd965d6c3ccbb8b48b9df02c76fe2253914a8c1dded3ba4297add"
      "da"
    end
    language "de" do
      sha256 "ed3724c1357de352227d6c37804f91f3ae25ec0f515f958b316e6bce9b08cacf"
      "de"
    end
    language "dz" do
      sha256 "aa7abf56ad4fb25ab4fb106bcdc626600fa08c02b2fe3061bc5f5e6aa28be1be"
      "dz"
    end
    language "el" do
      sha256 "75efb8b1e8ec34469d74b8d31110c7aee5b41580fa3648256db78c888a437900"
      "el"
    end
    language "en-GB", default: true do
      sha256 "605b3451c4410ab642c5ec8a696ae6b52d8537d4f47080de767473fd51bf0d29"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "3acc317f8e45301c8e4fc46e0323a79b6dc86b11f62e83182d4d25bb60639ee2"
      "en-ZA"
    end
    language "eo" do
      sha256 "3a24e7c5654acc4a595e96e43d5aa3419af93b6ba0c932fefc6b5e299e8dcd72"
      "eo"
    end
    language "es" do
      sha256 "ed17eb70ed7eafbe74f1af9f41c691ce8bb1d8b9f8fd262d02c9ca5e96664da3"
      "es"
    end
    language "et" do
      sha256 "6d71f4ff1757fa57db0cb8bbfed50e446984111e149c2bfee0cea60c3066b375"
      "et"
    end
    language "eu" do
      sha256 "9bf4a935777928a57ebc1120e5bf15cc729b42d1a6d51083ec6743278a3bc9cc"
      "eu"
    end
    language "fa" do
      sha256 "bfabbdb3e0b68071651422fcb174aa849735a74262ce5263165eacf4ace37adb"
      "fa"
    end
    language "fi" do
      sha256 "ae1933096fc964d8429f8598d0dcc93e9231d5c65b9457eb0338232885cc18a8"
      "fi"
    end
    language "fr" do
      sha256 "ede501ca70d629f420b747d247f33b81a852efc618edf74027c6c534c76d4e1c"
      "fr"
    end
    language "fy" do
      sha256 "ec1a28a9fc32d1b46b16abe25c9bc6fe3b17ba13df962df361d8a076db10bc44"
      "fy"
    end
    language "ga" do
      sha256 "d01f5596d04f7e299fa1a9e54139cc757cf69a429265037920bcd45d9ef9d9b1"
      "ga"
    end
    language "gd" do
      sha256 "73d17bc74fd60699ff530425e3e62d16dbd9c9e2891cdb15fa56745e7b6c7e49"
      "gd"
    end
    language "gl" do
      sha256 "6873f6471d2793b8f93f510628b0a20ea4599ab1933f55de8ba4d02d39fe8cca"
      "gl"
    end
    language "gu" do
      sha256 "d05ed331858d441ca2033b1c0a2a35cc358bba440137715f775d105d28e7542f"
      "gu"
    end
    language "he" do
      sha256 "d06d31de4bfabdec18bd5ad266fdcacec81ae63d6cc3acff2f15cd5e3cd5ae33"
      "he"
    end
    language "hi" do
      sha256 "b7d723ba54ab568f2788ffa2d8b706be0e36f4267b77ae4fd6248e30a7771154"
      "hi"
    end
    language "hr" do
      sha256 "8fac8f4e78eac67eef2ee5626f74904e35664b168c78136c7c009a6dbdb2af7c"
      "hr"
    end
    language "hu" do
      sha256 "ab67e30a0310198d3ab8cd3284d1e7c5f5d9ca76cb83db115370b6ffed4c64c3"
      "hu"
    end
    language "id" do
      sha256 "a451c9ef2e6881708f1041dcbf97498b391598e77843e0c752ac23477b33d381"
      "id"
    end
    language "is" do
      sha256 "cb8d98121d858537fa3d9a58be7546b4d6d4544ebec24828ff2e68f57e049ce6"
      "is"
    end
    language "it" do
      sha256 "f097261f82aebed853f369520c4c349479a6bf711179d0bd1ea6b81169d50244"
      "it"
    end
    language "ja" do
      sha256 "b503d9522480c637fda06b4df217fcca9857e2abc8cf23d6d4e263ffbe39c6c3"
      "ja"
    end
    language "ka" do
      sha256 "54e7112cc134850e146f6f09a4a930085fea837b2418318c0d9fffab90a2c640"
      "ka"
    end
    language "kk" do
      sha256 "b9cbc2b027a9c966c53e3568dcfc0f00085b276bc54184ce78783e993d672887"
      "kk"
    end
    language "km" do
      sha256 "50a1107c8348604a98bcfa7d82b3fc055df961e6365986e3d02c89f393cd9cb5"
      "km"
    end
    language "kn" do
      sha256 "564840b15ac85d866191b8226f99e2c40114f24b420528ed45c73c7cb619753e"
      "kn"
    end
    language "ko" do
      sha256 "af085f641469ac4e9f501ff0f9d615333c9e071de81e08acb1cef0a0ce9e6382"
      "ko"
    end
    language "ks" do
      sha256 "aa71574a6f2419e0e91fa42d0c2adcc64c951b1f5c0bd4c403d05a8db3a99b3e"
      "ks"
    end
    language "lb" do
      sha256 "9bc6ec436e7390e037b7da097fcbe2594081570a40c965e00739ad061be815ee"
      "lb"
    end
    language "lo" do
      sha256 "79a35093188a44c338c3915a4e819a54f9b4cf811fade9df81526b30ef7ae591"
      "lo"
    end
    language "lt" do
      sha256 "24a3a62c523de79b8305c1235d99479671e5643ab40cad64dbee049cdc5d2f13"
      "lt"
    end
    language "lv" do
      sha256 "a5f8c467b10c0afed662993873d1483f2337955e555f2c5d732a4be7cc382995"
      "lv"
    end
    language "mk" do
      sha256 "06bbbfb2354c9c072e2edf48cabcb45f4f41baf09a2770e24171a9ccf0aac490"
      "mk"
    end
    language "ml" do
      sha256 "facacde1e36466f186640cffadca7a4de8d9be31ebfb3755ee9656f39c4970e2"
      "ml"
    end
    language "mn" do
      sha256 "1b77c99328fdbb2c49791e4d0a6bcd0f6cc98f737be958368a6386d47bd9e783"
      "mn"
    end
    language "mr" do
      sha256 "f197bdecbb567a8497cec667074816a1762208f788b12d5f1e18e7dcf8fb77cf"
      "mr"
    end
    language "my" do
      sha256 "36436b342ff9240a8465a41039291a245daa332f1404d03c4f71a2a8db9631b1"
      "my"
    end
    language "nb" do
      sha256 "0953b651027bc2b84094715bc3d70f54da762790d590179bc23df1b00d7611c6"
      "nb"
    end
    language "ne" do
      sha256 "ea6d984230d29f0b4493b505652a8ba3f1dc4f7e9d61060c8e558455c9b0e5c4"
      "ne"
    end
    language "nl" do
      sha256 "c2240bb1d38a5c1a386934710eb8fc814ddbdf578b0ba3c2d3f45bf4f2b3f59d"
      "nl"
    end
    language "nn" do
      sha256 "1a6c787fff371e5d4f8249e3018198950410ad2112c4163c87dfe267c2bbaa70"
      "nn"
    end
    language "nr" do
      sha256 "ef3ad7fd847f8af7e21c72edac19f6312db9ae82b5d9571801951e0a7f917466"
      "nr"
    end
    language "oc" do
      sha256 "e1f87cf2c7827fca7715e21a9fc3477629d0793c797869afb56f4a5714acf8bd"
      "oc"
    end
    language "om" do
      sha256 "86bfbf4890c2fd3a6bd84d6dc8027ed687f6442ca06e9b215091610c36aec6f5"
      "om"
    end
    language "or" do
      sha256 "f9bd08f5b348238fca414a1fa6413a14bdbba3892dcd4670831bb8c02d8d2e82"
      "or"
    end
    language "pa-IN" do
      sha256 "81b556f7e4558a85fab31bdf0d73b1f0324e44b7e12ac902522ad81da1246a4c"
      "pa-IN"
    end
    language "pl" do
      sha256 "7435edf1949824b4c8c86f040da72651bde32970bbc90f979231925b43826397"
      "pl"
    end
    language "pt-BR" do
      sha256 "7a780892743249272a528689593078208286cb24835a963544e2db78d2fd0bfc"
      "pt-BR"
    end
    language "pt" do
      sha256 "d7452f08b4943d63e071a63ed75235cd7236151bc6ecae95c65443b5e2a88a2d"
      "pt"
    end
    language "ro" do
      sha256 "5a4ba394b2ce36f2a8953326bb44eda72d786a6c4266213bde67d42522260600"
      "ro"
    end
    language "ru" do
      sha256 "02300d71e8471112171a24d29e1b66fbbec2ea5aaaf0e108a68e9697eccb42e8"
      "ru"
    end
    language "rw" do
      sha256 "07d026169465ab56b268bdb5d0c43974e7c3975f6e706a5953dd9ddd3d856bd9"
      "rw"
    end
    language "sa-IN" do
      sha256 "d8d380b4ed1011ffc6514a8832d524fd2041eb6156f60a7fc6ebbd5711948837"
      "sa-IN"
    end
    language "sd" do
      sha256 "1b00fd75d6d6696f82c565944c9bda1d1305089452bd038ea449404104195131"
      "sd"
    end
    language "si" do
      sha256 "4e93cb60f1e0ef1e0e5fc19f78df406ac6022045a732d3e36459714ae8e3a64a"
      "si"
    end
    language "sk" do
      sha256 "4f937ae4a097704c80af2d6f7c0b535ece2724cd77b7bef8582294677beb04ea"
      "sk"
    end
    language "sl" do
      sha256 "5026b8f2c5d6f99685b8948dda6b3a58eded584c002cd6b1f6aba39e867a9a2d"
      "sl"
    end
    language "sq" do
      sha256 "f61c66c73a116eebde3ded0023a2c2e68b136d0a5eaab09a68d4d6f02c6de68b"
      "sq"
    end
    language "sr" do
      sha256 "1c7e16533550efa46fbeed8d72f2006737f63a0a0e749ad62eddf3c8846df24c"
      "sr"
    end
    language "ss" do
      sha256 "44d25ca8fb1bfb04b85a0dec2ae1ecc3e42311b231d32b77e00a8455b0527ee0"
      "ss"
    end
    language "st" do
      sha256 "ea6ab32e9307f7db8f8cd42b506d9373a0f902d97497dc9079ef48845fcc1f49"
      "st"
    end
    language "sv" do
      sha256 "dc8fd0ebd2a8a6fe03e52a0c53830a0fbc0e0ff64042692765249b331a938293"
      "sv"
    end
    language "sw-TZ" do
      sha256 "65e004dffeb9eb8b9c897851933ca0941b84ec513bf518b1672f661d4e49a655"
      "sw-TZ"
    end
    language "ta" do
      sha256 "5588039f09cf3f7d06ddf06009891696409b13fcd8c49d590b271bc77181dabe"
      "ta"
    end
    language "te" do
      sha256 "a12702599e9bc8c2ee40e6f8ab2f8052f3236d45508318060d1d8d1d4e3bd23f"
      "te"
    end
    language "tg" do
      sha256 "30fb81e4ec6d52f42fc9089c16ac6329916faa7ae7d42364cab0f0ffe95b2346"
      "tg"
    end
    language "th" do
      sha256 "431446ffea997934abebcff62690a6f2fc8c573f399b1c39b581cecc4e9209fb"
      "th"
    end
    language "tn" do
      sha256 "e1ce9f7c6b8a8eca05433075a5a70a6c94ab9e21abc1bc2719d57b08222ed550"
      "tn"
    end
    language "tr" do
      sha256 "cede5677b4528040733adaf880c068fa45452f6d6550ebd34280340cd02266b2"
      "tr"
    end
    language "ts" do
      sha256 "70b99577c33cf543e0220280738239b739eb21475259e52dc494dc6a9afeddd2"
      "ts"
    end
    language "tt" do
      sha256 "e9e129d636fde86f59a3a16eec67eec17efdb41f55cc056aa775664117d38f21"
      "tt"
    end
    language "ug" do
      sha256 "1853e62934c36c11d82955ffebf23eb559f61305999bd6c2540cd31245167e76"
      "ug"
    end
    language "uk" do
      sha256 "c348a83ca24c1d2eede0b380bd5ef95a6c0df28c0b6fd1f2e12998f4dc31ca2b"
      "uk"
    end
    language "uz" do
      sha256 "f53c24e2e17fac8d1323d4104c6048a6c6bc35de5e5063d314e61c80d732f6e4"
      "uz"
    end
    language "ve" do
      sha256 "9c3be2c7ce45f179d813b9c750f545b0612f50e42664d09522e3a0755c04fe89"
      "ve"
    end
    language "vi" do
      sha256 "b964dd2266291ce29a68c077644620bbd33a87a9fb4cc34f13a23b65a496462d"
      "vi"
    end
    language "xh" do
      sha256 "0fdf2a9016a302e7596e51d2e688c447856abadd35ea1045c5637e1d361eecce"
      "xh"
    end
    language "zh-CN" do
      sha256 "5ea616f6034088516e54daeac38d547f0586f99cb7f471af530ac76e9d906a93"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "d547efb5568fdd03795f16401d3b08ed7b2fac1554ec91aed75fb653e6c31da0"
      "zh-TW"
    end
    language "zu" do
      sha256 "116a06791bade686ff07da9abb345634d47328195dde122e4ead7055900ffb78"
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
