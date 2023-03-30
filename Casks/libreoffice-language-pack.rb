cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.5.2"

  on_arm do
    language "af" do
      sha256 "125cb6625706040c1505a124a2d0e0f4ad8b6d5b7d7b067024185e3ef0270312"
      "af"
    end
    language "am" do
      sha256 "f03388df8fa528177d5ad784b77487f08546edefe495714359e0122f512fc395"
      "am"
    end
    language "ar" do
      sha256 "e4e6bbcbc8b1522b745508c53348494f6effaaaef510a14f6df5efb0890fbf5c"
      "ar"
    end
    language "as" do
      sha256 "bee690ef420d4bbc5f7a050d41482b4f765038ecf94d132bb24a182420760354"
      "as"
    end
    language "be" do
      sha256 "22b7822ed1329ad146d6242f89e14617e2a8ff29b473253f4a544d8330a3a080"
      "be"
    end
    language "bg" do
      sha256 "fbafee6b2041f15dacebcf47385317fece3888004f4823c51db1aa3ce01b61ce"
      "bg"
    end
    language "bn-IN" do
      sha256 "57647aac5734326bda1fa491476c2bfc9476eea5426a6b27073e792f7fb9a55a"
      "bn-IN"
    end
    language "bn" do
      sha256 "849cb666ee283f205862a71b729e51e64ea3063e157146995d50bfe02c62dbf6"
      "bn"
    end
    language "bo" do
      sha256 "5ab3f1a6e093ab9726d66104c76a8e19be0224e771fec3d1b12c7ccb4f05b166"
      "bo"
    end
    language "br" do
      sha256 "d9e201b6419025333fc5fed1f77390eed2e9d8afdffc1381c6e87aec7a8f7e7f"
      "br"
    end
    language "bs" do
      sha256 "5bf98c23e0ba155727139e808f5327901482ab3ab2c7d2a2390d2e1e79d41aa7"
      "bs"
    end
    language "ca" do
      sha256 "2d574340a1506ff9aa38011a2d080e8539d8fd7ad8ce104a1b03dd023afe1e47"
      "ca"
    end
    language "cs" do
      sha256 "7e83119fe6e945d235bd9f247b4af388ae2e7fd5585aebc426f1144dce477ec7"
      "cs"
    end
    language "cy" do
      sha256 "7ccea03853bb9f49857243f35a7487ec6d479bd0dd1e1745840460c9906d6dfe"
      "cy"
    end
    language "da" do
      sha256 "46d9cb4315893669656017ba668dc75788840227f76af39fdfd6f2e53e87b535"
      "da"
    end
    language "de" do
      sha256 "c6f88bc50201866dd0fa3907a5942e646419e491477927dfe789658111053138"
      "de"
    end
    language "dz" do
      sha256 "409cd131cdcde13f55eb80ccc60b583fa803d3fa27c0840fe805af5b4b6dc3e8"
      "dz"
    end
    language "el" do
      sha256 "9bb171f3d78f22a12184190bb3ff1903e502398b4760d9785181fb8b4ef24a23"
      "el"
    end
    language "en-GB", default: true do
      sha256 "d9ef0c9104ac7e951124ab392f659fcf08b42034800d66f6fc64b89727b57ca0"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "ec194bdad9897446285e2494b1af6c5df7b144023d267484ad7b9470d2e63cae"
      "en-ZA"
    end
    language "eo" do
      sha256 "b0da149bd68386819e06404b453f9ecc47432fd3c6d61341786ce87f4b223d5f"
      "eo"
    end
    language "es" do
      sha256 "6d24b067fbb4299e4425d315a6cee9285cd1032f57fe8fccd39c75a0fb966cb7"
      "es"
    end
    language "et" do
      sha256 "a2c5840fa141d10cf5f8318736896bb081b03f3484d2dd8d0934d81d97b29dd1"
      "et"
    end
    language "eu" do
      sha256 "f802dacc6651c9c502f53afb27f3cbeeedf26305337a0a8f9d108a4c4644ebf1"
      "eu"
    end
    language "fa" do
      sha256 "9127e38a56cf3e8c9e44ba9f5e154375a27c690fb9c39c38d3c4dacfcfa763a2"
      "fa"
    end
    language "fi" do
      sha256 "c7b29baf39da27a50254a56998adb0c6a61d15a8f9fee9e97481b8dda24bbff1"
      "fi"
    end
    language "fr" do
      sha256 "342b5019c47624543154474aec7201d50a38c6cd71ab1831cfaafcad7a947813"
      "fr"
    end
    language "fy" do
      sha256 "e8509cd78a126a4ee988cce4508c1bdce94d18cb3cc2e594d24d128d4ab0e8de"
      "fy"
    end
    language "ga" do
      sha256 "50eccff9d8862013a7c30ec4249ace33e5a729dea287539ad1eefe2399b701b9"
      "ga"
    end
    language "gd" do
      sha256 "f33d522acbb2aede1dda2b4254e2bcf55e99cdef0469dcea6c5b73f8090ffadf"
      "gd"
    end
    language "gl" do
      sha256 "e227a0d21e06d88521aa56e81fe007505f5f049beeadb10182574e5bdd6be140"
      "gl"
    end
    language "gu" do
      sha256 "4bf8d847deef719257147d33b4147bf1f26be09f1f71563b55feafd3f4b8be29"
      "gu"
    end
    language "he" do
      sha256 "e43406edb6ea7bbd6cd51d953492791b1c0a4c7d8f4a64c7472ddd19301533f1"
      "he"
    end
    language "hi" do
      sha256 "8544478e08ce59c6da2f57cf13eb6723744570a877e75fc3ee934aaed1f8e8a4"
      "hi"
    end
    language "hr" do
      sha256 "ed0ba11a038e771242a25770808982c3db70e0e0de8e45b4da23440b379a186f"
      "hr"
    end
    language "hu" do
      sha256 "a7253316c20c3c905689393f6d8b2fa45822b214393413fb8bec978524cb622a"
      "hu"
    end
    language "id" do
      sha256 "5ab5c33759376cd321b15f53057288fb57a0f69ad236312c75e7af870d698dbe"
      "id"
    end
    language "is" do
      sha256 "36d9fed381918d038c1d71518f16dfe1a4d68edad9d53502184f415fd97798e1"
      "is"
    end
    language "it" do
      sha256 "d88949e40bbea41796d5d71399a72c46cd288d116b91f18d908d3661b2d2b6e6"
      "it"
    end
    language "ja" do
      sha256 "ece37f90f7bb3661d9b2eaf325cf41e01d17cc65da75ca4e2b0074a9be2f61d3"
      "ja"
    end
    language "ka" do
      sha256 "620019175689ae30b78e439559c75084c07794d14ed065201b83afd77e37f6a9"
      "ka"
    end
    language "kk" do
      sha256 "af9adcf58709c03bc2120e2a7547e1a23a2e8a872b407f7c031734323657e25a"
      "kk"
    end
    language "km" do
      sha256 "db043eb57f0daf8ba9782f0b0097df5acbd169307a66944cd3cd0c8a28bed620"
      "km"
    end
    language "kn" do
      sha256 "87d664d6144b39c8f17786b7d09a4a6b79c4bc67742aed9e8d5bc059c891bd10"
      "kn"
    end
    language "ko" do
      sha256 "6f2f0dc81f07df90f43cab7e2ba46ae87c09866f112790c58580797ba69168b9"
      "ko"
    end
    language "ks" do
      sha256 "9c12b013791d28dd9e924cb0bfa50922fa317d70df96057b05e25027b775a719"
      "ks"
    end
    language "lb" do
      sha256 "c714162b85a43ac5c7f166f081fc0c9447ca4d7432f8b3ca758b5bd7b368dbe0"
      "lb"
    end
    language "lo" do
      sha256 "e61d3feca44d0aa8e493d0b42f62ad17ce3e4a1dd72f0cd2c85e8a80c0a0664f"
      "lo"
    end
    language "lt" do
      sha256 "3084f5f29b443b507f8795de469dd9f5d17a0d566a8e2e7cf9d8b6f1209c9f20"
      "lt"
    end
    language "lv" do
      sha256 "4545348058f86c28865f2e33e25724d63067291f8e1d250b64dacda39b5ccfdc"
      "lv"
    end
    language "mk" do
      sha256 "ec05397a4f1e9a2621d1f22234076885cf2a93208fb7059ab14b67cc64873ebe"
      "mk"
    end
    language "ml" do
      sha256 "b0ae24d69b2cfbba8c58c35c9f9b9af9d9c6b558bb063eb1e14fbe86b2ccb16a"
      "ml"
    end
    language "mn" do
      sha256 "7f01257473e3d95d0ca12de559fdce3b4e7eec7322f35824a656d1b5eceb9212"
      "mn"
    end
    language "mr" do
      sha256 "211fcbe4ae66b1a10d55b3bad6b15065411fb019074fe7bf63d2cb3aa18f5f0d"
      "mr"
    end
    language "my" do
      sha256 "01d87fd587bda6ae3ef949fd969ac5243578fc1999de4f861dfaa0a7b6623c54"
      "my"
    end
    language "nb" do
      sha256 "5d271287a95d848ac6761a29eae8e0369327c75663a4708973d94f8fe3675242"
      "nb"
    end
    language "ne" do
      sha256 "b7fd6692d9a946d3e7f096e8561b20b12b0b77d3e3c59b8e55ac476bb28734c1"
      "ne"
    end
    language "nl" do
      sha256 "3fde15d1973cdd8ef74edab663364e1397cbd69c8d4c09d4a55e9e8939e60c97"
      "nl"
    end
    language "nn" do
      sha256 "abc01b13223b7cfd67ace4d0b740a785e0ca86bd97e32d491259901b4025de72"
      "nn"
    end
    language "nr" do
      sha256 "503b80df8ee0a7fb38943033dc088b819406427f245b2070dfc5170b109b0b5a"
      "nr"
    end
    language "oc" do
      sha256 "c6021f0a9a1e17ffa175c973b768cb13c1be9a6a3e2e72a008efeacf1eb74435"
      "oc"
    end
    language "om" do
      sha256 "b1ca50d5e091210514f3e0f9cea199db2a400211ab807237ac6d2040bfb0bc7e"
      "om"
    end
    language "or" do
      sha256 "a20258eda68d93c9c9e1814ef315289628b1d854f7fe0fef9d76c60838d967d4"
      "or"
    end
    language "pa-IN" do
      sha256 "c81d9cd32ad5c2477c584de7fce1d82a255a0b132aba01aaa42b93ba5c3e9519"
      "pa-IN"
    end
    language "pl" do
      sha256 "47f1b7abae973834d10d96b8b1300b5062d6220b08e8e55d229571e7f0233ded"
      "pl"
    end
    language "pt-BR" do
      sha256 "682e5b5648f7b20132d68204eb84417de43179c468dfd5b1811b680663b72f65"
      "pt-BR"
    end
    language "pt" do
      sha256 "5e91a8ce3293e0ccd68a8af4721febb92baae4849a4cce19b2ad6cdf6991bb66"
      "pt"
    end
    language "ro" do
      sha256 "9c9fded8519332e74cd7a500bbaf071bc8756c181b6ed7b38e2dcedd4b51485e"
      "ro"
    end
    language "ru" do
      sha256 "b59effd55ce2be92a4d2f6184175eef72e396df9272e02cc4fc6ed0fffd61478"
      "ru"
    end
    language "rw" do
      sha256 "6526198db5242d15f91ad8b8c8cf46145eba748159b4d12ed9be1a3e6b47db95"
      "rw"
    end
    language "sa-IN" do
      sha256 "5fd1880f680d110310333a69a21a8e9b0e06f609b6fbcad16dec5ab8264963ac"
      "sa-IN"
    end
    language "sd" do
      sha256 "84d8ad6ef83de4e54e7ff1aad3af8e9743d9f36709b49d38bc9f5dbe39cb60e1"
      "sd"
    end
    language "si" do
      sha256 "e749034a838090420f82aa65dfc6ff089b1afd7ed90dd0f19bf7fe113b7377cd"
      "si"
    end
    language "sk" do
      sha256 "bccdd7f238d8aaacae7639a9f9597a74450ab93d93130c4a6035ba2c4ac4edea"
      "sk"
    end
    language "sl" do
      sha256 "49884052e2354678313ce1d924140b8868d98ca7b0e024afa5b4acb2d5d0a704"
      "sl"
    end
    language "sq" do
      sha256 "d7d938abe6ab37bf03f6f5be6d2f31b1202bfb7b09fc0080ee42dbb182f151ef"
      "sq"
    end
    language "sr" do
      sha256 "08ff003d8256bf00df4bfd0d51f4d1ef4696c64b2784626444635dc3b9aebc30"
      "sr"
    end
    language "ss" do
      sha256 "3e0231aa53687fe29b7f26be1d0d564a721dd97ab378da997cd3c6503070abfe"
      "ss"
    end
    language "st" do
      sha256 "53b2a110742220d927e75261769bf0103095c77fd84221f01d85e58347ca6029"
      "st"
    end
    language "sv" do
      sha256 "e2462c99f9265d1aec40aa6007f01896f19a8cebb3a031a687357d805b51cd2f"
      "sv"
    end
    language "sw-TZ" do
      sha256 "32f0eeae403873916ac06b8d12d3f1614a1fe36494ae76a2fbbd2cdd1228bad5"
      "sw-TZ"
    end
    language "ta" do
      sha256 "f2d42f486b8c9a97fee5978a6ce97a2aef86635d43425508b48fa8e9466901cc"
      "ta"
    end
    language "te" do
      sha256 "e1a88463913292fb1ad132d4c24fa1ea8285e1e18e828a702e09b2454a62d5e4"
      "te"
    end
    language "tg" do
      sha256 "9408f57c92aa191d5f540c116a8e89898a8baf8eb10da25a9dd89893610c446b"
      "tg"
    end
    language "th" do
      sha256 "7e903de86489db4558423a5ad4b65c62ee5b86497509f34fa8b8e9197ad63253"
      "th"
    end
    language "tn" do
      sha256 "e2466c49061b2ccb410853fe0f90df93108f322db68a6ed2b4a9d966d3b07ede"
      "tn"
    end
    language "tr" do
      sha256 "393e7571e3afdfd916da089f95f279fe44d3868a6e38cd627e284eec9765b852"
      "tr"
    end
    language "ts" do
      sha256 "7c15a87ef8117c1b5b4c6fa1143e1f79e7b727cb83bd35ce5e8cb9ecbcae8658"
      "ts"
    end
    language "tt" do
      sha256 "cfce79218895afbd6b759c201c86a6943fd786ab73b0bbde9e86279725cd9244"
      "tt"
    end
    language "ug" do
      sha256 "051fe8fdb52f4b847f21593fe294187044ea645e8f08c43b7accdc5a3f4f5f46"
      "ug"
    end
    language "uk" do
      sha256 "7312563fa23e408e4c001914d407bb34ecf0ff6983e4531afab23daf44e1fb74"
      "uk"
    end
    language "uz" do
      sha256 "aabb5d21300808a5e98eba76502ecd93110a7edb36f7d16130968211ccd7ab78"
      "uz"
    end
    language "ve" do
      sha256 "64e5bfe8f1127f34d873b0ce6733987d4982207ca88ae67b47ec0723ffdbfc3d"
      "ve"
    end
    language "vi" do
      sha256 "409c83a83f68a8053d18a91f53f80e6d95adf22f44f7cfa949cdf7564998b8c9"
      "vi"
    end
    language "xh" do
      sha256 "a999b59545ebab90ef2ffb7023815851737acd7f5fe61a2a38104f220dc25926"
      "xh"
    end
    language "zh-CN" do
      sha256 "6857026456a45b043e31e68e38e0ff96bf63f12b5f2a8769c370b0a6b14c0836"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "fa0672623a1411f47c7ca510df3501206b0477e8f8c8f714e48c692c24c14f5f"
      "zh-TW"
    end
    language "zu" do
      sha256 "5c09895737590be1fc62ad52ec614ceaf7061dc274877801ff0294756e08b0d3"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "fe79ae704f16b29e68eff664af55cb67b9783c19835672d726f8524667d78728"
      "af"
    end
    language "am" do
      sha256 "79b964fe326bf40206979f7ab2b96bbaa022d6766089702e9876eab50193f8e9"
      "am"
    end
    language "ar" do
      sha256 "f32fd87deee8b8b601a8a46db80484bff97bba64452dc5f2133d4ccc09d06753"
      "ar"
    end
    language "as" do
      sha256 "ba72f0b47eb091d8f0a6808caa20df7b0e349b3c46d626ab74838a86c7667c02"
      "as"
    end
    language "be" do
      sha256 "a1d1b467406f2cf0e8cd753f9fd0a41993b1d830644924ff2a4f376d758c6dfd"
      "be"
    end
    language "bg" do
      sha256 "e35b03a11e20b1514d5f0bd5cb83f3a3cfe3e8f32a457476cd915aa6a04c4323"
      "bg"
    end
    language "bn-IN" do
      sha256 "803fd276a22ba222d55c32ec27c0602439e172a12fe2ebe5e980270198c13a62"
      "bn-IN"
    end
    language "bn" do
      sha256 "ee53d0fbf61012e3b9771be08651a902ff3eba9d7589c694998326b4e69da450"
      "bn"
    end
    language "bo" do
      sha256 "53d3fbfa49e8ff43b25e683f000272c57abe003a8d45c879f1fc31054fb93e72"
      "bo"
    end
    language "br" do
      sha256 "eb08b94be5bd7e92319e25bf6264749cef5ef4c49ea2a87294f7ae76c6c03666"
      "br"
    end
    language "bs" do
      sha256 "8128c1efa6a3543aedc5fd146a56e490549ae5db156bd98780a954881b0c19c8"
      "bs"
    end
    language "ca" do
      sha256 "3a5410fcaf3b9f0269c30bcd4dc6b10c6be16b9e07037a0891956874fb44cebd"
      "ca"
    end
    language "cs" do
      sha256 "966aa78215579fceec8b8d6f087d2f085ebfbc6f12e9263085c7db602c00a1e1"
      "cs"
    end
    language "cy" do
      sha256 "a79215c379d5b6e7153d0e635bfe67f61fdd83caaae3ab387a97e6c2720fb7d1"
      "cy"
    end
    language "da" do
      sha256 "865630276b75f6f09f9c30403e1cd583e0b06f39d745a47e024c8d446e727223"
      "da"
    end
    language "de" do
      sha256 "f7ae1ef99f38ce2477215e557eee33d90ffba8634cb208248ca6d1505b4b1d48"
      "de"
    end
    language "dz" do
      sha256 "56931904a67fb44095a80010408b8fac76d1bdc527e69e908402ee6cb7224ad4"
      "dz"
    end
    language "el" do
      sha256 "2c4613b15bb1b24bd1d36541d72c2b33ae351b8b58e8a27eb538a61c7393cd95"
      "el"
    end
    language "en-GB", default: true do
      sha256 "9aa71553b405fe57a78821e8d09857d7ad6faba6a148f733b72a0bf3ba37118d"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "840773f8158db93aa9d80a578ccec5119ddd4eaebc8501caa929ae9a1d3941b4"
      "en-ZA"
    end
    language "eo" do
      sha256 "ba6a40afad1e2693361482800a7992ea61badf729ffae0c0e7644dbb0bb5dc61"
      "eo"
    end
    language "es" do
      sha256 "d35dc880125084d35af09037be1552cf211d13e59c911413bd5281f207141803"
      "es"
    end
    language "et" do
      sha256 "3c13910a7f2f3facf6d2c7d9e5269d872597259e340b2be575801afb928e63be"
      "et"
    end
    language "eu" do
      sha256 "343b64470210acc42574ccd5008e0c11011bf53f347395378f0bf44551933680"
      "eu"
    end
    language "fa" do
      sha256 "27ac0fcffbd598ac8d61956ad33719349c236d186bf30348fd0ad0317b80d006"
      "fa"
    end
    language "fi" do
      sha256 "7f71c0611a17b47ce8331e6711e8db39de6bdfe43f26ab3fa9e05b163568b75e"
      "fi"
    end
    language "fr" do
      sha256 "25be393b6db7007b4e5c3c1dc00f82e0bbcddd852a7f0a735646eb2b9c540d84"
      "fr"
    end
    language "fy" do
      sha256 "9e05534093919d6cb274e6b2889f56340074d3e3281c8648f174725716f2db9d"
      "fy"
    end
    language "ga" do
      sha256 "b9292de11248cf73a3f04b9919fb0458775d3a66ea8d9557016d247f4a7233d0"
      "ga"
    end
    language "gd" do
      sha256 "6c6be990df07c22431b3bfdb4c5ecf3248f2992a4901d75ebdf8d13bbdf071dc"
      "gd"
    end
    language "gl" do
      sha256 "f7e1f108ed94d2dd5c226687c9555a2cd05b211a1e4df99b813bfbb6bbe0a549"
      "gl"
    end
    language "gu" do
      sha256 "7817b2f6810daed1d766cebfe1ffb6f8f921eb9f31784a830df16229fecb2200"
      "gu"
    end
    language "he" do
      sha256 "04a9ce81dc5bf3f367e14d769ca8ea23b74af1fddcf4b4164d50247f9f00d103"
      "he"
    end
    language "hi" do
      sha256 "b9d0b5694a9e75849ae6f5063e595279b8d53115c0018d9a8c27a8ebcc6710f1"
      "hi"
    end
    language "hr" do
      sha256 "a69b461a25feef224a9f5f0296aa1afc30f355b4d784397a1895825a8c0709ee"
      "hr"
    end
    language "hu" do
      sha256 "886e7ba63bcdbbe20f13c53ae9c709b11d97148e00031b6788277381049a3331"
      "hu"
    end
    language "id" do
      sha256 "2a613bfb15dc9f98dc4c4966974f84cba8517a9edb8d4846bac54078dbcfde72"
      "id"
    end
    language "is" do
      sha256 "a8d4d0d285644fefa4ce71ee8acdc2200db1d333f87842941895407d7ef4d8e9"
      "is"
    end
    language "it" do
      sha256 "4f52a90cdde572797f2078b78d3a2029e22216a2d8a9a58efaa2cd904926e98e"
      "it"
    end
    language "ja" do
      sha256 "13f2ffc4ff0c2ba85edeff593e140eeaf3ebe009f08b03b878af9e1679afdbfb"
      "ja"
    end
    language "ka" do
      sha256 "621fe45952e29a9742ba7b2d1bed30dc88ef8c931fd2f8c7776b8e6b5c2dda85"
      "ka"
    end
    language "kk" do
      sha256 "fd1c71e83dae827c6dc2ba909a976a0a556f82902a7b477f72afb19ee604fddd"
      "kk"
    end
    language "km" do
      sha256 "f3b64150ac778c683e52ac456d2aab22b0172e280886ad8f90bf9fe76ae79479"
      "km"
    end
    language "kn" do
      sha256 "c8c7c48e0147baafbfd3ea4b01426a45af0aec822bafdfff666d8396a79bc09d"
      "kn"
    end
    language "ko" do
      sha256 "9e85f9d36f2cdc4bedcc19bd03c196662458b4765baf04661aa94f0c3656665c"
      "ko"
    end
    language "ks" do
      sha256 "1f8a0a0d3c8a7552bc94ef35abdbc68cea92d89b06164152f2fb56baa6f7cc60"
      "ks"
    end
    language "lb" do
      sha256 "59037c14f5085c9ccdfb86ca977580f1329f5181de2805b4321cc13f8fe7a48b"
      "lb"
    end
    language "lo" do
      sha256 "83394b92dc4f4db52b1b193c9f6f9105b65b75aa44d4abad00730e8717076c10"
      "lo"
    end
    language "lt" do
      sha256 "04c9cee48603c9301e0fbb5b722f6ab86208d0a0504302966007aa0276f1ded7"
      "lt"
    end
    language "lv" do
      sha256 "b8b8c3cc2c089a59b396fe8237fa85df92f63b1f20b95954ec018d5002597f04"
      "lv"
    end
    language "mk" do
      sha256 "42eb12105e2472b4c219829566afc6292b960efd8aba4a48dec31184eac21417"
      "mk"
    end
    language "ml" do
      sha256 "6d42e65529cba179f99533b6afd4b1e88ffa7746ba6145ffcb7be732b7628b32"
      "ml"
    end
    language "mn" do
      sha256 "fe141b13bc300fb972a46c1d07be930c089cb12058ba3a9393a6f1ef5051e853"
      "mn"
    end
    language "mr" do
      sha256 "174304864b3518ff457786c488e67c234c2ee04ecde95df4433aaa80c5422b73"
      "mr"
    end
    language "my" do
      sha256 "e763ee5887582737c3805d5ab2b57c04ba71080db9ba8ca321973cd8d8d5d814"
      "my"
    end
    language "nb" do
      sha256 "cbb8004090fff6ea178468bbe546a11fe6f7a08afe4ae1ceb8cd10bd7fa35a28"
      "nb"
    end
    language "ne" do
      sha256 "cdd61f097138eab4df01cb8840f38818ade9ba25b80a19533f6b43859e8bd1d5"
      "ne"
    end
    language "nl" do
      sha256 "ee4ee07d20938ec7c7fbb8dfc1c53c993b65c10e2640a81ac780c8e7acd2f245"
      "nl"
    end
    language "nn" do
      sha256 "030aec834aac0bee5b955aa6f6619ea14d7216ce50e19b05b9ee94fbaf581805"
      "nn"
    end
    language "nr" do
      sha256 "9b39005ebfaefe525775b6b6718cec03634bf00432143e201df63dc43f3c76c6"
      "nr"
    end
    language "oc" do
      sha256 "ea5baa190d03777d75bb0d1f17136073dfd3f1971b430a6046d90d02148a294b"
      "oc"
    end
    language "om" do
      sha256 "b3264e7b31d26bc67028644b75f5aceb9dc16180ad8668285462839918f50cbd"
      "om"
    end
    language "or" do
      sha256 "c536c859e2882f4f743e14c5834108fcadb35414994ef89261b011acf6538f01"
      "or"
    end
    language "pa-IN" do
      sha256 "6d80809a359fa3f0535dfd4c8d462e9d58674e689262978cec148f0a9ef18cc9"
      "pa-IN"
    end
    language "pl" do
      sha256 "9f0f27f2f637be305b20035f07cbfb86d1904e00eaca9414c09e41424c8fc966"
      "pl"
    end
    language "pt-BR" do
      sha256 "226748b3fb01a2b33a8e8ac96398120a35135bcf67d5e1cd5724687161707313"
      "pt-BR"
    end
    language "pt" do
      sha256 "df6d291ae30d2e1542988475fef6eab1dbb490e7b8e442b1d211f0e8ce5b4e28"
      "pt"
    end
    language "ro" do
      sha256 "e9c0e001a52417b27e51ca8a9fa971e921ecac717c35dd1dcac579e69a10400c"
      "ro"
    end
    language "ru" do
      sha256 "ba22a392cc8d1a11a31ebd4a500b27703260679e4d08daa13f4e191cacec9544"
      "ru"
    end
    language "rw" do
      sha256 "2be303eedc072a777e84d2c56845fd69c774792581f3902b082a7622dbc12bbb"
      "rw"
    end
    language "sa-IN" do
      sha256 "89dc7545687127c3239d43a0894e27c4fd3a6055ab688f3b11de86c163547176"
      "sa-IN"
    end
    language "sd" do
      sha256 "016474a3f939e07b658a48a7f3792552e976eb643b52abdb088d7f8eba4b83d7"
      "sd"
    end
    language "si" do
      sha256 "daf545471ae1d40fc31fcb1c9ddadd30e988df3662cf6dd43dc09959ffae0cbe"
      "si"
    end
    language "sk" do
      sha256 "e7ec3386e8b437ddf2fdae921021663dc61988f0e1520f98c7bd892cc4520382"
      "sk"
    end
    language "sl" do
      sha256 "c183192d2ee8c302b1e5b77b31b4f8247d2cb6be27d65f815c85d7a7d8a5e479"
      "sl"
    end
    language "sq" do
      sha256 "6e7bb46c5cd3ea7a25511d9892a5ad191fb2f01cc049d56391c30311fbf77b47"
      "sq"
    end
    language "sr" do
      sha256 "e9228fc6b3f6c12cdb6a89e1cc6428191234dbeb51c3d8021719ea22daac74f1"
      "sr"
    end
    language "ss" do
      sha256 "0cb5ec9c6f623812c60e04e98e8ae041c7ee10b01dc2929b479ea330c9891ae1"
      "ss"
    end
    language "st" do
      sha256 "378fee61f9184ddad1223cf46692aff0ef98ffabf0e8991eedc6100c652b1592"
      "st"
    end
    language "sv" do
      sha256 "e8f1df37ff8fa9799c678648d0be493d29f2c7094dcc7a24ceb21c524bc452ad"
      "sv"
    end
    language "sw-TZ" do
      sha256 "dffbdfa0bdd5dfa1fa0b2ec0c73d1ec974f4a5608fa4193921950657247c650c"
      "sw-TZ"
    end
    language "ta" do
      sha256 "74a860cfc8af7c542a1f16cd269bad2c307f397488b980fa46ade2c673e87ec7"
      "ta"
    end
    language "te" do
      sha256 "63a3d3a6b1ce9d80e30bb0b4181759158eee0346890181960992943702558a60"
      "te"
    end
    language "tg" do
      sha256 "b41acbaa8a225d7b8607a430184ed24bfd40640db76ec725b817acd3d71eb19b"
      "tg"
    end
    language "th" do
      sha256 "06bc3f148e1637e3ad2c933edd617868aecc9033fe6790ba9a17afc4b25679c2"
      "th"
    end
    language "tn" do
      sha256 "b0031a6fa6927dec9b8f29a455afd32fed31c368e8555c61cef54f40f7ebe1fa"
      "tn"
    end
    language "tr" do
      sha256 "a01a7de68067003ea659820fe0ca314f8b4c5eeb45d25039c39e9b99a873d8fa"
      "tr"
    end
    language "ts" do
      sha256 "f92e6875eb24398033e1456c5adc0c3ef16fd2ec21ee073dd5ab1b3d21d3de96"
      "ts"
    end
    language "tt" do
      sha256 "6b72f9f7cba2b84bbf216ad3027b99c51ff72a44a240d2417f410f5ef2a5e69c"
      "tt"
    end
    language "ug" do
      sha256 "75ce1850f71e997dca0ae57d21f09830c53bd9cb3c13473a0b4079145db0f101"
      "ug"
    end
    language "uk" do
      sha256 "d6f11e25dcf3808e96eddf26735287dc9a8c8d29d89de50ba5fc0eaa6e1a2b10"
      "uk"
    end
    language "uz" do
      sha256 "68481e557fde5136c57b5205dc2b8a426a5b69209b84d504f984c2687d87d51b"
      "uz"
    end
    language "ve" do
      sha256 "c1ddda79bb84bca7dbfd78d362eafd6e18a2a9c8de48b15abf0053d4368099c0"
      "ve"
    end
    language "vi" do
      sha256 "bb06c9a5bc830365f631aa51bd15e054ce7ef9f2fe03d177eb57e431726a1394"
      "vi"
    end
    language "xh" do
      sha256 "0d549ca59702778dbcec42ab2a0bb5d4be55e0dd7f91c092354f9d26300189eb"
      "xh"
    end
    language "zh-CN" do
      sha256 "f67f988fa07d4bc432ec37002baf8affb76d566c6e583b92941670f78dc33ed2"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "0780f1f9e374f951d6ceee652dbda43db60abf3e62ec919af301a9a01563cb22"
      "zh-TW"
    end
    language "zu" do
      sha256 "e57705f2d6729ff9f6dde393e824da7fad2dd1c3ad205ae2d262568b15987cd4"
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

  installer manual: "LibreOffice Language Pack.app"

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: "#{staged_path}/#{token}"

  # No zap stanza required

  caveats <<~EOS
    #{token} cannot be upgraded, use brew reinstall --cask #{token} instead
  EOS
end
