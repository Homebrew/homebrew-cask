cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.8.6"

  language "af" do
    sha256 arm:   "9f708ea504e25dcbc24c677b8379176e97b54951e5ede771281a6d3fb71448ec",
           intel: "3718dad84b23052bb898d410018b23a902fe20e9af550bfea8e3316e4d498d75"
    "af"
  end
  language "am" do
    sha256 arm:   "45a304cf3785a60acc5153e337c7ee7c5a92eb3ae3dbfdd2387cc09a355e0303",
           intel: "e0ffbdbbfb8419cd7f42d8b553fcabf4cdaba5810301c5e77da40c25436d031f"
    "am"
  end
  language "ar" do
    sha256 arm:   "ca87c8b610c96dad6e50278b051aa5fd397d4a3a914591bd29081409d9802838",
           intel: "a6ec7e90e8497bdb00219df51f60d5b983935ad1e4bb40f833b3ed4178e6af30"
    "ar"
  end
  language "as" do
    sha256 arm:   "5839368d2ece894ca7fd5fd6d2af726bd9619f4affc8b21e5f6650c9ca6b4d13",
           intel: "e096dbad943a9aa5ae27403b33713959aa4793e564d83bab5b94d947d4368f18"
    "as"
  end
  language "be" do
    sha256 arm:   "c8224dd364e925448a5ed9fb017b17c96a35c7557f9c79c66ab7572022ff1a2b",
           intel: "0b73fe0ef37632e1971ba616aaf851554cc5f17e3f2de96f4c32948b74e3aaae"
    "be"
  end
  language "bg" do
    sha256 arm:   "519f84c34a99db9be6d745c686f71f57e7e8f6f90dcae5d73477849983caadf2",
           intel: "0ff0ba4def1e55de8d7c0bcf26fb47a9b6cbd5bd5f6a0d6d38148453ef172f58"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "000e69db8782390c11093d17540f770f9f0ab68b4178bd38548c6c32107a7aec",
           intel: "cd6da9503a851eb3778b16faa5de6dd5835600d86c698b411bfee2662a9f8d30"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "9976cdc51015dd26e9c3573493dbd4f8faa373ec246e0cea7a595453fdb686fb",
           intel: "a607a53aa35fa336f1971a5f16851686d4c48f9a9e4c31a19feadc83b98ee989"
    "bn"
  end
  language "bo" do
    sha256 arm:   "1e687f8e7aea74cdbc81ca1987338136d543455a57fd08715c240495b90533e3",
           intel: "2e0f2563e29cc08da6a97794bb8ce327438f566580ba7292a5f4afbf1b3ef16a"
    "bo"
  end
  language "br" do
    sha256 arm:   "313ecd77e4fe6c6a28740297d3de2e2e6b4155d258aab56f420d88845ea3665c",
           intel: "f08d2e2f63c625ebf39775360eb9b4fa94d64c2bbe294afb17264632e279659a"
    "br"
  end
  language "bs" do
    sha256 arm:   "19faa62d58cff2faf1c0b4f3584f3f0452ffde17362c113ff9bf6ca326a5cef9",
           intel: "212e0f43c84040348e9436f8df9a5800fc279f11f0eabed0365b151acbceddac"
    "bs"
  end
  language "ca" do
    sha256 arm:   "c2b0cf47ce286bed1acc3ad203bfce1c4cea24c5df252c807ed1af6fac10da0e",
           intel: "f8e03ed60b0ee880f74d924ba976f6f7916cceb1b4462d8e421106f1c0540cc8"
    "ca"
  end
  language "cs" do
    sha256 arm:   "0f5696054222a647ef841ef8a5a5daf54c89d3f3c8621432e0891541f145f73a",
           intel: "959a8a2bcec8e33c1edfedfdf05e72c446506d68bf9b54dd5a5ac4aebb01b8db"
    "cs"
  end
  language "cy" do
    sha256 arm:   "ba3d493c0b03390b06364f96fa69e07abf951d009175e349236cfb8b5c02fae1",
           intel: "1558457175949ab8c6833dc69ee90797c663da23dfe7cb2056a119cdad419e5a"
    "cy"
  end
  language "da" do
    sha256 arm:   "ed53dace6be5c2d67d84c3668db298b61237fa62370df4329d082bdd75678751",
           intel: "b2997671bc3530600ad31e7ec2196a0f2278a812cbf08849a104cec533836c5a"
    "da"
  end
  language "de" do
    sha256 arm:   "754d218ad1fcc45f0279097dd4b9e75ea2d8652a03b7cc7c39665c21ada2bb1f",
           intel: "10e6902bc7ca298959d9031761c801a52e802626acf43824f7493b3fa403dc19"
    "de"
  end
  language "dz" do
    sha256 arm:   "d30c62c1cfd374f9fcde0aa1fe825e2e3b199c71e8e0271d1653364570aa7c55",
           intel: "d2efbaca19906325e761491ddcdfa99e4e0b802e7846ac410b2e3df2b9d6e21e"
    "dz"
  end
  language "el" do
    sha256 arm:   "3cc94b2b426557fdb9e1cf2b9baf00f40b2c40331040c7fe1809f49e22fabd75",
           intel: "e97c5a75714afe010a550dc29746656a3a064609d55e927294bfee258bc30fca"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "f5cbb967e825403519f47e9a674a2e9e75eb98108bb999c951105758f5b25af6",
           intel: "000b1e279ac03ef6c86df53245c39d95bf8126036320ffa888f2baec897a209a"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "774ebeb269f782f07d9d54c67aa4254a89e249f11e16457a79e02bc5dda80bca",
           intel: "f4b67b0b1f9e85cb022cb45d08ca61738af89c7bd37bca7c5d1663135d248899"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "6eb5703636fa6f4201cf0b2ac7acb5a3f8be609c394a19186d9909b5e962cac0",
           intel: "e6cd5aae04702e38c062c3115acac9658f3f338a7578edaef0f133fdd340a645"
    "eo"
  end
  language "es" do
    sha256 arm:   "0082f1fb0c16ca2be6c43fd79378f5e68c2e28a3fdcb7e8b1b1bc4039c330bca",
           intel: "69ba2dd5c11ec551d2ce66282c90f99d5f57d314da7ee8915c57d8a1c595d65f"
    "es"
  end
  language "et" do
    sha256 arm:   "02b14723e010fa29e80bca24be04593c2eda7c16d2beeb7cdc04cc726ea6ca29",
           intel: "5f507ef09d1c07140a8e3dd6de2b89f6054260ac93352cdaf2289ac17dec7234"
    "et"
  end
  language "eu" do
    sha256 arm:   "3140ca30f14bb0c64d86154da688100a04916e9e434050297a4a820350714c31",
           intel: "38a24ce0c9e76f7f95ef60b44891ba9389f95490baeeebecd07e26ebe51253ef"
    "eu"
  end
  language "fa" do
    sha256 arm:   "553e9a0b2bf40fc4d55ed0f7e4a34380e3d4998979b34f40413c3d08d8b6c312",
           intel: "39f939662c9af1e337c5ab7571f7ff95ac53e21a21dc651a32219d93d5d5e51f"
    "fa"
  end
  language "fi" do
    sha256 arm:   "eb6e2ea8952987289e3d13caa335f8430dcf0e607ae3fe80cb3b27e53bb2d26e",
           intel: "bd2222bdf40d69324ce19b25ca6eacdaa5b658a6a0c178a343ff8fddfa09bd88"
    "fi"
  end
  language "fr" do
    sha256 arm:   "d7d48d859c5f645b2a9a15ff32d9fe853788e8ebc33f9fd869272d31ad3da96f",
           intel: "becd7aeeab81f87b429c7abae2d87ff553655a982394f4f9c74c94f49ad299aa"
    "fr"
  end
  language "fy" do
    sha256 arm:   "7e86a2a8212ac24599301dd1bd8b36fd0f393a53e8069897d2dce04824ed1482",
           intel: "1c6cfcef0109e9c72b67f0ff4db476e1cec7021ca232232d5f25574f09725ca9"
    "fy"
  end
  language "ga" do
    sha256 arm:   "1d28a7848f5bf6913c270d3bb3d280b4f0b7381a311046c5ee7db4c4e06a8a59",
           intel: "a033c75f27819b7b638442d72629fb14bb526929d73ac67ac61104a38e5f315f"
    "ga"
  end
  language "gd" do
    sha256 arm:   "97d8613b457f01cbdbe44b99fa92c577a6e79012baf57371566df2d097695e4a",
           intel: "fb26c8dcd0d45f03881f531f252bd73d17a8de51b160ad85f924b606161cb6a7"
    "gd"
  end
  language "gl" do
    sha256 arm:   "4ee7e980b08c24263215bce94d6a9e2fd4213b035892c8a27ed283590690a5b8",
           intel: "e82b3391120736d32cc127a623fb497b3f1c9cab20925069380b0bc9a9f1a801"
    "gl"
  end
  language "gu" do
    sha256 arm:   "d8d24c3af0e62d27352726cdc72adeaa9f88b2e07996b224c3b6a7fcf083cf7b",
           intel: "8fa65f1245405612cafdf2a91ebf821bad9f1329389d0ca30ed46d6b0701dac3"
    "gu"
  end
  language "he" do
    sha256 arm:   "3a03f2772c58ce79bfb0b6707e04a1ad69692871bcff568bf5ed847154739759",
           intel: "b591c0f72a68f9edb266cf1e2aeaacf0f8e40a8541e25173d53e0a8b91cf5165"
    "he"
  end
  language "hi" do
    sha256 arm:   "15f4ff5557f5bbb8ecd5ef8ee1ccc6e7ab4a43c1e84ecaee666225d4f5911c16",
           intel: "35a954bf1d6bae989e5161cc657888f51f8d1c7df184778eb69309314e1479ed"
    "hi"
  end
  language "hr" do
    sha256 arm:   "c3eb5768ae32c3f3fcf3bb6376c951c94d2b34237f31ff1d4ec188e368ef16ee",
           intel: "c49bb770fb5f7311bf7e0e1dd1e773e8ff9f6c36744962133655cce26b15b6ab"
    "hr"
  end
  language "hu" do
    sha256 arm:   "ffe786776006eb949527c51622f8e6c9c7b26f5297a1b74b0f479db1b65d583c",
           intel: "616d32eb62b40be1aed5d02918491d5932315c22a2052154b265077d7dc0bfcb"
    "hu"
  end
  language "id" do
    sha256 arm:   "a16ace24eb4c4871e2a238c46a72281cdf210fea33c81139fbe04d41d6e8eda8",
           intel: "3495bd7ea29d03e922beba77cd5d7300e874b0b407215e96e350588914e6d2c3"
    "id"
  end
  language "is" do
    sha256 arm:   "14a57d66dfbc8561e7cf734f94c920dd24810a0c089f9f06a332c07b65423920",
           intel: "9cd0d3b92cb4c8aa4dcf76d5002df99787caddd48a6d87e4491ea479393db4ce"
    "is"
  end
  language "it" do
    sha256 arm:   "984d44bbf0e1b1a286eab0e427465c35f4f824eb817a7ffeb8b54e5e9805c4e3",
           intel: "d983782977bf1da2d0b58af693e311f2dde751bcc1be52d3927e743040df655a"
    "it"
  end
  language "ja" do
    sha256 arm:   "010cdc103e61c96d9d902995c69906b7cf6d3997538f706010ed9ca892bc4b2f",
           intel: "4faaa23bd7b9958d80fd36251aaa69701203a1c892bbd8c5c5922d5c4eb6d0c1"
    "ja"
  end
  language "ka" do
    sha256 arm:   "af07bdec4e83b9c65e06b563f34f25d3e88e5bea4c1e694bdbe3e0a477585d81",
           intel: "e78c0f3c772d4e249974f3481316b6afae7deaeaa3843d2d316d7ec1adc43d66"
    "ka"
  end
  language "kk" do
    sha256 arm:   "5d92a8635d932631289e4152e7abda9908ba565f9d11557848caf4e3b640de85",
           intel: "a7519278b077379e17a604c61730b10fe7591714dafa1ec7d40bdc2bc0eaa90d"
    "kk"
  end
  language "km" do
    sha256 arm:   "1a62e9b19eef4915109f33a7e63b8a1684a7df2c9b150c1fbde8e6295cb6f532",
           intel: "8a8fdf086651bb852092ce361f2cfcb4e6af83d1cbef1d06583ef94d92b80c08"
    "km"
  end
  language "kn" do
    sha256 arm:   "ff3733a4b883e654972b5d74066ddf6df9137071e4d97b03119fe0edd3bb84f0",
           intel: "a1fd702b7c729cca7d2e4be0b843d4a9e63ea621e33130119b5e2a0fd12220d4"
    "kn"
  end
  language "ko" do
    sha256 arm:   "5ff5a7324eeb6858c2414ac029f605ddb07ea4696a88c22786bf732359653ebd",
           intel: "fbe5b88d1703f8394c1764dcf7968b3943ad655e60b66762bdd048bc729ec691"
    "ko"
  end
  language "ks" do
    sha256 arm:   "53e83ccf2db51dcbd65a86669757f8ca6a7d0d739a1ea3388bbb3da1fe6a7a8f",
           intel: "7fec8ff64f3a7481e5b6a6466465fe6a4cec1f4d3869bd0e4601dcbcdd08569a"
    "ks"
  end
  language "lb" do
    sha256 arm:   "6639c47712478470caa921fb53d13313fb624e6c7f59a84ca413d574687b988b",
           intel: "9e422dfb20419f0818897cb7947d2a6bbfaa916b3c40a1f21b18547299b61a6e"
    "lb"
  end
  language "lo" do
    sha256 arm:   "12ba711223e26c6f29ce4e33ac75319d9ba0bed00e118a5c65bcc10adc0b887d",
           intel: "9b46d015a3447851315e456d81814eceb5cab412b5781b7d2b10ed875d7563a9"
    "lo"
  end
  language "lt" do
    sha256 arm:   "2403e7aa87e48c44ef34fc8027ee3969cde0cd4256224dfdbccb6d29acbaae46",
           intel: "0e2b1e3dd39eae80f829f3e5bbc679f8c6b846ae9278ade80a2e4b0df0ff63ce"
    "lt"
  end
  language "lv" do
    sha256 arm:   "555996b93b39c67469488fe3e6b31ead188416c73aeee412e1f30e90cfa8f64d",
           intel: "4cf6139e67bb07cd04a29d67b2668b322e2569b3a58fb86087242e48d967e174"
    "lv"
  end
  language "mk" do
    sha256 arm:   "2b6e550bbe139a5e837b3043f28099913ca96dd1b50637bfb565784d9bd43d59",
           intel: "5a0b0ce57a1650e57c5037bd89d24969015387782ef3d107263da73c7057ed19"
    "mk"
  end
  language "ml" do
    sha256 arm:   "5b2b2b7b638d547f494025bc7a35d61b4468ff0a765234ee812417014c48abb8",
           intel: "5cd6651f44aa436303aa6db3485845a769932ac939ad0bd06c7cf967e462802e"
    "ml"
  end
  language "mn" do
    sha256 arm:   "6d6bdd30873e7ebd540501747edb029912a73e3f68b0dd3f066d3728e82251e1",
           intel: "d01d40eef84301b325ec96d87621395108fb08c598134fc9d9a91f677f6c6516"
    "mn"
  end
  language "mr" do
    sha256 arm:   "16d81fbface99593b7a25164c581f7e8c87bb5bf723b6f9274a590944629fef3",
           intel: "99ffbe0814c98a9a22cacfe3fc74ab65066892624dbacbbf280ad25e201aa236"
    "mr"
  end
  language "my" do
    sha256 arm:   "aeeaebb80beec58e0d568f5821d263373c86f88d95c330d36247807164b5a87d",
           intel: "5babe0835ed3b8e4e5ae07f76687e072bced0a39524d994ef3c448eff9c8e625"
    "my"
  end
  language "nb" do
    sha256 arm:   "19db3d0e7cfb4f3f76f2d8f3a3a408c0cf158586a9cf4ca685f5067d75f963b3",
           intel: "736d7c25142e7a96f25f08bf90d1b0aeaf734c197add8a068ea20092025b014a"
    "nb"
  end
  language "ne" do
    sha256 arm:   "4c4ea5f6309a8ca3b4d0d12e7ce93a440025caab2da50204236dbf7e219a6087",
           intel: "fc170db75b063deddabe36e6b01958f0a1428333d395f7dd460e70c24b9bdea6"
    "ne"
  end
  language "nl" do
    sha256 arm:   "3e1894979eb68762d69f72fd77eb0ea5e35f1969349f0952b32e4ef3ca194e41",
           intel: "0ed92e1f2785c84aa78d4c1515503a88d46fc27db2d6db5bcecf3ef64aa1b51e"
    "nl"
  end
  language "nn" do
    sha256 arm:   "709670662c0514e0675ad06b3b81785580c8b3c5c6dfa9b544d50338dce6792a",
           intel: "09cdbefc9afaf54c253c0c9066d07c0e6d9e5511d7b8cf613a7ef44234063fa8"
    "nn"
  end
  language "nr" do
    sha256 arm:   "0f1cfd5f8423ae5e1931633ce375172d3df198320a0773249e887be1564ad05d",
           intel: "0fad63a2e10fbfe9cf8c400437d3ace549a94a518f7fc4e4e8441efdd7e6306c"
    "nr"
  end
  language "oc" do
    sha256 arm:   "d830de6a4f3e755b7ba10cbb74fc4280016e1c202f8d0a45ed2c04482cd9a8ca",
           intel: "427477dcc543386623f76abf4c34072f0c78eae6883fc3488d68c3fdf50e70fa"
    "oc"
  end
  language "om" do
    sha256 arm:   "e01f2b6424f2f85ce902230ef87cd9e648bc3a9c9bea4dfac87a975a39a81450",
           intel: "0b51c0b2b7c360168f06120973f0f6ef8056b34dca6ad6d4915a4f369721f500"
    "om"
  end
  language "or" do
    sha256 arm:   "01022a54cdef0db09ea9155ff2eaaf374f474492ca75b6a8fa1ef224e94842a0",
           intel: "8db1f6ad985ecec678d5a62e0ca02fe8b56ec673ecd1d143a4f80f549eafc6b3"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "bde958d268482a983809758d0e8b8497b2617428b775632ea98a765ca1a98527",
           intel: "56c87d572f8108e981bd98540b8c92945f9ec2313c99a8b99ab43e09f02e4e89"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "503c056af818ee195c94c2fc2a51cadcb3dbb401c6e47f326720db5431fff411",
           intel: "59ebe27a9636ad42f2f13682337ae097bc5ddf47e08709eceb9999d6c27224d1"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "6b7a665d4f953c060bcf87ce597f086962a5cd6e4854b9241078af925e68e2cb",
           intel: "64a8b1a835e035cbde5137597de9c64db8aa7a36d8c6d26ce21a1daef474de40"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "3df4ad20225b55a4f4a2fcb7b540604c8703ed729c72f94f4e3ca817149c23a3",
           intel: "5c7aa618195d90cc6e21f922f7d14dd7525cba9f1d029566bba35b5569ea1e99"
    "pt"
  end
  language "ro" do
    sha256 arm:   "61a2194e2431e391fc22d021ce326bd5d4331e7ac0887cfc3b20dd3e264bc311",
           intel: "a66803a1e4ff4086792397304ea232010f7510fced50e26b94b18e3954a47d24"
    "ro"
  end
  language "ru" do
    sha256 arm:   "b8649edc50852b46aa56e1a952e53c6912f323f4110a52710da78c33ca15876a",
           intel: "b902b86d45dee2951802d755b423d69fa96bfadd0ec3550385f4f51d1ee437b6"
    "ru"
  end
  language "rw" do
    sha256 arm:   "63ce41ea126b95b20ea655dc0ed888a608dd1a202f7b2be7e89db4cdf501aaab",
           intel: "0d8a0d6785f0ddcfdad82e7b9652ad9c69457702db9cabd7ba9a673bb4d30411"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "b248a8eda8c3089536aebaf32fb728a565645a3a147902f055b7ce49819e3393",
           intel: "73940d05504dcb08e2885532fbd7b33b82ec3dddb2be248e3d891383142c5d77"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "547182f32e0fcc1c5240e6b09742b63d6c980af51e2c9933388ef7b611089492",
           intel: "2d2c74eb6130c2463e7188c5a33608ecf12596966e01bfc54dde138a497a8c8a"
    "sd"
  end
  language "si" do
    sha256 arm:   "3e4b3aaaac55b69aa67ba0cb2abd893d9801007abbe91c9eafe9205c34cbb968",
           intel: "8f12c462cec3c8d027795610b0d149941e9e4ea9acb6c3bf065b37758fd29769"
    "si"
  end
  language "sk" do
    sha256 arm:   "6c3c8e16225dc01fd26cdcf36ec811ece71a9154bdf5a011daa9878e01533e87",
           intel: "dbfae1756465d658396a7a2c492eeaa14f6afc03c7e86aea72e5f973e55cd904"
    "sk"
  end
  language "sl" do
    sha256 arm:   "018ddb0ca3872189275eec1e7124f376ae139aa74e8e435c58941332e2a4ded3",
           intel: "4d5d7515c9e467ae65c17265999d7c15714b50372529c7ff68321a61659f6270"
    "sl"
  end
  language "sq" do
    sha256 arm:   "90a34edc628d61c5c4c170c896adfc609325b8b1505faa581a2483eec5fdc142",
           intel: "4b937d5f5c52eda4c392a2e2e54ce2ab409a6fcd5d48103dbc0d53ba35a6fc1d"
    "sq"
  end
  language "sr" do
    sha256 arm:   "f54c9035a6d0461961f08938045d3659dd6a383afa0a49bf29da5890bdadc531",
           intel: "79ddbd3701720d362fcfb1b8c9465665c300855f9aa5be237cd71d48f55c3a0f"
    "sr"
  end
  language "ss" do
    sha256 arm:   "59ff3110747d719e8e64a5fc274268703aad1a18c7433eb901978277d3651d46",
           intel: "f1bce92325b546e4d01fb43e35fe6bcedb1c6bb355249bc1e0acb6a8b4866628"
    "ss"
  end
  language "st" do
    sha256 arm:   "4d2b925f073ec2ab7d9eb81f600012cd1adb52194322f462e980146ea2ca1545",
           intel: "87eaaaac962ae8f835e779d92f57abce71dc4c67e6f83d0b3ceab5011da99e60"
    "st"
  end
  language "sv" do
    sha256 arm:   "1e5a266676a9dc69ae893ec361c85a191736b79dd98ae8cd63f0bde73b969988",
           intel: "8052063421878d7ff8f9efc83ef178ccb0d80f6705e68cee8edcfdabec53dd08"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "4979465fa1fb5b7f857d63ead7e7a36bbce337262b196a8772ee1170704cf69c",
           intel: "a9fb2fb271561df0b9538fc0fc8288dde7f22f25b8e095bafdfc26b4fd133139"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "52b36590b4f7bdb4b3600477e030019c09d54565cc22bf8f97e7aac2f50f0bd5",
           intel: "f17df114f17e66ef0fcd0045f39658fb491788f3970b4b706b02bddbf8dd64f9"
    "ta"
  end
  language "te" do
    sha256 arm:   "296d60870978c2ca32727469955de4b9be4d3e3016894daf28df017a287e151c",
           intel: "c3a5fa53b456cc8610749d541f3fbb8d4b2c238d0000c42a4a53cfad79649d9e"
    "te"
  end
  language "tg" do
    sha256 arm:   "1aa4ac116d8912f0bb3e689ca369b90ea31d70c4cf2b994b99f9b30d9f59de4d",
           intel: "a3b45b4058872e5bb46ad1bba0d45db625bc26b3c6ad95a0dbaf18b76d7b7280"
    "tg"
  end
  language "th" do
    sha256 arm:   "99a3df41d197d3574db3aca12c1175baad5a37c853bbc992d71bed8bd8206239",
           intel: "a1462b65c0fa6e1a09c89e162fc0e7c291a573645985005351362fdc4f56d0b9"
    "th"
  end
  language "tn" do
    sha256 arm:   "405f56f4a21d25f934ad1bcfcd6559f531e53abb642123b861577126fe887f59",
           intel: "6c736123d6e1b1bf7db5e45a7f6cbf442fcf7256c8dd3df14e6dfadf8b1cd4d9"
    "tn"
  end
  language "tr" do
    sha256 arm:   "6943f584312fb4abf2f0765b6e8a9f82e002ebdd5e65dcb8dae5bb5308356e04",
           intel: "bcc0934a0a3eef2a7ead84fda55dedb057a819f3b70e273fb61d975a79501481"
    "tr"
  end
  language "ts" do
    sha256 arm:   "64bbe4de7256a434b0a647e062f8b48920f93712a38b2979cc173a66cdf030fa",
           intel: "8c29f1192fe6e251aa66b084f06aa531e3a8d21a0e8854ab4915df2e71ef3806"
    "ts"
  end
  language "tt" do
    sha256 arm:   "d3418a38c23987447644f07eb5025d1597594f7755958e183912f70698011d2e",
           intel: "043369dc00ac24933fdbadcf49a0be9a9bb46f9537a73efac487db86980d9e72"
    "tt"
  end
  language "ug" do
    sha256 arm:   "b14b344e8f24214e2eb59b19461289340ad425fda02679aa7810a657ce6682ea",
           intel: "3778becabda888f7fd2f3b35f2aad858504255f98428fa3c18d31bd2263627b3"
    "ug"
  end
  language "uk" do
    sha256 arm:   "7645563d243ab39c3689f1fce61cd1bc8ab8de17a82331d519599a1de2ba58a2",
           intel: "da9c67838ce675885020da735e31523096dc6810a1053b5e0e6488f93db3688d"
    "uk"
  end
  language "uz" do
    sha256 arm:   "18b5bb8f9ba3cba99bf88a98e766e6bec65b353889ddde0eae37ef5f33d5b98a",
           intel: "062395bbe21f3a4b78fd1a78a82f514353a3998f9d8a521415ba501a6c827020"
    "uz"
  end
  language "ve" do
    sha256 arm:   "59e7720f90a0f9bf291a9733b36b91145429fae02bd00eeb7ddd302d6746eadb",
           intel: "b9d64c5f377cf4fba384d0051c5a408347812d9015940b08083a4253e26e7aa3"
    "ve"
  end
  language "vi" do
    sha256 arm:   "9a5c20b7299c550ae1b7f58889af36fa1da5826cbc5c5f009803e820615db3ea",
           intel: "c58c67fe66a768d5605273bfd4fd9065a9830993034e0433d9b13fa90dab7dba"
    "vi"
  end
  language "xh" do
    sha256 arm:   "2206f57ca963d7ed6ea5103a8512d6606a4567d6a5d6a28a253b5de3b3217ded",
           intel: "81f6d799ecfe5dfcedbb9cff4e95a8433ee4b0087bed0918f976fc7d06a03431"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "f07e2ee7bcc8bf93f3e8c25afcb3561cee6384c59a428aea5f85fb2cc9267d7f",
           intel: "54ccb4266b3bac9a87f5946e5f4ae1d6e867f391de58ee3e8a36bc0965ec0c73"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "8b222c2cf499fa27adfaab5f9bb19400f042a9b7041878b63040120c69520432",
           intel: "9e1dd6537e34210b0bd325b4383b9c0e219c2836f3d6bb3bd31b67660b8e7e3f"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "8fa6a186e9ca71c19d4cc0a97273ea241fa59bb38883506393d5d6cf644472a4",
           intel: "dbf6631d3a88132df61cb5f838cf64f14d4469966330a9130dc745598c2f6b36"
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
