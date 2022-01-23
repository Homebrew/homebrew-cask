cask "libreoffice-language-pack" do
  arch = Hardware::CPU.intel? ? "x86-64" : "aarch64"
  folder = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "7.2.5"

  if Hardware::CPU.intel?
    language "af" do
      sha256 "aa2e5d3873b1a07fae6e0338deef54ba9344dbe4af252949ddb63f415200d2a0"
      "af"
    end
    language "am" do
      sha256 "b473d0080227fc24cfe2b95e8c4caece92615b1fabda14338d955f49c1a13d72"
      "am"
    end
    language "ar" do
      sha256 "96fbeba8ca3948da47949b02766a4b7f2ce7a4d6ddc2d46842fd7b11da9927c2"
      "ar"
    end
    language "as" do
      sha256 "cc021a5eac98bbbaa2ee4f6879037f0d9a33bd6bc4c8164eba2f9754f8113efa"
      "as"
    end
    language "be" do
      sha256 "27dd628d29fe7e7493be8a544688fd00cfb210e0843a689b6403774307c8b80c"
      "be"
    end
    language "bg" do
      sha256 "be4d8932ffd73d0ecccf4bc37752b3261d1f4ab6cd6ee4ccbcd5babbd9bc1041"
      "bg"
    end
    language "bn-IN" do
      sha256 "6bc88becc108c07782753690685e54b0216a8021ce05e51bc5742c3f49602c57"
      "bn-IN"
    end
    language "bn" do
      sha256 "b0e79965754eaad3196d9006e436433bd941f37ffe37b52e16cb6855e9d11c4f"
      "bn"
    end
    language "bo" do
      sha256 "83b80cf9bfcde3c8129aaea343d2860beff7bd4b140048da31a14500365a56ce"
      "bo"
    end
    language "br" do
      sha256 "ebf60f10c659964108031c226709b8dd73ba67fb12748b14b009da453d348922"
      "br"
    end
    language "bs" do
      sha256 "7b3d506d43cbc944d31c5a46a75f987b3ccaad63223b7a5b039375e775f6fdf5"
      "bs"
    end
    language "ca" do
      sha256 "93194e1a1792f85ac9684f37285d71d19f69b2bb7eb7e75f5b2cf81e37050f77"
      "ca"
    end
    language "cs" do
      sha256 "5b5265301bbf54e65f686478fb3a9618c832efcf406f9de50f0fb8cd92521fbd"
      "cs"
    end
    language "cy" do
      sha256 "9ea17c15b11b6c712a936230417db82d57ac00cd2e2c9902c0fd7c88e56c531a"
      "cy"
    end
    language "da" do
      sha256 "ef71857076167f089d0b471ffc265b00a186ca68b427a0b2e40c3a265144b138"
      "da"
    end
    language "de" do
      sha256 "c3263b814f70881b495343906ea747c9a3f76a5b2523226d8efde7296baff88b"
      "de"
    end
    language "dz" do
      sha256 "667c1bc8f3dfb1afdf70a59b548f8b05dd85dc46cf63ac3799dc535922655f5f"
      "dz"
    end
    language "el" do
      sha256 "f563d2a2da5b1e176758bc90e02f380aadab43ec6d580a52e89c5b8133794b4d"
      "el"
    end
    language "en-GB", default: true do
      sha256 "5e2c82f20dca9fc75267e106412afe89c4207d5a799b9e15fad2f0c8a8fcac52"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "fd294e4cbbbf44a77060a6236a630a76a00f69bb42c13f7cfc1496b5ed145387"
      "en-ZA"
    end
    language "eo" do
      sha256 "093dac5fcb0ee4912c153356ac11961a61e800ec928cb83ec50f859d1cc66b10"
      "eo"
    end
    language "es" do
      sha256 "cf7cd0e456171ba105f2b6ea28f8cbde28b8034749d501d4e58a589106502572"
      "es"
    end
    language "et" do
      sha256 "fc225b11e49a9ed39f76bbf1f26c8e284e54ee52e1c125642cf4103962012735"
      "et"
    end
    language "eu" do
      sha256 "73e9442b54657043df7d89f301d57a019aa1bbaa1c9bbfb7caed8d56e37fc24d"
      "eu"
    end
    language "fa" do
      sha256 "de57e4ec509fa16db7a860e346deae11a5fc992ab064b5fa0158c23675a7a417"
      "fa"
    end
    language "fi" do
      sha256 "894889ddf43dcce44cd5c47ae8799b187490909db0f6bf151c06008b3f2e99e0"
      "fi"
    end
    language "fr" do
      sha256 "6d82e995bcf24a9ae99f497bb959a91ee860446725ef3600aa5311a4918bee1f"
      "fr"
    end
    language "fy" do
      sha256 "5b8a2c8564fb82dd1ff042e8691e441a70ef7783325a3bdbb0d20f4a1e01be6c"
      "fy"
    end
    language "ga" do
      sha256 "480314c8648371d51fa08001013bcee8181e4499d46f06e68727338e72cb69c4"
      "ga"
    end
    language "gd" do
      sha256 "69f82593954e74c3cfc87608ed3022443fa0e332eda73997d0cd1e4435ca0dc7"
      "gd"
    end
    language "gl" do
      sha256 "bea4aa6fa21deacc5249671e8365308f0490ff8e0bd71bace20115a220c0bb02"
      "gl"
    end
    language "gu" do
      sha256 "f354e480e8ec1241509157f949b13daf59c7d49d8108b9e986df203d8d4e759b"
      "gu"
    end
    language "he" do
      sha256 "916089248ef91f89a26ca1a5d44264313f5e31afb67966c973000786a54cfbbc"
      "he"
    end
    language "hi" do
      sha256 "cda4760c507948762a7671bbf75896f0ca788a74d0beb84759dd7aa07c94daf9"
      "hi"
    end
    language "hr" do
      sha256 "5d9b922fbbe99df7ac9471fee80e34cda5a54b2776a0662637a26e4e3663f634"
      "hr"
    end
    language "hu" do
      sha256 "e014f7e6383b250bf758ae72297ed2832c4c5d8730efeb15c0e69e13bdf9a13d"
      "hu"
    end
    language "id" do
      sha256 "357db65e14860a76ee095738c560d3272cfbdc688be0c6ce6753b3c390778956"
      "id"
    end
    language "is" do
      sha256 "acd8104315e5cbff23b0b6a7a2178b7b58fcecab74f68c60b8696cbd6815101b"
      "is"
    end
    language "it" do
      sha256 "18b9e3c3e79d1dd4c52e062b79edba1f230ef5527685aba7f340d656748409fe"
      "it"
    end
    language "ja" do
      sha256 "a8474738d73f3ccd70ae0f131bbf36ea01bab00100352828e6e3dd89d4edc97e"
      "ja"
    end
    language "ka" do
      sha256 "5777d1c22789e58b9f6218329cc622064116c8327e6c7c5707ff0aa8537cf50e"
      "ka"
    end
    language "kk" do
      sha256 "439b986293166df315c27d55d823c6862e945aa639c90a472739f4caca11997b"
      "kk"
    end
    language "km" do
      sha256 "708c496ebf8a8d4a87dc96f631738d43c5dac894f210d8971cbdd32b3fa36fe1"
      "km"
    end
    language "kn" do
      sha256 "18aa25a476308faf065e0573336a2e5b5373db3ab3ac78786864d7e4e59a3c3d"
      "kn"
    end
    language "ko" do
      sha256 "33cfd0ddea1ef19a1e2eacf552f12a4181da628d50b5be9b4cd10b4318d78ee7"
      "ko"
    end
    language "ks" do
      sha256 "9611e91f7c63d1a756f1cb01be4972d4fcd41cca568962b32fe234204b619836"
      "ks"
    end
    language "lb" do
      sha256 "7bcf1cdefe381779dcb28eb860a9050dd827297dac45f0ad31f8e6a92d1d3fbd"
      "lb"
    end
    language "lo" do
      sha256 "2b429f6ad9663cae0c0b770bf7838e78137ed89ffcc2da787ddb696ae92b9163"
      "lo"
    end
    language "lt" do
      sha256 "47413c68cf7521cff659f539ab1f3b5c196a91d40406220472d934191cfd888d"
      "lt"
    end
    language "lv" do
      sha256 "74897506977c940753c3286a24dbbd07c3712ca87289705548b6966a61f15e78"
      "lv"
    end
    language "mk" do
      sha256 "861c18d496d3719f89d7ee1ec2bfdb038d7b4edaa570cce03c20a480b0f4b788"
      "mk"
    end
    language "ml" do
      sha256 "c2b1cd5b79265d4d573439dad0d1c7c8850f01d93bc43e5aa8555af58bd6714f"
      "ml"
    end
    language "mn" do
      sha256 "5d59ad6b56d7c3184b4ad2897caab05f91f2eca1ace33ce12c2aebe984619519"
      "mn"
    end
    language "mr" do
      sha256 "a481239d09a3e8f4929992231f225b4f3cc0a826ae0f5fbcb3afc50a089cc8ea"
      "mr"
    end
    language "my" do
      sha256 "453c757882540680ba9c5b83227c3de8337113f450751fd602ea011f11a78cb1"
      "my"
    end
    language "nb" do
      sha256 "e03846faa9a20f6bdb6dca93695ad320cacb2db370285a08fef56014d963851f"
      "nb"
    end
    language "ne" do
      sha256 "2c45c49aab4b83fa97c303a3c0890471d513a8d23a2c4c2561bc0437b3e888bd"
      "ne"
    end
    language "nl" do
      sha256 "30f8c7266d96c00c50db66bc3e7b675fc34601de27be672c167bbde8682aa561"
      "nl"
    end
    language "nn" do
      sha256 "99164a9e876bc884d87ea1d90a1616769df17357bc6b408ced2bdb936b8685f6"
      "nn"
    end
    language "nr" do
      sha256 "4bf0909f8921622e968e51769f15b8f92d02f05d62e6f384bc5348383003659d"
      "nr"
    end
    language "oc" do
      sha256 "4ef4ef79ac9bcb4826fb6b610b51f1e1c829c83aad444cd965e7d7e416e74240"
      "oc"
    end
    language "om" do
      sha256 "76cf74e091cf91d4c50df1cb0f398d72094baf3c9ac11bc06df95808f887acf2"
      "om"
    end
    language "or" do
      sha256 "c886b97587b897a30412cb6ec0074415b19972c4dbf2aa598f93384152c39daa"
      "or"
    end
    language "pa-IN" do
      sha256 "155c5b547e24d31491348d6ccc10d22d542d2935bc5bded651abca54a59f2054"
      "pa-IN"
    end
    language "pl" do
      sha256 "a2daf4fa4a1c86fd9d9befe78ffa74976ab03b7ca1ce3bee22a7827e93cc0014"
      "pl"
    end
    language "pt-BR" do
      sha256 "26bdb83540a448ac753905f1f3f9ef21070fe07cc2eef1383bf27c741f692667"
      "pt-BR"
    end
    language "pt" do
      sha256 "fad2283dc618854e9b561f4fa57cb730c64bdec61261267cbc64af16449a868c"
      "pt"
    end
    language "ro" do
      sha256 "99578b056126bf68236c4c756c982d870e48ab8ce8be033d5da1c539b736a279"
      "ro"
    end
    language "ru" do
      sha256 "49c86d9af48a838eb429ea82d962ce6b5724e5f11e8f7f73a907e5ba6faa50e1"
      "ru"
    end
    language "rw" do
      sha256 "7ef11235a5c7d5f5578a40b649ca33e067fd1b6c7394dd1d1cc8b851dfcf907a"
      "rw"
    end
    language "sa-IN" do
      sha256 "3c4a89d7b99f482a7154ff19176759da14763c96019ce8a74aa61a607e61d99c"
      "sa-IN"
    end
    language "sd" do
      sha256 "f705879cd18ebf4ea9e428559f39bd9874b7da085f57202488bf8ed76bcac94a"
      "sd"
    end
    language "si" do
      sha256 "e6b9cf1b7735425d7c339c0a2f027c8dd2be23cfd73bc78a676e8a1aaf72f728"
      "si"
    end
    language "sk" do
      sha256 "faf2e491aab9f074c5931beb4954ab06bcfebb4af52a05a964789441a4a9216f"
      "sk"
    end
    language "sl" do
      sha256 "d6f29667e5d082d9567d9067ed1d1540ac6a4b1b125964f65ec2660b72268a4a"
      "sl"
    end
    language "sq" do
      sha256 "79f71663a62157e674294d1a7ab99d279d393815afb39187495f44c95b57745d"
      "sq"
    end
    language "sr" do
      sha256 "7accefb19150112333d068540f988a8a06d646bbd8485596b878628ab90bc837"
      "sr"
    end
    language "ss" do
      sha256 "ab68469abd4617e416728332b06dfa14bb184c5c6423b8c0ec52df23373f3c0f"
      "ss"
    end
    language "st" do
      sha256 "781d1040a3c5b392d6b2cac49beb24caf54d0b28cdd28e97d585598eb1c6d576"
      "st"
    end
    language "sv" do
      sha256 "490934fca02667db564181eb216c7a4f88d002080695f5f08e4501d022def01d"
      "sv"
    end
    language "sw-TZ" do
      sha256 "df6b476d2ce9f58a49b2ce1820d72ec039d9a6a7cf35686271eda74393c44bcb"
      "sw-TZ"
    end
    language "ta" do
      sha256 "55e972b44cd972249d56815897f4bea5dca5f3447cad91ded003ecbb1667fdd7"
      "ta"
    end
    language "te" do
      sha256 "bc0a569c1cb2f512b67c1887331dd443ee57e9fca4a0bd0c2ff45a4109616623"
      "te"
    end
    language "tg" do
      sha256 "f8568188a165cf9cb260c4dd018a47f859a421159e5f6b55a5818f3163c96030"
      "tg"
    end
    language "th" do
      sha256 "220f20f84eafed6cf4f0461ebb9abf1276d7658527319b6231d8c9521085d2d1"
      "th"
    end
    language "tn" do
      sha256 "373fb639e916f90189ce6fdadf7b895fe16b087e863fbcbf59f92eab13282c61"
      "tn"
    end
    language "tr" do
      sha256 "272084daf4f783435062b90abb8d4b59b378413434d4e0ab83f1a83b12cd339c"
      "tr"
    end
    language "ts" do
      sha256 "96b34907945aed8d3e3f197b970fc645d273484c1d4f6129b5048df3686208ac"
      "ts"
    end
    language "tt" do
      sha256 "a8c50709619f41ebd29c5ca0b3e66d090272862ad1b9d09e8b3a4b92ddfbefef"
      "tt"
    end
    language "ug" do
      sha256 "8864c3096b1f6f594e94b93a2efdb21ba7e686a7867df3bc7b5eac889c2a99f9"
      "ug"
    end
    language "uk" do
      sha256 "ac122dab8a00e73ea3bb20b9652bd5aa737a10052d7f0d9da13c2e54a7bfa0ce"
      "uk"
    end
    language "uz" do
      sha256 "27fbb034b3fd4c106dba3ecc4f74f8ff8127605347f6eac5bb2a5571eef7f366"
      "uz"
    end
    language "ve" do
      sha256 "9a622c4e75182455ee91be5b0882fe1b8dc323811ce77dc8d5f0defe9d363798"
      "ve"
    end
    language "vi" do
      sha256 "93cce1dbbf0d87a98e55177ecb99b025f2a7280d5567ab740e6624fb9fdda7c6"
      "vi"
    end
    language "xh" do
      sha256 "d4ca6d41be4264d67f1ae05defa395af6d77ae982c1d26ca8c4c88e2b9c35895"
      "xh"
    end
    language "zh-CN" do
      sha256 "4203597cb7b212120bd4b5106dd1c406a4d4dddf48e3166af16ac3c2b26cb7c7"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "d84c00ee32c368d741b6d587cf5ad94122cecee990ea82fec4e3cda5e3adad84"
      "zh-TW"
    end
    language "zu" do
      sha256 "eb340258fe1a80e741a89fa57dbc2046eb4b937abad4a2d2e261c788f355448b"
      "zu"
    end
  else
    language "af" do
      sha256 "da44b0f770bbd48aee142e98c518b34469130cf41031956904bb3831e0f53641"
      "af"
    end
    language "am" do
      sha256 "f3a55a91a900dd895fc748588a86bdf2c940af239b142cf38d534f3fc82ceca9"
      "am"
    end
    language "ar" do
      sha256 "71849d67a91faceb213cdb3b4941b406702f1d1fb81b32989e54c37c3271e336"
      "ar"
    end
    language "as" do
      sha256 "59d9534788a30b76069aea57173688778c1197daa2b4c5800aa37c16bb9769af"
      "as"
    end
    language "be" do
      sha256 "42decba6db19f4b0279f47ac567ad523b142b4dc3d1ec430f3c052f7337805d6"
      "be"
    end
    language "bg" do
      sha256 "ce738012ec0b3ccbb970f637924d7ca9e66ae2d3fd7cbfa324b7a39f7abfd65c"
      "bg"
    end
    language "bn-IN" do
      sha256 "126a6355298f59b3d423e98a5596c9217e9cbdbbec8fcb39cbab84b4d3e820be"
      "bn-IN"
    end
    language "bn" do
      sha256 "e7d881f0fa91ca07a8281f9421ece13bd3645f9ecee80650e1fd6270ffb4a893"
      "bn"
    end
    language "bo" do
      sha256 "39ecc9e2e56cd22fea695cea3aaaf4076cd120aef14884c40d9a595215fe078b"
      "bo"
    end
    language "br" do
      sha256 "974a8bc147729469b0a9f6cc40a0cc60311234bc5ef2b597fa148039b0b1653b"
      "br"
    end
    language "bs" do
      sha256 "fe805d443973a160c125734ce681a4e4175f52297ba07502e1ed06f09523bc57"
      "bs"
    end
    language "ca" do
      sha256 "faed61cbc684d0bf275c9c71449a8ad266029c6bcf49e51f671c30c88e7a2268"
      "ca"
    end
    language "cs" do
      sha256 "4783d18c9ec8ad1a32c0044c99f86ddd681f6eec16baf22f687cb807d98b5e04"
      "cs"
    end
    language "cy" do
      sha256 "db4b86871f233ae53a2342d2a9d4d8c56dc3765804a4969b5416674cec62e770"
      "cy"
    end
    language "da" do
      sha256 "7bfa2b1bbfc47d6bb0c211edfb8987972a4f6ec948a023cccf42a9a2ff8e8c52"
      "da"
    end
    language "de" do
      sha256 "9facabe1c3f38f6be4e1c2901476cbb177e296a332ba7dfd378ead4c30f5c987"
      "de"
    end
    language "dz" do
      sha256 "c70deba10730af3dcaf91f2ddbb1210d1892e3eb7129bf875293380385279762"
      "dz"
    end
    language "el" do
      sha256 "a51a49db7b70247e4453e96d6979a4c6d2031d982f06961c2476013cb36e84e4"
      "el"
    end
    language "en-GB", default: true do
      sha256 "d326ef14ea21e709ed0adc42bb68cdb30a9394748ff7fd4d45ce74f0603bafaf"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "11384fe917b000d05bc1a1f9a35040825daa6a9d34f8f5bf6adc8610fb8852be"
      "en-ZA"
    end
    language "eo" do
      sha256 "f716b7ff9c2873e676dbde7faedc0605a389291bdf7e13840d9fcdecc0999caf"
      "eo"
    end
    language "es" do
      sha256 "da5be64bf7e2c03b84513b5e7984db228d993b22bd4e5708bd499b3b36aa9b38"
      "es"
    end
    language "et" do
      sha256 "a1dc28982aef566fb2f37fa4742f4fa6b55b6b81ff09cd9d65360d51dbf0d9cd"
      "et"
    end
    language "eu" do
      sha256 "21afa40129e4d103fcc971de5976fac6bca42910a8d042b24d10ca2217795fb2"
      "eu"
    end
    language "fa" do
      sha256 "fcf462bb122967665a2a2ccf82a82dcdda5547d2684501ea8ddff1f1f31ad029"
      "fa"
    end
    language "fi" do
      sha256 "a2e71857d095df3c4ecf31484ff3af9d8ed307c324f7509d6dd3b9fdb95756f6"
      "fi"
    end
    language "fr" do
      sha256 "da259b42b737f90d9f5e3a8fde3c8cdef853eba50a71db99d10128a297beabf3"
      "fr"
    end
    language "fy" do
      sha256 "8163de6ed2b5ecad37e3d212527d24d469d390837c54c533c6320f24b2365cac"
      "fy"
    end
    language "ga" do
      sha256 "8695b0fdf12fdf7bf1657a9b263fd69b58ff04beaaf0802ebc1da7141aaa8294"
      "ga"
    end
    language "gd" do
      sha256 "133f2443c44392c8d2c8786f0ee37fd5f2bbec2b5c283ada64bb14eacc7dd029"
      "gd"
    end
    language "gl" do
      sha256 "6aae2e3e82db3e2ec7e19f85fa5cafbf15c21417882519254f2b8d800e13084e"
      "gl"
    end
    language "gu" do
      sha256 "6e6a66e8fd66516b069660ebae30d68d272f9ca804f9b23841f33dde94b3c023"
      "gu"
    end
    language "he" do
      sha256 "9b7eb914958f4fa7c71e231ab2dfcd038df5ecaf9e270784646c3a1908274bbd"
      "he"
    end
    language "hi" do
      sha256 "e7345b18a2fb3e851579cc6010a95384928d544b68c3c6a1a8b2de9ec6cf968a"
      "hi"
    end
    language "hr" do
      sha256 "48394355bb8fc0df3a1b061db0122f54b46c2a5099a963dd98fab90b3a60757d"
      "hr"
    end
    language "hu" do
      sha256 "f7823ad38703468a4ecfffc7720b61ed0269c8caf0c691c0159eb9b25209005c"
      "hu"
    end
    language "id" do
      sha256 "b219771833eb5ce183d2512718a831f7499defe005c298424b5680c8a25f1330"
      "id"
    end
    language "is" do
      sha256 "52c77c40018672a1841fa92eeac8c0ce1c489a3d670312974ebd9c200570aacb"
      "is"
    end
    language "it" do
      sha256 "63ac9f95f4c184226daf59301ce123ba5d2a86e631f58375e32826a8f5781bd0"
      "it"
    end
    language "ja" do
      sha256 "2d54162ab08f3bf4dc7a0042f19a73620fa62d4898117a0d6b1a12a4b402e510"
      "ja"
    end
    language "ka" do
      sha256 "769e5e68533b9f2b369f9eabd0a5452924f0df18fd81d055d98451f7729b3d92"
      "ka"
    end
    language "kk" do
      sha256 "79753a37a0bc031a4544fe759787f0ff5970bb4ae417e10d4f6f0a149df6ff7d"
      "kk"
    end
    language "km" do
      sha256 "3d027bc5db749491110a6dd7e740df2d32248ec4cfba1dd5483ff0610ab798cc"
      "km"
    end
    language "kn" do
      sha256 "d1ba69e714e6b6472a6dd6d032b144a22bdff4a3a90eddb3036cfd38591a0b3f"
      "kn"
    end
    language "ko" do
      sha256 "d7944c80433b7b8b0a3a1ac504ce69e3b72c7088ae6ebadade93665704bfe48c"
      "ko"
    end
    language "ks" do
      sha256 "4b6634610db82edd0b1076d4bd4caaa9155bdd7d922b3b3de2fe04d72e4b982d"
      "ks"
    end
    language "lb" do
      sha256 "f72cf324cc7c74474692f0a6749825bffa03492ab023399877e25dc8cff3cb30"
      "lb"
    end
    language "lo" do
      sha256 "bb73888ebc0cd3cb3cf2a38635ef0d1c544ec1eeded171cacbfcca58979105ed"
      "lo"
    end
    language "lt" do
      sha256 "384f15e326b7b45b7eec53bfcd7d387125199d18386b9ea475f3ad7572940a17"
      "lt"
    end
    language "lv" do
      sha256 "8f12d02e359d6047dbbd66e9cdef7e4bda86ce0afaefec7f1b61374061f38558"
      "lv"
    end
    language "mk" do
      sha256 "5903e6cc8b3d0fa4b232e641238620977edacb2fab304f9c15d500ec73e3381c"
      "mk"
    end
    language "ml" do
      sha256 "12b83ee6621e6df9b66901b8622fcb6395c15179b5fa774c93ee428a573dc035"
      "ml"
    end
    language "mn" do
      sha256 "aa286062d3abf3b3bacebf1840cf161f5db6ddfdfdfbec3f76bec534825d38e3"
      "mn"
    end
    language "mr" do
      sha256 "e82aec390a98c212ad83737e6ff29d2d58a9aa6d02e329955a872bac443f8ab1"
      "mr"
    end
    language "my" do
      sha256 "a263c90400412f340931f406fc29fc7e81c6ec91e468668e4a003a406e87a1bb"
      "my"
    end
    language "nb" do
      sha256 "c36ae885110541f7a11cfac4b580bd991a1352b05c062208322da0efcf9dc9a4"
      "nb"
    end
    language "ne" do
      sha256 "bb992762fe2bdda2ed221d69e9194f3f12ec4720e57351babdfdce45c6952ddc"
      "ne"
    end
    language "nl" do
      sha256 "deea4b161c9a824da8a06a753f0fad288b77a47db462761a11e3eb53cec6c57e"
      "nl"
    end
    language "nn" do
      sha256 "92ead33f87870c4c6830dddadb9dfa2cf76d116628b9f588f74ae47e9bf99950"
      "nn"
    end
    language "nr" do
      sha256 "f7e2ace1c98cdf5f882aa595eb51db2de85235e20045c47f01f6d3388e0be684"
      "nr"
    end
    language "oc" do
      sha256 "a0800663a76b817c7ae91fd16569d9bf1a8331456845a32ea9a68bcf00f42f07"
      "oc"
    end
    language "om" do
      sha256 "91dd4558b20e43ee6fdb4721cbc83c7bbfca942c3378dd8d32b1a5f123e9c751"
      "om"
    end
    language "or" do
      sha256 "e71dcfc958a5030c418d1a323ae0d9aafcdaa1b7d6ed0e241ae92cc030fa3ee2"
      "or"
    end
    language "pa-IN" do
      sha256 "43fc0deab94f552be45b6d938a36bc90043b10f5eb36d7413b1f43b071b4a59e"
      "pa-IN"
    end
    language "pl" do
      sha256 "46bf280399291e462d843ff8e064e8bae20c4bf7004004ba75704facf70dd48a"
      "pl"
    end
    language "pt-BR" do
      sha256 "9f5aa39b2ae0135f6d588fa344bbd26650f03532d2c2fe0afabd1b4be4818b74"
      "pt-BR"
    end
    language "pt" do
      sha256 "6d2dd0e689964d8c8a11516a32bf6259eaf0294cadda2d4265f7a7a6a66d30ca"
      "pt"
    end
    language "ro" do
      sha256 "6d79acd9fc26234f28b63e0e94742d9d7f9f3258e6b5867d4524297425062773"
      "ro"
    end
    language "ru" do
      sha256 "1aa034a8a281f9a3fd0e67f4a36708e9822bd41252f985f776d01d7ed2fa3826"
      "ru"
    end
    language "rw" do
      sha256 "c5b2d4e95fe79ff15b97982f320be400bf40ca2f1298c663a157e85e334f491d"
      "rw"
    end
    language "sa-IN" do
      sha256 "088b6b3536d245945a27c518d2670421884f8a3ab86b85cad6968f8f95e9e287"
      "sa-IN"
    end
    language "sd" do
      sha256 "86a04035b7146829e2c06da8ba08bf0014c37168140b295cdd24c1d2a9e82f7e"
      "sd"
    end
    language "si" do
      sha256 "3d4cb2095a2f7eb98b064fa6ba58b650658c3686ed4cde68ab65731a0223730b"
      "si"
    end
    language "sk" do
      sha256 "409debc2891f4ac37e655297d975a232895b174737f6bc00e0c7646e3d2cdc22"
      "sk"
    end
    language "sl" do
      sha256 "8ee5239eb154f1497bbffd67bc6a5ff5ab1ea10942923c5ff60da1aa4dde038e"
      "sl"
    end
    language "sq" do
      sha256 "1d4d2b969da36a574365ecda8999331798b177a4678792613b299bdadd98d488"
      "sq"
    end
    language "sr" do
      sha256 "e17da62e37d6f88056c3da20d270245b971a6ca4656440eeb2aa3a8bd396bb1f"
      "sr"
    end
    language "ss" do
      sha256 "1f6102ded25d719843df2ecf3c50de7804ecf9a70cb650f58daf5056f1d12e4e"
      "ss"
    end
    language "st" do
      sha256 "32eb652fa8cea8767903f681f3eb85edce6c9be92f20fdf23e2892a24da36eb6"
      "st"
    end
    language "sv" do
      sha256 "aff9fada59bf2d71e31ca593189efff27e5054e8bf80d834ed76dcbdfe66ed9f"
      "sv"
    end
    language "sw-TZ" do
      sha256 "79f9afc4005d54df38f9a29c32b8f7e3cee737196406cde41d87b57fbca44f30"
      "sw-TZ"
    end
    language "ta" do
      sha256 "443a2677645734d8f0fb48799b4bfa11f2e73093769baf49ad0f9fbee953aa3e"
      "ta"
    end
    language "te" do
      sha256 "dd027089c0bd268f65716a71f9afb43492ad446044563d2daa7945d0201075b3"
      "te"
    end
    language "tg" do
      sha256 "8055eafcd4b7eaee0ef1364b10f0a2570d236b365499fba629cbe5cb5d8227b1"
      "tg"
    end
    language "th" do
      sha256 "e627ab3ba5281e80ea8426785cec47429adc7a5ddda3f1cb05a8df28173d8226"
      "th"
    end
    language "tn" do
      sha256 "1eb0f09cc64f70955b262be3ee019ee97ec5d2477c0062dd73e95e089aab98af"
      "tn"
    end
    language "tr" do
      sha256 "7143a2a05f3833af830bd6d0d0042ee863856860dc017cb16c2dee2f8fd28d94"
      "tr"
    end
    language "ts" do
      sha256 "e97149bc5d36c564f5021fa400ebd6cf44bff7a3724a4b6853ed8ce46e6e3e20"
      "ts"
    end
    language "tt" do
      sha256 "32f9e2b9d14116543b68ab1ae3737ae24130ae0891d5cc242e9b474c008b7e96"
      "tt"
    end
    language "ug" do
      sha256 "a5542dd316d1d862ab937e1bc525b870fcaa32a7049e4e736eb549a00342e4f8"
      "ug"
    end
    language "uk" do
      sha256 "2ff93a3b46a5b46ed640f8b258eeedabdb7a7090b6aa1711368b944e7ee7ac15"
      "uk"
    end
    language "uz" do
      sha256 "56225d383768a9dcf1c957f791df6baff46599f3cfbab07d8ba6fa09f906437a"
      "uz"
    end
    language "ve" do
      sha256 "891cdcfc175ad6c9874451789f3159d10a9f0c613b4e3e1f3cc9430ae3c580d7"
      "ve"
    end
    language "vi" do
      sha256 "80796e03aa2b08cc8c5e9bbffbcf8a3a03222d3963965f386ba1d7e19986e7c9"
      "vi"
    end
    language "xh" do
      sha256 "d3f93cb736fc1cdb44d663eb39cbd19ffd764f8674a508e31f31a7289ff08628"
      "xh"
    end
    language "zh-CN" do
      sha256 "e21f141b439b8daf5aeb02d33484c15cfb6a91a4d0f23affdf184e81f55d1828"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "375166af03187a43676f16552b10f68462769af7d1eacc11b6ae396db92bf69c"
      "zh-TW"
    end
    language "zu" do
      sha256 "adc8fab92134d115e6a2c8b0e3d01c84b8cea6a426372a3aa5a5492a30bafe66"
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
  depends_on macos: ">= :yosemite"

  installer manual: "LibreOffice Language Pack.app"

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: "#{staged_path}/#{token}"
end
