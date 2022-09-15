cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.4.1"

  on_intel do
    language "af" do
      sha256 "0d835896dcefd630141b479164feb5234c861ba8b90d5dae8094ea15a95691c5"
      "af"
    end
    language "am" do
      sha256 "da8993a5755eda8afa11620ece2431826021224d79992f13da1f868004bd880f"
      "am"
    end
    language "ar" do
      sha256 "fa90a6d9effb68cbc5c02cc4a339347e13b7cb0c066bf20413160fcf0e208323"
      "ar"
    end
    language "as" do
      sha256 "d8eb5644b21852db7e4ece9c2d1f71f38c86722b52f1a2b2425021bcc311118d"
      "as"
    end
    language "be" do
      sha256 "120a628e9d8ec58de1afdc84b4edf1a05df05f8486e1837dbd6447d94675597c"
      "be"
    end
    language "bg" do
      sha256 "726fcbb33688a4370aecb3c25e7a12881bc33b133c5886ece061f2e6b165ba4f"
      "bg"
    end
    language "bn-IN" do
      sha256 "7bbefee2c70baca2b576c49898bf3e1a3a0646968e1fbe74b7e10af949aa97f9"
      "bn-IN"
    end
    language "bn" do
      sha256 "1a76aae053c8028e904ccb0c1909a136e1ee264af353c0be004080f4bcc97f3b"
      "bn"
    end
    language "bo" do
      sha256 "12ce20b10d675f7730235abfd8fe506b53b55f81b38e854814d2a88c1bf26d59"
      "bo"
    end
    language "br" do
      sha256 "83d7c4f4ab9a134ebf4f12a81bc64c220e9ec4aaae20f1a651ee36b417013988"
      "br"
    end
    language "bs" do
      sha256 "b90ac24383717be7ad41051d94e2adb7003357a547e179154c49a727a5a78b01"
      "bs"
    end
    language "ca" do
      sha256 "47bf316e0fc705b4058f71578b05354329a6a1224114f9911db9a7b4382f86ba"
      "ca"
    end
    language "cs" do
      sha256 "4f3fc45d46b7ee9a96853abec3e7a63bb905e9cab97c69fda84a5dab2669a64e"
      "cs"
    end
    language "cy" do
      sha256 "720278ebe8019ede24871a289906164639b95728e7cf145ad265d47a5097903b"
      "cy"
    end
    language "da" do
      sha256 "a19507de0c239b3149eb2982f0d510d9595e8ca00c983e8b8b0ff546d03b3235"
      "da"
    end
    language "de" do
      sha256 "a5e9677a6e98233694e7985cae83849bca5a2db38405c4935ac0ecc8551a1ce6"
      "de"
    end
    language "dz" do
      sha256 "1b243babde3b198fed2a1533949a3cab057913ef32a8ad57b8f12e115b0ded4e"
      "dz"
    end
    language "el" do
      sha256 "7ceaa0b7e488340d299c5e4b17d2e04c37c505dc88158e6f5f591ab88e15dd1c"
      "el"
    end
    language "en-GB", default: true do
      sha256 "344edf0fab1e2d49c38d5769c0a530b3d6f484b65637ceb1eb9ad5e217477ade"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "6c37b95987d411e7891c87a06491e29662c6d1ac4760b1f73008631d88ac0eb4"
      "en-ZA"
    end
    language "eo" do
      sha256 "37eaddec33b1439d7544d3aa9a7a1b3dcbc27efdaab47b6e09e4927b2c55110d"
      "eo"
    end
    language "es" do
      sha256 "52f46572deec5b8fc42947ef5f2992f09e8eccd64587348b957cfe66085068da"
      "es"
    end
    language "et" do
      sha256 "a2d8b1975522f89b5981bba726a41e5ff270564c832bd6a5d3a1c80d44b72dc9"
      "et"
    end
    language "eu" do
      sha256 "35e6b0cbe5d399ed96d8ee5657db991757049e9089aa23b109e1b05b33844ee8"
      "eu"
    end
    language "fa" do
      sha256 "b3a2d6f5e6031de9962d2b2e03e2fc8eca6e365e5702675a91b4a0276734a395"
      "fa"
    end
    language "fi" do
      sha256 "71f724054741afd670b6707a9bf7d6fd6a70b1fdaead3ae9d3390c4d14b4d04f"
      "fi"
    end
    language "fr" do
      sha256 "b2abaa088d835f380769da6cffbf3f4b22c7a13e5e3cd2d93f0a69a3386d7af6"
      "fr"
    end
    language "fy" do
      sha256 "8fdb5bd7b625ef92bc879262c014c4f7827beac90e66790a6191b2529d16f174"
      "fy"
    end
    language "ga" do
      sha256 "b5882551957717e24f5671eca111c83c0269688434adb97e31cd53d14d09bba4"
      "ga"
    end
    language "gd" do
      sha256 "7e909a8e2e0fc36464210e30c449b51bf165c55fd04b32cb3d29fbc2282f5755"
      "gd"
    end
    language "gl" do
      sha256 "a932df9ea020a565bf95bf3b43b53981ca8f11d66e9a894dc99dfb8a266493e2"
      "gl"
    end
    language "gu" do
      sha256 "803c2a03c956e3732f8f20a0979dc66fdfe9a9a368d526b00cfa35d1d9cb0146"
      "gu"
    end
    language "he" do
      sha256 "6c8833ad57c33e1d66ec3792f9b0b64792452a4e8a0119f8d257d1df8c80d52a"
      "he"
    end
    language "hi" do
      sha256 "433d92fa204f5d4f806ce69dc085b18961d6dd34911882f58cf026ecff125c90"
      "hi"
    end
    language "hr" do
      sha256 "4f27cadf5d06178c0169f7f3ec857a5e764f21b81dc28e58a72629cb0acb059e"
      "hr"
    end
    language "hu" do
      sha256 "abc3eaaf3140cf62874f7100bc88a847d4fce066bcb3300f9000906e03205bd7"
      "hu"
    end
    language "id" do
      sha256 "e5b2dc3ea8c1df4909b8a635f665b1a273b33e4c6ba97175f27c0f1f7135a57b"
      "id"
    end
    language "is" do
      sha256 "fb95881cac8e7960a291cd153b53bbd95b4e4c27c190d13c000e4a53e543372e"
      "is"
    end
    language "it" do
      sha256 "b552971e2f01e3c9ca99035f6a025c979c1f3d7a121c03c21633fda43f536859"
      "it"
    end
    language "ja" do
      sha256 "f6fadd37be24b8aeb52b7736b558a599b7bc436668f7cff158e3a589001beadb"
      "ja"
    end
    language "ka" do
      sha256 "1de935bbd690567488add43b95dded23f947232f5fa69ad97d71e99efbe0d420"
      "ka"
    end
    language "kk" do
      sha256 "311233f3013147f7696b3a08278b1a0ff62938cddf06ae7b25fdddc324d17315"
      "kk"
    end
    language "km" do
      sha256 "5ec154c86266e657ddbf2f331259ccbad8f02c98225a575af49165774f5810d5"
      "km"
    end
    language "kn" do
      sha256 "732b5735111d7d8c08d048542feb0d86459e3bca309326924235230e3e30d276"
      "kn"
    end
    language "ko" do
      sha256 "6c309e4cb24002c95164c3370271207fb29ac5d187c19b28525eb3cded267029"
      "ko"
    end
    language "ks" do
      sha256 "8e7b41a50a16de7a5677b564f2dd4fe4f87e5134ecbca1ee6027d35942ad6a46"
      "ks"
    end
    language "lb" do
      sha256 "17e9f601b025258916c9652f623ef6c26e17e8eddcd6f20e95cb8856ccb27b3a"
      "lb"
    end
    language "lo" do
      sha256 "152bd7865d199ea3139d04b3d9f3bdd29eb8de9892ec041a3c4f8ee0fcbd5194"
      "lo"
    end
    language "lt" do
      sha256 "34e2c42b9990607b0a8d761c7e9730551484dfa333944181c6fc02ee08d58e72"
      "lt"
    end
    language "lv" do
      sha256 "2bdf910392c3d2a6c97fc142490c83740266144f7ebaf28cd42e669c7244841a"
      "lv"
    end
    language "mk" do
      sha256 "c0dfb402d8a16dae0bb0684beffabadf7294d15649139c1f18a02a6db63e2716"
      "mk"
    end
    language "ml" do
      sha256 "70a21eb66e2f24e0482bd7901b0a708db2061d98b907903c4ddcf124c9534990"
      "ml"
    end
    language "mn" do
      sha256 "df1836fb6a2a5afe6a207f2eb530deb9f4ea38e96d05a216f0c97505d1669469"
      "mn"
    end
    language "mr" do
      sha256 "74772840371ac08f27f520e085c5ff44520c411895d5527f02fa0b3253345637"
      "mr"
    end
    language "my" do
      sha256 "68e001d186958a5303a977fb12cf3b502389066436e86a110471e874402fccf1"
      "my"
    end
    language "nb" do
      sha256 "051bd4ca8749fdb70128c25734ba772c7deb4b9f00297a8a0e464261e33ba529"
      "nb"
    end
    language "ne" do
      sha256 "69938558db11e00a96c43b9a22b79e935e667eafb2bbb72b448d684121f42dab"
      "ne"
    end
    language "nl" do
      sha256 "65765936721ce6d7f0d97774b1699ef74c175d2c7a1118fa19233c3ef2d7decc"
      "nl"
    end
    language "nn" do
      sha256 "8b678de4bea79945dd20e7212a83745183e8a3066f291cdef6140f07215eb37a"
      "nn"
    end
    language "nr" do
      sha256 "a6683759af9e412ad9e67b17724f0d357e001b4e9d5856e2bd638c876f7e7a08"
      "nr"
    end
    language "oc" do
      sha256 "8b49c945ffad27e20cb644c703e553e57707c3eee17d5ce7b27ef699d71a4958"
      "oc"
    end
    language "om" do
      sha256 "a7f7b048951540d42797bc948da13ebeec43702c2ea4e8936a455ea5a49dfc7d"
      "om"
    end
    language "or" do
      sha256 "1b6dda83b02fca1f610f13499ae62214aa88cea0f7c7e3dbf5541be64b23395d"
      "or"
    end
    language "pa-IN" do
      sha256 "b1cc1c4efd2036f2e61bd86133a5aa2a7f47ed9fd71c878f57cc6278ea19eece"
      "pa-IN"
    end
    language "pl" do
      sha256 "a48eef8f29e9e0adfbd22e9206ddd9ed19a49f9eb6a9b2052fa00c9a2b82f13f"
      "pl"
    end
    language "pt-BR" do
      sha256 "2c46cecfb95411b64e9894164a1d68d9324c6c3c7e4da437bca1b72cda503acd"
      "pt-BR"
    end
    language "pt" do
      sha256 "e0f12b011caab83dae4721bfd8d88d57c39733bc092504c40feb297aa4d513be"
      "pt"
    end
    language "ro" do
      sha256 "e2f3bd6a79a1137379533164912da1554f5c0431cb8fae255b8b9732de4cd4af"
      "ro"
    end
    language "ru" do
      sha256 "b6a0ead6bc262504527444c1b0b195514a3b08eb37d5694355619cddbabb718f"
      "ru"
    end
    language "rw" do
      sha256 "07c81b8c0c8e3c6146ce59497e516e7036463524f44075c9d003a3f3ed2be880"
      "rw"
    end
    language "sa-IN" do
      sha256 "5f13e268c484584f25025be1cde863652b9829bdf4138d8a0f6468e95bfea26f"
      "sa-IN"
    end
    language "sd" do
      sha256 "e1770dc0eb5e7aa47ab934f5f9f4e3362d6aceec8b790dc88738d5b391b0577b"
      "sd"
    end
    language "si" do
      sha256 "dc21a01c1c188515a7498ec8942d254b9b477d6657c1ca91ce01d222aa50f9cf"
      "si"
    end
    language "sk" do
      sha256 "3f5567f98bc9f60f4e34db3480cfb7af16ee32b21d2e0cf91f7b10bd4c0d8dc7"
      "sk"
    end
    language "sl" do
      sha256 "d00937eb2924bd379efbe48c8958ce46d7fc4705ab19f991662bb87ab7105b73"
      "sl"
    end
    language "sq" do
      sha256 "bba0aae0cdaaac1baac8c8b0b3689960761028718e05f65d988744b26a6c72ee"
      "sq"
    end
    language "sr" do
      sha256 "a4eb401b2b0ad7b14089dc3fb3e156e7cad6165dcd1221c834074ca830157d29"
      "sr"
    end
    language "ss" do
      sha256 "2d7c22b4f85d4162a859a4b98d6a8db0440cdadc147c73bcb9384034bc80a154"
      "ss"
    end
    language "st" do
      sha256 "51230b332cf41e1775a32409c751ace90eb4d5d656463ea20be8d56587822d8f"
      "st"
    end
    language "sv" do
      sha256 "621f4fe3f5b2a3b93863416f73d7a309fa4aee787c4f9b1505226a70e88c31ee"
      "sv"
    end
    language "sw-TZ" do
      sha256 "731fdf337ef3743fac29eabefce21787b787a8a579a7f5b4b30a3d66ca472d37"
      "sw-TZ"
    end
    language "ta" do
      sha256 "6ceedd28551f094d61c9051ab528bb1f7a560906aedd1fd49dbd6d52d736d64c"
      "ta"
    end
    language "te" do
      sha256 "759d391920dd6927a66afb59cdb81b836d8e1315cac31fe8903a0819ef5d69e4"
      "te"
    end
    language "tg" do
      sha256 "345da9c33b510853209663ec7cca023396c7ee576e87baacb8784f24073e7aab"
      "tg"
    end
    language "th" do
      sha256 "5d71f7ff8ad725e1de8bd5e302bd2259aaac3b321752628d753be4fd3ca2c36c"
      "th"
    end
    language "tn" do
      sha256 "fbfd0e73ae0242a25e3374352b8c2432e91f7e249474422640fcc139670d4f1b"
      "tn"
    end
    language "tr" do
      sha256 "c2d1f8412340f2f4315085f44ecd6426af41502d25542f430dc0452039545f86"
      "tr"
    end
    language "ts" do
      sha256 "bf451f10b0d4e73fb06cadb07a2e74d7cceabd4ac1455ef396a6006a55dafa14"
      "ts"
    end
    language "tt" do
      sha256 "5fc809a94f42cc4d706cae046046ea9332e3b28b61a9883cff4b2beb9b40679f"
      "tt"
    end
    language "ug" do
      sha256 "c4b93e44a7f7523db259a0a0f1662630eaef50375577ffeb0d7871c274261849"
      "ug"
    end
    language "uk" do
      sha256 "7c67e099b6b4dc9d9b7e392cd09d8b6248b4f8689246a5ed0c8b74cd8b2febe8"
      "uk"
    end
    language "uz" do
      sha256 "a6eb6d7d6cc053ad8df338806d69ba7c9f26810262540adae188f84ba18efd7a"
      "uz"
    end
    language "ve" do
      sha256 "f8108588e4d1e7a816a73f35c6f50e2aa9a31064d6083bc7b4648abffcef47e4"
      "ve"
    end
    language "vi" do
      sha256 "54280f8b576a4db59714520c25e187ff4dccc4ed70f479389abe2dbdd7752665"
      "vi"
    end
    language "xh" do
      sha256 "d3f9fe1577434ada69b736bed48d93daaa51edb8850b7716021627a2bf7f3ebf"
      "xh"
    end
    language "zh-CN" do
      sha256 "9c9f33a13531de352e924b29fe6ec69295e9ff788df07cb119a874a8e8df60fd"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "273409c74b3dbe30a99816628c73b2a9abb947496dbac37e409ccc5dc5fbb186"
      "zh-TW"
    end
    language "zu" do
      sha256 "406e801546f7cf889103bcb768fa0ea48fc047dc7b8c8f3371399cab8beba80c"
      "zu"
    end
  end
  on_arm do
    language "af" do
      sha256 "9b230676739c958e4ecd1a85c1e4a8fdabf1f683857be6cdcd9cc2155372849f"
      "af"
    end
    language "am" do
      sha256 "09235cfd36fc5c24b1f0bc6253a5f7c786448995cbaf407f390218ba5a93a660"
      "am"
    end
    language "ar" do
      sha256 "4b504850b2116a6046b6030ee95aa7c876a22ade63d8b7d13ee1aa2f2313a295"
      "ar"
    end
    language "as" do
      sha256 "ed098fb0fde84365ba5610228fa309a5b770338385a27d97ddfa94d9cd93e9c0"
      "as"
    end
    language "be" do
      sha256 "183414cd8953465bb97aa4b75d6625e102c508cdf9726ab8618234105ad43aab"
      "be"
    end
    language "bg" do
      sha256 "d6fa9dc228f1186a63d1cb32b18b6c34ed34a7e004b63925e6267fc5d3696158"
      "bg"
    end
    language "bn-IN" do
      sha256 "b612258b2aff579caa4399f2a8c441bde9d311d41a1995d91f74d603c0716ccf"
      "bn-IN"
    end
    language "bn" do
      sha256 "512414696f79fb88cfd8c6dd2f3efb2ee3a56150d46b4dec4c2e4ed657826dd3"
      "bn"
    end
    language "bo" do
      sha256 "4827b55d26b1a89a2585ea8c2ae4114919109d1db90686849378dc0d31440590"
      "bo"
    end
    language "br" do
      sha256 "9c610d0cbeec28fa3dbd2571a14530ae420d112eb0720da99345cb31fd1f1476"
      "br"
    end
    language "bs" do
      sha256 "6a613b77a952612e0290cdb6eaff90e8d80ae5e63553bac855d3237e84fcfa7f"
      "bs"
    end
    language "ca" do
      sha256 "4e34f0c31d669aa3c87c799c7207d1bb39255bf137ff542ea94affcbdc60b8af"
      "ca"
    end
    language "cs" do
      sha256 "e276181f4f4371a6e8ec5ae1d7d711f74d37c3fa469ca51b9fea16e9a2de20b0"
      "cs"
    end
    language "cy" do
      sha256 "2fa2b4cd2b28bca651c76f47dc04829a3032560c14a1d65fefb9f961b0986772"
      "cy"
    end
    language "da" do
      sha256 "4cd076884532c2c507cc8c5d975d6192750eb280cf6db19e03d717759b54ed2c"
      "da"
    end
    language "de" do
      sha256 "b3a23af0cc703ebf8b84be79bd11ffa8c7e8aa9bed9c17f77e54149bd794c12f"
      "de"
    end
    language "dz" do
      sha256 "d92e6919d81c0bf931696e96768d680b32226fa5813aef49badf935123ebc1e2"
      "dz"
    end
    language "el" do
      sha256 "86848ca904d89a32da208fffa51e55240f5d9e50cf5768447bf039484a807690"
      "el"
    end
    language "en-GB", default: true do
      sha256 "fd6274d42b09d5288db3a9d7f40e006d2b48620897f15a90ec20e76bcce88e70"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "2b1efb81e64a7adbf1ff7be29f4146bdea301ee3260c34fb3374459a7f8f68f8"
      "en-ZA"
    end
    language "eo" do
      sha256 "e8319715ebc2bd3ffd160ec48434a322cabb19c28cb00770cad243ea25b05377"
      "eo"
    end
    language "es" do
      sha256 "79a8b7f55d51fc2b36f965e603e185629924d0de955679cbf6539f094ae561e2"
      "es"
    end
    language "et" do
      sha256 "9dc3b5b95f272f7b15e32f166d152f5496e859065eda0b6a9c0782716fc39ea8"
      "et"
    end
    language "eu" do
      sha256 "a81cec423b092d6664a1d1bc1f36dce5196a59506cf74cbda748f8082f6b9c5d"
      "eu"
    end
    language "fa" do
      sha256 "cf5926adf7238a64210edadc19942245e8fd95d285a367874fbe14370f53d8f0"
      "fa"
    end
    language "fi" do
      sha256 "0acec8debe70e3db78cb09507b1b5523a7c8309302474cb00a983fe03d891cba"
      "fi"
    end
    language "fr" do
      sha256 "29891e51cdaff2e2832639e5995d3a988c08adf91132a25073ab50d943d8c3b9"
      "fr"
    end
    language "fy" do
      sha256 "a665d8a703c1622da8c0a11d6268b05e7c343f69d985d898389d7678376f82d5"
      "fy"
    end
    language "ga" do
      sha256 "5e6fc885868f77a768d964316d1bae979c3327a06da2f5f0cab39295a0c902be"
      "ga"
    end
    language "gd" do
      sha256 "81a81290c737aee1689c20e6e4eda7536b948c43d3bf62c70db6a6f959fe6c53"
      "gd"
    end
    language "gl" do
      sha256 "6b5518e858f06eed6f68c4cec563c26eb705283c7d282dcb43e84b40b2b70191"
      "gl"
    end
    language "gu" do
      sha256 "669bb1d644f925e25d9ee50f040a8a82920181996802596be206fcdf0743e57c"
      "gu"
    end
    language "he" do
      sha256 "eea103b83c4670e45cf7bae7add5c7923d314b9f8b183557b1bd8f58d7e8babf"
      "he"
    end
    language "hi" do
      sha256 "79a52a2fb2f42e57ee888bf5eb338b4193d19e38c759c0e58f015ce906ec5232"
      "hi"
    end
    language "hr" do
      sha256 "ecdd3708d34c2fee08a4ca9982411ff9c03b14f902044eec39948d462e4240ea"
      "hr"
    end
    language "hu" do
      sha256 "6c3f0b8469af272462f7555730ffe97a6865fb94e9b9fa18b96f53ec470e8c82"
      "hu"
    end
    language "id" do
      sha256 "026815a2c950b559750bad2709679337d3fed1bde35579fa37c71726b8cbff95"
      "id"
    end
    language "is" do
      sha256 "d3b98b18313da7b4a245f6432ca39db54cbe28b219023844d5db957a4bf2254e"
      "is"
    end
    language "it" do
      sha256 "9cc4512714c42a87ac4a350f0542c90d0ff1c9ae64e4e42620fa2e5b9f0e1ea0"
      "it"
    end
    language "ja" do
      sha256 "882d62bec370571cc4975b38dfb95e0884f6751618b75de6d9d97c705fd3917c"
      "ja"
    end
    language "ka" do
      sha256 "483870e68c83c2f21a4b50a15488a2027013b9d72feb90b5fa0854b955038380"
      "ka"
    end
    language "kk" do
      sha256 "62215372d8391418cb90e9d90793b701af9d8199e5271afb038477d7abb06b34"
      "kk"
    end
    language "km" do
      sha256 "aebb5d786c7e77ed4c8e5ba4d9465623833ee21463e15b9c1d314d5833920ef5"
      "km"
    end
    language "kn" do
      sha256 "9701e6f063f259a3b7d9dfb8042a8528d1e48b176f14f3b2ed5661db96e9b0af"
      "kn"
    end
    language "ko" do
      sha256 "6e3d6544d1d5c86a7ddc86259c0371d5a7adb39b3c5a1f2fb067d3d96145f00a"
      "ko"
    end
    language "ks" do
      sha256 "e9ef58744842985f25c874dd957c94e2506a6ea4dfb154b7625f0194979d7ee5"
      "ks"
    end
    language "lb" do
      sha256 "08c07207e43212cba11acbc0ac180901da486c9bf65b02137299283ab89d4a24"
      "lb"
    end
    language "lo" do
      sha256 "fc58fc254e00bac9ff85a0d6452e08c745a4f2f9006a7e2a9e7754fdc37d815c"
      "lo"
    end
    language "lt" do
      sha256 "9afde652e576bf07dc1b5cf7cba85449a9148c55d06787d6de2bbf3fbbfc084c"
      "lt"
    end
    language "lv" do
      sha256 "35a916b0b8bea868e799511b24c2e01549de16401d02d2403494015a9177f9c6"
      "lv"
    end
    language "mk" do
      sha256 "2b0354b24485f9ccc1658c6930614ad8d686602c6523eb7ecaae96537c112c7a"
      "mk"
    end
    language "ml" do
      sha256 "2634abc80ec3d9a307663e26e8beb8936ff7cb6380532ee78cb8022dce7521e5"
      "ml"
    end
    language "mn" do
      sha256 "bd92fc6268d4907c713fd83c45b864d861ab7fb879e6f75d3fecd7edbf12dd5d"
      "mn"
    end
    language "mr" do
      sha256 "bea2ed729c712f5f5310327109c59fa35f0c80b9a7c90faed429a0f790db17aa"
      "mr"
    end
    language "my" do
      sha256 "49ba05eb4df8b4bf58613c4ce56af0c6c374f06943515b3aeff6a06edaff3eba"
      "my"
    end
    language "nb" do
      sha256 "318443639d9d36fa4266bc83931e63c37df6f6496be811c1e36bbc30014db91c"
      "nb"
    end
    language "ne" do
      sha256 "2a5282a9da25fd9e8033072f22964fbc2f7d2bc6f6adef1c28ef77e8dac828f0"
      "ne"
    end
    language "nl" do
      sha256 "97f2c7b415e237d1b4a7c5617769a6c50669d6cd842c4faa19511e2c7dadb7f5"
      "nl"
    end
    language "nn" do
      sha256 "8cd2071dbb2a8b6090ff66f186db9670f79326ca1a8cb095da530817faa1bf62"
      "nn"
    end
    language "nr" do
      sha256 "c27709c2f28022d1084f5e10ba589d42bfe01e74f4b4b66c2c38996e9a49c44c"
      "nr"
    end
    language "oc" do
      sha256 "f190d78d1fdb36ea4341809d0d3e2150c610fa33fd73b63182c19fadd3daf28f"
      "oc"
    end
    language "om" do
      sha256 "5a6ae0327d789e669326a703b295e252e453cd40d2acfa684f34493b84df04b3"
      "om"
    end
    language "or" do
      sha256 "d490a07dcca9f4833ec974717c1f90408f9bb7569abb8d1a8032cc2572220b58"
      "or"
    end
    language "pa-IN" do
      sha256 "7e72c988ffd474d38063befb73ef652986bb55e92ed012c62e4ea9066276be4f"
      "pa-IN"
    end
    language "pl" do
      sha256 "a85244b09c6bf0c2c7d33af30031efffc5ff463b0719acc71ec2c2cac4d531e0"
      "pl"
    end
    language "pt-BR" do
      sha256 "10aa41fda28ee33fe9376ccfe464293dfea2bd2d881f6c6b01edfeb7328c0b33"
      "pt-BR"
    end
    language "pt" do
      sha256 "4ee8b1c06055c31b65613b398f3d5ac4e3a541cf1768673319fca353acb9d340"
      "pt"
    end
    language "ro" do
      sha256 "779d937b5194878b582094717990719c9c25bd73fc61301fc9f5724fcd302912"
      "ro"
    end
    language "ru" do
      sha256 "750de3dcc565438645ccbd27418aedd3e7277c4bc30681f160d68b4483cd4023"
      "ru"
    end
    language "rw" do
      sha256 "909240f7a650ac467b99530917a6a74771bd19c895c53b7a7ab82a75a0f82e8e"
      "rw"
    end
    language "sa-IN" do
      sha256 "c55429344cc5e5fec3b931a17c81ea304001f7ed574682e32aeb9b5b1c589887"
      "sa-IN"
    end
    language "sd" do
      sha256 "d79fe555cd4c0ac185eb3af423f37cc86c3b5fc905ec8ef7966caa8d0b628ab7"
      "sd"
    end
    language "si" do
      sha256 "f3866ceb3a5503d2672a8691db1e3714427ccee8bbdb43c739f13bca915f350f"
      "si"
    end
    language "sk" do
      sha256 "a694c3544868df23fe8b0f0359dac1ce3fecc5087f48382f609680be51ad0ab2"
      "sk"
    end
    language "sl" do
      sha256 "03ff2f450d82f9a8e0e65f65987ba56e92c9b9f39958d8b4075e0c3c631661bd"
      "sl"
    end
    language "sq" do
      sha256 "ee54cc694dde9c44f4b3dd7ad886226211029f234c7ef46fee81abda8e3a8660"
      "sq"
    end
    language "sr" do
      sha256 "62f36007537ff5ffefd33a1de89d9d48b34ca14a7f3c2077b1ce656515ca6d4f"
      "sr"
    end
    language "ss" do
      sha256 "c8144b89af626e74d031173e14957d1033805cc6a24ae659e13effd9af0eb303"
      "ss"
    end
    language "st" do
      sha256 "0f16a1eb167eb8e3b13d493a96babeeb4f7a0572f85de62be333ab26ade7a6b4"
      "st"
    end
    language "sv" do
      sha256 "f79a8671a14d366b5dec203dbbb014a1b72f8a869640726e83620cda38c244e4"
      "sv"
    end
    language "sw-TZ" do
      sha256 "8e8e767c2df475f3bdcf7f05d09b4e938f1154c66081ab9466d4cfb3e8ea1096"
      "sw-TZ"
    end
    language "ta" do
      sha256 "20f1d85cdf0724bc5ca6d01de49bbdf331e241af2761e424afd5ed59951967ca"
      "ta"
    end
    language "te" do
      sha256 "107164434eb75881188b47242c2d6928350b4d21f49742904ef94fa5e9d20aaf"
      "te"
    end
    language "tg" do
      sha256 "f45c9168ff4140ea49318562ad244c3a609ee6101e0bdfac7850c7e0302fc48a"
      "tg"
    end
    language "th" do
      sha256 "50f945526a6ae780f892f6c4bfea08bd100b4b3bf5b6139ca0cfb0c401828cab"
      "th"
    end
    language "tn" do
      sha256 "e17d12cd9a725f716c7e6b9ff6026608413c416418fc67de96acfba6842983d3"
      "tn"
    end
    language "tr" do
      sha256 "082328da5401653de60b7e3a074d998caad17dcb4ac7d6a2e74139e2e625acb9"
      "tr"
    end
    language "ts" do
      sha256 "8996593c7785ea771331da11affdd6b40297a2294143e6edba822b41dbbff985"
      "ts"
    end
    language "tt" do
      sha256 "6dc0b7a92c00378c34a95a84be6d29cdf42e4adf624da7628ed83aef70135b1c"
      "tt"
    end
    language "ug" do
      sha256 "260f94cbec8a7da163117a0ea5abe39ad71bbf575ba47ea3525536c8b3b3273b"
      "ug"
    end
    language "uk" do
      sha256 "d21f11e96c399fce13eddbb4eb28a9bf48d3443d77b8e03f57b72f2ca8094a5e"
      "uk"
    end
    language "uz" do
      sha256 "c959899104a3231e904c5da64bac3b4095007f76f58925424f5eae1a09bcb3fa"
      "uz"
    end
    language "ve" do
      sha256 "c3c0d4d3cbae8ceece4155bbcafec81846bc68ce4bcbbae56fbc89c2fe4cbca5"
      "ve"
    end
    language "vi" do
      sha256 "57472f8e9738f5f4573af07cbe66885bedbaa9492a810c127fe144f5a7bf936d"
      "vi"
    end
    language "xh" do
      sha256 "8785a5c700f7c80efaf827d1c5877cd86e956de4948ca414cca2efe899a7c491"
      "xh"
    end
    language "zh-CN" do
      sha256 "8cfa5c2806241329e9da92f7aeeb3c31830b8f5f3150d7b2473c4be6547da546"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "ba9913985091a50064030d190106448014561e874713ad858e2840cf7de82078"
      "zh-TW"
    end
    language "zu" do
      sha256 "501a9b8fa24c4f27cdc5d3df1fafa7ae80dc877107880f11c54ce4f9ebf80c0c"
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
