cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.2.2"

  on_arm do
    language "af" do
      sha256 "c239f6472dfb2d2983ccd1f4cdbf9cdc2b79946447a911a6eb560b61c741ecae"
      "af"
    end
    language "am" do
      sha256 "44650938cb6807f635fb058d01c77dc671eecb0ec7cddb65e0b096cf0e3e8268"
      "am"
    end
    language "ar" do
      sha256 "b0f5c99372c252390f0a42ec6e82495f6afdbd4f8414acb23c362df072afb19b"
      "ar"
    end
    language "as" do
      sha256 "0ddcb631271488ffbace1d2380219c2c3cc134716224b676b06eed52e89fb103"
      "as"
    end
    language "be" do
      sha256 "b162cb217ccd64491a89b7a0bd6db277b61a0a90401a0f3defce814f693cbf3f"
      "be"
    end
    language "bg" do
      sha256 "2bfc1159c29587d2af8d3c0453f5a6d50eb82ca34c2a2bd8d166249841ae741e"
      "bg"
    end
    language "bn-IN" do
      sha256 "c7900c196e59cc9c32508a2776c45ceb223dd35a62acc466cac924f8bfed7ed1"
      "bn-IN"
    end
    language "bn" do
      sha256 "f88b0f5d52dedbfbec19f02aaf1fe6bf55fe458265240cc6fba6d4b262f802df"
      "bn"
    end
    language "bo" do
      sha256 "4ca9d9acab4875f459cae1b1c67163ae50e036a2462e306240ad8ca20ea93313"
      "bo"
    end
    language "br" do
      sha256 "3ffc3a36747291a999847728866d103daa3a7790a8526465a400ed4ba3f3e0e7"
      "br"
    end
    language "bs" do
      sha256 "3abf2eb08621574dcbfa121a0c2db08c1e5bb1feb7bedc0f484ddc962d699532"
      "bs"
    end
    language "ca" do
      sha256 "7d331e6defa08940342903e47a21ed6bb670a55b067b5bbdf80d63b4a1bd4278"
      "ca"
    end
    language "cs" do
      sha256 "89d3c453cf22b4f5222d7ab657da774255f461c1ae7060d1274051ab0925a7d6"
      "cs"
    end
    language "cy" do
      sha256 "69b1875c36a0ec8bf43fcca6f08cc922ee9bad91eb97b06d9be50206cbddd1fe"
      "cy"
    end
    language "da" do
      sha256 "a225cacc1f9d2becbcc8be081c18733887c37ddbb487ff102511386552edd73f"
      "da"
    end
    language "de" do
      sha256 "b23b308220d2fdd26a1eb47e0fe6701ae1548278fa9e1ad5e2567557b000d30e"
      "de"
    end
    language "dz" do
      sha256 "c08e3077f9ab4b4366f151fba6e9636a01ba3c379aabc86db786dc0ee77e76ca"
      "dz"
    end
    language "el" do
      sha256 "6159884303278598ed30c22485c7fe9abc01fa063d2853ddf78ab5210c7b8ad7"
      "el"
    end
    language "en-GB", default: true do
      sha256 "7f9e2225a256a0a293ac0d352b5ed184d5d874d66771eb363314faa4d6c66771"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "8551685c64c50243427e6c9026ee8a3bdd9b90e026652c59ae4e21ab5fa286bd"
      "en-ZA"
    end
    language "eo" do
      sha256 "e0676fef5c6e4e32d32b725983da93bdf73bffa5c64c3a200ac17cbb9038b704"
      "eo"
    end
    language "es" do
      sha256 "458ff1459b583dd29c6809a7e411d8d77f68008f4e34abed410a4be8ed5abed6"
      "es"
    end
    language "et" do
      sha256 "cbad820c29cad892eab978e87faf111a4c01299d05587c03e615d272cf67d0f5"
      "et"
    end
    language "eu" do
      sha256 "e14af94c4cdcdcbf889051874c31b4fee7fd0cd5782d0198b72ac8d77e0e050b"
      "eu"
    end
    language "fa" do
      sha256 "f645e3e2defd3b45c758d1d7dbdd5b5f2f38b8f5c9e71b2348c2a69c2cac364e"
      "fa"
    end
    language "fi" do
      sha256 "81944d50f104dc3aa151fa2bbf41eb92d0c1ec1274fc984acd58a56e789c39d1"
      "fi"
    end
    language "fr" do
      sha256 "323cff05f433453957ac6df9ef9425c356ca76f8980cfc9e5e655c54f23889be"
      "fr"
    end
    language "fy" do
      sha256 "6183d7f5c37f42d73885fa9088a9da37cff37acbd851bbe42e544d24c150e2df"
      "fy"
    end
    language "ga" do
      sha256 "bfbdf3146a26d7298bfb45ea78b9f96cb03a37019096ad4847a854a82f955e45"
      "ga"
    end
    language "gd" do
      sha256 "50d3de18b765f06e665cf7f9da948cc3982052e5016b83a746705ea6adaf1927"
      "gd"
    end
    language "gl" do
      sha256 "a0c28528997adf45a933127c0abd5fda8dbdc58fd5852015bd1dad12f5ac27b4"
      "gl"
    end
    language "gu" do
      sha256 "3f2447cbce73db031d889f4c15ed7589bef4aca010030c10beb4af8515831235"
      "gu"
    end
    language "he" do
      sha256 "58f9b255499cc88b3733b1eac7f724110273d00c615aabe7b744e63da24081b3"
      "he"
    end
    language "hi" do
      sha256 "cff18e4b21e2182606dd018a120a16450b21dbffb0cb0b1df463044721a30e29"
      "hi"
    end
    language "hr" do
      sha256 "68cb1f978d7ab3f6f7c9d4ff4e280289afcf3e83f7b6a413f85f7d52315ad1fc"
      "hr"
    end
    language "hu" do
      sha256 "ea732993852f88e770cd7c0e644181f3bffacafb91e8e612e13f08da75c37a80"
      "hu"
    end
    language "id" do
      sha256 "4af6f74b061e8e050829bde697a25184c6da4dfda29afad683131f8486f1cdf9"
      "id"
    end
    language "is" do
      sha256 "e720ccbb26f9907e443fff6327ce4dbd4bd5fb50bed356676f6e1e1b9db7330d"
      "is"
    end
    language "it" do
      sha256 "3d4497cfdbdf0b3cc220ba996b0e85293466e26daf994dd4989ce3e1b04dbb4d"
      "it"
    end
    language "ja" do
      sha256 "3e63a0f7e612904a8afde8dbad18f018080e2ff54ac403545edbb7cad17a7d8a"
      "ja"
    end
    language "ka" do
      sha256 "e957e26a01cf132c6d1f3967d505be222a65c0bc6d06cb37458e91f6af95fa23"
      "ka"
    end
    language "kk" do
      sha256 "03535ad210610ebfefb2501130caefc1f0f5c4c3be7e789b49781d1578e97b72"
      "kk"
    end
    language "km" do
      sha256 "1d9dba45546c187fe992a8d4221532605e95ab9e37635f21d9efec0f9aeb1228"
      "km"
    end
    language "kn" do
      sha256 "299bf3447abc9905c8e87d493d69d34782fe80b1643ef8839f3df4290077da45"
      "kn"
    end
    language "ko" do
      sha256 "cebc76077849591d60b1dd7321447fd94eb2f5039b09d2d54f3e449588ef131a"
      "ko"
    end
    language "ks" do
      sha256 "38ca804a3137ee5e366493537340165b2dbb646510055fa138ed854fcce81955"
      "ks"
    end
    language "lb" do
      sha256 "35bd490603515ecb0c492512bd111245e8db35d9af9f6e80dc6ca92c1c736b1d"
      "lb"
    end
    language "lo" do
      sha256 "e0d3e2907b0f60a90475524aff21c39c5c8140650dd1ddbd933c117ed8e4b45e"
      "lo"
    end
    language "lt" do
      sha256 "bc7db8945198b7092a9154a2736b59d1da858b03a42c35c642c0aa3f5b96bda4"
      "lt"
    end
    language "lv" do
      sha256 "ba20d02fd274a021e6dee37c1fdb625d840f24f8c57afb58a2a823288a834ea5"
      "lv"
    end
    language "mk" do
      sha256 "362268fd2fbf92c18b5a070ff629549c677775a2271867bad9c29c806ba54f66"
      "mk"
    end
    language "ml" do
      sha256 "4985ea944b7b5c7e01ba028cd76d77eb0b7a691168e7175f67a882ff0a2b8794"
      "ml"
    end
    language "mn" do
      sha256 "53deb45a02b89fb113dbbd7337eb915ff62cce8a7e74892b91986fff1839c74c"
      "mn"
    end
    language "mr" do
      sha256 "8a602c99526e8f7161018abb679261c872aba16ba186dae51144b2d7eadfc4f6"
      "mr"
    end
    language "my" do
      sha256 "bfa870c9a6f2d223c08bd37592be416551a2b39f421795ee93d3dff8817dc83e"
      "my"
    end
    language "nb" do
      sha256 "2c012b8db8e7b8757df14ec936500ad82e632e53c87d8674e9eb10d889371459"
      "nb"
    end
    language "ne" do
      sha256 "81424cbc3e6d75754add61a44a11008157116d6f74798e64e1eb677f2866cbe6"
      "ne"
    end
    language "nl" do
      sha256 "087477a1a50e3ea8a738e414f3c4c937963c91368ceae7f87d385b020cc5ffb6"
      "nl"
    end
    language "nn" do
      sha256 "9e6194b36b763af617b2112341ce77f8dfe8fda3b5732f28a5d3afcb5110a5c4"
      "nn"
    end
    language "nr" do
      sha256 "687f3ec1b119549c63b8ca52b820f402b6f9f8039f5687d9cb08e5e121f00488"
      "nr"
    end
    language "oc" do
      sha256 "a205a7ca007a7f22010039da2975ee34705acb06f14a99d1cfe7b59f31073c74"
      "oc"
    end
    language "om" do
      sha256 "8b8911648a3e5cb471a78caeefd5ae6a49412c358220d6653777665129fefa0c"
      "om"
    end
    language "or" do
      sha256 "2af8ea2c7be013bd761a665b755d8b4b7d94b009ab5bf883be7f4f0568d8b009"
      "or"
    end
    language "pa-IN" do
      sha256 "f1252f65e49154dc8d982d2a9d284074221d0c924372256df059fe906f4e9aad"
      "pa-IN"
    end
    language "pl" do
      sha256 "19bae78d7288bb27f9be249cbac3108edc4736a886349818db7cb52055b11c8b"
      "pl"
    end
    language "pt-BR" do
      sha256 "577f2900ae3160ed521f848236a489947f338669fb26727ebc2405588faf41a7"
      "pt-BR"
    end
    language "pt" do
      sha256 "0cbc8b9a5ee61047b9d32db6b86ac40bc63174f984c18c8333eb62f7b49383b9"
      "pt"
    end
    language "ro" do
      sha256 "4844a3c624cdfe9f6118f07bfb27d54c9047d3edf30f7d44ac46110dbe724d08"
      "ro"
    end
    language "ru" do
      sha256 "4f1cc0eb0e4be03e82a827943c417fac627ceddc09c4ebc2f4875b1901758cf1"
      "ru"
    end
    language "rw" do
      sha256 "4af7f28d4e18211d7227f74c4a20f88d22d890236cd748a719b202eb777c1faa"
      "rw"
    end
    language "sa-IN" do
      sha256 "3e45efcfa610649925ae6ccac321ac10114e094511e896fc72bed8b3d8695ca0"
      "sa-IN"
    end
    language "sd" do
      sha256 "5adf6c0f6f1d97fd6b49e9277aea3dd62c50780f091886daff8208d36b7172a1"
      "sd"
    end
    language "si" do
      sha256 "1f4fcac60bde6c8290f00cd1bae7a289b995268cb9b125a1a268284b4140212f"
      "si"
    end
    language "sk" do
      sha256 "eab5ea600479aeb5d2dda18a279e959e06cade82615eebf761f8a580a90bdff6"
      "sk"
    end
    language "sl" do
      sha256 "d32cbd9ed51476855c1455ad732ea2277dbd019be2f70c8879e9320d1bff6641"
      "sl"
    end
    language "sq" do
      sha256 "4735f10009eeb9a7b70c0b74395047ad66fe2261bc11f11b1abba46dfbe3b2b8"
      "sq"
    end
    language "sr" do
      sha256 "6607412caf06fed16b864d336eb334a727a870e9904f41e1d472022159676f37"
      "sr"
    end
    language "ss" do
      sha256 "23f33cfda6c74c53d0daa60ee27048394fc53c416f15b060c0bc6e200441df74"
      "ss"
    end
    language "st" do
      sha256 "f70ff61d1a1bd2908fb40c06a3988684a684c7eb06ba9b6c9e5c3e3e831cf3a4"
      "st"
    end
    language "sv" do
      sha256 "ed0b7fc7328b8f277f5959945e6148ce8e5786b88fea73ee5979a1ab72f716f5"
      "sv"
    end
    language "sw-TZ" do
      sha256 "0293fad147bc71e1e8bc0d0db24723809cfedf3bc3aebda05a4923760da69537"
      "sw-TZ"
    end
    language "ta" do
      sha256 "1c5aebfc37f3467c8f4b25312f8e758cab129ab065d2fc8523bf8460c64960f6"
      "ta"
    end
    language "te" do
      sha256 "b8c02aee28bbc54ff51778d75c874e58a0fc87cac7ade5f5984d77f6c26068f4"
      "te"
    end
    language "tg" do
      sha256 "cb1da3b3931b92c5fcc7a7d73b2c9b02fb06b16a775a496ec2f6ba16006bb023"
      "tg"
    end
    language "th" do
      sha256 "7b5b629824ea87214067fc10dffebce2453a5cb4c6a5f32f6ec7c5681c91ecb9"
      "th"
    end
    language "tn" do
      sha256 "267fa73209f166b6544c0def946702e51da8712556663066da1cf8f456e85667"
      "tn"
    end
    language "tr" do
      sha256 "fd214b6e8bbefedaac80dc4943148763f1ec23c64ee3bee4a9acab20e4c08143"
      "tr"
    end
    language "ts" do
      sha256 "481ae214be4170f1df14081c5de451897cdd5fa1fafb818f4d43fb2de06a2d11"
      "ts"
    end
    language "tt" do
      sha256 "cd50756f39d8f086f6ee3a926976be42f3da17511301d61bc036489d8ad1809d"
      "tt"
    end
    language "ug" do
      sha256 "36067a2e935cc3e399145afd66fd88e183891ed98bf3ba1178b36b1fda6184c2"
      "ug"
    end
    language "uk" do
      sha256 "c19b04e0c34abf24920732a8fdd50657fb81274ad5148ac484615f52118af5ff"
      "uk"
    end
    language "uz" do
      sha256 "f270ac5a1b3dc8522b960628b4c1ac131a6611424af80ecc1474a0f71f415020"
      "uz"
    end
    language "ve" do
      sha256 "bb2c207fe637efde92ac4d7efff3449288ae1119f1c75f722f0b789c839f30bc"
      "ve"
    end
    language "vi" do
      sha256 "607e2d793e62eb8aab5c474eabbe17fbfa290d8cf4143cb4ca3c82cbd3f1ef5f"
      "vi"
    end
    language "xh" do
      sha256 "b49bb7a323a92f94eb478a1831dec2bb4aadcdef9009ba545944fb0b0c031ef9"
      "xh"
    end
    language "zh-CN" do
      sha256 "597deb2fb5dd90909cbaad2a92a46b382079bea8f1f2bb6ca740e6df2c86b381"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "942b58aa1def944bb3d2569fc2d1b5313dfa09084ea2dcc0a49640590df394df"
      "zh-TW"
    end
    language "zu" do
      sha256 "272680ba0239db8cf7936e7fb82789ddc41bd7f80b3fd04bfe19894392710e06"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "219cbd3c15ae9063c7518025ec5d95b5b4bc8eca4c266388a3248edf192f4383"
      "af"
    end
    language "am" do
      sha256 "530260aab307079df91280c7023c3e56587d34e9737a78634ee7b93ad56cf24a"
      "am"
    end
    language "ar" do
      sha256 "224a2281572cab4c77bf7a34f31b7b85aae827da6a91d8c9a6db275e4689816d"
      "ar"
    end
    language "as" do
      sha256 "ddf2c07b093cdfdd20bb442b439eff4a168f81c5d7de8f9f5cbdf69c91ef9765"
      "as"
    end
    language "be" do
      sha256 "ca6556d7b6216c214ef4da08a6a06f2b6fd1ed2730175a5d0e5b6dd18cabf524"
      "be"
    end
    language "bg" do
      sha256 "c11f9ea2e290473f92bf8964ceaab7599e324010af41e2c01dcfd6b7e3857cd2"
      "bg"
    end
    language "bn-IN" do
      sha256 "0439246bcaa6da53bb15d741081371fd5617800cbcc7f174797d2b4a1b4085e5"
      "bn-IN"
    end
    language "bn" do
      sha256 "c6a4d3f8e452d9558fa87a64522ea4fcdfec6a07c0738c187c9fdc67d1d65176"
      "bn"
    end
    language "bo" do
      sha256 "54f6cc4b604cc72016406b37bc110a4c9a7ec262945701e083b6a3e155165f19"
      "bo"
    end
    language "br" do
      sha256 "dddebe4597ef547f3df6f5b4d2be6916a07551f50148fa5a5a9b08a7ccaa40fe"
      "br"
    end
    language "bs" do
      sha256 "b5ea293b0cbb6576321d057d094b3cf7fa00f4fb461ff85d0d2e9de0fe43d1ae"
      "bs"
    end
    language "ca" do
      sha256 "ad99600e9e55bfcbe1ab65e9a0a5a5ae69cb97f316c297a306473fdf00349e84"
      "ca"
    end
    language "cs" do
      sha256 "ac29d7188eb690151ded0a1dd864abe8f37ed0f252066b78bc95a332c83425a8"
      "cs"
    end
    language "cy" do
      sha256 "565ef1f5601dcac8fc84ee209b867c91b06b72f1250681e096c6ebd6b87d9574"
      "cy"
    end
    language "da" do
      sha256 "74ac50fbe36a2fb85b890561744ed6f3748d1080c2c7f9eaa3c7d935dd3c4be3"
      "da"
    end
    language "de" do
      sha256 "9dccf7b832694f59cb426da46b82ce114ed0cdf977cb268b6b0db1f489d2d93f"
      "de"
    end
    language "dz" do
      sha256 "51f1b3fbdf9aad436bea85f976946f747f255107629495b471883c1d5cbe6cc8"
      "dz"
    end
    language "el" do
      sha256 "84fcb258316f15b179b5ccb4aad7e4c182f4421b15a4d8e91e105eb0a30a6ae3"
      "el"
    end
    language "en-GB", default: true do
      sha256 "3996257ca5f3b816cca22d56fb9bf7e6bf1144b5e99c2cef78032cd4f8be9bca"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "c0d3da1c8d93bab1917c9e33824a74044baf70fa9733079826a8e83b7acf19b9"
      "en-ZA"
    end
    language "eo" do
      sha256 "c569953781322b99fa1d1fc2ea28bbf9d5de741ff9a25663ad09241f5f03a3ab"
      "eo"
    end
    language "es" do
      sha256 "4c6ccb5b50a1642c9e35a0eb2841e344166029247bf50e696681ba2bae2b79a5"
      "es"
    end
    language "et" do
      sha256 "68a428aae7e14eeaf37dc7514b54e180c5138ee23501b2c8f17fe2b7d9e5925c"
      "et"
    end
    language "eu" do
      sha256 "527c154b82cbd006baea700abe2fd588015e5987a59932a2933be30965f902a5"
      "eu"
    end
    language "fa" do
      sha256 "7e1a7354c3aeb992602d57e536297bbaff5b8da80962abc1b2faa6113240f672"
      "fa"
    end
    language "fi" do
      sha256 "0dc917d723babc02a90f467d6d05912ab9e21efac1956e1c7ecc9333a60f876b"
      "fi"
    end
    language "fr" do
      sha256 "c787a42e5f90a690d1619bb2f142879a9f9680afc414e99c6a2bb3262d89eada"
      "fr"
    end
    language "fy" do
      sha256 "cbca3772920b472bf5466538da1616de4bcc5f74567160a67f2fdc00ee520dea"
      "fy"
    end
    language "ga" do
      sha256 "385a302b4befedc2b370636962272094c21efca59c700dc86ad447333c748812"
      "ga"
    end
    language "gd" do
      sha256 "b704e5f482f30401e68aa818147d2a438362cdc894262c071c080ce6d3ec19ce"
      "gd"
    end
    language "gl" do
      sha256 "3cddbba11a85b6c766c6764d0367ab516dbd0577bd93d920a8d0324c839dfab4"
      "gl"
    end
    language "gu" do
      sha256 "4756e2048bbf954d31bd00313cfd139b776b2bda8ba97c649fd27695c739fa6b"
      "gu"
    end
    language "he" do
      sha256 "2a3c1ecaa0654c53cdb9413bab11d5af3451c09b7376f98ce24d4f00a40e52ec"
      "he"
    end
    language "hi" do
      sha256 "4ca2592ac3892c0c1661cd7585ddf9e9a2bf030260822166f19f1248908ba96a"
      "hi"
    end
    language "hr" do
      sha256 "68fbd72a81ff718f8b60e44ae25fd3c6a878ccb0a0261d5201f31d83f929a005"
      "hr"
    end
    language "hu" do
      sha256 "0ebe27097583d048b655b076f9cbece903d9d28c8fb1275dff6c3cd0c1ceded2"
      "hu"
    end
    language "id" do
      sha256 "8261dcaf9bd9adea9eb1a733a92768d57be02a9dd233657a5717d7ca1048cbf2"
      "id"
    end
    language "is" do
      sha256 "1cfd99ddd12bc29e785bdb8d508c040c7ed1d729dd0429e672b0300aa60a9dc0"
      "is"
    end
    language "it" do
      sha256 "fa30c8a26e27d7bc9a3802820ad618973d549235f02fcf83f2d4f1db7b64e498"
      "it"
    end
    language "ja" do
      sha256 "ec9d0ab14e165eebfe8884e403c5e38eacdbc217ab9debc7fec32c6e2256384b"
      "ja"
    end
    language "ka" do
      sha256 "4f5b8b3d2d595f22c59ceae702e4b04b5ef07f19f469f35eab660b4bb641de00"
      "ka"
    end
    language "kk" do
      sha256 "531428853bb70b1acd4c35be39423b82b4edef0564b2cec7c1e1b0f4890d6035"
      "kk"
    end
    language "km" do
      sha256 "7942bfa161c59fd6d270a51acbcd076cd9dbec5662d4f1e8ed3b4c158f6f42d2"
      "km"
    end
    language "kn" do
      sha256 "6e3172293a95f1a665314c42853d926ccbe46584e4165df1fb219b10baad41d9"
      "kn"
    end
    language "ko" do
      sha256 "1727e27c18ce4f67da21e90f2c4677e99084ea39540753a479cd989992e52ca9"
      "ko"
    end
    language "ks" do
      sha256 "bf92a767cff86a7dbfa17ce77acbd4de06ac8f3c8a73f5bb9f196f41c758df0e"
      "ks"
    end
    language "lb" do
      sha256 "1051a1f43e45da9554d860b83841350639ca95aeec7f8becf0786f1a48bbd4d5"
      "lb"
    end
    language "lo" do
      sha256 "664e8a8c99629adb57cd99600b5bde446bfc340763aa0c2628ef55bca9faf6a3"
      "lo"
    end
    language "lt" do
      sha256 "3ab59aa7ad74b200bd4078fce16c6a2821dfde9a43fd2ffebfcfba216f056af4"
      "lt"
    end
    language "lv" do
      sha256 "cce7ccfe2911f68be76a1b6c6638a906596b015685e07e5f572a62e18b15b579"
      "lv"
    end
    language "mk" do
      sha256 "571fad9d978289bdc4adc7da559eddd8f7d82e245c9b63ca3dfca41a7820aa35"
      "mk"
    end
    language "ml" do
      sha256 "9a064346a1d9fe6995f9d243fda5a4e01f53996a5ea336c24bff0938e955faeb"
      "ml"
    end
    language "mn" do
      sha256 "661ffb6236ba52e9660df1800cadcc6975e2f93244e1bd16f9a2fc89e03fc06b"
      "mn"
    end
    language "mr" do
      sha256 "1b218bdc1ba86854d96e3e6b0b7867f55d23656dcbecc157cf55fd1b5dbe1a61"
      "mr"
    end
    language "my" do
      sha256 "75665a6c8a6a2cdc13b8f905297e9834b4b61be31cc8c9dd71f300c699a088c4"
      "my"
    end
    language "nb" do
      sha256 "694a1ec839fbc5662885334c9619ce5d1d963c51bfbd5ccaf32888cec8a85536"
      "nb"
    end
    language "ne" do
      sha256 "4fa705a06d86e5ef95b81a8304556d000e512e91f56820f882de57feafe074cb"
      "ne"
    end
    language "nl" do
      sha256 "99a6b4dca82d27a5bf1ecd5dd4bb133b368e632efc390b086e04566821d64e4a"
      "nl"
    end
    language "nn" do
      sha256 "d09bc514cb8c45b65e3041ed5122d490c89eade71f4a10202cf9e40485b68570"
      "nn"
    end
    language "nr" do
      sha256 "fff01b610ee91042f25496f36991e7ca106cc8a20cab4acbe688062c21cf2b29"
      "nr"
    end
    language "oc" do
      sha256 "e215d027c9e069bc42efc68570044b251ce7a5f7f2fe6fce5badd56e67714e35"
      "oc"
    end
    language "om" do
      sha256 "da6d5bde2d63d4b92b9aded0e6a83927f76fb334e0e7b575a186c819c09e58d3"
      "om"
    end
    language "or" do
      sha256 "dea53b3a5e35c47f8aecf6eac2ab33231d0f9357e1f64293862b30ce28beb2e8"
      "or"
    end
    language "pa-IN" do
      sha256 "d5ebe4f2de290416a5db626c2fe3b33f41c38ef5df0a16201fcf0993ba1ce9b7"
      "pa-IN"
    end
    language "pl" do
      sha256 "57373fa6f56996395a3ff4df3c321eed9f5634b438cdde25974277c57edd21c6"
      "pl"
    end
    language "pt-BR" do
      sha256 "f4d0b211247771744d14c123db805b8d14c6e6d10c78ff017e5f11a06d70e5d1"
      "pt-BR"
    end
    language "pt" do
      sha256 "0147396b701e7d3300ef98f9f1032ab1fcf99281f793318dbebaa9b9fd617c07"
      "pt"
    end
    language "ro" do
      sha256 "483de578236d86d04f20b1c0d4265c7c553b86ee6af0979b0c5448f51175f6bc"
      "ro"
    end
    language "ru" do
      sha256 "86c62b7a973b07759d88fb0cf7534b92de4255a940424ea58f8e7d258792fcdc"
      "ru"
    end
    language "rw" do
      sha256 "4d7fa5ee3b73c2efbcbd9438b85c43b9c9413fd90335ab843554734680aebe1a"
      "rw"
    end
    language "sa-IN" do
      sha256 "c5887d9b6dbb0335b3a10fc35b33a667775573ae7f830f514ed23632b8fd278c"
      "sa-IN"
    end
    language "sd" do
      sha256 "7ea576e499ea1090e0602e33fe7ab2c47d1c833bef084672df995e61a38f8799"
      "sd"
    end
    language "si" do
      sha256 "40a1ebd79dd4f2c75ac523fc03f967bd827372436fd2b6cf66281c7f802d6a5a"
      "si"
    end
    language "sk" do
      sha256 "9d6e3507c6e5743d8327a405b63a80fd9826417aa7367324a9a04971f85ffbd9"
      "sk"
    end
    language "sl" do
      sha256 "ac6dba88e9b5d3e55239cf9a445fb3d6dbc1cdb9f8126befd780872c192aa3da"
      "sl"
    end
    language "sq" do
      sha256 "b204c393a50f3b857dcc5193c5a1169d549be29332986e4163c9142c673c38b1"
      "sq"
    end
    language "sr" do
      sha256 "0c5194ae09b9d28baf930beeb89da7a62b7ef90b3780163d4cbc0465a566ab0c"
      "sr"
    end
    language "ss" do
      sha256 "6fbdd2568a90b7d50028cc83fb1882068fbe61ada2cb97702c66ceec9f04b81d"
      "ss"
    end
    language "st" do
      sha256 "fbe09760c22d056e3fb9884e3ca27d5fd095878b4701bcbb9e785b46d8743bc5"
      "st"
    end
    language "sv" do
      sha256 "6d381c36befefd3e303ca99c3a0968a7df3924ec46d80d5c5a42f09043cfe2d1"
      "sv"
    end
    language "sw-TZ" do
      sha256 "44d0cfe365d45ad2309da5ab46ddb95b013d80894f9b08de322eaaa0565a2616"
      "sw-TZ"
    end
    language "ta" do
      sha256 "dc0f58d7de78d1beb032f5482a6536b70cfa21e3b0973a58a0fa9c171b0118f4"
      "ta"
    end
    language "te" do
      sha256 "9f3a4dae6775bb4afbe9510bc760fbd68b716dd502ef799a971a76d8d4fa69bf"
      "te"
    end
    language "tg" do
      sha256 "ec20379632b11e3b5c0301247882807da637ccd8ab177f43e8511252fd55e222"
      "tg"
    end
    language "th" do
      sha256 "232569d3316b9d99e02b0490861e1935f2e873019741be3fd471d3d1828c7d98"
      "th"
    end
    language "tn" do
      sha256 "e31ddabb12bbf2ecfa6f51995ade809f49230e14d02f3b52d36c1999f30d5aee"
      "tn"
    end
    language "tr" do
      sha256 "37fb2924d2408a32625d84d3981e22f04d232b11059fd78a0a182406d514cb11"
      "tr"
    end
    language "ts" do
      sha256 "9fc8e1de341b060020c75c247981cad7b653ac7eff2f279b68049e5112777f7d"
      "ts"
    end
    language "tt" do
      sha256 "e082e54ce3b79d445f565b90ea7c180b0f4aab7a84316219fd590d9a6e94f57d"
      "tt"
    end
    language "ug" do
      sha256 "3bb255f358404f774fe8d40b9e07c15f02bb4c2627943d40d3a85dcd9b2ce39c"
      "ug"
    end
    language "uk" do
      sha256 "a7f5253f12366add1fd26770a9af3dde9cd4778d006c86f8fe00fa98c9c46333"
      "uk"
    end
    language "uz" do
      sha256 "489cb3b91d5f2c642052e0ffbe2b857c626e234fc99165c9489dc7d1c53821ad"
      "uz"
    end
    language "ve" do
      sha256 "8c6e03689c78fcd9baf16ad1dfdd235e8b59ea9f5b6df4468abd4ecfbe718fc3"
      "ve"
    end
    language "vi" do
      sha256 "0d52cf719fd66c8c69969e7288d416f6c5430ee6f9317f912816092099b972ad"
      "vi"
    end
    language "xh" do
      sha256 "1bfa50097edfe787c6e34c4fa350fc308ce5b95dd5e3db72b35a66900e8b5969"
      "xh"
    end
    language "zh-CN" do
      sha256 "ce58dd649cef548c47993faf87932816b5491c5d7b6d22dce6534af6ddf10568"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "5b41619d0a1c74ceef86642a1e07c58ed99149eec00463c18d809ed4c3a29bd6"
      "zh-TW"
    end
    language "zu" do
      sha256 "7addfa8253197fbc6d22d96c31870d1acc52afcadf6d47502d80c41fe27f3dee"
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
