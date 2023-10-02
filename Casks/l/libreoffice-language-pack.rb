cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.6.2"

  on_arm do
    language "af" do
      sha256 "dacc37fb2f09ee1f65aaf64989833a29f09a0428aa06e4de49f5e2d53a744d39"
      "af"
    end
    language "am" do
      sha256 "fcb8b0d134744a64961f115b1a3c8352314bd57f794e8a3609149fd88cd2e0e6"
      "am"
    end
    language "ar" do
      sha256 "dbeb9e315b1d204db9435495a3789f3dfd759244f8cdacb77a91ad04337043ea"
      "ar"
    end
    language "as" do
      sha256 "a1da0171326e183f758aeb54ddb44a1a5eefb0cd6d1364e80617605ee71a3de3"
      "as"
    end
    language "be" do
      sha256 "9b6518eaa22b3df2c389406dfdd999631853066fee886f85882fdbbee1c43544"
      "be"
    end
    language "bg" do
      sha256 "9d2f4c2c5c670111fc3565a475107338517cd5e2d8f097b5d8e204db8d22754d"
      "bg"
    end
    language "bn-IN" do
      sha256 "44b4e24286e38dffc2021f8200ce47407409e149fefb54f73c73fb4b5c64bd22"
      "bn-IN"
    end
    language "bn" do
      sha256 "5648b2974437face2aa96b614e9215dcbe562c1b131ec9343fa888f260878585"
      "bn"
    end
    language "bo" do
      sha256 "96fba177537649c2d72f3dcdf831625d701af829d71a407ecf7473420f3cd219"
      "bo"
    end
    language "br" do
      sha256 "4eb6d4f49732ef4b4c6b8210357abf941d15f74a194804e1d2ecd4e9f95a06b9"
      "br"
    end
    language "bs" do
      sha256 "b038152f63667375abf8144511d1287c590e090354115ffe9be06ff9b753fe19"
      "bs"
    end
    language "ca" do
      sha256 "7f92ba581e646b381260b162632a2ed2c6554a2dba8a4888850ca2e084545f8a"
      "ca"
    end
    language "cs" do
      sha256 "f3be9c460080fa32b45e8434741926daef1f4e423900e8ecb871b2c285c32738"
      "cs"
    end
    language "cy" do
      sha256 "6cf842b60607a2c20a938ea0f7cd1233e393b640a0cbe15295eaa267e2405c64"
      "cy"
    end
    language "da" do
      sha256 "dd217a92164653cf69fd1fcb5309c2726678aea348a8a608026f6a87b6a90ddd"
      "da"
    end
    language "de" do
      sha256 "d20750c05dee18bd8dfdf794c71f233463730853c91818b552147e22b87b528e"
      "de"
    end
    language "dz" do
      sha256 "9816ed3d76d430f58cdabc4a4dcfa79882ac70a647a2fcaae0208b502a7a87f6"
      "dz"
    end
    language "el" do
      sha256 "6e0ae34655c0bec48fed8b5487b14ba73e8dbf626fcc426eb97d68a89a2a7309"
      "el"
    end
    language "en-GB", default: true do
      sha256 "647e995ba09b4b650a47f98feb46c8fc5612b50a0b1d728ac1b978692d1e695c"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "11a4cb952b094619d047f7585350a7348725745daf7df0307818cb4029e838fa"
      "en-ZA"
    end
    language "eo" do
      sha256 "e5cb7bba5c34241b8576367806a0e5a93b29e5a407cb08f71d803d5ee4bcf735"
      "eo"
    end
    language "es" do
      sha256 "5f530e42b91362b0b604363616ed4f3e8eb0518b85aa65bfafe38ebff5a2fd70"
      "es"
    end
    language "et" do
      sha256 "c1d9f149a90dd5a99d8dcf70ed2479ffa696ce48fa05dd295c4832a89b56fa47"
      "et"
    end
    language "eu" do
      sha256 "b3dfddf67661b5b0902cc737ac92384cb27256415143ba08dce7bc00669e8d3e"
      "eu"
    end
    language "fa" do
      sha256 "dfc256d321a9cc4344a59e5b6dc61cfe1f2092d1763cea743e48c79a2146d1a9"
      "fa"
    end
    language "fi" do
      sha256 "270af0b5cf3234653bff415f7995fd2f7a0570cf95277f36a5789b1331b97e08"
      "fi"
    end
    language "fr" do
      sha256 "ff0c2781427ce7b3a6e9e2a6fffc7c6f4b9ad3bcf6283ab41d78d6fee8a68554"
      "fr"
    end
    language "fy" do
      sha256 "1300ea753e1e59ab25a452f53d9861f0a2f53c6c7c7318aa08ddddd9f58e31a5"
      "fy"
    end
    language "ga" do
      sha256 "aaff0e84c168d64790abb05a2249337645efa25c007bc37b5909aa21054915f4"
      "ga"
    end
    language "gd" do
      sha256 "ad92d3a8e7de1f1d9127b75792359397afcc24a066607880c8c952579e783c73"
      "gd"
    end
    language "gl" do
      sha256 "6350c9155c2c579d8b5e938a589cc622b93bf05025dd1de9c33e86fa826becad"
      "gl"
    end
    language "gu" do
      sha256 "544679f3e2fc1942ef88df32c39861acf9db6e7fa16717b555464e9a5807fd33"
      "gu"
    end
    language "he" do
      sha256 "00e8eca65a7c6dc8dc123514f1482e21fb00e48dbe6df354b146a9acb0548500"
      "he"
    end
    language "hi" do
      sha256 "23e502e0c1d35f2fd26be69c823ccaefaae8dcb79886402ea259cf7bd7d06d7e"
      "hi"
    end
    language "hr" do
      sha256 "cac9fcd829ea510b8f3a14e109b66c4302c97e72e03c757b0bd9569fa70c8c93"
      "hr"
    end
    language "hu" do
      sha256 "b0dc0944b49b9a2ca0f5c3ffbe88fcf494d6c0bca09bd1b0c0d931e36e6c73d3"
      "hu"
    end
    language "id" do
      sha256 "e844bb3b7eb30b7db3e1ef221aa4e8d0ee3a72d64d475794f5ca1486a79d06a6"
      "id"
    end
    language "is" do
      sha256 "f6918d92962ee8b588e1dae65dc3c23e8890de1762db559ed53b07ec253dd0bc"
      "is"
    end
    language "it" do
      sha256 "f47b38e0944873fc559b195e9fe3f9ec2ac316dc36b8d7d1000d127fd55b0731"
      "it"
    end
    language "ja" do
      sha256 "ca3029767786954a895026dae3408cbc3be6155ff7dcfd0ddb10653c6a340558"
      "ja"
    end
    language "ka" do
      sha256 "644aefad59e63f3fde7e01e5788e6c31fcef50da67cc229a5f4e1a6af33c60a7"
      "ka"
    end
    language "kk" do
      sha256 "17a4e794c3d62f96b91c9c7b9b614dee13ce4abda123fb3d64a8491ea417d026"
      "kk"
    end
    language "km" do
      sha256 "db1ae7aff4513a48b6bf1f04d6b73c8582d8645f8e163588edc53795ce01e4bc"
      "km"
    end
    language "kn" do
      sha256 "72c9c2ec193ad47af256ec6ddba5628b1407c27e54ec12cfdb4abec2d4291d01"
      "kn"
    end
    language "ko" do
      sha256 "96ca3c4bda39b4945b8cf5018c6a5465e2eca3feece8a793090d3c0450be1271"
      "ko"
    end
    language "ks" do
      sha256 "6ea16a1e6e522c405ddc16e6b50f75daff959de2712e4b0279dad4df701d93e0"
      "ks"
    end
    language "lb" do
      sha256 "75667133511a894e4676d18e1cd6193209052773876fa327382196ef7e67405c"
      "lb"
    end
    language "lo" do
      sha256 "1f91e4d7dfe6d3d7eead426efbd6c5b75bcea6dee71b7175974b69e92bec5bdd"
      "lo"
    end
    language "lt" do
      sha256 "5a401ff631dd19616db4e61013e815a57a8670ec0ca5cb46fdda974f9a482029"
      "lt"
    end
    language "lv" do
      sha256 "994290dcbe0a681a98cd5e2ca2b4d8ba4d19633deb26ab6d4098cfba440c278b"
      "lv"
    end
    language "mk" do
      sha256 "10cf7697c3038054c2804192ddeb3b78106fcdc625199cf7c86ff6cb99c61bc9"
      "mk"
    end
    language "ml" do
      sha256 "798942e8df73c68f31670e6daa1016bd28ff556f398af3537ea30ebb8f8fcdf2"
      "ml"
    end
    language "mn" do
      sha256 "9943ae51f2b196064103ed26174be4c900c592830a199b1c261415e7bea9aa64"
      "mn"
    end
    language "mr" do
      sha256 "b177bf4d89b74d5347255edb68c5dcf8a5e26ebdec392beb724dd037a09b940c"
      "mr"
    end
    language "my" do
      sha256 "a2cec648a9722ad852198047667fbd48a829bbcb0b37b3d22c4deb4277363120"
      "my"
    end
    language "nb" do
      sha256 "8e3f027db648bb7f4f121f8cebad5e36d47c5861e7607b02b98341717f386e57"
      "nb"
    end
    language "ne" do
      sha256 "08d2ece647ce750a2cf22fdb506eac5c1d411f95042077fa931c1aea4e823824"
      "ne"
    end
    language "nl" do
      sha256 "c0e59ab853d48af950fab1b3fd852bfb42fde01984a5d250afcb2ad53b473a20"
      "nl"
    end
    language "nn" do
      sha256 "67f51d9be59b455620d539f7decec260edf7c1456206b0cc7d1243044f95cfd0"
      "nn"
    end
    language "nr" do
      sha256 "b4c05db8dd5c4604cdd609a5c010fa4850b4884e5337780bee3d6f752d2b591e"
      "nr"
    end
    language "oc" do
      sha256 "c18d631bf5490612221247cd36c54c541aa9d583d6c6a00b29d0ac731029b200"
      "oc"
    end
    language "om" do
      sha256 "2b80b8e1e47f64ee4f0fdf0cc56a7ee1bdd870071216249e2b7505bc1b652434"
      "om"
    end
    language "or" do
      sha256 "72c1a41fad6c53a3ae2e99f866820665b8c6bbedac48fbfe7dff26e8256605de"
      "or"
    end
    language "pa-IN" do
      sha256 "de83088ad75c064400f556699856216ab6056a22a959185969cd0be29fdc4c80"
      "pa-IN"
    end
    language "pl" do
      sha256 "ab3194a85a433213b12da83561f462aed3102d88007b2ebc6a7a090cf72f0afd"
      "pl"
    end
    language "pt-BR" do
      sha256 "140a1ccc3ed4ae31f64f34c0145ae045edd1457904b60145cc1937add454eb66"
      "pt-BR"
    end
    language "pt" do
      sha256 "29c232314b1a3ddd1a026812fc7fd1eb4f45e4ab55ebcfb769e5d87e35ed3b5e"
      "pt"
    end
    language "ro" do
      sha256 "94283ac92af6d18c204dc0379fc2f5ad8128d6e92088577f543e479559acf908"
      "ro"
    end
    language "ru" do
      sha256 "5727e4e824e3c7b74b78173fb2fde8b0712dc5d1e0dec1acd3d68bc3833eb854"
      "ru"
    end
    language "rw" do
      sha256 "199b6f8a83bf789d9d596a5a9dd45627c157707656c41a68fe6191e61ddc5189"
      "rw"
    end
    language "sa-IN" do
      sha256 "365634f0ba5b7677d0d44564c01e236c76a0bc0c44a14e5a94fd3c97e9c3c972"
      "sa-IN"
    end
    language "sd" do
      sha256 "7dffd5d776e5f5fb4f401874ee1879cb9ddd9dee436613c175bca7268f4315ae"
      "sd"
    end
    language "si" do
      sha256 "8f16ebc6b3e05536891a7a7b53e39b6ff0ce3da105c54b1841cdf62537b41476"
      "si"
    end
    language "sk" do
      sha256 "47c28268331a7d928ff86a6ce3cd22b4908f59ca8595f20c7c39bc31e9af03e8"
      "sk"
    end
    language "sl" do
      sha256 "082fccad7d6b8275e7ea37834f1d65b2a87c86f97cbf5537ad1d33189ef6d4c3"
      "sl"
    end
    language "sq" do
      sha256 "0b9503d96f009ab0f922a880c6172377bfecbb5416c6ee12ca9f9ef2d4d02d68"
      "sq"
    end
    language "sr" do
      sha256 "5b16958ed7087d3cf953cb9ac43d0cbc5f0645a84df5de1f86ca887e56d9c1ac"
      "sr"
    end
    language "ss" do
      sha256 "b5ba0031a6088b26810a866da0541f80cc42cbd90b03b17124293eced325292e"
      "ss"
    end
    language "st" do
      sha256 "d2456c59966f6b8de2286cb175432ed072a6c8b2322700fb65d2a5fadd847842"
      "st"
    end
    language "sv" do
      sha256 "def3c8f8e93059d1e55641d80d3a6ac25a418f2d3d27bae8c6ddc7744e05f275"
      "sv"
    end
    language "sw-TZ" do
      sha256 "c519c5fe6824681248a2ff46b5d1c5a2cc911fec49847dd887e1dd295cfb4ca8"
      "sw-TZ"
    end
    language "ta" do
      sha256 "43c5031e93dfe9f4fbf24c2ec0acdff49b7918a4280bc37ab84009a8f4416590"
      "ta"
    end
    language "te" do
      sha256 "46b2f204e408c66cc4de6a077063769dbc392076c156376ade0a4161f3148b24"
      "te"
    end
    language "tg" do
      sha256 "70e03efbe148094c0b6ae65d2e4a34db2441f0b5f345dd3c7b682881c09bfacd"
      "tg"
    end
    language "th" do
      sha256 "58e34b84b2fbd6a401f80e3f38ea8febc89bf64cc6557a25d963b8bbdc4d772c"
      "th"
    end
    language "tn" do
      sha256 "0ff5c357fdfc1bdb29976bdc3f212fa50ef7bf4f3ef473cbd6c4b11dcc60a8a2"
      "tn"
    end
    language "tr" do
      sha256 "f0a4cef471cdb52a2e8b612555cde40a23c32b34fa53263fd9be38636bae1a46"
      "tr"
    end
    language "ts" do
      sha256 "f44d720ab4e17b2a08e4c5e6bbd0418152dabc6aed84c302105d762284940949"
      "ts"
    end
    language "tt" do
      sha256 "565fa44120bdd1c4048c9bec08725408d830f4968592f9cbb66b7ed69b175041"
      "tt"
    end
    language "ug" do
      sha256 "56661055c9df28c1cd0002cc6bef462fe698027c474c30cd2ee3e95fb445dcca"
      "ug"
    end
    language "uk" do
      sha256 "4a4080b92eef931925906d68e2f4dd51c8828ae0bf79a27043fc84b818ec40a8"
      "uk"
    end
    language "uz" do
      sha256 "a6a3bd3d73e4878e5e9c4ebf7ea0b7852e395701291af3046502ebd77f46b0e7"
      "uz"
    end
    language "ve" do
      sha256 "26022f661e38e87afa96eaa7b25cf2e0ba8b0fad1e0d5e9136479f9419c176dd"
      "ve"
    end
    language "vi" do
      sha256 "b297b1e0d76cf02a6f739bfcf97d5c3471764248f1ab2d5b9793dcda862fd389"
      "vi"
    end
    language "xh" do
      sha256 "05fe784560d7e0e697a812db4c3cca33a5c5e431f941b1f1f1f116ece9f940b7"
      "xh"
    end
    language "zh-CN" do
      sha256 "bfae12e53623f4f00afffa8696b30957525c469476b21a78f491e47c705760d0"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "5a5d9990c6cffabb3df11aaef4e04a66f7eed228c3926f27c70abf77a74172bd"
      "zh-TW"
    end
    language "zu" do
      sha256 "1ae7b493727114fab2514c540d4c1a9e558bc09cfd9fb6edec983e497141cbec"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "9f5fc9e3dc078966af756341911c46cd9d36708d3132ed0b1925c829d6dc62aa"
      "af"
    end
    language "am" do
      sha256 "6a96a0504fdc579a1f1e1fe6386a5f92a95578e7e3ff6332f8f22b045b3ca4bd"
      "am"
    end
    language "ar" do
      sha256 "f2d65b5ace733d93d8916711f10fe9584a18f33ad6d99d2d8f0138c643e6e04d"
      "ar"
    end
    language "as" do
      sha256 "742413366b2e98fbbd2d66406ef79ba0e7079c450d9207e58af6e41dabc2115b"
      "as"
    end
    language "be" do
      sha256 "1c30622d4d27c70915d2758bb09b4f79c9b06b7aa4988b7cca418411c57d0380"
      "be"
    end
    language "bg" do
      sha256 "1237b0dcc3184ef5e72e168a3e6bddfa95286f31680a0a9af810a3de188510be"
      "bg"
    end
    language "bn-IN" do
      sha256 "2bcf9e5c4fe01adfe62b3642ae8b3e2e1b6699ee0d119cbe97c6cd54c00e94ee"
      "bn-IN"
    end
    language "bn" do
      sha256 "ceaa54d493de44f50ac5212f4e137d04dbc25ba613a52282ff4eba256f59ae7a"
      "bn"
    end
    language "bo" do
      sha256 "a26a14b4294b6dfe2233e4025bc7c2d8d33b62386fca57b1dbf63bdd17456431"
      "bo"
    end
    language "br" do
      sha256 "6e2a0aec73316c0dcdbd73e1bae3b802a459f92eb5682d83874a2acad8069514"
      "br"
    end
    language "bs" do
      sha256 "90c2d0361e9cb2b18b3956be9025e36ef44801903f7df8509b9bf38f9a493cd0"
      "bs"
    end
    language "ca" do
      sha256 "ab935daf3c797c6532ea069c51a80c054c9e3c9e8c420bbf88f00e1bfcefe072"
      "ca"
    end
    language "cs" do
      sha256 "ada38c2322afaa0a203818632999247d4676b2aee70603a5fdeaeda10c3a8039"
      "cs"
    end
    language "cy" do
      sha256 "5ed239320a99b0621340090476003aa6471bb0278b4750c937a3bd9aa92d5136"
      "cy"
    end
    language "da" do
      sha256 "8cc74f9ba940cfd0fc18abd6d2cb1fc5bbe6b4af75eb6ed06b36cf4d6963881a"
      "da"
    end
    language "de" do
      sha256 "45f9bfd30e60829005d30ab4b795552f24060a7f49e53dffb1416dd3eb717cb2"
      "de"
    end
    language "dz" do
      sha256 "e0f4ac67db3f7a6f573a5e3a8b5ea5908f165853726721a70e59993053ed34dd"
      "dz"
    end
    language "el" do
      sha256 "08ab40c22d5d75766bb6bc9d2aa0ee1f33b74239647777fdd67730c67240bfcb"
      "el"
    end
    language "en-GB", default: true do
      sha256 "8367835e43876f5e296638936b3e35d8f6133531f03a4cda0f38303119d1ef57"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "480914ae5f9b21d731aabb3a2c7e7d62ead213eaefed4eec7969ec3d092aab95"
      "en-ZA"
    end
    language "eo" do
      sha256 "8b167115e9452c2a09af942a78b71e0df8639ebf81ceb7bd49aa746387987a53"
      "eo"
    end
    language "es" do
      sha256 "115ac8e2c79860c539b0f9c38f171b703d49937d6624feba823f4684aa26ca9d"
      "es"
    end
    language "et" do
      sha256 "15b3b69a40808ed8a45bd8fac5b4346545a604c0770d8bf089af095b22dbf159"
      "et"
    end
    language "eu" do
      sha256 "5665b19420f14f6eb0feab826bf8db16375a0dc59e81df8a06f6f68f0bbb5640"
      "eu"
    end
    language "fa" do
      sha256 "a2319c560d542766de073dbe3b02acc0b28fd2d44e23385ed51b18dc61eaa06f"
      "fa"
    end
    language "fi" do
      sha256 "1a44a9f16b3f8e60b25f4ce4289660f582ff784a983d8d3a412e192141650860"
      "fi"
    end
    language "fr" do
      sha256 "1bedf62fa29f692d13a7716a8d47ec1079dacc1809987d39a1d742149a704791"
      "fr"
    end
    language "fy" do
      sha256 "4b2cd873c3ddef10f49aa1f019d48f12d477c3dd8af2fa557e820e07ec5e551f"
      "fy"
    end
    language "ga" do
      sha256 "5d232d9352f2520092b78e5b802b6e2c9dd9301cb54a48d6072cabe9716d23dc"
      "ga"
    end
    language "gd" do
      sha256 "ea7eb90c8ade4650fb5e296ff41d0e1f7145e10a6a2b63e2e770b7a29520021e"
      "gd"
    end
    language "gl" do
      sha256 "d8c7902edd17a167fac92c71dc4d0e7a6a0bcb99b15c2acebb5ad6a143b2a582"
      "gl"
    end
    language "gu" do
      sha256 "026778d3fa498c27813f52b730b2600570fd4c856204dda2541c672d23cc4910"
      "gu"
    end
    language "he" do
      sha256 "f3cf85d78a386e0a23bdfd748e1267f834f87c5bfb97b023cfd3a2a9a68f8c71"
      "he"
    end
    language "hi" do
      sha256 "7fcb9b4b8950fa1b489a8e9c98c6067e10dcaf923a52ac24932a048c06f7e7e5"
      "hi"
    end
    language "hr" do
      sha256 "8875f08a2a704d5f97c8d4409b08dabf1a38d9986e4c43bd92f4fa132ae2441d"
      "hr"
    end
    language "hu" do
      sha256 "de3ebe1985c5332276cecc0c8c91318d300ed530dfe2e9e8db77fc991102b837"
      "hu"
    end
    language "id" do
      sha256 "45cd396fd5c8e6c0978f9468ac0e498c52b5a67ee5202ae9f53dce6169c68f15"
      "id"
    end
    language "is" do
      sha256 "15146baa1c83006d93d0c104addd44d87285ca0f5a6024a38bb3074a0efa46a1"
      "is"
    end
    language "it" do
      sha256 "636dc3c0e25ea50cfe09cfe13978ecb7ddbfcac4e2448f780d96d53eecb8645c"
      "it"
    end
    language "ja" do
      sha256 "d4beb3c20efe43d03b26c527f9c99caef6d4e664510e4f85608ee22e30f53903"
      "ja"
    end
    language "ka" do
      sha256 "897547c87409adc4e170cab0ca225e54d85c0ad2f31bee0874291fdd7b12d073"
      "ka"
    end
    language "kk" do
      sha256 "2ad846b505dbbb970775a6e4996b22c839f1e521324f2bebc0948480657c49d0"
      "kk"
    end
    language "km" do
      sha256 "1361038aa2a0291048165febeb6223446ec01d9165521f22e0d61b19de4ad987"
      "km"
    end
    language "kn" do
      sha256 "eac055d89c1d32d49c913ef5532af59cbe905349324c2115bd77fba6799d9da2"
      "kn"
    end
    language "ko" do
      sha256 "d14ae982e27452838e7db01d2feb76b2d6bb9d185b52bc958e2220805a408c32"
      "ko"
    end
    language "ks" do
      sha256 "1b8d1995c1099487959fa272defcd8f7eee881e87aa2132d73483e3b66072085"
      "ks"
    end
    language "lb" do
      sha256 "7f5dc34b173809f67f524cebc7d48ae4fc781b33295b2ab41ea425ed096d8c8d"
      "lb"
    end
    language "lo" do
      sha256 "6fc14d62c47ff6ecaa7553ff1433bccd5e3265818a7aca1cce9f0c544d3d0e50"
      "lo"
    end
    language "lt" do
      sha256 "a5624e620c5538a946a3fe611e9b966504e5427d350103c76c7512e90db2cc06"
      "lt"
    end
    language "lv" do
      sha256 "7aee3ea11c94b4346bd99aa0da1206e7767fd911e7afe700f544a7e03b2240e3"
      "lv"
    end
    language "mk" do
      sha256 "9f910e8ee9e5f430f6889ac88d808ae09c85e26c9e7f6aa45c48acc4d52d7963"
      "mk"
    end
    language "ml" do
      sha256 "cc36c3689cc06faa3d28a5538d972634bff8add09625bbc1178b02225ef50d1a"
      "ml"
    end
    language "mn" do
      sha256 "bdd3c00ee3ddb23f0fb5ed1d21c184128da89f90a6f516eed527c11505d56722"
      "mn"
    end
    language "mr" do
      sha256 "71ee0a85ffa7fc066ad247f7f50c1ffa58040ede32c50d3190e54d2371d25016"
      "mr"
    end
    language "my" do
      sha256 "35dab09c2e7081cfcfda19fa3b058cc94d84e5806c26d99a22bb039d1970c701"
      "my"
    end
    language "nb" do
      sha256 "e289c98a3982eebe47746c9e756f66c21bd32e3bee19399f2c75f92ec2f5f701"
      "nb"
    end
    language "ne" do
      sha256 "a8d22b963b83105abd688acbcb045f15d61a4421f41c7aea10964f787cb4781f"
      "ne"
    end
    language "nl" do
      sha256 "2e3e53e8f3a9b5788a3f4fc99411228fa5f3368c0f280fb545c3bc5666ea82a9"
      "nl"
    end
    language "nn" do
      sha256 "400f49b1cbe6669748cff8e89594a52e66214f85de269003bd600e7a9ae0bfa7"
      "nn"
    end
    language "nr" do
      sha256 "5cc55169a35378876ac43430f92d995fdd639b5757f3e81a5e3d7a27ff6d7617"
      "nr"
    end
    language "oc" do
      sha256 "a2526c768b2d0fd8e2dd05b81ca5c80d426d8e64906f20f8b0655c140a7b25ba"
      "oc"
    end
    language "om" do
      sha256 "48f0961598f0c37e0cc647b7f9cca417cb224b36d57b2f3ccaab5d9b3b91daea"
      "om"
    end
    language "or" do
      sha256 "c7953266d4c43ef9bdfd199b20d154b9483135ae8693fe39d0770061c60f9949"
      "or"
    end
    language "pa-IN" do
      sha256 "e6dbf58be2d0f54623839e91491d1a0e748cb650922ce5561ba2ac6dbcde5930"
      "pa-IN"
    end
    language "pl" do
      sha256 "7266569c731def5e918cf966334f0be13d249445744edcd1f6bebc8625bdec49"
      "pl"
    end
    language "pt-BR" do
      sha256 "a4696a44d4800b56b1a26c579243c6255493ff88c8de85cc2e8f12d012133050"
      "pt-BR"
    end
    language "pt" do
      sha256 "20e77a593c705034cc8a25288a8b467a66538a5b9b5f719a5f6f7f92294a8377"
      "pt"
    end
    language "ro" do
      sha256 "d0c573f36fe9b6f9261f7bf7553df3b973a844107ac2a23fb92d88fe1a1dcb6d"
      "ro"
    end
    language "ru" do
      sha256 "57d3be330668b013c1076b3f7431c627641a9c61e3bb6d54aaa28853423094c1"
      "ru"
    end
    language "rw" do
      sha256 "a8d105f1444ed0767f7ea404fa95b66b28840e120d87e9970ee8940381d5e1e8"
      "rw"
    end
    language "sa-IN" do
      sha256 "229952b7780d9a8270902cd3c2f489ee614ab6b4ce164695fe342851e010cdc2"
      "sa-IN"
    end
    language "sd" do
      sha256 "820742590faca1c51f4664ebd7f2a23f87db229cd5a74d6ecfc8f7362aed2ea2"
      "sd"
    end
    language "si" do
      sha256 "cc66ae0e8e7d65f59caf25cee71b9de193a682358fdf0c5109fe0bd7b16e7b5c"
      "si"
    end
    language "sk" do
      sha256 "13f88193cf716114ab0fc9fd0d0e3e60b48ce6a2274f630f3b1f66291f7fe3e9"
      "sk"
    end
    language "sl" do
      sha256 "6ab39c1f59a14a1baa5ba3560855c7840aa2bd4a7bd3b6d65944bba6adb7bbbf"
      "sl"
    end
    language "sq" do
      sha256 "22ccaac725cf6e07417ee0abc6cf9e1e9bd078904e3de2414367e9d6d08ae1d4"
      "sq"
    end
    language "sr" do
      sha256 "4594352e75cb7eb7c6d23567255604022447f56b4203df51c1256ddd3db2da37"
      "sr"
    end
    language "ss" do
      sha256 "ec5f4c023f64443f094535639b3d2253508fcca9bf1cc8138a43a9d46acf7c7b"
      "ss"
    end
    language "st" do
      sha256 "792cfbde702688e5800f9fe9dcde590ed407b0dc091cc8c7eb6dbeefa1dd37a4"
      "st"
    end
    language "sv" do
      sha256 "a2155977270ad295e16af7072f004e9be418f669ff748eaaa3e3ae46b4b9aef6"
      "sv"
    end
    language "sw-TZ" do
      sha256 "554e1a6593e58e75ff13b432527e223b45cb4ec8e37e721e67219e5e5d0e2150"
      "sw-TZ"
    end
    language "ta" do
      sha256 "3cf04e82757499dc1e06c7d910c9340d515c826fd6e66d90f26f5ef7295a9185"
      "ta"
    end
    language "te" do
      sha256 "8c9915e2adfa1c23902fbf1aa1be11a2550619ab9fda36d578f338e491206a71"
      "te"
    end
    language "tg" do
      sha256 "6bb4b72a5aa2a5a2cc8f15dccd9226a5e65543266d8b125a898704e5ea124bd1"
      "tg"
    end
    language "th" do
      sha256 "3072a22c174e6df7d5ac2d041ce07861968a7b02f30d05f55d584d81ed6c1f1a"
      "th"
    end
    language "tn" do
      sha256 "ddd1d5609a167729196411ccc78acdb54b3c185d9b4efabafc797b1e4a59db8d"
      "tn"
    end
    language "tr" do
      sha256 "e43ecacae6e744ef49a0bb934492608ede6939d28d3653e8242da551dbf8382f"
      "tr"
    end
    language "ts" do
      sha256 "abfecf07480169e2a305ab48b091295aff70c52d6a362d55abf13b4b9882b1c1"
      "ts"
    end
    language "tt" do
      sha256 "cd2459019cd881cc374a1284d824b0eca90adb7a6f256e45b8b14f9397417025"
      "tt"
    end
    language "ug" do
      sha256 "91b880743c846ab2f73635a4c6a8b1a66717b6cfa4a678535b95ceca2b52f35f"
      "ug"
    end
    language "uk" do
      sha256 "4faac98ffa1675ab3e4a080cd4b6d215a0a5f39ce906afe6d89a5e4d72026767"
      "uk"
    end
    language "uz" do
      sha256 "e41ca36d48fadda6bfaad64e4c44e065057df60258f62d0ba42d2609de431dd6"
      "uz"
    end
    language "ve" do
      sha256 "78d49e467edf47442df18c2fdee86d2244f9b8639dc2e16a33c4954603fcb1f3"
      "ve"
    end
    language "vi" do
      sha256 "56be646b4c5b4558425429f7fe802b4919a513de546e82e64b435da073a2035f"
      "vi"
    end
    language "xh" do
      sha256 "d0529f544f276bd827620053a0eae88a132e8bab91bc6a73f2648b09b8bc45b1"
      "xh"
    end
    language "zh-CN" do
      sha256 "fcf1a35a07e0a15fa8c306dbaa7569496fb09895f4fa3ec3797f9df80629ad92"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "63e147ec666db515b1311bb9511542e03c9fc3da3337ed2ffd04bd4f651c0dae"
      "zh-TW"
    end
    language "zu" do
      sha256 "72a57c5bfdb3179411e8c879ea754fb132138b68cb9689e16b9df6a50a2f7b32"
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
