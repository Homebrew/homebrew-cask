cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.4.3"

  on_intel do
    language "af" do
      sha256 "63e956405d44403b9c541676c7c85a2ea6af4e7e53ecb7a0647d3a7c386ba362"
      "af"
    end
    language "am" do
      sha256 "306274fc727cd634cf35afc7b5c0f19cf398595988f10d83d0828f5148fca5e5"
      "am"
    end
    language "ar" do
      sha256 "30c6ee749e7f907e22cdcf86e8cdf1410f1799392512cdbba430d8cee21ec26b"
      "ar"
    end
    language "as" do
      sha256 "c2a1c33f6e78fbfc9556020c9153d8a09995f09ec0b726857376b9de88d88c23"
      "as"
    end
    language "be" do
      sha256 "a7359bf027ac1265f5bc93ed6e2b9d6565f2b9eeaed43af4b18589d1ad99395d"
      "be"
    end
    language "bg" do
      sha256 "d3fe25f4785d4f5ffa9ce8e27db027c3376f3318e774cfff86279e15509f97a0"
      "bg"
    end
    language "bn-IN" do
      sha256 "a5b54d01515a23ccc1c81a4b0c3a30ba9272e8d386e20e8529c1110ffef818ca"
      "bn-IN"
    end
    language "bn" do
      sha256 "7fe2a7e027c7a8fa8f1a20d2b1519dd882cf1a91f8684ca0b09bdcea90846e79"
      "bn"
    end
    language "bo" do
      sha256 "d1da1c222f1d3549adb801694d5dc063c0e81bee1b4f509641af036d452cc3fa"
      "bo"
    end
    language "br" do
      sha256 "052379b737411e0e9f836704cc7125b3fe9bfdc64cb54f60529a1b62d4e9ffc8"
      "br"
    end
    language "bs" do
      sha256 "f7a69cc12ff073f7935795dcb387c403fa56760fb60882d0cb1c0a797c2dcb72"
      "bs"
    end
    language "ca" do
      sha256 "18e53ab07a18793493867af531dbe4eed7043b41c9b1245a0b5778ad87a49381"
      "ca"
    end
    language "cs" do
      sha256 "181459f212c58bb848b657379fee2503cc77cc75b145508297aaf5f87f794beb"
      "cs"
    end
    language "cy" do
      sha256 "1d10388204c403f9d293365f72123d7b9992501bba358735f69392747efe166e"
      "cy"
    end
    language "da" do
      sha256 "963f91f20c5d905ef90df06daf8716993944bdf44cb23351396869285042cff5"
      "da"
    end
    language "de" do
      sha256 "d5be5e681ccc2b86ebdd5be000efc2c269a7548b554a9d71b8b2a1ae92b69420"
      "de"
    end
    language "dz" do
      sha256 "f5e33b7751d0c849ffa33f1a1b5b427f2d3fbe068adc2466388bbbf083089949"
      "dz"
    end
    language "el" do
      sha256 "9fc5a3adf5fcfb299fe92b8843e76fd6a7085e4833342a3658d38e530f6ee513"
      "el"
    end
    language "en-GB", default: true do
      sha256 "426e29635af8bcb16ae878df398c5703dc528b804d5ce3bcfaf1a7d5edfe0c0d"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "6886fa49a36d86bc63bff1e5fed1533a2a0089038ba63e24216ca6d41c8a6aa5"
      "en-ZA"
    end
    language "eo" do
      sha256 "c9fb1a4a6c4515e2c23f324a3462092df501475aec9a66dac4dbb7d844ec66f7"
      "eo"
    end
    language "es" do
      sha256 "aa333cd3a991a2f80c4e0b9d1261ac24bcaef902277e205600d5a6b525d3e305"
      "es"
    end
    language "et" do
      sha256 "dcbf31ab911474ea03df520180c79db73ac02c77a67a3d1c4a635135611d90db"
      "et"
    end
    language "eu" do
      sha256 "b1387d33c3e83d31f362e9539438c9f7b514c7845e9dd066b4590ff7d1a2a276"
      "eu"
    end
    language "fa" do
      sha256 "0823c44919443047b0bc300b38a835cfb18d3a4a3d63b5fb7f60dbdd5aba79b0"
      "fa"
    end
    language "fi" do
      sha256 "e25a185cb1bd90266b3e54a55c2f50b89faca0cba4d894db8501e237aa93500a"
      "fi"
    end
    language "fr" do
      sha256 "f9bb1ba8bf338f8413945b7449d764ced02fc4b3fa4801d0e532e1004077a626"
      "fr"
    end
    language "fy" do
      sha256 "6491c720150a8e005d4c623a15921a8f7f4edb3b675d46e27bb3cf045a289872"
      "fy"
    end
    language "ga" do
      sha256 "5e992c6c2482d9c61e9c921b0f046fc732f9956ce4e40513853a0062e7317cce"
      "ga"
    end
    language "gd" do
      sha256 "a81652f5afd7d5db82f64cc8d8ca482302954a2589d386130bfc7f1fd2091df3"
      "gd"
    end
    language "gl" do
      sha256 "865eb5caf3e400c88f5afcb15dde92775b9bb8359e6c1aa5b52c7835f950a1e5"
      "gl"
    end
    language "gu" do
      sha256 "a2bfd16f34853f098c36992cd020d4838f755191f7d35bfb26c2963ef08753e5"
      "gu"
    end
    language "he" do
      sha256 "395767d13500afa0ba926a669ac7d057dbd5e6eef9b9a29a50f89ba4fe96717f"
      "he"
    end
    language "hi" do
      sha256 "4de353add70cf067c7f321fea55b1bf711cda55e56389d235d9c54a87ca51194"
      "hi"
    end
    language "hr" do
      sha256 "7da5c640696fc931972381b845ffccfbaf4369e463b3e95ec1ba3fdfdcc260f7"
      "hr"
    end
    language "hu" do
      sha256 "8b7aeebbf761fa0f40568450ee6a91c1a9e9d86996e089de4d30cbb47dd4c10b"
      "hu"
    end
    language "id" do
      sha256 "a6b60aa079b576bf4a450e361928609ef1b006e735254819c942d65880d56fda"
      "id"
    end
    language "is" do
      sha256 "eb4dbecee8c3ed8d95723cb5500712330c92bb804c3939d109be96e94c95f1c0"
      "is"
    end
    language "it" do
      sha256 "3215e0116ce2be6dabd935b0e697340ef158fd9acdb74f577e29b7b4a1262072"
      "it"
    end
    language "ja" do
      sha256 "9a14f0915f4b2d2398efd8d2949c8f93989cd383a446ed5d25e2d2f9865e2af2"
      "ja"
    end
    language "ka" do
      sha256 "dbcdb05d896c9f3753dc7dd3d527bdc730480d42a2ac7acaa15849b15172ac07"
      "ka"
    end
    language "kk" do
      sha256 "cca59d5f25f938a5928d252b2f4adb6e73b37646f7d9cee3b62048ee6582ca51"
      "kk"
    end
    language "km" do
      sha256 "65440e807bb7d52221909f8b597a756566ac4cdf009e5b954d7eb492f9b3b2e5"
      "km"
    end
    language "kn" do
      sha256 "5007e31779f7a59a6815f69b871cf04e75e440d45abbd8f2c6e84d30efa5c593"
      "kn"
    end
    language "ko" do
      sha256 "a561a2865003513c3c9953233d911c8bfe7313badb5517f91caca0fa80976a7a"
      "ko"
    end
    language "ks" do
      sha256 "0ba6528be450d71f6257d48d8f0b1908325f59932a9e5cd7d2b2dce7f9c2315a"
      "ks"
    end
    language "lb" do
      sha256 "df483ce7a46b2683618465f1250ae66235c7d095ed44e305c8c9d65221c4eb0a"
      "lb"
    end
    language "lo" do
      sha256 "d41a5a0b239488f606eb4261a5b3740424ce41c8df2ea1d4bfd0c476a27f1488"
      "lo"
    end
    language "lt" do
      sha256 "44fd3a5100ac8e5defb818f53bc1759a034ab4bb5890ce58739317bb2108562e"
      "lt"
    end
    language "lv" do
      sha256 "c0bbe380b9b2f38081c233f7a03e58713e6606f776e26895b3e2714c3bda160c"
      "lv"
    end
    language "mk" do
      sha256 "e4a2bebfda796167cbea6392016a9ac4889f1902eec74a42238c1fe2b63c2729"
      "mk"
    end
    language "ml" do
      sha256 "9d1d1c1a124043dba55f6b7bf2b47b68431315ec31e81f5425422524e6d311da"
      "ml"
    end
    language "mn" do
      sha256 "eed1a2484b050c1abbf7ae70f95ba10bf8407cb04a0d344325e305a03856630e"
      "mn"
    end
    language "mr" do
      sha256 "475edb006dedd98397b7cdc1500c352a182b54175038950be9b4f8d2b3d3e863"
      "mr"
    end
    language "my" do
      sha256 "816ae1a82cf219eb900df12fa6c00267fe28cbae5749545d5e45fe52bb696891"
      "my"
    end
    language "nb" do
      sha256 "39e0e550e09e463f4fb95fc4a495b48e22fc522d802a90a65d789b8b7202323c"
      "nb"
    end
    language "ne" do
      sha256 "74be1752b003935d9be6315c9c8d0b2ee1241b388b443eec32b584c11aab67a1"
      "ne"
    end
    language "nl" do
      sha256 "7f6c3519ce99dc60beca55ee0654b4f1cc7e5501aafdcc66a2299171a0c438b4"
      "nl"
    end
    language "nn" do
      sha256 "e48b35f9345a99e1cb3b7390b8a507f8c3b72f02d6c314997bba2c401d7f7227"
      "nn"
    end
    language "nr" do
      sha256 "1cbd08ce097864c244757274c0c437c90ee07cd28e4e9252ae082e1c68470f5e"
      "nr"
    end
    language "oc" do
      sha256 "e230cb5576f5901797af45f388faa23db7badfd94a91d93ae06551e79faf73d6"
      "oc"
    end
    language "om" do
      sha256 "b0e848e86c186b9a1e910ae39e48e45242821d7a3572410b91a2e463bd9d7062"
      "om"
    end
    language "or" do
      sha256 "0c1ff279cdcd967afa18177ad5ab553ba134ab59800fd642f48d4c4e2ad26b4a"
      "or"
    end
    language "pa-IN" do
      sha256 "e54228d7ef392c10cfdbb60c90526e6b70abc3d060a122f9cb2fb1321ab23485"
      "pa-IN"
    end
    language "pl" do
      sha256 "798c9731719e76acf7ab19fa99fb4769e87432b47f7b6b70f3c448512dea2aec"
      "pl"
    end
    language "pt-BR" do
      sha256 "899c699b6fa844eccc2431168532edf0cb1cab8aeb2df9a1f15c56079990119c"
      "pt-BR"
    end
    language "pt" do
      sha256 "f5b8b38bb2aa40d5fe373b184b195e68bf5448f06161aedc1a30faa9caf12f7e"
      "pt"
    end
    language "ro" do
      sha256 "0fa48b52676ef26856a41ddff5ff8e6e4ed742e18698150f4edd58dfd40c2c92"
      "ro"
    end
    language "ru" do
      sha256 "a90f4332ec86697034f59d48ddfad0c6976607b5ef47995a632ad532cf2e14db"
      "ru"
    end
    language "rw" do
      sha256 "8c20d8ea3f45c6990f2b9fba94e2fd55d5dcd5321d63e4f4317c99eb2c9e4123"
      "rw"
    end
    language "sa-IN" do
      sha256 "c142d0a6848723703ae3afb9cd74e2749792912263d280542f5419f8cb829386"
      "sa-IN"
    end
    language "sd" do
      sha256 "dfcd23b711ad02b126e4be5f990e526ea3d1631ff48f2324632adb22ae532ea1"
      "sd"
    end
    language "si" do
      sha256 "8e999c255cd1889f316392773c9cb20812e948bf3c1cc55bbf1a6e9e5680e22c"
      "si"
    end
    language "sk" do
      sha256 "98df6264a9afc6ee68c440ff6719a15422e8193eabe9ed8162117e5699115fc0"
      "sk"
    end
    language "sl" do
      sha256 "13bd6be697969b3762bae839d77ebc2fb3277bd4da45124655b09d37b191cc2e"
      "sl"
    end
    language "sq" do
      sha256 "1a9cee826a82dc25b17514873aa88ade5c0d39366c5f4506cf92ea9e61b525ef"
      "sq"
    end
    language "sr" do
      sha256 "e0af0f3367af9de361d009343475006f627c95650cbba8ac4c4dde8eca6d8fe3"
      "sr"
    end
    language "ss" do
      sha256 "82d7574e94ac485bf74b5a9a35e09697ccb73d4eb47449b57ea3d92484fd80e3"
      "ss"
    end
    language "st" do
      sha256 "6ebf10eeb163767eeed65617c2b25396ff4d9f44988c2c1df55b8c29b96dd2be"
      "st"
    end
    language "sv" do
      sha256 "765d4725ceb8700c21162a83e8c34c1ded4460ea1f1f2b4f610acdb9e85fd117"
      "sv"
    end
    language "sw-TZ" do
      sha256 "2c922f529b46dea48588c175b8ff066960d927f7e6bf086c27ca6e987fd43850"
      "sw-TZ"
    end
    language "ta" do
      sha256 "7c197f4a783b1140d87aacb2eacc60ad9aec1e21ecc91adfab845a4306480589"
      "ta"
    end
    language "te" do
      sha256 "b9dc0b06a7878a81fef37f4bc12d20ee26bfb081bcce9a832ba6d48636525775"
      "te"
    end
    language "tg" do
      sha256 "e416984707e043b23f8cdfd3f6e7f8df5ac35839da8bccf6d9883055200aa170"
      "tg"
    end
    language "th" do
      sha256 "cbdcd4d78976bad42bf272aa058948cbce298e781fc43d2cb50bce4f1b26b3c7"
      "th"
    end
    language "tn" do
      sha256 "2eee85928bc08923133570bd936347f872017f1133cd5a5a94d7450d9e5ce379"
      "tn"
    end
    language "tr" do
      sha256 "4ced6b8a754cd47e714473aa3985c9b8d4cab5c982a62ca9c47f65aa3c133523"
      "tr"
    end
    language "ts" do
      sha256 "2c904dea406a8ff1c4c57fd2f0f96c420d2b0bc2defc679e35a62f2b8e074fe3"
      "ts"
    end
    language "tt" do
      sha256 "fa38e4d7611be84b98adaa00904c2d58b88bb7807447656d1e3d5124f6cb620b"
      "tt"
    end
    language "ug" do
      sha256 "7d695898bdffd5206ec5cb86ce2f503cc0867a9ecbafb44f60cfce9d659e3bab"
      "ug"
    end
    language "uk" do
      sha256 "0a5491525632de96a13542bba853bbf56126ba66cf688a0d448115ed9ea2b0ee"
      "uk"
    end
    language "uz" do
      sha256 "1ef730fe8c73a116f7805b3c9df5f920edacc758d0b69360d541e2b54e47c602"
      "uz"
    end
    language "ve" do
      sha256 "15bd3d37066a4e9e0823be376142e2ea23e9d475e47ba35ba8f73ef301a8f0a2"
      "ve"
    end
    language "vi" do
      sha256 "be8d44c5808eb9a2f8a18e08a92667e955834d9682d4ae3b95efa42ccb74c09d"
      "vi"
    end
    language "xh" do
      sha256 "7d73ec7441de97c763e5532c361ef6acce6cda21b328fee507db524dfa514746"
      "xh"
    end
    language "zh-CN" do
      sha256 "a64e4805d07121499408ca2de5bcff8e4e4b3ad8aa3f7970d37be06be9f5c2bd"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "d89af0dcf32c481895bb06e0d85095dab4aa605fae3ba51f8868d3b71f5d0d80"
      "zh-TW"
    end
    language "zu" do
      sha256 "d384ba3e5c99cd998c38d2acb49e97e0495d5cf1dcdb9e999a0ca953339b325e"
      "zu"
    end
  end
  on_arm do
    language "af" do
      sha256 "95cc9e0d763409d9af6af147b68779545656f248c816de1af3d658355b1b9466"
      "af"
    end
    language "am" do
      sha256 "4c960102f2b28d1b6fd4fd6d034943125f6cdce8209a17e6ee7c58484a2cad31"
      "am"
    end
    language "ar" do
      sha256 "468a318c7d62d3481f5e47852ad657198807ae5422b24c3ca1a2e670f865eb32"
      "ar"
    end
    language "as" do
      sha256 "c36c1dacad74a016c088be3dd7862a33a4da127285e2707570f8fe8aae664158"
      "as"
    end
    language "be" do
      sha256 "869d79c68f5d794ebac7c7a9143b9935791ea0821c95af13d423de560e9833cc"
      "be"
    end
    language "bg" do
      sha256 "827d08f10fe6c6f2a38e6448bf14a51e7ce8969b6683b1d6629ec8d15f146335"
      "bg"
    end
    language "bn-IN" do
      sha256 "035a28b567a4e5db70180c8b7185b7f0f5660c2d84838a679511df74bb17064e"
      "bn-IN"
    end
    language "bn" do
      sha256 "ef8018758c2effa9eebc96101ee4e95e047599cc5b7ba1d925c6bc55ab35bd10"
      "bn"
    end
    language "bo" do
      sha256 "952f23c95e1515235372af9d600d7b7177b56deff3f80fb55adc634c448461ae"
      "bo"
    end
    language "br" do
      sha256 "59b4a3f68fe431c2ac364383e25564001415c7c5cd5a7c9c9cd382d695e1950a"
      "br"
    end
    language "bs" do
      sha256 "d4dab9ebc6b054c281ede3aa9f6c3a5105063732dc14a5de47b6a4d8ca006bad"
      "bs"
    end
    language "ca" do
      sha256 "0675ff2433a3e2b365baa79e1ff97cd0d9a5e2d186967456b8f816c630432452"
      "ca"
    end
    language "cs" do
      sha256 "60da5a632b83589aa48b6ce3de6cdfb6887823f63ad1ea5eebbf7b1d352f3274"
      "cs"
    end
    language "cy" do
      sha256 "b7b988bffdc943866c4f6a66450ae9487dae85ce46b68c566cd2dd575349360b"
      "cy"
    end
    language "da" do
      sha256 "b95a4767236995149b4e5503eac018ca22c7980d8de4d3bb88b13b215ee8aff5"
      "da"
    end
    language "de" do
      sha256 "ac782448cf2ffe877b2d797a740c6be675f6c9654dbf64153add21febc498a8f"
      "de"
    end
    language "dz" do
      sha256 "d956947d3828f1962526a2ba4e8b882ae235d90d1a30f67ffba5ef5c0b970e48"
      "dz"
    end
    language "el" do
      sha256 "f4390fb655a6e134a0a90d8b318492702c6344b746eb37ad98c31a1d9fd1aff4"
      "el"
    end
    language "en-GB", default: true do
      sha256 "25fd65b6f152fe4d46eade3e4d69c864d57b572c762c02e2e31a2f2e180d3bc4"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "4f8b3df37078a7742277faf5efc0285295138bd6811aeab37d627fc867a319e3"
      "en-ZA"
    end
    language "eo" do
      sha256 "39a7947affba114be6d040f380d0902f0dc093a3e87ab8885a7bf0c7110f3c79"
      "eo"
    end
    language "es" do
      sha256 "ef8183df340625353a20d5c81dca4638a3d45642091e7a2df049f6b538441107"
      "es"
    end
    language "et" do
      sha256 "f4c21f8100ac18e90050063899954ed59441b586d1653bee4c27eda87d52aba0"
      "et"
    end
    language "eu" do
      sha256 "1e8dba1fdd01681539550f2bee1ed6a488d0795bcedde65533dab43e07e832c5"
      "eu"
    end
    language "fa" do
      sha256 "6352e03e6fd1122f66549af623f1f7ddfab8fdc2caaaf475550614b0e4ec814f"
      "fa"
    end
    language "fi" do
      sha256 "fb57983308ae06fdc28196d5db219734b09f7152b22d353e6bd6c22c669072e2"
      "fi"
    end
    language "fr" do
      sha256 "aeb79087c5678ae6de7f3e5389b50d27eee8eef97f0255c639eda2df8d9c9397"
      "fr"
    end
    language "fy" do
      sha256 "8f46abf3009f9ca5375e3b40290db2feecb826a44148b9649145d7dd3f83ecb1"
      "fy"
    end
    language "ga" do
      sha256 "5bcbfc9493e6e4cd9da36814f1884954ccf6d614e97f49a75b940a9dbba5c311"
      "ga"
    end
    language "gd" do
      sha256 "3e8b51fc9f3492ee43d1372e9fa04af256f4c03e11f4e599b1cf918238ba00c9"
      "gd"
    end
    language "gl" do
      sha256 "2ebeeb8e6f5f2bfa778dfe9af109b1f44a66e0e4e3e7ba59cff8639b8e2a2cbe"
      "gl"
    end
    language "gu" do
      sha256 "28dc1c8fd978790f0023fd3b47ee388fa9d8047b13a30725d6df83a60b31a050"
      "gu"
    end
    language "he" do
      sha256 "ecc74e619755f94c9019a53d7db25a7e13cdff5c4b426cda8b63e693c9f6d31d"
      "he"
    end
    language "hi" do
      sha256 "9632dd8b3040889c0ca621115e6eb14464249564e1dc9bc20f83991b59e47902"
      "hi"
    end
    language "hr" do
      sha256 "be846ce75e62be874f8aa56cd903a6a76701b569996e25924128d2419a61e782"
      "hr"
    end
    language "hu" do
      sha256 "22a87bc344d448d452ef0573c545972c4716bc3bf098999dc4776588ac81fa59"
      "hu"
    end
    language "id" do
      sha256 "54d22973f1d0d325a428fb9adee50130496d4ab7e69a71fbc73ec70b840af923"
      "id"
    end
    language "is" do
      sha256 "aa9185c3f3a9e8a50fe869a9b0828eee70ad6286e2da72a8023f0e2066c6009b"
      "is"
    end
    language "it" do
      sha256 "cc0c68bef4c5071c3e25ddf80c7b6af20dc765f92ebb08b8dee3719467e84fe6"
      "it"
    end
    language "ja" do
      sha256 "b8b76de5b08636f05379b6fd8821448e721f86afd02bcba2d09dc252e21f1724"
      "ja"
    end
    language "ka" do
      sha256 "882a05055851781da6c95d4363161b642f0c96ec36f2372354725c69acf025d3"
      "ka"
    end
    language "kk" do
      sha256 "0759c56b6126b6e34c6e019406c8f498f7eb6610d8cb48cb3e06753d2a536245"
      "kk"
    end
    language "km" do
      sha256 "93a407eda5ffcaf67219c63656b857d28a00d0ae4f96c1f7346bc7410d000a51"
      "km"
    end
    language "kn" do
      sha256 "23676b59d8bd1480d56e24a5805910315d55f69b53ea77d9783b98d20121ddf2"
      "kn"
    end
    language "ko" do
      sha256 "b9a4ba7916d8dcfd7c33ce7e330e547b3aec5cef54b91335730b97638413cca3"
      "ko"
    end
    language "ks" do
      sha256 "9a30c0ad25f513367b54588fef7a4b08fbaf3e06dc58c7a2f43f1bb222d6d808"
      "ks"
    end
    language "lb" do
      sha256 "31fc6dd82e61a49a0aa374792b1c138039ad7cc1b875f08b6e86c83d45ac7ee4"
      "lb"
    end
    language "lo" do
      sha256 "03a32e5ecd62256bb41ebdc25e3a4cb981d1f9b7fbd4a1005f48efa3fa654bad"
      "lo"
    end
    language "lt" do
      sha256 "084dbea4937e500af8c4f0eede85131e20918f8e41275c01888293340f1395fd"
      "lt"
    end
    language "lv" do
      sha256 "539ceb849c9a0b3f1cb1ffad2a8e37917ab9d1bb76fc1ecaac45427ff9afa185"
      "lv"
    end
    language "mk" do
      sha256 "da0d3085f869ca94c5fc7ee7eb61d1623584dafba8edca3c26fdf327564a425f"
      "mk"
    end
    language "ml" do
      sha256 "4e908ff27a3f9c6dab1530c7f558b1d65f956513e180963e9c82082e16941585"
      "ml"
    end
    language "mn" do
      sha256 "8439c0d6a41b282c73fd714fe58545fb76df30f1493f89fe1f552d9b3558bf0d"
      "mn"
    end
    language "mr" do
      sha256 "545d72af2aef99c5cd00eaeddf1e3d73655593431adaabc018ab7e3a5622d481"
      "mr"
    end
    language "my" do
      sha256 "a941196abc348474478d7611e5830926ca40536164d0ca769d3cdd2be1bc4271"
      "my"
    end
    language "nb" do
      sha256 "320171ed889136149bb3bb085384b702c59625f8bd934f918b4ee9bbef370b94"
      "nb"
    end
    language "ne" do
      sha256 "8a2619d6c1e299bc2d160a85326872595d24ee80f80d7054ceaedbf3d8a50473"
      "ne"
    end
    language "nl" do
      sha256 "645cb05c8fd7e02faa5a45bb4cdaedbf2f549c0f6ad12c7f76853e541d7edc62"
      "nl"
    end
    language "nn" do
      sha256 "13c1fc6a6fdb5b7b85de8575d60a2c5ce4c1ff9cc4228da1c1a499b79ece43a0"
      "nn"
    end
    language "nr" do
      sha256 "3fee8db00359abef6fa42fd85f0588f10bfe5ccdf8c007add64e42858f794952"
      "nr"
    end
    language "oc" do
      sha256 "71bfe092abd71e971a509a8f4ff43c61dd1d69ebc346d154fd96ec8a435164c4"
      "oc"
    end
    language "om" do
      sha256 "a5ce33fd73924de577553bd64983fb38df8b82443d0da4dc96fabb28668df203"
      "om"
    end
    language "or" do
      sha256 "13032938bdc9952e6736c3850f08ad9ac098671be17a7fa11e9fe4defb56d4d6"
      "or"
    end
    language "pa-IN" do
      sha256 "c0733422fa9cfad0daea3e0dc9aca15074cb096f742f24a2fd21ff24798eeba2"
      "pa-IN"
    end
    language "pl" do
      sha256 "7ec115c7975c7457fd0faea84e14f57af11bb1f875252b288878180432029808"
      "pl"
    end
    language "pt-BR" do
      sha256 "cd6ad805e645b5814266da29fe0d60c10d9e5f53c968867c1a94f640515908db"
      "pt-BR"
    end
    language "pt" do
      sha256 "8fdcc539302e9ffe1218b725a86150ed531d9921883d6d7e373b07b82d5b2fe5"
      "pt"
    end
    language "ro" do
      sha256 "ab20c81d5762a3b3380b596a954b41ff311c0f128e81538d5e29bee2d1f84074"
      "ro"
    end
    language "ru" do
      sha256 "93fef7648cb607aed0e35b9c9888a8a360b41cbe16b661efdf4583f2bcff5649"
      "ru"
    end
    language "rw" do
      sha256 "faf2104fef02b975413685655590ede21bd92c06534b4a2b470fea88517f304f"
      "rw"
    end
    language "sa-IN" do
      sha256 "de9565afc1cf6b2df68ed895f70eb7e6e4f3320f33e7088e9d4063c6f0af09b8"
      "sa-IN"
    end
    language "sd" do
      sha256 "800e736732456c95a0971e55e022698ccb6269cd73630fab4659d39cb14c7329"
      "sd"
    end
    language "si" do
      sha256 "759cd36cc4cbbb235bbafb2fae597201de7da90f6c2a78447aa3c236c848240b"
      "si"
    end
    language "sk" do
      sha256 "489c47def7a0756809aa809a07040fbb864fe95f2c0dc44babc7dc27d47d5848"
      "sk"
    end
    language "sl" do
      sha256 "0c3f395dece2a199b47354d3c978a8b489d46f5a43663dfbf14a072e2f128115"
      "sl"
    end
    language "sq" do
      sha256 "b45437ec6d0f127e2fcbdedd8962349c203cb2c719e11686e08968c51e4e468a"
      "sq"
    end
    language "sr" do
      sha256 "a764637eedeb4679c884bc9fc8ce1e4dc6bfca68e8012d7eb78d62fa6cc81000"
      "sr"
    end
    language "ss" do
      sha256 "958b00cc7838becc04ba7bab17a28486cd215a6184d5565f180ccf313069f49e"
      "ss"
    end
    language "st" do
      sha256 "99f85bfae1684557977599afc01ed3ea24dfebaa3d775b9f06e2571ad3dc928f"
      "st"
    end
    language "sv" do
      sha256 "44774af96464bf1ccdb8088ea2af48e36342be2bef09118d7ae80bc84f2ec581"
      "sv"
    end
    language "sw-TZ" do
      sha256 "619d996f6a3661ea3ffa67a223ede07e461a2903d83843bd242e669f00a6da6e"
      "sw-TZ"
    end
    language "ta" do
      sha256 "8b1efd573603b07f4ec690433eb1103ba9d1b6dec77370f055bd7265e84bca19"
      "ta"
    end
    language "te" do
      sha256 "55aae5ec1f189ebd8d7fa2061229617202723865395f43f6dcc505c8a05a1e47"
      "te"
    end
    language "tg" do
      sha256 "149d8fc86fa5e683ea35d2593e45055878db1694d4772d8c2f912b11010d825c"
      "tg"
    end
    language "th" do
      sha256 "c20283c080bbfa93a838205feff6af8a6a6af7e0d02f885c42f3d0baf31331b8"
      "th"
    end
    language "tn" do
      sha256 "33e3bdca7dd75473895ec17a45da160a4e3c129ecaee4cb81290ddc857e2863d"
      "tn"
    end
    language "tr" do
      sha256 "5b7611c03225018a4e55ec3900029a9d9c1a255b642a2fb60583da8a4569fe20"
      "tr"
    end
    language "ts" do
      sha256 "7d138645145a0aac4aad444b1d64672ba8618aae68ce132350e9c8cbdfac1591"
      "ts"
    end
    language "tt" do
      sha256 "5ef7cf8577c25dec108b1010d2def2c44179802f2a8a084fecc85c2b4e597c7a"
      "tt"
    end
    language "ug" do
      sha256 "705670e3af34ec03c234a78ffd5a21814b5a73ba70ccd6d1a20fe424bb26ef0e"
      "ug"
    end
    language "uk" do
      sha256 "1a5e8665b39920cb285bee97c6f79359e2cb4d315c5a8f7e3ab0230fe15a8f54"
      "uk"
    end
    language "uz" do
      sha256 "37adc00b9c7a7b9a4368494a844d65eca1c7db0818e5b0615d93db8d2ca0f882"
      "uz"
    end
    language "ve" do
      sha256 "4d32ad4a6741e867c9ad820e293b7e8837c7a122ca31e0e605d39d4beb36851c"
      "ve"
    end
    language "vi" do
      sha256 "8dc30ba6384ee46bd5d4acbc1c1e5c2c5567d92a03f80424e63a285e14240803"
      "vi"
    end
    language "xh" do
      sha256 "9a6e8054b64786fbfdd44318fa2a0aff3500d8c94b9e42ee64a2deb74ecd1893"
      "xh"
    end
    language "zh-CN" do
      sha256 "c52ad976452bec813386534a491ec8c8579d94b1c025d0d76fc828bb9d18d200"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "901bec4001f8131f26a5ae51a00b789dc189a9ce2f85bc7bb1fd427df7e6370d"
      "zh-TW"
    end
    language "zu" do
      sha256 "b0596ad4a54aed43aabc8742ca8fcff3050ba9a949b1a629a3b52204faacfb01"
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
