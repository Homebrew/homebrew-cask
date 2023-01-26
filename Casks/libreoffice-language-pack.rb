cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.4.5"

  on_intel do
    language "af" do
      sha256 "f9d3aff81733b6d7644ddcea01967eef676335c4a9a1a59226bf9d2ea201f242"
      "af"
    end
    language "am" do
      sha256 "5e9c3513cd82831f1be2efa026c9630a5d1f877a549a255e7ab9cf6a35c669a4"
      "am"
    end
    language "ar" do
      sha256 "92f18a536a3ab6f822cd71ed26d20139510b1a79472154db2bf36ab004a63131"
      "ar"
    end
    language "as" do
      sha256 "3602cc28409afaa97168a9927402ce9b3f008870c0a1b0a1a3abd58992d2ba9f"
      "as"
    end
    language "be" do
      sha256 "d2a12eb493006e77282f1bc129ebcff5fd030aa2c3996c1965699ca3f896a12e"
      "be"
    end
    language "bg" do
      sha256 "e786cd4e433533e1c9843fb9dde3e54bf30d84eec9de240cd4775c2085b2853b"
      "bg"
    end
    language "bn-IN" do
      sha256 "a415fd4d757289bd4117fe6d5cf9d0b807deb2f722c4e96654fb74d4b557736f"
      "bn-IN"
    end
    language "bn" do
      sha256 "00b6ed665387d3d4a55d7a654036cb8b8317bd4f27c396886f300e56f63c8ece"
      "bn"
    end
    language "bo" do
      sha256 "4d31c6c3905d1479cb98f7166a714c336e735bd2f7d5ac4f7cf9c3454d211c1d"
      "bo"
    end
    language "br" do
      sha256 "a5661e1e7a5d090b92ac8a4046692f15884c32e576d12fa78ad497c1533aa2b4"
      "br"
    end
    language "bs" do
      sha256 "c1d1172e637302232bafd63e0c94948eb64c97262609c2905901708db9f5ec28"
      "bs"
    end
    language "ca" do
      sha256 "e9224835eb14b9ef4294b1c7fc14b2861b4e429fc396a780dafd9ce6004a8d92"
      "ca"
    end
    language "cs" do
      sha256 "2a2dde76e98cbdd2e5ae26c9206fd98dc15bd36e5fca9eb262affbb58ad85b4b"
      "cs"
    end
    language "cy" do
      sha256 "f4baf958ae262ccf129c53d4010efb96a7cb3fdef166ac038aa9ff3f70fd65a3"
      "cy"
    end
    language "da" do
      sha256 "d5537058ccc0cc29fa819dc54ee5f184ffee20df2364756815f5c98be1b5fd62"
      "da"
    end
    language "de" do
      sha256 "b522678ff4a0e20b5f96de64885ca63e692d873ab0c275aa4eff406d329c2520"
      "de"
    end
    language "dz" do
      sha256 "eff4f77870e4fb17c872affd3786b59c9787a14660044d8dc20ff804a6d6aa55"
      "dz"
    end
    language "el" do
      sha256 "757bd4827dfa094a30dff58a7978e53f7cc6ae37c3540910c8a3d8e960e2e3d4"
      "el"
    end
    language "en-GB", default: true do
      sha256 "53e8fdc30b572087467c6a8b8e1e74b24f9bd2966120c2063c53618539058686"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "e9c113266b6e4735cacae8c7252b177a986f6f8728a74e585ff538ea7003ffba"
      "en-ZA"
    end
    language "eo" do
      sha256 "46c450cfcbb1fe13c37498ea463b6094b3cfe9305ce42cdb1726d29f2c581385"
      "eo"
    end
    language "es" do
      sha256 "cec6d7a544976ed9f51f869109ec5d39d2f22b5bfaf6aa118d2f0ad5a0fc42b1"
      "es"
    end
    language "et" do
      sha256 "3b41da72c605c0b296e8d00849fb81395c0d389ab688baa5e352b0319a2d8379"
      "et"
    end
    language "eu" do
      sha256 "042bd277196a81112f1e3a12bb9475462637b15441ef1c004013f0a379fb431e"
      "eu"
    end
    language "fa" do
      sha256 "ccf425770ac00ba8ff4a9153482f2518ad9d60d46da1406d7ba204dbf4bfa538"
      "fa"
    end
    language "fi" do
      sha256 "6ba1921aafc4cdc83192bb64bace893553823e91386532f80fc0568f8be817cc"
      "fi"
    end
    language "fr" do
      sha256 "9e1cb809fd89fa0425cd28b1796ef64b2f5c21a48a302cce80143b5982683ba5"
      "fr"
    end
    language "fy" do
      sha256 "0fc55383e4c25734ed7f6dd8591a71d149c4ba1e1a0faa45f936d6d33c87a9f4"
      "fy"
    end
    language "ga" do
      sha256 "9b22960fd0c1d988d3ba8e40f39d92471365f20551dda39b7dcb27febe02f94c"
      "ga"
    end
    language "gd" do
      sha256 "c2a821c5f53363e04d39290f0146681e70d599b757653273804e3145c0da86c1"
      "gd"
    end
    language "gl" do
      sha256 "a30904a05b742836a6a2f4effb101bd0e54e59493a7ed5bc725bb9d8f9effff6"
      "gl"
    end
    language "gu" do
      sha256 "85be2a03abe796c21860fa0a4af1aa09e4c88b934bd50d18da289b3e1bfd87f3"
      "gu"
    end
    language "he" do
      sha256 "eb77e54b3f32fd02ce51f299ed3dcca1064e625bc58a85a6e0f337baf7215482"
      "he"
    end
    language "hi" do
      sha256 "0dbba1880c5567e0b87bae97b5942fd8164759bf71e9250278d01e9c33910ef8"
      "hi"
    end
    language "hr" do
      sha256 "99ed1829c3a102eeb2d0ff8160b4e411fd9ef0f5188ff2de7081455917d968b8"
      "hr"
    end
    language "hu" do
      sha256 "e9f9eeb8f410a4f5e86543da6dea6d09cdb9a58a218d74203c96cecbd17b5106"
      "hu"
    end
    language "id" do
      sha256 "9676866390f63e1db6eeec0a617b60ea1db16ed9113111563569d1bd85df1a1f"
      "id"
    end
    language "is" do
      sha256 "d8394ac4d0da22775daa304f608c357c16b4ba795e6ebc174c6871cc95423a67"
      "is"
    end
    language "it" do
      sha256 "1806058a6b2af3ae8a2fbe94e811c02c30f043ddcd016d0fec0e4e78d84393f7"
      "it"
    end
    language "ja" do
      sha256 "d46ffd7ce2d974fa342ef4284e9fa3d4f2352befaa1a2c9d7620b197f13fe3f9"
      "ja"
    end
    language "ka" do
      sha256 "b8fa19bb3f47a0192ed4c4dd47639cb587147e7375edb525b8692281a8dff444"
      "ka"
    end
    language "kk" do
      sha256 "6a94d365e39c4b9ba759309c18b67d59fe64bad1dc446b4f0fa88f16ed784498"
      "kk"
    end
    language "km" do
      sha256 "f2c28c1286e2e1e8e305c38ba68a0cedaa8682e03c1357c0fd9153ec8a50a710"
      "km"
    end
    language "kn" do
      sha256 "530529c18a4498b6f462b8f06c0058339f6649e7bf5243b43cd95fb1ec131133"
      "kn"
    end
    language "ko" do
      sha256 "d54c7b2e1a89844729bd4513aa00b06b271aaef0854c9cb675bc8f2dcd31f167"
      "ko"
    end
    language "ks" do
      sha256 "b19d83d1168f876719a7ace80f189f4e2f69da48da9be2c06f5a2e1a260c0aaf"
      "ks"
    end
    language "lb" do
      sha256 "d3cf9c61c4c2f93417f28c3a050ebc89342901a04564c3127d1ae59c2bd6cf70"
      "lb"
    end
    language "lo" do
      sha256 "226849946c0fa9c30fd8f682eca7fd94f07f7d377b68f0fb96b908313998611e"
      "lo"
    end
    language "lt" do
      sha256 "3a1bc3a490feb028f5598b9bbd87be4568a04b6a33652c94e9ca2b2d43f483e5"
      "lt"
    end
    language "lv" do
      sha256 "792c8e3997f7ac9aeff84e91db946480d2ab0ea50a99c8e7c7cb0df867a27e0e"
      "lv"
    end
    language "mk" do
      sha256 "2b79f62b412ff40db50271c74618ef025f69e85d4a10ce55d17d4861e6578d9a"
      "mk"
    end
    language "ml" do
      sha256 "e3ffbe2818779d4e5578c7490677917620e5747d2a78dab019498ade46cf4372"
      "ml"
    end
    language "mn" do
      sha256 "6fc4aa40e88bb3c183fcfcdb61cadc59427b627b1d6da8f36a4ed276502d3fb4"
      "mn"
    end
    language "mr" do
      sha256 "0e138cc216d26c37f733069952740e20daa73d5b3d2d67a79c5b62428c54e01e"
      "mr"
    end
    language "my" do
      sha256 "424531ca8e0f4322ed2e15703abc0024edadbe819585e10a0a0eac67db487c3e"
      "my"
    end
    language "nb" do
      sha256 "07091b59f078b52d8cf26232add1d97b8c44217aab2f7173e00cf60ae073d794"
      "nb"
    end
    language "ne" do
      sha256 "2fd338b4dacf36b50d2680b2662c8abf373a9484dc93c8a499d68b286b2cfa34"
      "ne"
    end
    language "nl" do
      sha256 "32e4f2c4be14bf47102f86d74f1c067ab2dbc87565beffeaa9ef876fa26a08b4"
      "nl"
    end
    language "nn" do
      sha256 "8e0c2ea6d3ac2e518b7bc471d34013708825037d5a3425bd273386b2419468cf"
      "nn"
    end
    language "nr" do
      sha256 "ea6963efd70afbb5b36a5481caca1ccfb06223c6a18b1ae13e1e6ab19e76a9e6"
      "nr"
    end
    language "oc" do
      sha256 "e526cd5eac7c355a7fe2843f016f6717978be1edae3cad4f89efcbf879738d49"
      "oc"
    end
    language "om" do
      sha256 "2518d79a9b710c3415e31c64f058d874217f661080022d12d0bff20ccfc44291"
      "om"
    end
    language "or" do
      sha256 "c7e756ecb967d1d7cf293efda8e04da592acbec371c855077b62d5aaf1de744e"
      "or"
    end
    language "pa-IN" do
      sha256 "30a287e7cc5298174687f52b2f4c64cbbfad1f2560e3840a260a68e091ec9b8d"
      "pa-IN"
    end
    language "pl" do
      sha256 "7e18a05c0319b97ea0dd67eda87bf2d959494b7980833ba822746e17c3d356d4"
      "pl"
    end
    language "pt-BR" do
      sha256 "ca067165e9f0b01677915e3bbea8fe45c2c0703e7a4e4681a78659b32a4c82db"
      "pt-BR"
    end
    language "pt" do
      sha256 "3c51329c779909778ca1c8252235319a31b9310e5a907caba244967fb9338330"
      "pt"
    end
    language "ro" do
      sha256 "baeb2c4b5cbded132a1c9503d7463561b5a3fdb60cc424e3308d82d12f12a9be"
      "ro"
    end
    language "ru" do
      sha256 "79db89239fddebae3ab00a56be1a9948bd03078d4bd8e2300727c0247ad67006"
      "ru"
    end
    language "rw" do
      sha256 "abff95f5701a1d85425014abb7d90f331887d2b265b14516368745c42bffeff6"
      "rw"
    end
    language "sa-IN" do
      sha256 "fd5df52329bf0a7b2c68ad7d570d58f1304664b0520e39fd35ad8ad8c1274d21"
      "sa-IN"
    end
    language "sd" do
      sha256 "ebf6bc207735f8a90394c4d1fd15571fbe98297979a810d2e871ea4ad5dd3643"
      "sd"
    end
    language "si" do
      sha256 "f65da5cf1f1fb4a8bc48cfe8690cde89f93b0d45bbaba834b147d98e3b0ab51a"
      "si"
    end
    language "sk" do
      sha256 "141725895a5669ed7185e5d81b7aade9f3e92b2c86b513c60bc7f7e50dd88b39"
      "sk"
    end
    language "sl" do
      sha256 "cc1e82922ef9b3ea7f3ae4221fb387d38a385d199d65b0364c9170eced331280"
      "sl"
    end
    language "sq" do
      sha256 "a230fbd38a17c88671f2ac2c263201588461c202d31f455a2b09b0c230252267"
      "sq"
    end
    language "sr" do
      sha256 "c5814fa15b05e22c0b440207bab410b95555ae9d8fa3cb7d0cf46e1e3bf6bea6"
      "sr"
    end
    language "ss" do
      sha256 "ec52bf58031d5e47604d2a3f0b5d71677b9762cad7c9dc761b1f0aa0ee42f60d"
      "ss"
    end
    language "st" do
      sha256 "d2ffc94c5bd7d630d4ed173af036cf153c882bef910c489f4b18db9a75183c89"
      "st"
    end
    language "sv" do
      sha256 "5262629056f3ac89645c997ac24497e687f7ae1ed26b54ec6bc4686cfc18be1b"
      "sv"
    end
    language "sw-TZ" do
      sha256 "611b32a86f80aec7fa85760065716d54c53a763d258767ccbae690b30bf4f350"
      "sw-TZ"
    end
    language "ta" do
      sha256 "b1f3ac0251a94aa02188080e4ade47c333404af82bb2c25731f9a65e835cf716"
      "ta"
    end
    language "te" do
      sha256 "2793302f75bcb503f72ce61bdcebd2f39ca4be211c5d2acdd9786d184bde4534"
      "te"
    end
    language "tg" do
      sha256 "a6ad7470a0813e23d99e743b4bd6a82b9a6f631913a11c3b828e51364fd27543"
      "tg"
    end
    language "th" do
      sha256 "beb8f8ce4e888b7cc2f442078f480aa33004303a5eff37524666e373c75d6ac5"
      "th"
    end
    language "tn" do
      sha256 "496c9c369ab0fa8f07aef19b125a9b371d13503a2d72a7f1c113886227ebdfd9"
      "tn"
    end
    language "tr" do
      sha256 "8d885d6b4cec3205b91a8309ca03177e7aa6d8e5c0864f635d289d367132e4e2"
      "tr"
    end
    language "ts" do
      sha256 "25fe08ed47ac367056462b284dd85f2ac2ce557a90e7cdfd8a2b90843197d375"
      "ts"
    end
    language "tt" do
      sha256 "f5294236d37f4eefdd6ba497f590b7ab3ec9738e4e55ea0883f76a6441abc69f"
      "tt"
    end
    language "ug" do
      sha256 "07b3f4008b724b3e82fa055ff7b4a615985c9b7f6ea00cb8905739ff4abd1891"
      "ug"
    end
    language "uk" do
      sha256 "970ced0588da5f42a323e94f342e3556158ebe2b9dc3d4b6a35e9862dae392ac"
      "uk"
    end
    language "uz" do
      sha256 "c4a90b0fd3442058777c658ac089ab89eb84f2be217bdb8c9c4e52246e20c385"
      "uz"
    end
    language "ve" do
      sha256 "a34c2bb56f4902651f0b63cfa7dc43646eb482c2aebb29f40089f3ded39d1b16"
      "ve"
    end
    language "vi" do
      sha256 "4177ee7b002cf83dfaa2fe45a0efc81b0176754d1a39284304554058c5c26535"
      "vi"
    end
    language "xh" do
      sha256 "1ed5bb3fed6f199d28acfae4a3f37914422d109737fec714a05864aa3a760cb6"
      "xh"
    end
    language "zh-CN" do
      sha256 "454e791b4c1e231486798a8d4fcf41a57d9de36e2bd5468ecc4b823eb8b1dd5a"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "aa084331232b72ac01c38e2746226e886040b4c9e352c79a39d535cb6d2bbe43"
      "zh-TW"
    end
    language "zu" do
      sha256 "5c47a76edd7a4247e1339c3141ebda8e5e127b0e6429337868c055a8a23a212f"
      "zu"
    end
  end
  on_arm do
    language "af" do
      sha256 "f259d4ce9789df9069bac307654438a80217028f3832fbb8384d9b2b6191572d"
      "af"
    end
    language "am" do
      sha256 "35e18f1286438e6dab1d71539ff5c2f6fb112c9048f00c21640351293e1b094b"
      "am"
    end
    language "ar" do
      sha256 "765a5ba6bb0b8e42f274f7ec2704dd887d512d9e77e674f83ca9d977f92dd42f"
      "ar"
    end
    language "as" do
      sha256 "15cca6569df9aafea86b4d62a228844629a6f3995f36b955fcaa03e2679b1154"
      "as"
    end
    language "be" do
      sha256 "ce2bf0f405f0709dec5b10cd2f67b85b3e43ca4da5975673d24dfea8c1518ca6"
      "be"
    end
    language "bg" do
      sha256 "29266554a54e3d482a2b405fdf6585bfa487827adb71ce14beb66efe2b680b83"
      "bg"
    end
    language "bn-IN" do
      sha256 "eb4f5e949eba912b08ba0732b1be008cdb7ba1768f9e72379107bb677ac2f231"
      "bn-IN"
    end
    language "bn" do
      sha256 "a55ca3bce066b7d481e8dc766b53c70894b62539856f93f06bbe9cc832c2c705"
      "bn"
    end
    language "bo" do
      sha256 "36a6f4a208eb7378b03e36a60d00e4c0e1a5003aff6686fdae92e0f51544524a"
      "bo"
    end
    language "br" do
      sha256 "3e1e678d203361d2809cb613019a4561e21f92e23cfdc1a67dc857ab564a9eab"
      "br"
    end
    language "bs" do
      sha256 "24a0a54a18065823f7285e345d545c1fc948c1604e0bfa8e4fd4be85239a2739"
      "bs"
    end
    language "ca" do
      sha256 "1522adc88346a5e4ec00406a874065c02e180d4a3d041fcc07807c61b6a102fe"
      "ca"
    end
    language "cs" do
      sha256 "8e47c4bae822058b896ef75062447f845b63a2131bee8fcf9959c70b2e5815a3"
      "cs"
    end
    language "cy" do
      sha256 "ab3144aad2fed14628aef8cc50dd0ae35afb03b91cead33e22a8efd8adb0a57a"
      "cy"
    end
    language "da" do
      sha256 "6d57b789f8b952b3934923f491c86fec4f186cf232cc6571532c50af959365e6"
      "da"
    end
    language "de" do
      sha256 "d33d83a7cbee6423824e7fa27726a233490f2c1083284d62b33d63da5dc91bda"
      "de"
    end
    language "dz" do
      sha256 "d4f7b768e92f85fc7a35906bc7025d6d511979de8c8a5a5a639e97f4437479cf"
      "dz"
    end
    language "el" do
      sha256 "7419e1223884e795c7b67b8a148747ca3f9f3e318ead491d95d37e661f8675a4"
      "el"
    end
    language "en-GB", default: true do
      sha256 "12c252322bf11e27e5f1b8b79f4235dbfd1e80274dd29c429487897bde364107"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "70bc0064ddb4f7e0f3925594ad3f9575c08e230ca1116b0278bbb983a79c0993"
      "en-ZA"
    end
    language "eo" do
      sha256 "36b4789d543befb73ba110b8fad383e4fdda033a56ac2923c57a5ef445883972"
      "eo"
    end
    language "es" do
      sha256 "713b492da40cde0153b51479e5873c1472f011e180ac715ef42ab8c08b1c4357"
      "es"
    end
    language "et" do
      sha256 "d6e2ffc06dc832a7ef08a802a9b499e4a7aba172b1c578caa5589449c836b5e6"
      "et"
    end
    language "eu" do
      sha256 "72112788f81a442f7f2eec6e7ed721375db5af42fc01f0e57b83449ec290ada4"
      "eu"
    end
    language "fa" do
      sha256 "387eae5b15291abcfbfdf55908c755a44d9d09f59691f25c78c8d3ef3b296c55"
      "fa"
    end
    language "fi" do
      sha256 "7bb25d925889ae953dc18f92aff834e3f9c3ed55fe13735da926b221b925a8be"
      "fi"
    end
    language "fr" do
      sha256 "b30feb5c2152b5bfa7df810cb95f436e19a0c7456f4ed19a9567310853be14f1"
      "fr"
    end
    language "fy" do
      sha256 "75b324db72aadc50c5fa65e7e2d937a0e7b34b5d3399fd08f5e9ced7ec1a9890"
      "fy"
    end
    language "ga" do
      sha256 "e47b6945573dee41e825b9b4c3d30d4d9702029b71f0884ab8a0d1f6f8612561"
      "ga"
    end
    language "gd" do
      sha256 "bd97569e468b4248fc537c29a804f7792bfa827f23d87f959822c959fda48ae9"
      "gd"
    end
    language "gl" do
      sha256 "209febec783dad9757eff450107005ca570bf91cc3ae753013417890fe3c4ff0"
      "gl"
    end
    language "gu" do
      sha256 "d9137dd6174842bb4f9f8d86413e60e449ed7bb813327e8ccffd617c8a4eb6c3"
      "gu"
    end
    language "he" do
      sha256 "18b180750dbc2a520b337ed5dbd4aaf71dc24105bd3f2feead747543d24abd41"
      "he"
    end
    language "hi" do
      sha256 "9b5e8214bcf5b887e17db234e55f9f7bfca64cf19605396fb9a6df4c310c516f"
      "hi"
    end
    language "hr" do
      sha256 "42ae05c898362a65039eb71f3126a069203d44f6ca3439721c70d9f97360360f"
      "hr"
    end
    language "hu" do
      sha256 "47d54dfa46af86784e1a5354ac2fbad90cec872fbafab6f02f94294d90ed809c"
      "hu"
    end
    language "id" do
      sha256 "10c863937e78850954dfc5448bdf93f690782b6187298216410ff9b68a4bb8d2"
      "id"
    end
    language "is" do
      sha256 "d952a33dcc8905498ff2676a46f333da9a6d37a210b99aab1a688c87c244434a"
      "is"
    end
    language "it" do
      sha256 "9dfdf44ca8a3250a5ae3bf6fb4339534fe9ef18f654a131a1a8d53dc21006698"
      "it"
    end
    language "ja" do
      sha256 "91f5b667797f1c92a39f8f2ab2b32fcbcc39208029192d925150ad9ea8c061b6"
      "ja"
    end
    language "ka" do
      sha256 "c22cde5e995b3870accaf1a24311309047c6282a41fd612743f1521d4eb0a180"
      "ka"
    end
    language "kk" do
      sha256 "cd2d5d643930762e43913e925106db911893af47e8a4c32cb1e27c0c49b6ac33"
      "kk"
    end
    language "km" do
      sha256 "00d6437480fbf205d3294c80e943b7d48e7428eee16449f3caa52d9cd2a2eda8"
      "km"
    end
    language "kn" do
      sha256 "ce6ea872185dba7734b78d74d17bc19a152007d59b5be2e56df26ffe86349161"
      "kn"
    end
    language "ko" do
      sha256 "847a0825684d8deb06388513feca0adef517f9035b8e0210e46eb9a68685a846"
      "ko"
    end
    language "ks" do
      sha256 "850a4cfcf61faccf35db58bf6e4180c188e8b02f502f0b9a5592a3d0a6db14ca"
      "ks"
    end
    language "lb" do
      sha256 "2d63fcd559dcfba50afb0e85108c4e818a8c55d3ded5ba9f4c38027ab8098b8c"
      "lb"
    end
    language "lo" do
      sha256 "73814fd9afa276f7ca531284973e5cd62b164716e61c385f98dd607b9cb0ac40"
      "lo"
    end
    language "lt" do
      sha256 "d9e21550557355318ab8cce52c4e8e987847652d9ee0d78786c01455fdb45cfd"
      "lt"
    end
    language "lv" do
      sha256 "2fbde6bbd79390488b61c1ca0aa7854e4937b20f5d1e02cc89bf7ac784874f65"
      "lv"
    end
    language "mk" do
      sha256 "a1e078cc7a537118c41cb824b63be4120284a9c062fcf460252926e6f46ea538"
      "mk"
    end
    language "ml" do
      sha256 "f573bb08f368404159d72c40efbaa140ebff516599b7fb6f72be24389ee6aa5e"
      "ml"
    end
    language "mn" do
      sha256 "57a9c276720eeea730c87d8cab2d7528908c29ecf334deea4fd7570c91506bd8"
      "mn"
    end
    language "mr" do
      sha256 "bbba7365fbf4e719579b8e1e002db900708e3867417b8f5b53f0bf5f5504d813"
      "mr"
    end
    language "my" do
      sha256 "c983bbecb8d3ea4ed67a466b019e051e4801f62f890bfb4d8c934e33e4d11c9f"
      "my"
    end
    language "nb" do
      sha256 "65c5a13e13dc6930de4c20f7716c3001a937a266da5a394fbf7b7f4e844d39fb"
      "nb"
    end
    language "ne" do
      sha256 "6807c41f0db6faf763c0d630f103d033f57efb50447a3ef84f1ba4a7152870a1"
      "ne"
    end
    language "nl" do
      sha256 "8d075ea07e32d45283f36b60f884f339cd799675ab51b8a7c1603a6dafe18f7a"
      "nl"
    end
    language "nn" do
      sha256 "2b4679315955962028330be90d2fdc0366d1658a951b76ce278026045cb2bf01"
      "nn"
    end
    language "nr" do
      sha256 "ce09fef0bd9ac48644d1abcbe1e4dde2d96f905a742441af8f3431ea7d0b4d92"
      "nr"
    end
    language "oc" do
      sha256 "64e54b7a75855ace6a9442bb0cfbcf9142b2a2720bd3d07f42353f14518f32d0"
      "oc"
    end
    language "om" do
      sha256 "bd71fa9da10ac3c2f437e0d98922972499f1d51b3149a13d558f822b72444661"
      "om"
    end
    language "or" do
      sha256 "713a5a6f0a9d09337d37d3203df881e9480a50ab4527101601f36a7e776974ca"
      "or"
    end
    language "pa-IN" do
      sha256 "89a9f097a1bd2d7f43b0ab4e3b4e94431bdbbc0db72ef474f5be0d3356158f1f"
      "pa-IN"
    end
    language "pl" do
      sha256 "ee803eb28d3947825e28b59f524488b8036d7a87c1fef04230d890be5a8f310f"
      "pl"
    end
    language "pt-BR" do
      sha256 "efb0b218002813c34fbb428e5365891821ac74daf6c232e2389491a796668b82"
      "pt-BR"
    end
    language "pt" do
      sha256 "16319366ee49fccf3273f6ef7f1f4a93f1e2add9aaec57dd6b874054740b8805"
      "pt"
    end
    language "ro" do
      sha256 "0b49200efe176b049246fdfecbf770d4351e7cc2193932206cf158886842cfaf"
      "ro"
    end
    language "ru" do
      sha256 "aca8b0123312385b2f3e243c81f73a8a050d3e94c70a513dc6ee84c3473d9a1c"
      "ru"
    end
    language "rw" do
      sha256 "855441894ff0cd3080a0e4911602f2a5dd988c76a6907f1853a053a3158ac68d"
      "rw"
    end
    language "sa-IN" do
      sha256 "e44a0fc12faed4524b5d480329f6eb889dc60b816aa11fb6ab110495327a0230"
      "sa-IN"
    end
    language "sd" do
      sha256 "812f3061376a866119dbeeebe399c7d5747b38049ed04ddd53b83aa14c531b02"
      "sd"
    end
    language "si" do
      sha256 "90e15290f21f34fca3ccd6cb89951a45b58a6cbb548641ed0a7151dae424401b"
      "si"
    end
    language "sk" do
      sha256 "a3e0d7f994cb234d3968ed7e71aa73b39a64a489116fddf76d7fa934b35aa418"
      "sk"
    end
    language "sl" do
      sha256 "78497c804bb7e93831cb4ddcd7beda25b934b7db59d3e02f242021a794784c05"
      "sl"
    end
    language "sq" do
      sha256 "33271dc7e5e202430525e1f7c2c6789ef87773c480c22d63b1b8c610d877edb9"
      "sq"
    end
    language "sr" do
      sha256 "6ad22b3273d494165bb5626b466241e3a5c505f22cc0f57de51a2386a95063c4"
      "sr"
    end
    language "ss" do
      sha256 "721704e71ff57de04a26299206d07c03198f182bdc2de187b1717f86210044e8"
      "ss"
    end
    language "st" do
      sha256 "2e6b10ab84a65a16841314a6767059263bf1b7c3273ecc42654bbadd3251e6b8"
      "st"
    end
    language "sv" do
      sha256 "6a61806ee8f94d700789be9428513c7cb69cea559c6723377e9c7fea2f3be37f"
      "sv"
    end
    language "sw-TZ" do
      sha256 "2f86b68391a2d7c2e17f32399eab7e9bf5ff522ea6bffd57a36124c80e1a8b7a"
      "sw-TZ"
    end
    language "ta" do
      sha256 "ab09ecf8dd2f1e244a9d8b772642b1d65cfe85ed11fe6e82cc4bb19c60f3f4c5"
      "ta"
    end
    language "te" do
      sha256 "3a0079fa7eb5fc83afa44a18474115cae346b341124419d1a2880b083d24f821"
      "te"
    end
    language "tg" do
      sha256 "483e2c7857fc595b550039d0c2f302502c39342863b93995e3e6ac5f91b6cab0"
      "tg"
    end
    language "th" do
      sha256 "04a2331e5ed741995cc26a7738dfd1cf5d7871c536cdf68e8645a13a8c9ee999"
      "th"
    end
    language "tn" do
      sha256 "2a596a5c99ceb527c13a4faf33384acf6949e4a95b464c967d046339cb844f28"
      "tn"
    end
    language "tr" do
      sha256 "c2a7eb8b1cba97c322f68664608aad92ac2dc779e36ab5b9432ec057cd3d1a51"
      "tr"
    end
    language "ts" do
      sha256 "c7e1f687ed17c500f98effcbe2725e7b14f9e0bea1a80527061d300f176c5ae9"
      "ts"
    end
    language "tt" do
      sha256 "eec801702ea38c939d88132aeafb26f30af44583015b950bcb9571721b3c4cbb"
      "tt"
    end
    language "ug" do
      sha256 "009785efa4bff415e8546f32b4029045381deba87963f44cf4406cffb34bf417"
      "ug"
    end
    language "uk" do
      sha256 "5b84db96f19d76d409e824dc57a3385cfad1cd105fe72414f1d2ea0d377f1086"
      "uk"
    end
    language "uz" do
      sha256 "9d79c3a82c54b63beeb589228089494306b49644be7bb01929cbdf3c6c3b26d0"
      "uz"
    end
    language "ve" do
      sha256 "9acab2f01a4fc5598b6ee08253bf04238f1be8bdb25a1d05fdd75bbedfa3a849"
      "ve"
    end
    language "vi" do
      sha256 "b99ad9cd212cce169c9ef5fefaac0635d7077b8d5ac3d7ae69ae981e1e28c7d6"
      "vi"
    end
    language "xh" do
      sha256 "fd37ac7d680f037a6db4164867020ea44f48f8a0aa98ef3ecb6706c7da2f69ac"
      "xh"
    end
    language "zh-CN" do
      sha256 "a29f1eb2df00e037fd6dfe68ed43a092904bac8d17bf29101b72a3a6eecada21"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "6a61e6ba110bd675da088d6483db226eead5241bfef1c0e7c16043a72a22043c"
      "zh-TW"
    end
    language "zu" do
      sha256 "b8ea2f1fe32214ba45a7d6d7e02af1eb6087e390aec7d5e3cb56339656af5984"
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
  depends_on macos: ">= :sierra"

  installer manual: "LibreOffice Language Pack.app"

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: "#{staged_path}/#{token}"
end
