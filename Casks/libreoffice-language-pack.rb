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
      sha256 "19645340987bdd2897ec9f2ba8519e1189cff9e639e8ed56f5fe37e4caf1374f"
      "af"
    end
    language "am" do
      sha256 "ca66e04045d9df3ca8d4fbb1be28f418cf4d60a6b85bbeab4c81010270f6a9f9"
      "am"
    end
    language "ar" do
      sha256 "b4a191394344cdeca9ac604c0d1750f124de123ff276b84b06853f697eef27c4"
      "ar"
    end
    language "as" do
      sha256 "6aac14adf5d60e5fee2e30a0388977c393e431fb509ec35fd5d6d8b31feb260e"
      "as"
    end
    language "be" do
      sha256 "4a1242aecafcd907f207810f2a7b5bb10f03efc9adc93eea8014b20a60c6cc20"
      "be"
    end
    language "bg" do
      sha256 "e012b4c860d48160ba4d6cdd114f246a9801ba4e7db779bf28230a31cba24cb3"
      "bg"
    end
    language "bn-IN" do
      sha256 "b298ea4f580cea41ffcb0628271bfa61a0ae2db1507e63d4403e8afb43d9b011"
      "bn-IN"
    end
    language "bn" do
      sha256 "2f949ceee0aec1b49faed9155d740de04dc0226ea1911401bca200e8d0cb42c8"
      "bn"
    end
    language "bo" do
      sha256 "d88f3336cfe643c4f39305879e9552dcbd14e6ac048fa5885a9fb788eb654810"
      "bo"
    end
    language "br" do
      sha256 "dd4038f458ba204384a68e058a359cfe2769cc070cdea9cd81ce878adb3ade6f"
      "br"
    end
    language "bs" do
      sha256 "c6115fb85bad578022eda6e1f359cd4034eb018f27d90584af41d1f00c2367bb"
      "bs"
    end
    language "ca" do
      sha256 "44433e2dea5d4912765f8495aa6a2911cdd3b9591536b7c70bd433dd05857c0a"
      "ca"
    end
    language "cs" do
      sha256 "8ed3bd484b458bc521344184c7a9e8beae77781b47d58b5317bffb10c7504682"
      "cs"
    end
    language "cy" do
      sha256 "ed41fe3c6f3ae649f5457d533e210b0694be63f34ed477c3f34de1dae2a56975"
      "cy"
    end
    language "da" do
      sha256 "a27b087fdce50da2891936f1a3e102a3b214334f8b43205012cdd6ccdeb6718c"
      "da"
    end
    language "de" do
      sha256 "863c832782726ddffce131a50c145250368def17678ca1a8a561e145fe7d8d64"
      "de"
    end
    language "dz" do
      sha256 "a1a9af32e1017e77af2897b9f719789ec5166073011031e2620ff436b62cc202"
      "dz"
    end
    language "el" do
      sha256 "dcaf75c99f204d569d6c58eac7622b31cb9887bf3162f87cd4f8944861b5787d"
      "el"
    end
    language "en-GB", default: true do
      sha256 "d326ef14ea21e709ed0adc42bb68cdb30a9394748ff7fd4d45ce74f0603bafaf"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "b8641c522476e71e8c2fbcf09d214ea5e4a3bf1b211d2ed97a5e8ff16c61c6c7"
      "en-ZA"
    end
    language "eo" do
      sha256 "e71b4c8fbedeec215f45932924cbab99e900d15076d606cb5937a893879121b5"
      "eo"
    end
    language "es" do
      sha256 "b72df1f5fc2025183e017b0b3e8db9a49584fcd2c2eaf7f4ca336366d04edb7a"
      "es"
    end
    language "et" do
      sha256 "0df3ff68d42693f26f47ba2f44e53564d678619494c2368f273503772c0d0ce3"
      "et"
    end
    language "eu" do
      sha256 "40898e413168046a20940b7d7040cf0d056c4efe0505991d326a7aa7c950bc8f"
      "eu"
    end
    language "fa" do
      sha256 "477f7a1b7f8b8873584d0052254911694b3fee21059a15aa1f2aae694fc84c67"
      "fa"
    end
    language "fi" do
      sha256 "9e563b8a431a7e44c0473f39e4669d917dea8a69bea05b5eff4eb0df593af0be"
      "fi"
    end
    language "fr" do
      sha256 "0efc8f5cd63bc3ee1f6a3320c19edb90a1904510510091798123f2e4d622cb3a"
      "fr"
    end
    language "fy" do
      sha256 "b01dfaf7defed454bbd0e62bfeb143352495e31cfab57b7f17384c99dc93ff50"
      "fy"
    end
    language "ga" do
      sha256 "e0425ff0fda92d7ae02ca1aeb06b606a1f9f63a6cd1c4e458c0cae10941ae6d3"
      "ga"
    end
    language "gd" do
      sha256 "bdbf1dcc0268678ac7ed4829523324041d0ca52580e2ebc352099d8ed84e48cb"
      "gd"
    end
    language "gl" do
      sha256 "f06dd58e6a6d8244018bc6674aa91b8265f75d5222788833c0325bc1e4443b54"
      "gl"
    end
    language "gu" do
      sha256 "f7b84be95f441c101188da4599adbd10478e6daf3afd0c3b8bd080d836c22f0c"
      "gu"
    end
    language "he" do
      sha256 "2f7416d040ebf18266531b177347d9b5007813b221c3646593bb0e5ca94e7caf"
      "he"
    end
    language "hi" do
      sha256 "b82c866fad8e5b7fc101589771d5a6463bb5bfaa63540817809779696708f075"
      "hi"
    end
    language "hr" do
      sha256 "650a0efc41a56f550445659827cf1692fd9fb6162471f8f5a6c3b3709b0ec4db"
      "hr"
    end
    language "hu" do
      sha256 "ad53dcf791fbe01fb1de9ad8d387f87c1ea4512b0e0084a193b9c01548e271de"
      "hu"
    end
    language "id" do
      sha256 "2d6020fa813d1a457b919f755232bf1d14d3c70c1f30457e398f34947dc87158"
      "id"
    end
    language "is" do
      sha256 "a5aba766916b591246ec11a5e0e1c7ac3fee6886269ec855eca458b531c9611a"
      "is"
    end
    language "it" do
      sha256 "6f9547ebec8dd798dd0dce876082a5ba6666ba2310b9369776b61a729055adfa"
      "it"
    end
    language "ja" do
      sha256 "f2a3b7a323043172acefa55ac22fa777f011bc3e432e16c4d700ece27ad1a8b2"
      "ja"
    end
    language "ka" do
      sha256 "513f34c7a1aa217e9b9e39ce7acdcdeb7e5340e663e428471cd533ba5dc574c4"
      "ka"
    end
    language "kk" do
      sha256 "e66a699a66da84b0224d8a3d3c6007b94470cbd30f3a62b90870bfd2b60427a2"
      "kk"
    end
    language "km" do
      sha256 "92db70f5661eb2a241a37028730977eb9cccc1b6465c3f80e49070436d011b71"
      "km"
    end
    language "kn" do
      sha256 "68333ce1ce5555371d6c092535572dfa6483ec59119e045c207ef6b053491d76"
      "kn"
    end
    language "ko" do
      sha256 "8b47662ef113582416651836ceced3fa0b097e48fc6a743a79d2ae1de6ee0662"
      "ko"
    end
    language "ks" do
      sha256 "06f36b53208a3279745fd38230ea38939f464d38c771ca67d6678573ba5591a0"
      "ks"
    end
    language "lb" do
      sha256 "b368fe10f6690726dbd1efb7a189b884c2cb8f96fdbeafa09352cc4171e7a702"
      "lb"
    end
    language "lo" do
      sha256 "5d53fd4cc3f1a1740960a27b2946dfa8d6cfba66ed434698e58bb34ba599579d"
      "lo"
    end
    language "lt" do
      sha256 "8e3d128c276abf1938b44320487a231819685a9bdbde34caa50223527685dc2a"
      "lt"
    end
    language "lv" do
      sha256 "69e16bb4e25a600c8ec6c8ebdbbe64c8c411edbfbc198308cd7e5e75fa97b918"
      "lv"
    end
    language "mk" do
      sha256 "e22d246e42964e191685a3ebafd09a22994e463a36890cb2bf12624830ba4ab7"
      "mk"
    end
    language "ml" do
      sha256 "6e399e90e0cf113ed10ec4ae4f95f85e7fa2365450cfbb1bf4abef6b5025c85f"
      "ml"
    end
    language "mn" do
      sha256 "58aa0a4c71ffaa940b68a16a38fbc493e044266165385e178a2890662a39fced"
      "mn"
    end
    language "mr" do
      sha256 "7fcd318b2041d5ba24aec95371a1c93cd0114d62b7244c8f44b2b6e5024777a8"
      "mr"
    end
    language "my" do
      sha256 "a47b5f607c8cb09d4320b8036d4c8ec9901a2836552de9f963fe53864b23cb20"
      "my"
    end
    language "nb" do
      sha256 "f7b840f9a817f835c534284e241839c0d396ebdad36a3748c1cabbe0c47f7fd2"
      "nb"
    end
    language "ne" do
      sha256 "5303cd1cac3a43c1bb4eee4c6a0dff1f4bea32096abd9614876ebcc8fcbd3b3a"
      "ne"
    end
    language "nl" do
      sha256 "29467b0d767d1f16f67c15b9f3a0389914cb56d1777b3ac4f9d31911ce329e6a"
      "nl"
    end
    language "nn" do
      sha256 "bc1fe648a936e8ecebe9ccab964470a69bf3b6a76baa4d02167a601bb82459a3"
      "nn"
    end
    language "nr" do
      sha256 "c2a63341ff423b0cc4045ff20c3b208c5ccb636e53d98fb53c118264159fdd1a"
      "nr"
    end
    language "oc" do
      sha256 "74d093e5867aaa2a7350ca0202eafc3043f49996593fe229bb3d4d87af983779"
      "oc"
    end
    language "om" do
      sha256 "0195cf889b23e03211e96221e899a68958100bd85bf338d61c1ba1081245b6a3"
      "om"
    end
    language "or" do
      sha256 "395994eb044c6502e0358828115d01dc0ca5864152fc701c107c5b847fee640a"
      "or"
    end
    language "pa-IN" do
      sha256 "9bd61447f1e4eb112df220ad0588c7302983cb352a15b34f651571da8d007788"
      "pa-IN"
    end
    language "pl" do
      sha256 "02fe24f3144921e62cd7ef187b00d7a0f81b4c9a2a80121e2039f183f8b3a9da"
      "pl"
    end
    language "pt-BR" do
      sha256 "750987de51c43db0a11a68c752f93eb0f500568356954e397055304acde3ffbd"
      "pt-BR"
    end
    language "pt" do
      sha256 "c61e16a69aa44f3d28ae2cf62c973bd6fa33ef9cf6ab11a5fe3908e7f70dfab6"
      "pt"
    end
    language "ro" do
      sha256 "e6a6348aec80205af5bcaee510a01a8829e1d673a1030af8f12b92442de22d5a"
      "ro"
    end
    language "ru" do
      sha256 "36cda5427de94d315019e09663f064ee18086aac9958e7ac3bf5dc8959260ee1"
      "ru"
    end
    language "rw" do
      sha256 "60054f37ae4a9c5068b3174f9601592c57af9f6798b68ee62f9286ccf6cea759"
      "rw"
    end
    language "sa-IN" do
      sha256 "0374558c9946c239fc8bc3cae57ed8eec31dffb941c2164acd946f2ce7eddfa6"
      "sa-IN"
    end
    language "sd" do
      sha256 "8c55d05da326951c1bfa32dac5aeafb7e4d477179bc853885d6a26bb94979ae5"
      "sd"
    end
    language "si" do
      sha256 "40d3b40bad6d2341c8dcf8cb0f21a8d0162d22cc2e7411ad990d6e8a2443f246"
      "si"
    end
    language "sk" do
      sha256 "ec772d409cdd84661f949ad42d92e38d20cf6ec968083d0f6ee1b8e94fa4c02b"
      "sk"
    end
    language "sl" do
      sha256 "b6d248e185bb31c0f51aa5f5591b55e8519dd508025a62e954d0cb545c9ae9ad"
      "sl"
    end
    language "sq" do
      sha256 "947514a9f69f494bcb7e0706dbae93e6f07894cc5321531ac86d313802a8d77a"
      "sq"
    end
    language "sr" do
      sha256 "d0aea71f3fb9a60602f1420eb854f624add9c87e1af187fbb2e3833fa9989f00"
      "sr"
    end
    language "ss" do
      sha256 "e70642ec08ee9c933f564acf60505bba6e9df3346a83ad840df536b8677e864e"
      "ss"
    end
    language "st" do
      sha256 "d9da625f5aeceae9afe866df274f00114f9b1835d089dea4f7ee4b0b42f4bfa1"
      "st"
    end
    language "sv" do
      sha256 "f3a8f3dd70ef604d31fe57502d10311a2739febee6b6e265aaa64b6cf127f0b0"
      "sv"
    end
    language "sw-TZ" do
      sha256 "cd82c9af75fae5fb4468cff0c0d26d0d510cad99fcdd31ee3c685516b1b1e253"
      "sw-TZ"
    end
    language "ta" do
      sha256 "f66623bc43f0d4d595ff1364ed220793c66b3c90630d16fff6382bf2ec55ce5f"
      "ta"
    end
    language "te" do
      sha256 "5796716a361936a3f2c9b1ea0cc32c00945ff6ebf5a6c60d3ab1166ede988e0f"
      "te"
    end
    language "tg" do
      sha256 "0757bbcf698e33b9fe082d544707d3f074f1c3f68935475d6de6d4eb9644c789"
      "tg"
    end
    language "th" do
      sha256 "528f41bed2e9f8c391b52001da868fb0d0fc5a8cbeb6760d017c46a2fdb57f52"
      "th"
    end
    language "tn" do
      sha256 "00caa59d84cef89cfd48a5c79ce131c82f0567542356fe04a9d92d603c30f779"
      "tn"
    end
    language "tr" do
      sha256 "c52bf169ad5ad0624010b824f8c1ff5269492c8244d5ec3d50d1577caa945dc3"
      "tr"
    end
    language "ts" do
      sha256 "bc98f591d58d8a87bd20cbffe678f771cc0d30ffdf86af3877259f77a02a9cfc"
      "ts"
    end
    language "tt" do
      sha256 "7a65c41a476c3e19d60f6acdff73975d3187473df0be4be47a11aa64e468bce9"
      "tt"
    end
    language "ug" do
      sha256 "6f844788f749c5fb86155c46d7fd7a5f45ea2ae0b17b14317d8bd519eda62812"
      "ug"
    end
    language "uk" do
      sha256 "19451d893232f14c570b0290375f87d2e962d23ee740c5591dd1a4bf7f2532ad"
      "uk"
    end
    language "uz" do
      sha256 "e3ea993559b1469e021675562664aaff277c1e90c799adda781266cb1a9d8ee1"
      "uz"
    end
    language "ve" do
      sha256 "ed4a854f5b9b71dc13453d4de1e83530eb4e4aee9a13a746823a62841c549bd8"
      "ve"
    end
    language "vi" do
      sha256 "e9527b630314f0789d7d0b6654fbe40c2344d932285680eeb47ddb4322c37f4b"
      "vi"
    end
    language "xh" do
      sha256 "403f41b5b88711b877e80ea7651296e2e5ea4495ec04e604521ba00799be90c7"
      "xh"
    end
    language "zh-CN" do
      sha256 "f65313eeab2fc1d7a9fd5b6bd0181a2014ee8675e958e79cdb712e7527d34725"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "9ce1716f3fd71f04aa5fb7ce2d7d47f5af22f67d96cb56e27952303bd23f3ead"
      "zh-TW"
    end
    language "zu" do
      sha256 "07669d5140b39d376b0886d09faea02b21ff3d0a5b8d6e6a66661c0519bae488"
      "zu"
    end
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    url "https://download.documentfoundation.org/libreoffice/stable/"
    strategy :page_match
    regex(%r{href="(\d+(?:\.\d+)+)/"}i)
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
