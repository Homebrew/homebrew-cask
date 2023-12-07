cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.6.4"

  on_arm do
    language "af" do
      sha256 "9dfe19c7c4b191dd177ea46febd3e835fc0204785824e6755f68ba368f597fc6"
      "af"
    end
    language "am" do
      sha256 "c5879e8da3eee39e0ad4e860ed69e99772e2f7f75e42b4dc026f3e56c07738c6"
      "am"
    end
    language "ar" do
      sha256 "b5b824b4053983853c1148a0296c95ba289332cbf9c64c6f8ab7d8c9867faeef"
      "ar"
    end
    language "as" do
      sha256 "43d09d6c6a615a3daef45a3bd8cfbb7bee418ef1ee5c354ff57644258336bfcb"
      "as"
    end
    language "be" do
      sha256 "9fb8842e3e913f2f8557f9f5132c05d79de658113cf3a6deda1d02d938f496dd"
      "be"
    end
    language "bg" do
      sha256 "2373f41786eaed602c5c68d0a84808268cd4d580b132fe7b031d138666651de0"
      "bg"
    end
    language "bn-IN" do
      sha256 "e341fb50ad937edad1890ca52beb035cfdf6846484263f5d754b5777be615ce9"
      "bn-IN"
    end
    language "bn" do
      sha256 "cc2654d688295608eef1dbed3b12e386de07e72a23181ff652a3f63792f7d4f4"
      "bn"
    end
    language "bo" do
      sha256 "414c66e870020adc4bcf1531a4c49e1b98df86054c525ed078bbdf9060c23c4e"
      "bo"
    end
    language "br" do
      sha256 "2b29cb8ae8d945aa13f1c59709f937e29c177d8c08b541c07d108920f3bb9e0f"
      "br"
    end
    language "bs" do
      sha256 "b5a3d1b6e321dcb1f480d0d66040a45924056889275b51db1d8a41cbb53c65b0"
      "bs"
    end
    language "ca" do
      sha256 "4eecbdc5a76686e021da3ce219556fc24f4e9695c3fb7764e163ee4d3b3a7067"
      "ca"
    end
    language "cs" do
      sha256 "e8739740d6c38cf63930c30403d65d1c75a2e372782c7f8a8812b55404e0e4c9"
      "cs"
    end
    language "cy" do
      sha256 "0ffb01b053b88af1f3cb89eb9bd8ed4fc70ebf380f4e9615366aaae34c128832"
      "cy"
    end
    language "da" do
      sha256 "7b22cdd9e6b25f70b14e7b5329bdc000ee902cb3a0f70a2ae53ceb6c6b46d65c"
      "da"
    end
    language "de" do
      sha256 "89beb390681817000309e1c5c915ca5a32965719d0a32f05f881bf94b12191af"
      "de"
    end
    language "dz" do
      sha256 "61fb29e9eec6b6a609fa5d6cdcc8693a5317f2ba43e6079b306ebfa3eaa99b8b"
      "dz"
    end
    language "el" do
      sha256 "bf6c8ac45f1e862e06ada814b4f4a2ceae15582bca5c663dd85e897e9c05b713"
      "el"
    end
    language "en-GB", default: true do
      sha256 "e07c2e388fbf162d4314801e3955728e5e77cf03eb8e4f3c61105b6036487a96"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "9fa6f4f513c2cd877348f76a96b14343894f19b4f0056ca885725d090909a692"
      "en-ZA"
    end
    language "eo" do
      sha256 "51675273ccb92fe0f434a3f50b8663bc776fe1477918257604053d0074dd03be"
      "eo"
    end
    language "es" do
      sha256 "bc6ab4f2434c8732da5249011d5b2844da69f1095a9d23f8adc02421637b90c1"
      "es"
    end
    language "et" do
      sha256 "8070c75cf197bd15afd73852b9429bea73dd4005e6b3de8b2767cb9fededb47b"
      "et"
    end
    language "eu" do
      sha256 "6b7cb8333f8fc31e71611babb3ba3d9cbea6b77a45a42fbb2580bb47fbbf0ab5"
      "eu"
    end
    language "fa" do
      sha256 "0fe07f35578b0f2199f7c9478c2b1aa4c5db73d33ba0ebd6f811f8ff921e5737"
      "fa"
    end
    language "fi" do
      sha256 "c438b8eb74876d1405f8d8a735c03d3bf57889395854a5d50744165440b83761"
      "fi"
    end
    language "fr" do
      sha256 "77a327905350a8a6b8d03cc0d59a0fd17fb343c9f76ae4c91bd1438fc74846aa"
      "fr"
    end
    language "fy" do
      sha256 "19b91ec81e784480a821ba6ccb2a3559528181aa84e201431c25bdc102305dd8"
      "fy"
    end
    language "ga" do
      sha256 "e29821b12f914bc51dd49726df3513a28b948061ccfde0050c3a0ce60d9d9623"
      "ga"
    end
    language "gd" do
      sha256 "659d79186e8ed4c638de8798caac334c86cee377a243e5c0e71f1599b8285fa7"
      "gd"
    end
    language "gl" do
      sha256 "6dacac3cddd8784ecad9aa8155201e63447e279eceb5296c6d44ef9984e56b54"
      "gl"
    end
    language "gu" do
      sha256 "a6e6d71bf18693dde1df0c61f3a6b1067d5fe9f3aff3af91699880657ebaa4e5"
      "gu"
    end
    language "he" do
      sha256 "fbf5df2e85bfdc1e76a5405b0824aed39b037ce38e13ae2c22d212c6704df4f1"
      "he"
    end
    language "hi" do
      sha256 "5a8ab5272812503ca66f4a8e2daf32833e4df0e3fc1201f4a2fdfe5bdf7b10da"
      "hi"
    end
    language "hr" do
      sha256 "6177fbfe50d6ea1c5a83e77f2cf5152c3bb4c1ca9ad0ea25bdb0c929b9cd665d"
      "hr"
    end
    language "hu" do
      sha256 "853a9ce99484e101cd09dde18c7e9d1eacaf6bb3c49059361db8493f944b3643"
      "hu"
    end
    language "id" do
      sha256 "3a5cc1c8c3122f7bd476d4e39f92aa7643ee117d3c1b6e67ef4cd5bda657ea17"
      "id"
    end
    language "is" do
      sha256 "df649b598f68e3b3e0efa4e314f8149a57d0e429922ef25ac7fe135407e60477"
      "is"
    end
    language "it" do
      sha256 "9e09583d83403787b57ed0bdd3ed2e6c5117378800d7fa5768691f6ba7c435ca"
      "it"
    end
    language "ja" do
      sha256 "fabb6712a4df8688ff195a6fbc685adaa857239191bedccd36f8c9940a27ac2d"
      "ja"
    end
    language "ka" do
      sha256 "16a4ab27b6210d1a5151c8b7787fe1f4076162c160bcda0bc49dd95554b770ab"
      "ka"
    end
    language "kk" do
      sha256 "9f07def46bda632725d6fa9a3f5a96c2c13c9550f293652425bcbbc8ff0d005c"
      "kk"
    end
    language "km" do
      sha256 "129051727ff62e2c173a6a09a7167cfe6a7ed78e2365e477c1c5f31d774ad99d"
      "km"
    end
    language "kn" do
      sha256 "a14acd4288888ca0c75aa19af9d110710815658110071efd96d53bff59e6d79f"
      "kn"
    end
    language "ko" do
      sha256 "a1ce4b0d8d17cb5aeb0d6db77a63832b2b3275fb186017e89a021d59a830c7a8"
      "ko"
    end
    language "ks" do
      sha256 "cfa17cd03e06b5dabcd8207481c5e1cc2d83ea1459ccf18103b296849b832972"
      "ks"
    end
    language "lb" do
      sha256 "8d5c4a45c8f5827d2b0b128acb6da9d321db88af5666237c98098d8410293ab6"
      "lb"
    end
    language "lo" do
      sha256 "f2893dc32b9839749239efde9a1b9c8ae51672d6554dc070b18b86db3947f1dc"
      "lo"
    end
    language "lt" do
      sha256 "9ddd948579aed233b9304d8379180a0b04843b7eef7bc42df3b33c1e3fa01c97"
      "lt"
    end
    language "lv" do
      sha256 "c5ea109540682d00368f0ab098192ddd3d8864d78bce703874f0b3ebbe6488f6"
      "lv"
    end
    language "mk" do
      sha256 "458ab2b43ae1b83fa6af3807d19ca50b6d8c336b349dbef6ab94fa5c6469420d"
      "mk"
    end
    language "ml" do
      sha256 "b43184a3e91ae266752e95e23e742ff5995f2a1314eff4d364ded84f478af202"
      "ml"
    end
    language "mn" do
      sha256 "1ff61381c9e1621e1501de2bd73310e232d057422dbc1ebfdbdf3884aa457b97"
      "mn"
    end
    language "mr" do
      sha256 "9e681e8707a3939583fc9755e29aeaea038354d9fc6b64ba128adbcdaa259b08"
      "mr"
    end
    language "my" do
      sha256 "7e0cf7d82ca048990fac2d97847cb1608513311bf61ff83f8576a19cdaa91563"
      "my"
    end
    language "nb" do
      sha256 "f9d4229c76398d59806ecea1ce54d47f5f4fb0aab7639ea1a47470c40e4f690b"
      "nb"
    end
    language "ne" do
      sha256 "20cf720d5b2fc023f395cecd63a8ba072b7115f83c21b6ef4ba96adf1d2c7ced"
      "ne"
    end
    language "nl" do
      sha256 "c2738e0e19cbfdd03aca10c9434eb7f9c916818c16369b9df95d59186ca26163"
      "nl"
    end
    language "nn" do
      sha256 "94635800147bc0e8125960f60b93ee897a8bd9c958646de721c9684d6362b69c"
      "nn"
    end
    language "nr" do
      sha256 "4ae6dcf8f583567faa61608518b21f6db2bf33d2206e1f232b6efb36de89a5cf"
      "nr"
    end
    language "oc" do
      sha256 "9f50a98c515bfb71e20b156be3fbe023b7d3ba60c08bd3857029a9b88a5e971e"
      "oc"
    end
    language "om" do
      sha256 "c68f77099cc8b5393dee2b2eac564d786549af980a1c6248fc19a601f7520058"
      "om"
    end
    language "or" do
      sha256 "25f0a37c879e9590012e79aaef05eb28223b10d26849cd2e75f90d22cfcdd3cd"
      "or"
    end
    language "pa-IN" do
      sha256 "0028a5ada23a991ead4fc044aa372049f8da5be230ea0abe0588b8f07e913b91"
      "pa-IN"
    end
    language "pl" do
      sha256 "8a08ce3c5add30355f5cb274f1616eb83d5b15bf3a52710bbaa3ff9f2e3aaed1"
      "pl"
    end
    language "pt-BR" do
      sha256 "616338afc8484af9edeb95a85a40898b1ad8fe7946175cc09c1ab8912dbe1414"
      "pt-BR"
    end
    language "pt" do
      sha256 "e7d6a91d691305f6166ccc2dc753d4ce5376c4795128a44e6ca6f4e17b0329b3"
      "pt"
    end
    language "ro" do
      sha256 "0ef0a804a65806ebd7425724f541a08a9301f8337823f899900fbfe807587434"
      "ro"
    end
    language "ru" do
      sha256 "856c048f85e644a6a14e4898835b9bfa48357d4f5143ec44e4ce23d56bacd2cb"
      "ru"
    end
    language "rw" do
      sha256 "dc5f266bd2f9f6da47fcf63558cc960477a383a78799f60c2082ffe6f3706be4"
      "rw"
    end
    language "sa-IN" do
      sha256 "3b8f34966d941a79d062cb62beb7ea8c416ce3d334869695f8416b89d80c7c25"
      "sa-IN"
    end
    language "sd" do
      sha256 "522cbb96a18f06401ba513fa49174ba9054fe37213dd842341a2b699b56f3097"
      "sd"
    end
    language "si" do
      sha256 "28e957bbbec0eaf7f256679d5469a7f4c8a989c9d197366ed5e061d832f7f2af"
      "si"
    end
    language "sk" do
      sha256 "219d63a800f12da750174b346a44ce351d943f27e367e44e27a5a8a14db1141d"
      "sk"
    end
    language "sl" do
      sha256 "ab25304679f69c661d89c9b1c44dec304e28bdfcf48e438fb46a7b12c7bef255"
      "sl"
    end
    language "sq" do
      sha256 "b9e4cc225a07e0dce43f1015146361d83002b879cf42b7f10b3c92315a6d2541"
      "sq"
    end
    language "sr" do
      sha256 "e9d7c7734f8672de5beee3b8c5733639bc4468a07d49cc8cabc581dddd0c57d6"
      "sr"
    end
    language "ss" do
      sha256 "b499893d26c63eae3ce215d40f11e5a980ea2a4b3dfe6e5056bf82eaa40a43eb"
      "ss"
    end
    language "st" do
      sha256 "f16b4589ce90004f4b9b7b541643990e799fe43fa5625e44f3e166f29296a26d"
      "st"
    end
    language "sv" do
      sha256 "9e6e4fa272ea190c978e6728648a199a7ad929ee67f9183281465fb2438116f8"
      "sv"
    end
    language "sw-TZ" do
      sha256 "3f44d202cdd9603ab39a2eff60f6aa72755b6c87a9202c653a9d4ee6d1bac26f"
      "sw-TZ"
    end
    language "ta" do
      sha256 "8e14db400713778976b93c5582cccbf122dc6bbe3a63d658e878a9c59de22713"
      "ta"
    end
    language "te" do
      sha256 "683662d526262d5ff829f25bb79a42a374100dd0e70022192a4e539c5c991d81"
      "te"
    end
    language "tg" do
      sha256 "736593b5dae047bb56b684dcdba8f824f9e476486346d176bf2b15270af7815e"
      "tg"
    end
    language "th" do
      sha256 "072fe27d48b41d25005c1e72b46ad2761f4a63247369ccc450dd00692a2ca188"
      "th"
    end
    language "tn" do
      sha256 "1f89f9ff684cdbe57944ae291f64751008fdf93e33257f2397195692dbc0cb89"
      "tn"
    end
    language "tr" do
      sha256 "02b6a3612c9704e9e44c5ba7adf941144598865d8e12461b73a9b5174a5805fa"
      "tr"
    end
    language "ts" do
      sha256 "79138e90fba7c7e7da8bbe109ba14cc1c36de337cc3389ef0de01443b39b689d"
      "ts"
    end
    language "tt" do
      sha256 "7f334d30b98ed21b0dbdd1027ad52b47126846011f25855f4e74f2d32de2fa8d"
      "tt"
    end
    language "ug" do
      sha256 "a672147c591495888c4955082162c4720b012cf5893e3fc4d849dbfbe39ce9cc"
      "ug"
    end
    language "uk" do
      sha256 "7ee9e8bc44aa30cf4f7f05e5c8bc6517ea6c0b87fd33aed58a0f950c478e6e01"
      "uk"
    end
    language "uz" do
      sha256 "bd9631aa6bd3e60a16d45b58e8726d0c0062c527e645f18749fed5103bda12e6"
      "uz"
    end
    language "ve" do
      sha256 "86fea1d95777c9a71b35a4c96cea02bb2149c54b5abf70deb60f714127f94b33"
      "ve"
    end
    language "vi" do
      sha256 "44e4810262cabdc6891ec1efd98fe4558a836cc4b138efdf4f5b5e55a680450d"
      "vi"
    end
    language "xh" do
      sha256 "cd7c143becbf57c39b28d9c28bee2d966f667899573e089f20134a5413df2e03"
      "xh"
    end
    language "zh-CN" do
      sha256 "00774b8568c87e4171845495a7110d8d0c8d6904bd744f43418f452534839a58"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "67e748efad8acee08185e330f6c437f2a162ecdac36eefbfd59462a596c54516"
      "zh-TW"
    end
    language "zu" do
      sha256 "3a22411dcced4375f0906116c33575bb06ab20517154a22617ecf17e81594ab5"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "e48d87895bc7673fb1f21d8621745f1e2feb5d3fc198552ca2d329999cc78cc9"
      "af"
    end
    language "am" do
      sha256 "11a3a0c4f4682ddb0d9bdb5cdfc8e17c2ad445a012f3a220c7182b036cf8e7e1"
      "am"
    end
    language "ar" do
      sha256 "063214ff0c8bf7701a908c83f773d7391fc7db721e3e180a4de0b68b5e9caae1"
      "ar"
    end
    language "as" do
      sha256 "22bd15bc2ede51dbec074c03620888920341c3ce8ee2cb204984c8f400f1f722"
      "as"
    end
    language "be" do
      sha256 "0dbf5af548c51a38e6f14d97c8ca82cd0374b2db1f72b10b61deadcfbf5caae7"
      "be"
    end
    language "bg" do
      sha256 "186dc0a6cdf924685ec631fbce26b9257ed5b02c6329cb43c65feb2803b94b45"
      "bg"
    end
    language "bn-IN" do
      sha256 "2c18e08950e56a4b35cbd708ba859148cf1dc2a6e94ced865361af23ce208460"
      "bn-IN"
    end
    language "bn" do
      sha256 "e5d248b0f9e32a6b9508c6c1b73f4472bd818f5f449e9a5c5c5c49efc08a3743"
      "bn"
    end
    language "bo" do
      sha256 "a22634ce99e2417c335915ca545575bf6dad299f4437ba1ccb502a1439c3ead7"
      "bo"
    end
    language "br" do
      sha256 "5a368908eb0cbc8d8c0dd62ccf44212542992e40e175e5178e3dada1158dc29b"
      "br"
    end
    language "bs" do
      sha256 "d4e4681672d44bfbde9430aa42697b85b628245dc0911b0ab7983c1732407d19"
      "bs"
    end
    language "ca" do
      sha256 "39178adb66b6b1d05e71eb22697a66720ea4f9a4540b4fdbea0c90cb455dd7a9"
      "ca"
    end
    language "cs" do
      sha256 "fe6435a2afa255cb96b12e928fabd8a7fa90b15f5ab624965a49536a05649017"
      "cs"
    end
    language "cy" do
      sha256 "1ff93544b613fa01ec4e4c4a9e3e8f001ebb7a662bed42115466f0c8f8c8b50f"
      "cy"
    end
    language "da" do
      sha256 "d1c5c2a3f30c47efe45529263c4b342e8f136e1dffb60ccfd1ee9d02327c7239"
      "da"
    end
    language "de" do
      sha256 "2586165bbeb18c6d987952a1fde5aa9c34a89a53d600874903bc96a8923f26ff"
      "de"
    end
    language "dz" do
      sha256 "df5d01d094a930b5389b3681d15d05aed3a5d479fcd5673305354ef6b91ab527"
      "dz"
    end
    language "el" do
      sha256 "30f505fbf58b7b8b427fb3cb25685f7cb8e08af1038fbfa53fa17b86cb44df85"
      "el"
    end
    language "en-GB", default: true do
      sha256 "430077c30dd3edb444333f9153f2b4d4cbfe943b9f070ba433dff5f347b16a99"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "60c008910b0d1806946cebfde702c27c84fda0af93adfdd572d61e83ebafbd9a"
      "en-ZA"
    end
    language "eo" do
      sha256 "2c0af6e40a54786bc7a9d79d12500249f7cb6de222a3c3fdedcb45089e1af9c4"
      "eo"
    end
    language "es" do
      sha256 "d4d365d9d4360d702c15a3e593ea73b66a469b724c8d67688b30eec8a651d3bb"
      "es"
    end
    language "et" do
      sha256 "208b1ad4af3813430ae3b98843476c7eddb7440feae5d6e7e9cfa9bd4ffbe313"
      "et"
    end
    language "eu" do
      sha256 "abea6f8f7fbf17616fa7970edde88a25f9a95ec28147abded9563537d07f4849"
      "eu"
    end
    language "fa" do
      sha256 "e1f4abf1ec33a99de5b58ea715cae5ce75fda272b2576eaac0d5b18f858d05c1"
      "fa"
    end
    language "fi" do
      sha256 "7f15892ef7ea0b06e3397406d3ef4a17b8441e7030030afc36ca9b622a049724"
      "fi"
    end
    language "fr" do
      sha256 "640f4e28d1ddd91885e6a64f24d3adf9e35782b10d131991ba6eca9c549d1766"
      "fr"
    end
    language "fy" do
      sha256 "dcb8f8a5e29cfe6f6a0ecb2f46cde9d14a6568f0318385250cc9223638b1326a"
      "fy"
    end
    language "ga" do
      sha256 "77ebf33ef085d43e534f62bbdd61f961e04d53de09d8295c1ad2f1f7435925af"
      "ga"
    end
    language "gd" do
      sha256 "a717981c2d40deb093d23f8c72424f494c7a3da0cad1a71d862dc4cc4877c465"
      "gd"
    end
    language "gl" do
      sha256 "a4e78f7e8169647ffc253401f189e3a58183b61357173302173ec2a9f62fdc35"
      "gl"
    end
    language "gu" do
      sha256 "2f3a592d260cfc89a314bc49013e9c0451ab58e56138ee8f696f0fe997577757"
      "gu"
    end
    language "he" do
      sha256 "5dbb09a8b537379a721d170763d845ccdc8f5b587a15eae987d7b6cf24f0f8e6"
      "he"
    end
    language "hi" do
      sha256 "f755dfdaa5117446fd9a743a32bd39ebda1bd6fcb2aa0dd572b0373b18d16b66"
      "hi"
    end
    language "hr" do
      sha256 "a485b7d45ab2aa1e9c68ebe6a4bea415977dd820360a0b078a8f357db59430bb"
      "hr"
    end
    language "hu" do
      sha256 "fe8f685952c641930f18c5d0ce546a2975d60e711757ef358f0f191d1e87b77c"
      "hu"
    end
    language "id" do
      sha256 "45485a08607cf739c3f5e92bcaaa0dc76cf0dff1f1db7c0d41deaf84f4da514d"
      "id"
    end
    language "is" do
      sha256 "38f3138a942807bd0cf8f749326056025d56a34e732aad61221afacb416cd7d4"
      "is"
    end
    language "it" do
      sha256 "81dfe4f7def8cb4887449b00c2c4e0151db4281b130b7c9af946f95768f23400"
      "it"
    end
    language "ja" do
      sha256 "88a77c9378cf20bdfd3fe991d32dca453f25a0a6b75c4034262e16de4ed7a020"
      "ja"
    end
    language "ka" do
      sha256 "59c948bc8806a02cecfdcd148f4ee47688c7c47f1338414bbec21288ecefae9b"
      "ka"
    end
    language "kk" do
      sha256 "71190360016fa1f897d0a75a307b9a23229a99cdedc1c53ee761a2259702113e"
      "kk"
    end
    language "km" do
      sha256 "1aa80f817b8dd7dbf825d2d4fbd7b4bcd9ce5f938f8f47ab3137e0d7ccd10c9a"
      "km"
    end
    language "kn" do
      sha256 "9820314199c1389f3573e023423ecb04027df8637867ed9975a15e471aa321c6"
      "kn"
    end
    language "ko" do
      sha256 "eb04b637b54eae59f2d5b5c52f9669354cb1fc1ff457841f3fc35dec02b6894f"
      "ko"
    end
    language "ks" do
      sha256 "f9e33299971cc9e44722665dd8b91382e2ebb4220432fc32f6490477318a57ba"
      "ks"
    end
    language "lb" do
      sha256 "5738523f9288e7040de4178883be66f2b072ae413aa97e6c417ada12e22ee04c"
      "lb"
    end
    language "lo" do
      sha256 "cb0673bef81344f96ad75d766528c184a2308b8feac8c65fc0ec62865bbb5fa5"
      "lo"
    end
    language "lt" do
      sha256 "53b73e07cf260c2f04fc4b73f10ef23773f5c234fbe8675334246e488c61e271"
      "lt"
    end
    language "lv" do
      sha256 "f95f6faa44ea1388986ad86ec8b9f4f10c324005561e98ff9a1e5f77e0270910"
      "lv"
    end
    language "mk" do
      sha256 "5994b9b5f747d3eaf680cfd4ac04e0e106bed7e477143ee925b51e70d1911af8"
      "mk"
    end
    language "ml" do
      sha256 "954f6c67caa0b26dfac7f95214890ff763d181933132ccc03e5e98c7463ed1ee"
      "ml"
    end
    language "mn" do
      sha256 "432dca847f6e48823e91bcd0de055ee458cdaeaf0f0a9c0047ef3f7c12a953f7"
      "mn"
    end
    language "mr" do
      sha256 "0ec8e916f37fa0b4606e14c43f94975551e309ae6a5c90b9465859fe8252e6b5"
      "mr"
    end
    language "my" do
      sha256 "a70a7fea9479aa71e6071af246de7695d17435ed4aa30eb6c6b044eea1be5cd6"
      "my"
    end
    language "nb" do
      sha256 "505637bccbcf16533f8a16fa8ea24ceddae6eeae1ab5e94d3514c2b7af281318"
      "nb"
    end
    language "ne" do
      sha256 "1a4a1e5be6dc43c977321133c748aa6a8912ef83d106974e81bd073b3ce907d5"
      "ne"
    end
    language "nl" do
      sha256 "68ab1aeca4b66e7082beb57808cb70ccac1339beec0d69a64800cd5ee360e8a4"
      "nl"
    end
    language "nn" do
      sha256 "e714a93bfc9e146fcf2a2514a9075d18ebde1c29ee48d6883f20bafce05d9768"
      "nn"
    end
    language "nr" do
      sha256 "a1e2cbc18231c0bb396a84b915f8037901dbcf6a8bb13f8dfbcec2c60d33438e"
      "nr"
    end
    language "oc" do
      sha256 "132a1759f6cc2f34401c7d3fddfc4873c87d18be8e2ba70d598f740a80ec9c26"
      "oc"
    end
    language "om" do
      sha256 "45ecfdc6fe33c5d6053d5e461b4446057923f10f164c4fbd2090b50d3c71e9e0"
      "om"
    end
    language "or" do
      sha256 "2771ca05e9813fb7a586d38dbedabf1ac61ce7322c111b648ca45d667d55267c"
      "or"
    end
    language "pa-IN" do
      sha256 "912c2353645c6fe67932d236672b38b94b09b391a181631852396174d1271ce1"
      "pa-IN"
    end
    language "pl" do
      sha256 "0e4675a9700b4f649062b56158e3a6c19f7eda5eff065d265a90fc64b2604297"
      "pl"
    end
    language "pt-BR" do
      sha256 "a8aeda0956038c10d86a06d7ebda90e5fe74a33f8a46cf39bbe60a808ce0c15f"
      "pt-BR"
    end
    language "pt" do
      sha256 "8eb8f5b080f74ceb11aa9a82c728e3044b239f1af24acd177579ea5f78c641bc"
      "pt"
    end
    language "ro" do
      sha256 "77efcf5a3a3f793547ec892332bfba26187f1bdff25062e60eaa1d3c69e690d6"
      "ro"
    end
    language "ru" do
      sha256 "1edab3c7831d6d9c543ae478ed00ded7a6551560a2f2e1ed53ff2ea781809bb1"
      "ru"
    end
    language "rw" do
      sha256 "5d7c7c041b404267884773144562fe41a2fbefffe4585a1344f3d4534039144f"
      "rw"
    end
    language "sa-IN" do
      sha256 "cc74967f0c3cc9fc848478434e17a497a2f128243da2794fafdc98c32294dd6b"
      "sa-IN"
    end
    language "sd" do
      sha256 "151d1f6aa1605575612392afee7f747907cba12c24aba40ce0d7b1cfbfd54040"
      "sd"
    end
    language "si" do
      sha256 "06b7c50604e9486291aef09c5b7fccd272382940aec46fe4d43e4128e1a68cb6"
      "si"
    end
    language "sk" do
      sha256 "a3dc568352590c45b855f07e941ec50894d4804dae1f6048dbc5a5e28c3742a7"
      "sk"
    end
    language "sl" do
      sha256 "3b28e0664c0308656c4e701493227f5c7560cb95e135401ddfae3438c7bae4d6"
      "sl"
    end
    language "sq" do
      sha256 "d16459e927da7e272a0cf5ba0ed906d9891efc3d228236fc163b869ee5c4214f"
      "sq"
    end
    language "sr" do
      sha256 "dea66070cd6c0d4be8d0ff7c339308bb0c3432bb0c5dc83ef07882006d42aff5"
      "sr"
    end
    language "ss" do
      sha256 "8affed17a1cf1744d6c6fb320a80398e23f904d25845e8e7275c5d24fe86b3fb"
      "ss"
    end
    language "st" do
      sha256 "f075ce0e2e940d4823b5904e7c90f8c6e6b48a50286c1ceeecd9fb97558707f3"
      "st"
    end
    language "sv" do
      sha256 "e7fe20e2575779ecd2aa888eff184f4f343693595d403a1db3fd421d0b1a24d3"
      "sv"
    end
    language "sw-TZ" do
      sha256 "f4c1ceb156ac65f328b9b73a189e0fd68431ca9960f6952e911d33463f96dab2"
      "sw-TZ"
    end
    language "ta" do
      sha256 "f5bec02a8c14c6ce11b33396375b3334ef068867ae05bef497885ecdb4d948dd"
      "ta"
    end
    language "te" do
      sha256 "f9ebba3f76bacfd16e289dcd5a431a06b7860cc7544b55bde216e82d03d3191e"
      "te"
    end
    language "tg" do
      sha256 "6ef23e8c7ffeaa854a2976ab279fe5b2b340435df239184409435d9e0db7ab6c"
      "tg"
    end
    language "th" do
      sha256 "66b5ee1ebbb0d9dfb14fcfa5611a78e97b60aab591c85a357de3debba956438f"
      "th"
    end
    language "tn" do
      sha256 "f84452749c5e75420d129b32f655a52212cdff765db474329a127277765df9be"
      "tn"
    end
    language "tr" do
      sha256 "d1c80bc4f02f9298f7b84fbbfc06527e6e566d850124402871c3ed706830f38b"
      "tr"
    end
    language "ts" do
      sha256 "55c38bbc7b5b742ca0dca8ff5f324cad93f619002093339d756084f1f333f09a"
      "ts"
    end
    language "tt" do
      sha256 "edcf215948200b158de8041c4aef24461f462eb2950c7f59acb023005e742e33"
      "tt"
    end
    language "ug" do
      sha256 "64bf44da0fe59673acf060750ad725f9f6e07e5601914ebd3d6f890a3d4eaff8"
      "ug"
    end
    language "uk" do
      sha256 "6cec110a9d061a4d74e88f079dc1a25bc3958303bccdc8934f5b3e2588ea6dd7"
      "uk"
    end
    language "uz" do
      sha256 "c81ac85a5708daf4d6f04792e8282f87df2bfc3b494dc7cb844185bccaed0c50"
      "uz"
    end
    language "ve" do
      sha256 "c6b917d92283129a41d81cbf082fdd07e45a36758a8bdb098c6bd9a6814f87d1"
      "ve"
    end
    language "vi" do
      sha256 "15913ccdc048830ddb859e9a0bd3fe80a1a826733e714012638d4e619a1f318e"
      "vi"
    end
    language "xh" do
      sha256 "eecc6e913f5562daff48fa6267f667798a65dc4fb3c661712d767e793764d817"
      "xh"
    end
    language "zh-CN" do
      sha256 "1d27cc474993dd66bd0ca26aa17ceccbef29c59fa81f09aa74eea29a8dbcd53a"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "d131e930f7fdc7121f834f8a39042aeb3416e2a5d9c5871a453b714134529cdd"
      "zh-TW"
    end
    language "zu" do
      sha256 "02c5037feab5a852b328fdf07a296ddbf473334adc13ed19680eaa5383a52cee"
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
