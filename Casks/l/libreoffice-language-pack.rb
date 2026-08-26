cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.8.0"

  language "af" do
    sha256 arm:   "95dbdb81a1b177ff88ed52be5b9038183a6e7745277b85f054372691cf94d569",
           intel: "7790aff3935499ee94018cf4bcec8e7ba308faca5961d9e2b99a4f6bb0fd2d64"
    "af"
  end
  language "am" do
    sha256 arm:   "0689f24eb12e731a88f2f05b9d9d38411593ae68d8b1d6c0598c9848249744b5",
           intel: "7531f4aec20186c63e1512a155112de9acd32679ed9813c65e4f9ef89cc228e2"
    "am"
  end
  language "ar" do
    sha256 arm:   "c28baa5073916329f95283890bc7cc3749e514d9ca5e103592c74c54e4b0e916",
           intel: "c2f8e6d5c66f9ab170697e3364ff128264449c2458f9027acbe47c9250994847"
    "ar"
  end
  language "as" do
    sha256 arm:   "5fe5c94719ab5eb4eddcf1d59cddbd8291e8ab561c756d596c95e49957a9d5b8",
           intel: "0d312d0760a12cab0279d44e409912ebc5f772a9adbe0229e874274bae9fab31"
    "as"
  end
  language "be" do
    sha256 arm:   "aed1506270681f0c99ead4286e2f444fdbd61081f033602b8c31bf9db3fb726b",
           intel: "ae72ee3b9319534ca49d12ae2f09378f30abe46c9f3081dd879f1b1693f621c3"
    "be"
  end
  language "bg" do
    sha256 arm:   "316e00d144ad07cee747d5f3f932c41f38bc9fc179d36b2d3e3edc3e7031d29c",
           intel: "7bac3180eb08735eb478470579d99d9501e202cde1426fa844ea5649a12c3863"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "2856727192a0016d308389cdf28c073c300093419c73ecadec589aa3e0a90f60",
           intel: "9275f909b219f5796a2b8649983a508ce365aa119a449075385c7cf90e8320e5"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "770273d081fd6661660ac60cee1c9eab3f639ec242ca0b12ebf58c5dbacc4f90",
           intel: "d2e0d01fd808f242565b1300a2906f69ced2a5aecf4d5f3e974fbbd6de50c3ca"
    "bn"
  end
  language "bo" do
    sha256 arm:   "194fc31673b7902807136ed46788f2b452df1ff07bf962423ee1adc840736733",
           intel: "d33ec4b30544e70a623841c8f21babfca16dcb47a320f8066ec26f661f9de755"
    "bo"
  end
  language "br" do
    sha256 arm:   "e88570e13d72b44c7307884bf43bf92da5f751b2b9ab348b2046bf4c1e3d65d9",
           intel: "52ae4552a271fb59cabbe6e62dfd014f9f63d998b3377f4de8c2e71c2fd5d33c"
    "br"
  end
  language "bs" do
    sha256 arm:   "b5ac665b67f2001c563e74b50bf3f8c3944242995fba0b891977d306cbb75e88",
           intel: "17674ba90ca613b6b1e035dd5b75dfe2abe08ae0954bceace66422da331b613a"
    "bs"
  end
  language "ca" do
    sha256 arm:   "02c2c2931a3756974548dff2c1189fb7cbe4554bbb62c1e9dad2f7957325d76f",
           intel: "6ff9f2e70b48bc77a1fd5887a2cb1e56884c6795360b4f202d66ae8e6300f6ab"
    "ca"
  end
  language "cs" do
    sha256 arm:   "51d06409999384278b45f1b8147e21dbad6d78278f6dde4c5aab6ff45f515f25",
           intel: "48e8509cdc18bd967f4c0fdaa37cb02317a39860567fa16da78be98313c8530e"
    "cs"
  end
  language "cy" do
    sha256 arm:   "c6ed067b8109badc5b53a68d7991c0adc6ea7238a1b749458612b21f394e491d",
           intel: "21af9df45186af3c82da017e443e528f76f26b19ad6fa20991addc86a1573b8a"
    "cy"
  end
  language "da" do
    sha256 arm:   "5b25e54666f83eced40c718127f5f9ad5c75f47e61039bcd8a0a4aa1ff43d582",
           intel: "360e0acc85ee023593c7598e474262804854c66499b84df34e301ed4fca675eb"
    "da"
  end
  language "de" do
    sha256 arm:   "991945675a4563b7d1705ae763650358679fd5a283f2ae609cd3b9f3488e5409",
           intel: "84278906f0aaf2119abbc4230ac7c5f23f4cf32939364694a187b0d5464fc887"
    "de"
  end
  language "dz" do
    sha256 arm:   "ef54f7216e6f37e9e81588059b8b0da2977612ddd4b1afd792c40a7ab361a026",
           intel: "164dd2c0566fe8c6046331cad87e2a7cb3ffcab1daedd92fc8f97fce96462c59"
    "dz"
  end
  language "el" do
    sha256 arm:   "593bbfdc558bd098365fecaa00d921e2b47273baf41f93ff2c12cb69c0eca22c",
           intel: "f8598924bbba0f37a55d4a5474ce88e6de6c1498874f0eabee82a2f426731a55"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "6915eabcd5f529c9697bb4729f4b0620c53e14608c08b528da961e7e7e806bfd",
           intel: "69755a97c2262ca88afeaae7781ba04eea9d44edef5793474f83f775bba1bdda"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "319283e59560456800454efcc46dfb542d1b7d7e007cd74d5839d34043e937d2",
           intel: "7f3557bbc680ea8f2245e71bf95fe592c94e5e299a6ecba6d27596d7de44b559"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "38e6c0ab0f3a8bfa22087d677351d43bb50bf5d9ed05f5c563647ed295d7fada",
           intel: "e70fbb03a188f4fd84265f6e0fb4c80f2a00607027b838fb9818ef45632cc709"
    "eo"
  end
  language "es" do
    sha256 arm:   "eeea6b749ab0554c6ea35fda2096314d5dad2914a96b9b36ef5eeb9580886802",
           intel: "8dc3485bc130f4c7c541da148351fe530df54166fa212e36fb9d3dd7cca7c2a5"
    "es"
  end
  language "et" do
    sha256 arm:   "d0a0c154d31ec1b01a0f7d6f8f27ba85e6f4c490f8f45438ee79c3bf7150ee91",
           intel: "a443ec92abf3e3fc5ecde9210836d370e4c59a4e99cc0d98a733d45dc7893e48"
    "et"
  end
  language "eu" do
    sha256 arm:   "37f53bbc30fe2b92a0f6033dcd84537f272f7ec0375bb252e648bab3142ff95a",
           intel: "2a9db620b6865dffe2afd955bdc4dd6838de70040e7ed333bb334a190e62150c"
    "eu"
  end
  language "fa" do
    sha256 arm:   "98ce3bf941a46c62bdf3445fa94f0c867e9c31e6565c0158c1cf1246386b3298",
           intel: "18db4125f5420b53411d3a5e476200ea9784d91f012aa7461a40e3ea9e0cad75"
    "fa"
  end
  language "fi" do
    sha256 arm:   "f26bde9a55b6a4b1fca8857a1cde48fa6036668eb264f25bfaf49a2f83762e61",
           intel: "a4616cb1b14d7a164b6ecff6989200f9604f43cc9fb4ef97e5ef874e55f8e4b2"
    "fi"
  end
  language "fr" do
    sha256 arm:   "8a6824be427dc4216e65e8cdc7672b03d0ac57b8cf5d210f18ef15bc03d49174",
           intel: "b85d198d7988b7ba7a96c66f221f5747ee121fc3da453d36076d207f0e7b7555"
    "fr"
  end
  language "fy" do
    sha256 arm:   "961a1da852beee84b7a8b7830e62e294bf9d392b0a9d2e03d266796b958e95e5",
           intel: "0211fa11d546ff812d12547d875f9d7c8d312f147941858b6e2355ebe3cf9cfe"
    "fy"
  end
  language "ga" do
    sha256 arm:   "a577d6663264788b18c0917f00fb75e1101f7b005fbb7e39e86314b9344289c8",
           intel: "180337c843913149da2e6d2d448c41d3354b27cba167fecc0ad0e0d04947878e"
    "ga"
  end
  language "gd" do
    sha256 arm:   "405e748c1e3580cb9119551ceb9ef35e7bc33a53ce7d3fb5839dc4f012d473ca",
           intel: "cfc99a5871eaa2a47d078846d9794ec3d2d7f69af4f3cbb6ffa8d383f83e1da1"
    "gd"
  end
  language "gl" do
    sha256 arm:   "d6525945085aca6199afe369b3220f22ff76f0d143bdd05845adfcf1c3c65289",
           intel: "9a6323ce81d6f430b27e6d9b03d2bb358314acd9dd87bbf4ecc98218d6daf48e"
    "gl"
  end
  language "gu" do
    sha256 arm:   "16b2f5ea5838454aaef5a13870679827c4f288d464ffc0d71193593000909bf6",
           intel: "63c4ecf8d87928e8f66bcd88b62f943caa3bdc20bae3aa4e0b0252a6d59ce7dc"
    "gu"
  end
  language "he" do
    sha256 arm:   "44bf91ad20d4c79e3356d31f181636e1dcd6fdfcf75577d131b79ce9dea4afc0",
           intel: "b7eb005bb36805ec682074bffc53d78013b0a31253c4bf8dfb14ef3c3a56f75b"
    "he"
  end
  language "hi" do
    sha256 arm:   "50e752823c959723554e5095a3fb439463850a124d3c3ec04d7b19f34e813be3",
           intel: "97db8a7f4c6d60e5c197fc53de1e9f2bc521dfb81e4376a38b48d4e947a43491"
    "hi"
  end
  language "hr" do
    sha256 arm:   "f0bde538e1cbe32206b926e7b807d59643622797cea7a2c22097e880c07ebdba",
           intel: "28d5c77e9d4068e7e6724419e12645ae5da98d8428200d31d2d7b68ed9d1b180"
    "hr"
  end
  language "hu" do
    sha256 arm:   "b75f7d53f5a0c24bf1adba236d8e37d92e0ebce1d5b1c9cf791c4d0fb34fc894",
           intel: "d9890eca5bb3c805165f36def6e5312cc50dd5ea5f07d856856a3b9137e906a4"
    "hu"
  end
  language "id" do
    sha256 arm:   "154fb16f499a8607e3b850a53a25036588b4c9833cbdbb2bd40dd34c3e7e27c6",
           intel: "f0848c9b1978e0e111ce6a0360bc24d6a4da6abe2a5e6db946b658330ebd2b28"
    "id"
  end
  language "is" do
    sha256 arm:   "525c3e8d265138b7827adc60fed52579e0794272a52a3deabd963dadd37d19fb",
           intel: "1e733c057cd9ec21f528056b053972ea999015d5e8e5377d3f0967ec435883e6"
    "is"
  end
  language "it" do
    sha256 arm:   "a4f15888fe969b312d1d6cf29f0a8ed09758ae4827998a01ba436afdb0cc6307",
           intel: "1fa2802b89daedf15de61fab91c598b8cdb24ac9eb837099cf448c59bc77e2d5"
    "it"
  end
  language "ja" do
    sha256 arm:   "a0bdee956a06d2fb3bf83bf1785da9a56dbcccf7b301e2f333d2c24695d3cb2d",
           intel: "bef70607aed06610f4332e84941ac1da2f8985d2d743830f04a8b0c2996e34d3"
    "ja"
  end
  language "ka" do
    sha256 arm:   "0b73350cdf17d19f33c971d0bb1a8ef1b0f523c5327a5e0f0e0cd988611f31c5",
           intel: "59ffe91aa6b248bb18bf1a97f18f80d228a0ffe7caea4af3dd1b99d9cd3cd807"
    "ka"
  end
  language "kk" do
    sha256 arm:   "151b707ad60ef100630a17831c7a42b604fa7984f22d4e52064de5af9cbbc5b7",
           intel: "670566971a3c6708d7eabf905c73618001f3961514d6b66e34a99fe3a48dc6bd"
    "kk"
  end
  language "km" do
    sha256 arm:   "1d5fa471d5478220e7f34739a6e0e7b9c040c3066af4c6f920c38235f0b82df5",
           intel: "5c87de435a8c1291f8d260190528c32ac12334ee8f22e48d98b2242d5318bc33"
    "km"
  end
  language "kn" do
    sha256 arm:   "ced6a0a693ab5a43903a993b23712c7461c27aec0a636a33b6d64b6a63bf3cb9",
           intel: "ead68dde618bde671b7ba670d85b3350d6c87d5e48f82250fe90b9d41a227b28"
    "kn"
  end
  language "ko" do
    sha256 arm:   "67716ad294a96d3338ca4a5924fa3cbba60c1f7763b2d1f372b6d317353b27ca",
           intel: "85d3459eeff90abe6ffef9cda8cd2bc26f321abe7503056386a30bf518d709ea"
    "ko"
  end
  language "ks" do
    sha256 arm:   "3b34f091eaac9913fd6703e9645e54c0b77d4dcea1e90d661ae593891f6eba92",
           intel: "d9dd85ce1d56088b22ed7bf0c0b850a46848eed0a978883346083a3a5867ae38"
    "ks"
  end
  language "lb" do
    sha256 arm:   "0b7f0b1db3501b186f555d9db7e2b1b45315c599fffba5487e989099d11b80ec",
           intel: "fe7152cf252b10c299c1d990d49599c4252f8bb14879a7e88bb50e0211ef2eaf"
    "lb"
  end
  language "lo" do
    sha256 arm:   "9c466dc18d9f4e232865065c07180f0923fadc025df45cba096e75b036d9de34",
           intel: "39a85ce5192af27e559f58e4389d30a267bfa374919ff7d89d8f9596af349dbe"
    "lo"
  end
  language "lt" do
    sha256 arm:   "9568c10216cbb13cf303309370ece631c8a415a2ae9c9a0d60ae33d04a76ac16",
           intel: "cd19db96b00f65a6e4dd464bbe31ef7dc9b69394198078eb365edadcc0bd25a5"
    "lt"
  end
  language "lv" do
    sha256 arm:   "95129e57f69de497832ab88534c0fb4859187c0a720000771f79ae63abcbc2ac",
           intel: "6042551aabaf17eff2c5acb7883dd2aaf26750f4f2dfd5d37ac6003d795d869b"
    "lv"
  end
  language "mk" do
    sha256 arm:   "ef14e22f152d67230b316de37074703fcbfde8182dab776ba5a6ac5f0a606f96",
           intel: "04fe9f899a32047f4704d894dbc7838228d8f9527b17d133f09c4cda343f7510"
    "mk"
  end
  language "ml" do
    sha256 arm:   "4c2b9f509135ce6a1d80b6d5328cac2e993d2333ac396063618ab036eba9d2c3",
           intel: "d51c4bc03197c4bacb409b59bff65f9a07a35eca597f3a946665931e451705a6"
    "ml"
  end
  language "mn" do
    sha256 arm:   "f3135d9e158cb84c9bcca03aa093c41427ad0016d1b6444ad8e6c6966ceef948",
           intel: "f026f74f072b2716ea31809d479ad5eb65b1c65b2636a47478aeb8005bd07e88"
    "mn"
  end
  language "mr" do
    sha256 arm:   "e5340410b474297e76b91765e1d64018e1518250d597cc1c8d02873d999f4968",
           intel: "2d6bb8256eb21206440c38c14208298415e720f18d5b66a184229762c5bf6380"
    "mr"
  end
  language "my" do
    sha256 arm:   "72fc8431b8c4f38761fc0408be60064b5c6201b3b2fa9279e1a37c4d3671d419",
           intel: "1ef780bfd73423c4ad1f6c3c22e96f7f367349d403f3247122ad1fb3d5b5593f"
    "my"
  end
  language "nb" do
    sha256 arm:   "894c0df4f3940f6079e90be5abb65ee97a7d656e7b37aec9720138b1a5e72538",
           intel: "6ae2dc526eeeac2c1eadf8eac820d10128ef469b664c4b7b21c9eb66b9f83bc9"
    "nb"
  end
  language "ne" do
    sha256 arm:   "4d0645c6b4028f0af1e66ed19e739248d0f47c8845d78abdf986914d82c00ff9",
           intel: "8ee5c35f321a28305bdcab85eeb2de3c08ead7ca25eb79c334f8167164457729"
    "ne"
  end
  language "nl" do
    sha256 arm:   "fa614fe37756d198a45123a4240314078b5ce714eb8020b9c04ab2f121d5bd29",
           intel: "b87c4cf47961b9743e8d9574466f5510e050c35796cfc8a5080bc056fa5c5145"
    "nl"
  end
  language "nn" do
    sha256 arm:   "b41a6e692dcfc89e93216751d35bdd6d42bcec958328b9506913a4ae164147ce",
           intel: "1919aca50b0ea38c54798d592c94d46eb893c128740305447c54a139049ebd33"
    "nn"
  end
  language "nr" do
    sha256 arm:   "6cdcc4616b11770fea300883e21d277a37448e2b42d7d3a3545fc048a731b3d2",
           intel: "b1f1787ac735c3e5e79efcdc20f5c1726d08b2d070369f6db19173574dd52f16"
    "nr"
  end
  language "oc" do
    sha256 arm:   "6d185435b1af3b9c50af923dd36a343797d6670ea64d73399b84d9253cfb8b57",
           intel: "30b1b97899c0801b6fb405ce8e654f210bc37f008c6de60be91d7205f0c75e77"
    "oc"
  end
  language "om" do
    sha256 arm:   "c1b44ff6c3f6173cd92326a765a3d880fe311e8050d0757321113fd7d28758a6",
           intel: "f9c50bd6d3048f222bb4490b24939a84aba2683c7e8a77fdeb779da8289a73eb"
    "om"
  end
  language "or" do
    sha256 arm:   "8af122442afe740c107ca1e863ded7a203f05fc6045e61f82d1aa1f98b357301",
           intel: "da4d515e4071548444b5208e4a58a9575528604dab6eddf28bada48cd49dd5a8"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "972c2527c7ed204e1e13ee3363630bc46ab3908037c604aae81adccaf93ec22c",
           intel: "44c5b226dc166ef0f3881912f314fa9a23981010e1d35f17e6e10c10e970623c"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "fd05cb6ce877cd721f62f68881a69a6160403575427ea42bfb4445cd058ce44b",
           intel: "9afe31c967ef84612a5b5e084e15a28908cda3201b659435c813fd98032a2b00"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "5563ae05a04fec71a7f3df2cf5510da8664e83369d52b263fd1dc0cf0384ba48",
           intel: "e056fbd1281c8d92d6d821d3d6443fd44ee7e65426439b7795e71efdd7794f9b"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "3ab7c94c84e6c87bbc538c6eb573a9068cf1f0ffd3b862f0f671dfe4d1ee9961",
           intel: "98d86eec669745a5de2c7a46bc512f360dcd749497c008f0fcd62252bc0aa16d"
    "pt"
  end
  language "ro" do
    sha256 arm:   "a974339575d5477c202bf918c32d5d237df051bbca368de029e0ec967a021a5a",
           intel: "4a3e1eebd58ecb78bd79496331fd7aeebde628cb52b25d544c36e5b1fba5ef8a"
    "ro"
  end
  language "ru" do
    sha256 arm:   "4a005d1202176a7fc402658d81585bb0a5f754e9bcd8fa1790a6b607b5ef6c99",
           intel: "a91cc8610d1fa4d26d25548e7ca1a29cb6dc3bd90d3db160dbed294d568e26c6"
    "ru"
  end
  language "rw" do
    sha256 arm:   "f0bc88e617a92227b725922fdeace563b257b9372e776a9aa9a5dc9b6ac78721",
           intel: "3890a5c28fe1ee6503db0211fef775d8c109b34f68e0bb1c3426eb076db14201"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "51c5991f8c4018c7a76696e92e3994e838db896dc2b5469d5f65518e98499cfe",
           intel: "9cf36d42e20af200c8488510008239ad24158b25e84ba2ade792f6ba016b8d65"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "c0d51228877be13b47c06c8fe8eba53975d96d66d27b5486a993383cfe2e6541",
           intel: "8c69c031a34583e78460cdade7b22b75c148d51352c6a96617c34c7b2f5b3ee0"
    "sd"
  end
  language "si" do
    sha256 arm:   "89ccb6c9ed72460d1684d961d6b4038bc96be45744d1a72587e977f0a26f15bf",
           intel: "4315b22d7b35c167e2b3e9bc76710a2eb82e2ff3bf607e89030b0a4560cda6b8"
    "si"
  end
  language "sk" do
    sha256 arm:   "201daa8a12b821f975c018cc7ca23d8d92c6cea738cf274f69a8ba2092021f3d",
           intel: "1955f49f3fe893e6fbf17a7abe77c3212a15ee34ebd060093e1543af4c649439"
    "sk"
  end
  language "sl" do
    sha256 arm:   "cebbaa46ea6d4e67d29b049739fb0c3a5f2af4e84ddb7da67e4bf93181862874",
           intel: "2907cb6de159e227d893976c200a6865204a0ffffef17826c3c9670a53ca5f2f"
    "sl"
  end
  language "sq" do
    sha256 arm:   "62de427e57700c197bd6eaf9a14a85857ea60b2911be5f02179d733f6bfb90d5",
           intel: "c97a055cfc9d018f139b81cebd5cf8c770224c9658a5609cddff9befd14e8524"
    "sq"
  end
  language "sr" do
    sha256 arm:   "58bd142a1cdf015fc83846b1e1aa9cdecb92afabc4fbcd14e015203aa2bcfc78",
           intel: "16c9376225014ee798fb7ccabfa316011d043976ae1db7cc181748115f5e8527"
    "sr"
  end
  language "ss" do
    sha256 arm:   "e8040b64d1ca1a66a5947883217c737c7c42fc07bbd908bab6249db41a4119c1",
           intel: "3c28ed18da79c89f9b69da6beca111c3c830aeb5acd12a0002e947a935964419"
    "ss"
  end
  language "st" do
    sha256 arm:   "a38f6f9702fd61012b9eeb4dc0005bfe7ac9e14cc4b35aa0105bc1c6c1dc4222",
           intel: "7abb46fae39c60e3cd537ffa803a6ebfc2b525574fd58d0e001363f6f1a85542"
    "st"
  end
  language "sv" do
    sha256 arm:   "27a51c388a8b5e3b5a4b93a36b0b0b1c5fb049ee66b6646cffa99d7e5738472d",
           intel: "a846a3bf40108b0c181298ee8eefca9b18e02012bf36cc9825a77cbbd641791b"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "fc31d31510302d9687c1b25aec0b107f231316037f2bfd58873fb87ead904c44",
           intel: "3c7543cb65dff9fa0a567388da5cc9b2e98bf825313e35e14cc11d2a738334b8"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "0db2ed3b06d92af023fafaf0c98e41eb139aeccf341edbfa3ce9dbf4061ddb84",
           intel: "036c9fb3f3b9c86e779975d63d6f53922437d943c378813547b66173cdaa3c94"
    "ta"
  end
  language "te" do
    sha256 arm:   "bf3a06d41ce42544bbd80154cb2c50d21777c28f7658d78630bce848aaede757",
           intel: "eb7175960d9e05cfd59bb6d3c7426cf829ad96f920b228a91b53e326ebf2e17e"
    "te"
  end
  language "tg" do
    sha256 arm:   "9426fd83a8b665b2937b0c93bd88ef09668780c50da16ed0e5086f5468d662e7",
           intel: "3e09993c9d8ac5bf60ce765b55758a0736b559d8b2d6e2452aa71726fb3f718f"
    "tg"
  end
  language "th" do
    sha256 arm:   "2485f124a3fbdec42cadc30cb60c3eb14433f2bf04651bd14c8acd1cf6d9512e",
           intel: "4c0bddd52ba4d7227dc6f497883e9d5da164f17ab3967b497bc4156bfedfd7e6"
    "th"
  end
  language "tn" do
    sha256 arm:   "125f46999d60440e89b346b339e700844cebfb54f18d995e85dbb4dfc061242a",
           intel: "da367638da341f59d511fbfd9c9f28e7fb8cf82f33f6fa7d0c2a6bc4c8e6c134"
    "tn"
  end
  language "tr" do
    sha256 arm:   "3c8185a5db95001f1dfaf5852eec8a1307d3f57f6b93eb746ac17be2e53efcfe",
           intel: "ce6a989323bb93fb2df2e6599169769eff374cdf041d49c124ddbb6dc2b5ba99"
    "tr"
  end
  language "ts" do
    sha256 arm:   "547607b8e64f9e15d40ea71e620b9a855407d17f254f8669bd34ebd622a4b1b8",
           intel: "085be0237dbd4f9a8d291b746be30f34e953222b55d8e43ad3edcc1ebafd2c1a"
    "ts"
  end
  language "tt" do
    sha256 arm:   "23904d6124307acb6697388f23ad714e51520df376d5644c3a32ab960fd27353",
           intel: "436671bb2a84a45b5dd73cd2e71c584b4638a9413f5d921288794aff8867b8c6"
    "tt"
  end
  language "ug" do
    sha256 arm:   "c7821963df6ccb5b5abc140155bbe73fd316fa89b58070ace41132fd9ee58e73",
           intel: "83b8af06f9fc6b1cd5efea55e838074ab2c5886d0ffdc5527ab42a4f2e3cd0f9"
    "ug"
  end
  language "uk" do
    sha256 arm:   "d7e8b560157daeed51c36d4dfea4a32c5da41bf3d3032a214467be0a2a5ac613",
           intel: "876d391eff6c3009c9bb54d97431142c3278271429f6cbcf72c47e61505ef60c"
    "uk"
  end
  language "uz" do
    sha256 arm:   "007b7d8b27f4ee02e87a9efe6abf31c6dd5be53cb39de95e76a2bee3e2a1dbc1",
           intel: "0fa846f2b0a2a9191193c0b233c97b8a7c7585605c9359f2acf514c026b9cee1"
    "uz"
  end
  language "ve" do
    sha256 arm:   "d3840de0bdab9763e651cad76368c8f6fa59111d9b71f350dd6276766767cb30",
           intel: "64431d7685841b9e7635a315b3e4fe77c3ea0450ffaec2f0d028dd8f2590dc14"
    "ve"
  end
  language "vi" do
    sha256 arm:   "20036c79955a51a8edfa6ef3fffdd665fdb2d9002e3d71476f78004680368516",
           intel: "9b7e3d67849fca92c7d42433c62024518fca4b7fc38d2d5b26d3b4ece1f269d2"
    "vi"
  end
  language "xh" do
    sha256 arm:   "100788164531af2f27243659b4f6e033609d41fa14c64d20576e8ea308a17e40",
           intel: "1d2cbe09f4a9cc23b92ed3aaa5826543d1da7f81a18f7221d118a05aabe3c4b7"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "1e8254fba2c3aa58e884b724220e8275b83511b503d569594e75e2cab2fa1517",
           intel: "6076c123546133e02da141229a521bbde55c1c30bace2c43284ab30aeca807f1"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "52273fe5ae9809c210c80541e264a2535a48c35fa2056ea6ee60df508f3a774c",
           intel: "0ed749bda9256fd382ea566a3a5753ed3d94309c3ebb2e16684773921a2183da"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "7f7a4a575cee92e880aa7534b0844af4192f8cdbc54e2a965d6c459eda4c8da1",
           intel: "bf48008c8f82ea23839475230e0e4698b340f9bb6a072ad9c74a987b176b75a0"
    "zu"
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    cask "libreoffice"
  end

  depends_on :macos
  depends_on cask: "libreoffice"

  generated_script "SilentInstall.sh", content: <<~EOS
    #!/bin/bash
    pathOfApp=$(mdfind "kMDItemContentType == 'com.apple.application-bundle' && kMDItemFSName == 'LibreOffice.app'" -onlyin '#{appdir}')
    if [[ $(mdls --raw --name kMDItemFSName --name kMDItemVersion "$pathOfApp" | xargs -0) == "LibreOffice.app #{version}"* ]]
    then
      #Test if the .app have quarantine attribute, or if they are already launched once.
      if [[ $(xattr -l "$pathOfApp") != *'com.apple.quarantine'* || $(xattr -p com.apple.quarantine "$pathOfApp") != '0181;'* ]]
      then
        echo "Silent installation has started, you didn't need to use the .app"
        echo "Add language pack support for $pathOfApp"
        /usr/bin/tar -C "$pathOfApp" -xjf "#{staged_path}/LibreOffice Language Pack.app/Contents/Resources/tarball.tar.bz2" && touch "$pathOfApp"
      else
        echo "You need to run $pathOfApp once before you can silently install language pack"
      fi
    else
      echo 'Silent installation cannot match the prerequisite'
      echo "To complete the installation of Cask #{token}, you must also run the installer at:"
      echo "#{staged_path}/LibreOffice Language Pack.app"
    fi
  EOS
  # Start the silent install
  installer script: {
    executable: "#{staged_path}/SilentInstall.sh",
    sudo:       true,
  }

  postflight_steps do
    remove "SilentInstall.sh"
  end

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: "#{staged_path}/#{token}"

  # No zap stanza required

  caveats <<~EOS
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
