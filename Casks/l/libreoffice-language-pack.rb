cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.8.1"

  language "af" do
    sha256 arm:   "f2de6c557b967f35acc5d2d719a93289cefb55d94126b629de9980ce7f2a9583",
           intel: "d5b4d36043b147e8813a72c81128794d88617522f23bfcb8cf8833892a694f0c"
    "af"
  end
  language "am" do
    sha256 arm:   "80f9251069ea2b9f1ade7ef0905067358d47f45869fa65551941b3b911320a1c",
           intel: "698d5ab5e329fff9716d725fab875eb4e0593aed25a58690016e4ba2751a6faa"
    "am"
  end
  language "ar" do
    sha256 arm:   "f87ad09918ede20e5a79ed5fa476f9f7edf29e60424c5a181063b7e6c1681ad3",
           intel: "5e641dc306d1046026e42611425615d825a43c3fa7cff473e3eff7a1360d9776"
    "ar"
  end
  language "as" do
    sha256 arm:   "07ed8e66c0c13d8220bb2fd5a04977047e6fc136ccb1479a58e581639d80401a",
           intel: "8e445c3fbc7d935f6e185dad738aecedd597ee0002e0a4231cd15feed61b32f0"
    "as"
  end
  language "be" do
    sha256 arm:   "58e2e3046818c37ab48e46c8bf4a0a6704103af739abdf3e31d1a063ad0b0bac",
           intel: "d6d37bcfae6944fd852af8e16391463d9f8ac05f4a3570792ca9dc8c6c9360e1"
    "be"
  end
  language "bg" do
    sha256 arm:   "22693a83be4c9cb723f2058ad5bac72474c95721782cc5bd630e29ff22b766fe",
           intel: "f7ab8d5302ef210cfd9f937c475dd1221170abab84a35687c9f1971424514210"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "f5b7edc76922a5ecd6ec666f5dea6c0d8b0075664d6473088c917c602ccfca03",
           intel: "cb5e34e97b20513d88b9f1bd3893dfafbbdbc65aacc0fe7b09318c2d6e6e21f6"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "994f2b122c02e975d533556678cbffa0e1219d61aaac22318d16cd9bff64720a",
           intel: "15c5809382800b0fa30d16174a72df5cac85a869fabd51c56702e8247c639b8c"
    "bn"
  end
  language "bo" do
    sha256 arm:   "8729aa12b36da3bd694ae0806a793acde13eeeaad725654f8e1660bf013bdd7e",
           intel: "cef861700ebfb55fec0e0eaea0ff0d921b114fd7526e6dcd265c7f5c8347bd48"
    "bo"
  end
  language "br" do
    sha256 arm:   "12ef942fa03186b7efd30896d4f818a422a774a3810e09b0e4ce0a276a013c5a",
           intel: "946d42b264b326ae28650c06c7621032131062a5fac3c522adb4ba5aedb79945"
    "br"
  end
  language "bs" do
    sha256 arm:   "bec1b618717a25122ccdc368563e105163b89b09e1aa093441650d4c89354f71",
           intel: "d16832b214e7bae5b7a5ca0dd36e61a849eb40bb67c3dccb59a297c47e1ca3ed"
    "bs"
  end
  language "ca" do
    sha256 arm:   "3019ccf851f142254c83d6c07003918e48ecf7ccd605858a4da8cbe4c73b5ef3",
           intel: "93ea27aafcbd5a56d2f6ba25b532c89119900256e61f52ba73bc2e1320b5c08e"
    "ca"
  end
  language "cs" do
    sha256 arm:   "3639ffb2f6841b33ec9dea01ef05ab3f8f41cb7fd0739c0a792ca0824b31a5c4",
           intel: "c5279205416ea7199700e778136e5d63622116134c9dd116e9a470bba1fdedb1"
    "cs"
  end
  language "cy" do
    sha256 arm:   "1e0357aebbaaaa6e606c855226de43ad00d4883a047ce5cae73a6f041d98cad8",
           intel: "daaac65ad7e4a9959f5893791a1f0cd79e7d7fc5a1dedbcfd080bbe08c0e67c9"
    "cy"
  end
  language "da" do
    sha256 arm:   "f5a31d0d09c8ee643e3cffd464768d891f668acefc5e9a828c4250ddd74352d0",
           intel: "6e98b681adaf4aeb6f7dbbe19a763391095ef836d44dc88c4289d269e8be6e0b"
    "da"
  end
  language "de" do
    sha256 arm:   "7a7c296fa2605f1301c1701f8f0a3f1d6c43e9e8b4da5551dde25730fe95dd92",
           intel: "67ff6d7b6325c5e98ac9d23432d6b82a96b6f4df3bbd88ae94ae53169f252a7c"
    "de"
  end
  language "dz" do
    sha256 arm:   "df24b4935807cd16282e7160d53e8df12bcfd822b76474b499512b484deb8b85",
           intel: "c07f43b7c40bf08c302148b9d12ce20214aaf0eeb4c1f5035fadbb6e038f680c"
    "dz"
  end
  language "el" do
    sha256 arm:   "d7936b422a913ce39141cad63d92febcdbc9e9156466b184c01ce810395751b1",
           intel: "4a2276febea7051f22c84fdd3fa8c9312ded4b96d089bccbf716252a74bcb5fa"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "634ca9c7c67e35edf356a8ab195bcf184d751bae6eecd0cd2d2e847bf4673010",
           intel: "4c603bfd54666a98ca863406ca9b356c5161ea4afdd8516588f9f5971d937900"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "772b0d6aa41a67a7552aa39f254902bda59ccf9e729df91ac6ba788f589bc210",
           intel: "bf686c61f0db933f8f96fc405614aa41df7ad593e4505be6f9d7240d75deee3a"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "418b1af02d5d96cdf1355c557b71344fa76fea1f9edf49441dc2a1030b426db3",
           intel: "12b1ae78571025030830c97402b8e3b3596738b03d6c7ea0785fdd27afb3890e"
    "eo"
  end
  language "es" do
    sha256 arm:   "ac2cf837a0bc9f1a7b9df6c942baec4753b80debf8de8b299c29bb95a3a0b704",
           intel: "6ef9feb44ec763df5a5de8a6cb0e03ce6265f5eefeeb6b6f3b956a4666396747"
    "es"
  end
  language "et" do
    sha256 arm:   "9f9f1b378dcaced79df6cab3b78f2e8c36f4cb93eb31fa94406b9b137e5d388f",
           intel: "4f34dd15038941fe32289670165e23e3d535f525a28018a29cc92d3c7390e666"
    "et"
  end
  language "eu" do
    sha256 arm:   "4ad26d3691b265ef549a9d58d74a4e3fe73a928d3b3ed8570e15d5c358afd2f7",
           intel: "0017e932f29d3ca831c9ee5257d7d9f9577babf4a639e30b57b7f8a278adc0db"
    "eu"
  end
  language "fa" do
    sha256 arm:   "409b1e95e938dd686e91a7499b7ad9e26e82375b5cf8e964a548dcf85e284aa7",
           intel: "54feadff58d675d54866c661977e95b6baba6025319b789b9f24fa812e8a20f4"
    "fa"
  end
  language "fi" do
    sha256 arm:   "7caf9ac1839f55f8949f5a42f1ed166574588ceef59fdab44aab676c685bf11f",
           intel: "a418ec62c5accb1cd8cd454ac7d90c757e1bd359fdf443ac18bae9732a9439bc"
    "fi"
  end
  language "fr" do
    sha256 arm:   "59c48a436274ba87384ca47ceed86e0b83829343b126a9c0501636f4b580c6e2",
           intel: "3c6e480c6250e08f8dcc6223139f58ecc6174f58bcbe3ee8f3938d5be4e61af8"
    "fr"
  end
  language "fy" do
    sha256 arm:   "8bf536aeebd8bcb7c581a6dd22f93a637a07ef1aaf80fcd66c69908382364804",
           intel: "8094c1024f895277bae8676b55d46b62dd8185564d7aead541784ba4453e12c0"
    "fy"
  end
  language "ga" do
    sha256 arm:   "55801d5f022ca7ae42b7d859546d8bca8c1dd7870fbcc44a58757fda92020a96",
           intel: "dda26ed314899bea22789a638a095ea676032acddeb7f6a5b9f38cfba9ff73fb"
    "ga"
  end
  language "gd" do
    sha256 arm:   "82a2fd6dec7e219d0bc2300080616ff82bdb0b15e492d00793633372b880fc6b",
           intel: "122a1af475f587a4902ea027f95c4c10cc912c4c396529203f9762eb9df0afb6"
    "gd"
  end
  language "gl" do
    sha256 arm:   "056bc4a7364a845aa4601ef65aea6dd66a659327e5f5402616ae63f082fb734a",
           intel: "5003fd52b708b70be3fc7bfe883e00f929f1ac0ae42fd9278424420a99a59871"
    "gl"
  end
  language "gu" do
    sha256 arm:   "d1ca9c66d605040049b1a23d01a351bd8e92186c77c6be366d439863dd6f627c",
           intel: "19162655312ad1e1417d68e4551b4cab6a26f9b56eae757cfda7ba1910bb9eba"
    "gu"
  end
  language "he" do
    sha256 arm:   "9011cd593b1769f6b77d3ee2037ff56b9c856c28d30a110e9c0c55fef24e3e52",
           intel: "e18e46651b85faeb8d5ac83d3b94c82fdee7b7bcfeefa4fa7f36ab63a92940f5"
    "he"
  end
  language "hi" do
    sha256 arm:   "269520c7f63978044072c2c21b6c46b906098e23e97d43cab5e64c3e1f2af7aa",
           intel: "baffb3310fe8960d984c631be9622ffc5a5c8deb1caa53f975af6eb31fe65694"
    "hi"
  end
  language "hr" do
    sha256 arm:   "8bdb47827b24976469bfdf5ec529f883d81e3b7b1bbe8532fab78360b6c929c1",
           intel: "a99caf8f689f7f99705deec98df49ce6d444b7d75f27aa9d87df868cf5a7c846"
    "hr"
  end
  language "hu" do
    sha256 arm:   "3ed7c8c752e973e8fb5021a2d63c52d1a53fe914842c39817272571cd6f9755d",
           intel: "7f57f1e5d2daf0cac0c29cd923bd147b403384c4698bc6c03ff3e7f8c306e06f"
    "hu"
  end
  language "id" do
    sha256 arm:   "ae10f76114b7ef4e5ccc96ae02cf7ef3b745ef9a1e9e19d7a0b7b0e445319ed1",
           intel: "e024484ae93f700f5c673e54bf50d7b37ffa8cdff4b25d5ca3ce23778d929ad4"
    "id"
  end
  language "is" do
    sha256 arm:   "1b99f6a78e32b15a1af12eb2962db32e8539775c97046889eab83691e915ca42",
           intel: "84d6822237eaa2075caa316fd56b99ca07673aed1db575b58c4551f85e0a253d"
    "is"
  end
  language "it" do
    sha256 arm:   "3a748808dc097c763b8d18fed5a09714cbd47c05cb628bcaad2ce6cfeb676eb4",
           intel: "20dbf65461b8be9b04ebc7aa77e03bf88ca206bdb7933ac8d788e9566b63c40a"
    "it"
  end
  language "ja" do
    sha256 arm:   "a9f39f1b7b6848ccd48f2f4104d684ff5e9301929e90825ffe67599aca501456",
           intel: "503bc7a570282a4d127d3aa1c58a8e12494ca2451fd87e1ab4a855d3db5764ab"
    "ja"
  end
  language "ka" do
    sha256 arm:   "7335e55454717c47e94828272c26104403cff01c46447241ec9769ed87f256fb",
           intel: "3b7a73a319a81963759289b4b960b408057eb02bc0332bfa3025a609b87d116d"
    "ka"
  end
  language "kk" do
    sha256 arm:   "9d9402ff2f69fdd2d99b02a3b9594ee993ba61d99d0d1887848366a62ab6d4e9",
           intel: "fa9140de1b6192fbf902ff1fbccd086e54ba64e80ef69ba0982a851771ca2323"
    "kk"
  end
  language "km" do
    sha256 arm:   "abca0fa514c68b3e644ab444efafc454981224e0d58107953d57ad09ae4ba029",
           intel: "f5aeda2b1e46be7503d356c47d588e5cd4e3adb1b8b783363dfbd5cf2c9a8e4d"
    "km"
  end
  language "kn" do
    sha256 arm:   "1d023509d2fc4d51bd4a285090131ffdec9ec5d3a04af5d13aeb5a97d6202c7d",
           intel: "094754b3605642e5288887d9e3b476b61de6d52893fa87dbe14cb0b60feabdf1"
    "kn"
  end
  language "ko" do
    sha256 arm:   "3dd35f2d851901a8d2bc04b2e2b95abc06a05aa23a6939e34acba7159a09f68f",
           intel: "de2ad53a933653189d8e00b4c1c1413faf4b5f74e8f802362e2106069dd131f7"
    "ko"
  end
  language "ks" do
    sha256 arm:   "977b494997e7f86a3afce8e532c491c9ca6d51150aaf1c8453f1a8799ab40dc3",
           intel: "e7353a537652aa1283773bbf8657342edc2d8895465759802f1e0f2c5367c0d0"
    "ks"
  end
  language "lb" do
    sha256 arm:   "de452b47e0e63ee4d025a7ddcc64e3e72534b9af8a4c5de78977fcd2aad8314d",
           intel: "ae14673ff0dbf4c50f598c777060467ca8785d04fc89672fbfc38fa937f4d35e"
    "lb"
  end
  language "lo" do
    sha256 arm:   "ae5ef8e56b2c5d1559c1d1afc011637979afa8ec97af2ef7334c98830d08cad8",
           intel: "8b6b4b02ddfff9f8d260f71323f47d97788083bcb79602f9a56ce6dbf8bb816e"
    "lo"
  end
  language "lt" do
    sha256 arm:   "ef1ec04f0a80d32be99d399b6bcc6ab28bec7aaa92ecaa81987c63e5d1394a00",
           intel: "739f444fc09ccade584f5d549f8356ca0c5e92c72b6bfa0a9355218af0672df2"
    "lt"
  end
  language "lv" do
    sha256 arm:   "58020a52b19f0febd705f2972a0f3b22a299c0fccd2ace2e3f4c3e26802ec512",
           intel: "b164615e6f492b0083a32e61d647567388a9b7595cd91818dd25bf8e561b0faa"
    "lv"
  end
  language "mk" do
    sha256 arm:   "726dc2d6acbbe5d5e8ccb4922a8990588f863f44c9e3e983c6b43d5213094fbd",
           intel: "a4662850c1437331ecff151b1f79ce8dcb506aeb8d62ccaf2e9e9d1114d52595"
    "mk"
  end
  language "ml" do
    sha256 arm:   "d3c9548fb95abb2ced79453e20e781f53637bfdfe60ad31bc5d0f576500e6a55",
           intel: "25c7731551f2ad90eb9200a6b82765e7dd7451b898fd67b26771bba52f8705d9"
    "ml"
  end
  language "mn" do
    sha256 arm:   "8e91efd435b4091b9fe5e6d5d3730d80519de33e2a39474be18652b992edeb28",
           intel: "7f3ad8360e555d32a9d4a02d6d25b62b2ce132aa25da6250099a88b55067f4d3"
    "mn"
  end
  language "mr" do
    sha256 arm:   "30b67f3578d93b88692938458a3b1f02903b453301bdf176d1c2d517394468f5",
           intel: "d2d334833e4358d8003f1636562dbaa00a2e15ebde9dc069d28d5060d750d58f"
    "mr"
  end
  language "my" do
    sha256 arm:   "ec8b2f179876abb364858fd090e1f33411e4c5e0db9e1a10121054689f995bbd",
           intel: "7befd64ac954f6060e0657f96548795bb00ac4fea75cd3853796948f2acb93bb"
    "my"
  end
  language "nb" do
    sha256 arm:   "e4bde57de1809ab6b76fe4d0d4d051d0ada526aaf78a1a2d7e9fe2957e149fb1",
           intel: "9c629492033c5ad64317b00a28d402a49e09db32c5caf04d7851fcfd7f3f8719"
    "nb"
  end
  language "ne" do
    sha256 arm:   "93e9dfbb8182eb7338ef750e91f44f72d8cb29c86161b6ce9d2a60810f42a446",
           intel: "44273b7eacedc13dae298f28effa6ae9106ef62e14d4d16f052c66bc5ea793f3"
    "ne"
  end
  language "nl" do
    sha256 arm:   "ff39992a461d885bbbf8a4ad6ec335e4da8e945a47051d4b1a7f7c9a09fc6ad5",
           intel: "62a13b404e9caa2724701c50448f63eb5ed55f2f8b9a88b430f16e3ab19d17b2"
    "nl"
  end
  language "nn" do
    sha256 arm:   "41d9da90f994a36a23d9e64f73f818a629dd687e4c67c602421d146961c79f47",
           intel: "bd138b87768069ec3a2d8d62e84bbc06f158960218e51af51b6fa2b8be5d79dd"
    "nn"
  end
  language "nr" do
    sha256 arm:   "77a34d94fd1c5f66c6868f8b3f8dcad989d54a22162f66c241c4b509ba77ce8a",
           intel: "b75ea467268cf008f01caf2b4dfcfcd5fa1e811560e5cdbbfcf4e4fae419b4f4"
    "nr"
  end
  language "oc" do
    sha256 arm:   "4c383cef4e198cd3b25f6d653aff2b1fe88be70f3d4fe8b5bb5774d315524955",
           intel: "5ef7ba6b6836ba011353c811e5a5c8803e7b46bf32e544afdac42f2c7c59a6da"
    "oc"
  end
  language "om" do
    sha256 arm:   "f2d3946ec30861a900eb891bd225ba61e6bd61073cbb1f74fdba50d545905f81",
           intel: "9d2db6f3e0c7347c6d965e491e503f41aab0f791221467937af818caa6ebd8b7"
    "om"
  end
  language "or" do
    sha256 arm:   "098366ffc02a734197e0a0c2da5797d64bb9ae3938380d94e5e13b5033696926",
           intel: "806ba7d789bb97aa3fd10aaae01d5216e16fcbe1e6ce47cf9160a45eee9ad643"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "2770a43f3218a7166f3299a7c3fa7d9b4b144b5586b0eb258e9913ae0be3fc50",
           intel: "02615dda7c604886576f6c519bccf1fac7abe77ce30fe201dc4c6b376a517050"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "cc1395422324bacca0ce457938136a1729422255580b221b62a732e710e1b5a3",
           intel: "b4486be078397d5654f9b9076a9cd1447504fd6debd4942683dc7f97f683f1cf"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "5c47198adef5273b8ce67ad6f44311647e2fbddf63656b9a4b694403be093b6d",
           intel: "4b9827c31cbb0d87783247b8eaedfb2d3297ef83a2f48169bd3d20a8c6863a02"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "0a267243bffb320264802d2d356367c7698b51a843ca4d867e11b84d3e6e6304",
           intel: "7be270cf3ae23d52da36202927bd8be5a671b8e79a1bb2891c7483677f92479a"
    "pt"
  end
  language "ro" do
    sha256 arm:   "1ae7218063413828095b42d2b5727d2f8109c66a3091335c8160d705985b4dba",
           intel: "b3df37da413f97db61369126cccff6de01552f88a807455df9f43e4354ea2723"
    "ro"
  end
  language "ru" do
    sha256 arm:   "c609d3fd710ba7a5b6081534c7aa5d66f7d9c5499a149ef5ae4c3f9fbb213e9a",
           intel: "bf65a5dea1782db286be9d76d20a9612456c66872d37da002a4a579126f68611"
    "ru"
  end
  language "rw" do
    sha256 arm:   "83cd6fe24e03687430df3fcbafcac45d09ffb0d7719b55278f99e6fe722fc871",
           intel: "787e3edefe19715319bc9aac67ee0d9998a66fbb78de74284d4e4789f2ee5574"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "eda6e216cb223be27128159e3cab8c762bc25fa5d139c83fc56c24c4d9061be0",
           intel: "b262105dec180013d3c5422e80a842f342951f9b111b6228605303bddfdab887"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "ac3c77a024bc863aa1ecd7a92544f74258d615819eb743945938df5ec59eea5e",
           intel: "ce5c96139cb1b336220e80399ff8b181b8a585283c395007b32129ad3e03f4de"
    "sd"
  end
  language "si" do
    sha256 arm:   "abce3ae1fd6ce172ca561c7bf013b4d60ff0a6d3238532df56d89e13b81638d4",
           intel: "45c96a0134b4154307e08e15d745694b4febe2b99f33f39d8e6e3e2178016367"
    "si"
  end
  language "sk" do
    sha256 arm:   "56b4042725a7a62b08b7d86dc432fdbf8022ab9b20842cd025e98a5ad50e1026",
           intel: "61238b221437546adc5a1a767e3df5d286569b30ba96933f72216b8a2e72e6e7"
    "sk"
  end
  language "sl" do
    sha256 arm:   "6eccc0f9e85bf5fb0ae5425a1317f140b98009b16b82ba13f0b91df5a97cd301",
           intel: "7c5408ca9f0ff0126afbb6cf38cdca59d2385714b9ff6c800a0750a90b8ceb37"
    "sl"
  end
  language "sq" do
    sha256 arm:   "682d8d6388da8662542370207ed5b5c86aee35c7039292eac87938b2c42d7a7a",
           intel: "e71910a5d71bdc811709bbb65f343222bd6f3390d69fadc30c5c4f5ed878592c"
    "sq"
  end
  language "sr" do
    sha256 arm:   "45fa8d9947e7f0e547dde788235a8d6d83e1e55d118f3ac77df0a3e7edbf74e6",
           intel: "9f3b017c26ab1358be74d317eb431dbf4dcff99889ff58ce370badfd5d40001d"
    "sr"
  end
  language "ss" do
    sha256 arm:   "25200f6bb7f089ac4eb508e59dea16f10ebfb6009fc31f72df759b04de650c0b",
           intel: "5d7021aa164439c1d7264dfaf567272b9d6010ecdfed87ba211d976ff1dcced1"
    "ss"
  end
  language "st" do
    sha256 arm:   "f8651ee3404d57156214ebe424b32240792964fbb885e284456fed3157cdf95f",
           intel: "dc93f413f5a189bb7ea19cf85afa8d251db5ff9b8d6cfd49291ae0bc61cb2e14"
    "st"
  end
  language "sv" do
    sha256 arm:   "6d335aa5476bcafeb1d5db1fdc25e1bbbec14f4e4d172da1938e8fa53989b48b",
           intel: "e35b64ef1c5d79faeacda6130c9f3e8a9072ee91611669dd4a84a9a0e0cdaf3a"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "42c085f2928b3cfa407718512ba742bc8fb4fcdc62f9f20dbe7e80486f4ba975",
           intel: "aa8eada6d30de94511d40a0ed8cc01e6d4f62f2d19ce8b0e3bde02aee85d1c66"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "bae3916da6e2bdf7e43b042629946a80b7040b7c2755f70cb3c283df39f3eb29",
           intel: "4abfb95336ebabefa18d47e41dff095486f1fc9edf72d4ce45c555e4fe9d3f3f"
    "ta"
  end
  language "te" do
    sha256 arm:   "eae7ca28e80337233a6c74fa8d39d8e86831c462e5071a1c5b8bcf6d0fcc224b",
           intel: "59cc0d7e5f3d17f9faf705d658a75bc56c3c1ff4a0ab0f5ef8e47c395f97ef8c"
    "te"
  end
  language "tg" do
    sha256 arm:   "5a56ea4693e507642c82881ac085f416c9ddab8725c85fcaaa8c2e7dc71956bc",
           intel: "ee4fe8bf4528b8ecd17efe56606d3f08fe671965ebae7c025572ffbb78a14f89"
    "tg"
  end
  language "th" do
    sha256 arm:   "fb8a79e7d8878a5e52dee868b5f747fe6729608fb5af0207d72ea84b6ea6ac42",
           intel: "0bf8785d57dcfed4b5c478cfec4bfcc671c58c11311605e044c28d0d6e2343e3"
    "th"
  end
  language "tn" do
    sha256 arm:   "6b9fc46d13c887be8770650013161d7017db2dae331d98f780bae222e93f59cf",
           intel: "5d31dd43ca0fad94b4dfcf3c0b796e014b4d800d25ea902afd8d61a468168633"
    "tn"
  end
  language "tr" do
    sha256 arm:   "5219436f84ead3c3b52c3f0094a677bcac797b089e66f3f736406a59bea30482",
           intel: "6ba419c27014eaa36f6c5876d7e10dddaf3722a930d6cb5c41c3d709156cf47e"
    "tr"
  end
  language "ts" do
    sha256 arm:   "6642167196c0ffdf07401528f7c21ffaaf0fb350c3ce4cabd07b743e87d6aa9b",
           intel: "8cd04eee6f4ed7f7862125b0fc10d710597201b9bfb822c84e207439df97de18"
    "ts"
  end
  language "tt" do
    sha256 arm:   "6b6f3ec0bcf9247c6fef9445a79c3a929adb1a129531b0d71c70a04d55543fbe",
           intel: "82a305d44c3d89037e098f5a492df0c7fc1ecd77d0ad079c027437b324b0ee08"
    "tt"
  end
  language "ug" do
    sha256 arm:   "20f3fc9ec275a6efa48d575b5f92779ea59632231584396ba4e4cf966fac6d87",
           intel: "4941c29ee039d4f35405a36661b67d9b9104a88fe3e3e6285dc04f61776238fd"
    "ug"
  end
  language "uk" do
    sha256 arm:   "3997dce9ebe7ccb31e3effa85df92c1484ca414026e8db4189603b33e60ed97a",
           intel: "5a546c4310401ae7602883e04e49361f3950740d0e3c8bbd2b1ab30a288b3417"
    "uk"
  end
  language "uz" do
    sha256 arm:   "122a2eb4e15cf8e0562662943bf2ae50b821193f2574256eb23a1a555dfd4c84",
           intel: "5b69ab944e3f9f388e1107a062b826914f04cc91c1bdd0213912963f259f585a"
    "uz"
  end
  language "ve" do
    sha256 arm:   "d67443b0d2a907181bc838b8428944b2c76bfaf7f7145495ee6fa834fa8ac8ef",
           intel: "79f51c5775b8fa1062cab8ce298b0993d36efda95c930b504a0542403e35c18b"
    "ve"
  end
  language "vi" do
    sha256 arm:   "490beb974b27351931ef8cb774034f0f83aebe3b958bbe1a45ed5184c6bf3d46",
           intel: "dbabc25fc4849869ce874a2f1fb984c601e5cfbc2afed5818596d1cc63491d51"
    "vi"
  end
  language "xh" do
    sha256 arm:   "7fc0a561e3d8bac1c121a2000d782434b3ea669a3cb539326bb4432a3fd5203f",
           intel: "ea4908fd6fe19034530019aa712b9622448f4126f9631814e8fed79cc054ec60"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "00605cff78ccccee6f6c777ab91f29d65f101fde766d591a0c384cae08cdbacc",
           intel: "d3bfc0a377c2f03f393f826a924486790115fc8f010bf3082299e691cfaa689f"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "4c6d45c9edc419b3c451d4fc2c59657052c92b485774e3c5ca6b01d12a5ac580",
           intel: "e034d66582e090e6017a4eeb3dfbc43cc8591fc8ec6ecad66d396b95ec4621bd"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "532335721b4d5185108a5e83288371e8de4cc4dc1cb4f1fc390a1e04be25d11b",
           intel: "63ad143b8cccc898f7c4f184238e519ebe8885e55d171d2e16a628aafa566e24"
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
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
