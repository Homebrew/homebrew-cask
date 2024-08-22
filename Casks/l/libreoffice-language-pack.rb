cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.8.0"

  on_arm do
    language "af" do
      sha256 "752502246056e673c8f4fe9c21c8c15fba4b543dfaeb8e90dc0c781063a3392a"
      "af"
    end
    language "am" do
      sha256 "cdf14640907b8c3864247179a840990c21e3e091c13a64b2e7ab8bfc8292f169"
      "am"
    end
    language "ar" do
      sha256 "eec83d69fc20c6acbc12c6c73d4cbdd0abbcf068b4c4a7f2cc3c29fee04ff4e3"
      "ar"
    end
    language "as" do
      sha256 "967c176c7c18c510daf02dd21d614e98167ea2fbcb0d8f2aee86400dff3d3b46"
      "as"
    end
    language "be" do
      sha256 "c66ef820645f80eb6554078184a7b59eab2d2a66112e0e625a1bfa338e0f9fc4"
      "be"
    end
    language "bg" do
      sha256 "0a345f196bd7a0b8686005f0095d677aed87a7e32498e34355d8f561dfceaff8"
      "bg"
    end
    language "bn-IN" do
      sha256 "bae09ae469c671d0afe62b614d3b3257444211e2963646eaa636d29e2fe91b2d"
      "bn-IN"
    end
    language "bn" do
      sha256 "e7d7d8b1b8fb54fabcda541b14cbbbdc6721cff53a9681695d31af0f55e4f76f"
      "bn"
    end
    language "bo" do
      sha256 "4c382b97bc40b57a327bd616c18b976bd7dd6e6b6ac9090dd3a349be65130eb5"
      "bo"
    end
    language "br" do
      sha256 "4e67ac35259baf7eb4ee8d9c03f61c676e3335ca43acb38acb9682c9b7c66e7e"
      "br"
    end
    language "bs" do
      sha256 "7804d8a2753cf7609d40ea284de1e86dc6744e8882a021d47229948c54e33032"
      "bs"
    end
    language "ca" do
      sha256 "490f0f8d003b1694c5208c7e9843c17dd5009d4c200e975eed0d7b5ae6046056"
      "ca"
    end
    language "cs" do
      sha256 "ae656204dd3ad602117626a7f320a5ed0ad2114a0b8ba37c59050e362651bb48"
      "cs"
    end
    language "cy" do
      sha256 "eb0260b199eebe798841bd056c436cdb83929bc9a9e28f97b67011dd6657d525"
      "cy"
    end
    language "da" do
      sha256 "adc33debc0e65f6122da602440afb0e9da9952d4e765c09eff6d66f905600ed4"
      "da"
    end
    language "de" do
      sha256 "0fb2d1d4ccd572d95505a3c5710cf6579c92c50a64984b9caf01bf6627626f3e"
      "de"
    end
    language "dz" do
      sha256 "abefa26fb9e40de0da7845b8ee411e76efbe2266410fc23234d1b3b8d4e1f405"
      "dz"
    end
    language "el" do
      sha256 "dd11ae2301af8c1515c485bf9d7cd4784aefce22b89ec8855ad0ff892aca79da"
      "el"
    end
    language "en-GB", default: true do
      sha256 "0beb68e42fcb8e99e79251c18758fae38d0c1a34d8dc10e68e059c4af0b712aa"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "f6320787b358dfc5ebb6a283b0eefb6e93f29d0a69d92c78593021870592c00f"
      "en-ZA"
    end
    language "eo" do
      sha256 "bce6a307ebd3f7fa9436df832739e59da7d4862c08598fd3361a02bde868ca94"
      "eo"
    end
    language "es" do
      sha256 "c207c2e531ac953c0862c026543f9d5ba3f92848045e0c7669f422874706ecda"
      "es"
    end
    language "et" do
      sha256 "b4df1d82811bf4b774da60d97be9941a5eada421cfa533e1c2f6bbc1e6e0da8c"
      "et"
    end
    language "eu" do
      sha256 "7b173372bbc48913542df1b80b583949e5c54dbff59f32cb156c0316cb6e9234"
      "eu"
    end
    language "fa" do
      sha256 "685fbee05aef20cd268bcfc65b280941ecaf6d746922366c0016f45a8b099198"
      "fa"
    end
    language "fi" do
      sha256 "89dd230365e90e3a599aeb51659190220837b6a55292bb4d12bcf08f39e31871"
      "fi"
    end
    language "fr" do
      sha256 "5f74e63b8b8443c833884fa959becf13d0adced0fc5ce83e85c2b7b88239eddc"
      "fr"
    end
    language "fy" do
      sha256 "5fdfa32d40a84139c4d5b18687bc73aac40d9af548859624af05c740944e6e81"
      "fy"
    end
    language "ga" do
      sha256 "0ffea0dbe044c929006d3baed66d962517980700c2d9657ff5e9c82d69a7e6e9"
      "ga"
    end
    language "gd" do
      sha256 "0da2aa08e7c0354e2db6386100176cc88c1d199d1babb9c96369bcce1945cf61"
      "gd"
    end
    language "gl" do
      sha256 "7221004698b55b16074d426895b9d2e4379480645c9c06a4a1ae324224337bdb"
      "gl"
    end
    language "gu" do
      sha256 "e9e4376729c051f09d18b10808c7925dd8241084834a685ca126f5fa228c4f84"
      "gu"
    end
    language "he" do
      sha256 "b9d46e94e57dbf98a3c7a1a9c5e5d52c9a4e7e49e69b89f131d51796624f5127"
      "he"
    end
    language "hi" do
      sha256 "4cce8f241d4285c125387f81485ede48a4011b2c2af093ea7ba9adb3700b82f2"
      "hi"
    end
    language "hr" do
      sha256 "cf8882a4c2c3fa5f9a9c087d6269e0a65ad6bf3222479712d8e31d44deda78af"
      "hr"
    end
    language "hu" do
      sha256 "e9194010c531cce2dbbaa35712adb9fdb34bf5651db5e0bde81e8832fb3ae108"
      "hu"
    end
    language "id" do
      sha256 "3b4910dd67d5eedc338466aa068a66bd729aadd3e7ae87ef5e4040e17e4afa4f"
      "id"
    end
    language "is" do
      sha256 "201a73a7987a1b759ffcc2f231a1e0ed49a55f9e67a19465425e803351262034"
      "is"
    end
    language "it" do
      sha256 "01952edf3221ba996d752b91f2b5e3148d59a69d8914c3e4636cc3df69bbbe37"
      "it"
    end
    language "ja" do
      sha256 "cd90782fd5e5ab9f7e151bf3b42c6c5ffa00e403d54e6ca27cdbd3471b833aa0"
      "ja"
    end
    language "ka" do
      sha256 "efcfabfad2f426aa805374a0f9c2e1bf404b1818877fc9df1f365af650f8c51f"
      "ka"
    end
    language "kk" do
      sha256 "be7ca93641e6fed5c21610bd73073ee12b98ea8bfff3a301292fa29fc5d837d8"
      "kk"
    end
    language "km" do
      sha256 "816d8767136d3b2fa376a07ddda16e6e4ac833180d57a1e3e0b75fe7782e9c49"
      "km"
    end
    language "kn" do
      sha256 "3f87cac3969667454bdad297a60875358b55ba4b5888008ba6a5f0ab19e17728"
      "kn"
    end
    language "ko" do
      sha256 "d048da173774a75604611aaa753d87054cf340e962a81ffc876b37395321c737"
      "ko"
    end
    language "ks" do
      sha256 "ba870a385669a0a09d4d189a8b44ea715ba6fd60c8a7c20209b17dc5c2380f9f"
      "ks"
    end
    language "lb" do
      sha256 "aeea53553b5ac78ecb0b35d9e604b2009afcde57951495395d1423ac4fda0d98"
      "lb"
    end
    language "lo" do
      sha256 "cd7d6b91ea8d56a8612305d6fbba6afcfb3e2e729be0c62998e5045eebd22f83"
      "lo"
    end
    language "lt" do
      sha256 "464d515477e3374707ffd082a45ecc3126bac5eba6e6abc007f63a9081369f72"
      "lt"
    end
    language "lv" do
      sha256 "51ca91fad02db6e6ffd0aa44d490152ee8322b427313a935bc50a7901f2e1bf3"
      "lv"
    end
    language "mk" do
      sha256 "d939e7fd205d2c0241605982b87b064748af754860deb82fd781478e8bb24a8d"
      "mk"
    end
    language "ml" do
      sha256 "ebb18a195d063f31f39bca368b352ebb279e6ba6a3f9a9072352ba18884a2aec"
      "ml"
    end
    language "mn" do
      sha256 "dbc04d3b14a7def9849d1ff84dc08669bcbe930bf3078bc12f277901cc539b7d"
      "mn"
    end
    language "mr" do
      sha256 "d2898e1d6131b2722609d901aff0616cf94f3260ca3a21a7160c2f3979c9fb9d"
      "mr"
    end
    language "my" do
      sha256 "03ec6d395bffd44189ac50e6d784d5af913897b658177d21c8184361a77108e6"
      "my"
    end
    language "nb" do
      sha256 "35e4a5f1f87ad879af517e3c5fae276a3f5c2774ab847e50b8070fcc67385900"
      "nb"
    end
    language "ne" do
      sha256 "e40144986d1be4228f48670a523963bfc7c9f7557f95cc37a122b6e7f10264c8"
      "ne"
    end
    language "nl" do
      sha256 "7669222899a9588a4bed6a391ad863954684f4a09a03ad4e054c43e71a06ea11"
      "nl"
    end
    language "nn" do
      sha256 "65d5658cb617ac34aad9abe1fd15492c231c2d06b70a4b66cf12fa18e902ad17"
      "nn"
    end
    language "nr" do
      sha256 "631aae41f49e5bab2492bdf508dd1d0cd237111a75d2da7cc4a0ffba2ae0b280"
      "nr"
    end
    language "oc" do
      sha256 "1f073c799c64af7d6a52e754f32450aa90ef033d039dc1556e362b752ce435b3"
      "oc"
    end
    language "om" do
      sha256 "292f9785b801a5ce5b4de75171bad465ad2680558de0bd0afef68af943c177be"
      "om"
    end
    language "or" do
      sha256 "5beb1d2e03469f55d0b5247cb046edb429277bccc163471647ef9177f52cf60d"
      "or"
    end
    language "pa-IN" do
      sha256 "c2c9fd9802956e336e5949ff472e70e35c15abe50ba6f9ea17f958e971cec5d8"
      "pa-IN"
    end
    language "pl" do
      sha256 "0f9a402521ba9b0257fe8b0e56c2d508f359795cb64f3be8c8393e3f0f79859e"
      "pl"
    end
    language "pt-BR" do
      sha256 "67a5f271a525dc3496c6b92650c03256abb9a078241f7c0c001752c8daa21c33"
      "pt-BR"
    end
    language "pt" do
      sha256 "9295912c5f65ca0674280a23124e5a5f02cb9ca32633ae1db58d5e39146657ae"
      "pt"
    end
    language "ro" do
      sha256 "548a95f37d1f84412c4404db6c048f5583e177ae5e7becf02a91e51249a3a069"
      "ro"
    end
    language "ru" do
      sha256 "1147499af0fe7be90fd27452a59abec85fab4f7aa2d80b9f131eb71704632e55"
      "ru"
    end
    language "rw" do
      sha256 "f86f9f297374449c666508e176f784df8fd6194ba7273b0a2bacad103b96ea5b"
      "rw"
    end
    language "sa-IN" do
      sha256 "db1be130dce377aa83e61b644aa81e4ffc398d207907a24e8b722e16c8d1901b"
      "sa-IN"
    end
    language "sd" do
      sha256 "df9dd410a0831f980fbd51b8a48c9cea8d9c5eea85ec6830017d12bbb87c2691"
      "sd"
    end
    language "si" do
      sha256 "e7c0df0cec7c316c2bc5fbf6466ea07aa9cd51704a06e2d77f76b82132ebe932"
      "si"
    end
    language "sk" do
      sha256 "76d3a1c906dcbd753cd594d8c63cd06d1f337e522e6253f7ac056b42a65757cd"
      "sk"
    end
    language "sl" do
      sha256 "4a5837d3e9184d808430e0f56756bd5e2278153a6bd5f3e244de0228cb746731"
      "sl"
    end
    language "sq" do
      sha256 "02465cc1077091129bfa101724f0605ce51da47bfc5d06576c41af2f87747b08"
      "sq"
    end
    language "sr" do
      sha256 "06f8536221476ca503addfc25f0b0a2bd5397ae4d95ff68566f6a1b66392eb9e"
      "sr"
    end
    language "ss" do
      sha256 "4a43e81941902de153b375766f68896cb7e797cf7cb2370c2c466ee1c29d4434"
      "ss"
    end
    language "st" do
      sha256 "a3998ff7918139648060246296007c0800aa10c47d039c6688f49e24fb7ab64b"
      "st"
    end
    language "sv" do
      sha256 "52cd7622d8200786b9343deedc535dfbc11fca94a2d3811f7f4bc6469ca3ae15"
      "sv"
    end
    language "sw-TZ" do
      sha256 "097b1432b73339b46c2dd23cdb882ed3a119f46281fc4260ed766d0030dc866a"
      "sw-TZ"
    end
    language "ta" do
      sha256 "6a413b762c0ea934d12066738287d2170704ea28abc6e18538e46d313a4b812d"
      "ta"
    end
    language "te" do
      sha256 "955eeea875dd7bc091fe2b332ad790f704131bc16699055b6e6e1c8343a845f6"
      "te"
    end
    language "tg" do
      sha256 "c7e37d883b55996a46f91affeec497c618bfd809dfec1a970d1f1b4861236ff1"
      "tg"
    end
    language "th" do
      sha256 "0a82001a60e13d78240f995ff25c965ace0923725eaade1918a0d2cc099b3014"
      "th"
    end
    language "tn" do
      sha256 "478ee95568e762cc1f3cfe017d5a9fb894401990d324d39a75c98b85668a27fa"
      "tn"
    end
    language "tr" do
      sha256 "79fc9616e2f9c68225d6cf31efc1e232683d3f8ae9312860de6dd9d5afd70153"
      "tr"
    end
    language "ts" do
      sha256 "6dcd75cfae9226c29678c1f26a4a1f147b2df5ccb2069a51529e77c70eae3085"
      "ts"
    end
    language "tt" do
      sha256 "80689582ca43006f79dc552b2976945bf8f5213b0c5383fca64bbcdfa6a4c593"
      "tt"
    end
    language "ug" do
      sha256 "b1dd50c5549def051a32c12c46a189d59a1c41cdfd2923f5cb27c0086f0c8846"
      "ug"
    end
    language "uk" do
      sha256 "5a1bfe1b7a7d16663c2d0be7fd0a891fcf70edfc8008622051868d167450ccd9"
      "uk"
    end
    language "uz" do
      sha256 "c28af27937b46e993bf3e030223c01cbc5dfb66f294eb4506edaad7259f33d9c"
      "uz"
    end
    language "ve" do
      sha256 "309e0665f1b928335208396e87e013e80ccaf2561d9836eeb61b60fbb5bc9ba5"
      "ve"
    end
    language "vi" do
      sha256 "bef32234a05c30e6bff9cf606e01054f34863d4d8aa794e473d667e1efef620e"
      "vi"
    end
    language "xh" do
      sha256 "a3e4d1059e0f4185b2aaa345f701ae5c67da62c21e6cb8e31c35001ed849dfea"
      "xh"
    end
    language "zh-CN" do
      sha256 "abcac25236add05d9eca6d454b40c1394265fa6a2cd6c4ea2c56d36e61c861ca"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "6102d2916ec7aa8e1ff73cd303cfc19cb837a9c12af073a16e27a8a4d41e09c1"
      "zh-TW"
    end
    language "zu" do
      sha256 "7210902cc17e460058841d58f46a219452f6b52cc6e13afa648b7e7bd2798f68"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "903907a62aaee3895e3560ffb43610c89ecccb6eaf06bebcf100eccdd9681b81"
      "af"
    end
    language "am" do
      sha256 "58fa044b78849534c8bae2a58afd141cbcb10643fd8824a31b43c53d34124391"
      "am"
    end
    language "ar" do
      sha256 "0404a84dd4169cb50a0fed806c41889a60cb33f712b397483cd253a1d453e33a"
      "ar"
    end
    language "as" do
      sha256 "d374d8f933e60ff214da817ba3da4f8f3b1d377af6b013b2d51fefc8f6fb35a3"
      "as"
    end
    language "be" do
      sha256 "f1fab6078cc5fb29b12b68f31eae1069cf823d9f23a94459bda0b12c2d4989b0"
      "be"
    end
    language "bg" do
      sha256 "d235e3ec1376af816974ec6cfeef64d96521008cebc9f08d5f0fc64ffa568db0"
      "bg"
    end
    language "bn-IN" do
      sha256 "d642abe9f5926d660173b3b3139d9bea0c6c3461513434337c6311019f44d9b1"
      "bn-IN"
    end
    language "bn" do
      sha256 "f37f3d007652f46ff7c92715342cd144bc5083ab2a8c2e8320a1e0aa145b3c1d"
      "bn"
    end
    language "bo" do
      sha256 "fdf8c3790d719b14ac8c32344e0fe80f3c3121b0f7b23bc764db33a76f51e39d"
      "bo"
    end
    language "br" do
      sha256 "52a6d157f1cc4fe1bd4aa7d43e76838c1bd4c3c9275a0c06485032fca91017e4"
      "br"
    end
    language "bs" do
      sha256 "100639755331a2575a65413fa5a13449c58dc4d6168ee19dd940a54b054a48f3"
      "bs"
    end
    language "ca" do
      sha256 "36c64ae647b35b9573c959c02d5d1c36fedf2389b908a8b9b71b272570cf904a"
      "ca"
    end
    language "cs" do
      sha256 "7eff03a1c4104041524ea545ccb82c91c0edee0711b09e8a48116290fd6af279"
      "cs"
    end
    language "cy" do
      sha256 "87d5c584c87fe9b483e0210e3587a1d97d1aaf42c89f45e4d9d7e4376d4a5843"
      "cy"
    end
    language "da" do
      sha256 "925492faef9743d8efed53afb463f41be1704362899d0b3dd60eabaefbfc9710"
      "da"
    end
    language "de" do
      sha256 "a6cd46294c931b381bf3705fd59bde0fdb2fd162d0a5da2f2c29292df19fa8de"
      "de"
    end
    language "dz" do
      sha256 "158386984f74e1410d2d828ac7aabe618265c39cb2a827f58c32a7a6584c3749"
      "dz"
    end
    language "el" do
      sha256 "01cd6d83b48cbfe2c8378edbfcd0067e84100e14b7bc837cc26d29a8a80c638e"
      "el"
    end
    language "en-GB", default: true do
      sha256 "f267648f72ae27f8c14656293d36a896f09b2202d7c68f73186ea4ed555f6e3a"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "a378144d12aa86722e43b2e8ac2d172c9d5a4dcb0ba96b68d5feb69056f0a05d"
      "en-ZA"
    end
    language "eo" do
      sha256 "c7467589af1d8a69ef16271ad7a11a5a5a9a59abc03c8bf289b06c50eb5fd6c5"
      "eo"
    end
    language "es" do
      sha256 "10f66c0cb017ff8771685610976c91dceb49ae21d1c1123e29f0504331653d43"
      "es"
    end
    language "et" do
      sha256 "34f0e088adbf143415830498e59d40afdb2f53975b99f3b0f36c6b3ba0cad9df"
      "et"
    end
    language "eu" do
      sha256 "b62555dce2149377e05ac236b3eb3f003d1387149fc9a013ac968034e7a53ff3"
      "eu"
    end
    language "fa" do
      sha256 "abe0a285fc0901b1ddc455db67ddcdd229dbb98db2a8d96b59579ce6d92f42cf"
      "fa"
    end
    language "fi" do
      sha256 "501e501697ae15b8ae48963728cb3d80f071f89ee381b348e11303039496ee74"
      "fi"
    end
    language "fr" do
      sha256 "df1f72468f60af0a9e2c374cb1d06c67118e36d978a64245412d4898f4cb4122"
      "fr"
    end
    language "fy" do
      sha256 "5bcf1bb7a63aa72618e06a175ebec355726288979fd4c7b755715de2e94177dc"
      "fy"
    end
    language "ga" do
      sha256 "c8ef3d1dbd6caea65860764d5b600908c32e18e8061cb13c0723c8cb14ab8834"
      "ga"
    end
    language "gd" do
      sha256 "480877bf39c94a37c6a80d3fb3bcb6f82b38b7a406fb3d80727450678cea1c32"
      "gd"
    end
    language "gl" do
      sha256 "72842e60833d7eca1aa3135e0b7f437437635581fb554208ec6d6caa759f05cf"
      "gl"
    end
    language "gu" do
      sha256 "bef5898cf34b5c6eb6fb44586813da6a2f51256a22518c913a7c0b1aaead2f94"
      "gu"
    end
    language "he" do
      sha256 "6879758d411058c6c24b4f4a8fcd8c09c778d7682975025e8afb1e928fe63e24"
      "he"
    end
    language "hi" do
      sha256 "8d640edf7a48ed272fbc64ff2c2d5ea742c7edf967eddfc3304841f11db612b8"
      "hi"
    end
    language "hr" do
      sha256 "7225bf688aa04591ace5819c2f8d5ed34aa1815de0249693641571d62bbb9c48"
      "hr"
    end
    language "hu" do
      sha256 "56d0a6ce56cc38c14dc93c3c7dbde6dad4057f810c85ef3ed9fdabd9fa758da6"
      "hu"
    end
    language "id" do
      sha256 "636144cc3b75c771b84b55a45a165e92b76183423bb9510a4bf88d3d29e7611a"
      "id"
    end
    language "is" do
      sha256 "fc8738e5ea9f97bac3dbaaec29babf3e8c028fd269fc6ec3cac816ad47c4f6bd"
      "is"
    end
    language "it" do
      sha256 "c879b8d98f3b5a849d78ebcfc67c428842e96ca622f39f11bd0403102bf4b1a1"
      "it"
    end
    language "ja" do
      sha256 "0be36e1a5ddb59ba596245d633f6b6393fce4d390163bbfd0fb749143cf037b9"
      "ja"
    end
    language "ka" do
      sha256 "735c99e2114b00cb5ec0730a426a2a9d87994cc4bd88bf8eca6abacf591540ef"
      "ka"
    end
    language "kk" do
      sha256 "c18ce1184578653a1c9918ba970b81341000525152b69b48abd7f8b518735553"
      "kk"
    end
    language "km" do
      sha256 "24015021d54b15db16bb1191101cfdfde816002ffbbb5c511f1f40133bc4088e"
      "km"
    end
    language "kn" do
      sha256 "5c0848b5c6ec7ce750fb072bd1f29f38182f1ba61efc31f62c91e66d51ecae69"
      "kn"
    end
    language "ko" do
      sha256 "73f6a46a83bd4742ae0078780dac901040d7e0f598ade2eb9ebf72b082a37cca"
      "ko"
    end
    language "ks" do
      sha256 "11ed1e6f4a3ad675559ef339954f1fdcb635f2bbfd0c48b8fbfd5217513d8000"
      "ks"
    end
    language "lb" do
      sha256 "48033fa1bedfb44e40902010a67cd0e511bd897dcf10474c1fa4127213a327f3"
      "lb"
    end
    language "lo" do
      sha256 "c621032f18c95a691eb1f3bad7c91e390a0c1286560a2c9ad17fdd6d6ab583f2"
      "lo"
    end
    language "lt" do
      sha256 "60370bda375894341c5fb2a7290a56c6950b7da26194a938e8fb19ffcab66c3d"
      "lt"
    end
    language "lv" do
      sha256 "93ffbf6f07f033990568434a6348c3bec0cd9a8c0049129e332b089d6efc6cc0"
      "lv"
    end
    language "mk" do
      sha256 "a4bef0743dce50c6000f5b38607c5e9bd0552169b0345d1396a781ca72a750da"
      "mk"
    end
    language "ml" do
      sha256 "219f42c7b0083d98b97767c673f1c518964ffae824fb516397eae0782af3a408"
      "ml"
    end
    language "mn" do
      sha256 "8eb2cf7a26e069b903525aad9dd407cad3a5c24a0e6f82dddf64131e76df59e8"
      "mn"
    end
    language "mr" do
      sha256 "089900c0db2a7f1e92ac369599be1ea628f2e079b9cd5c752d7b41424f99ed25"
      "mr"
    end
    language "my" do
      sha256 "beda4cc0f5c6d0bedb43a0a41b8b7ab8beea071810fa6befd1c5c5cb5ed699e1"
      "my"
    end
    language "nb" do
      sha256 "57b2b774bbe203d3f6cdd36722e42508546a348280663fa9e45a124044fcac75"
      "nb"
    end
    language "ne" do
      sha256 "562faf30f47ad49925ef7e813cfaca215f9fab2ca64d86fc1965e95b2a27af79"
      "ne"
    end
    language "nl" do
      sha256 "781da64e9881aec629689effa1191cc844ee852525b56d465a9e623d9be692b7"
      "nl"
    end
    language "nn" do
      sha256 "def178b9f0699cb7a9936cdf36497bcb34e5559d81428b9946c0863c98b97625"
      "nn"
    end
    language "nr" do
      sha256 "b8471769a71ddb513a5d5c7b34670a1a044aad84908af59d596c6390be28443f"
      "nr"
    end
    language "oc" do
      sha256 "531f3384032805d5cc4cc85b73e93af80a89a6fa81cb620c4f8769ce06f6c003"
      "oc"
    end
    language "om" do
      sha256 "7847a75ae3903876a28798e5245a362080280afae87215cd6810cfa9b6b16c8a"
      "om"
    end
    language "or" do
      sha256 "83e2e9e30adffd5f0eca97759971b2d94e527309aff4238e55cc10141dcd4f6f"
      "or"
    end
    language "pa-IN" do
      sha256 "cf19c2330d32da76d80f1b5e4ab264deb4236a548d8417be4371e55e45cb27f9"
      "pa-IN"
    end
    language "pl" do
      sha256 "39e88e880872941cb35da103eef18bdd4b0beb38bc728ff6bd5b1fa3eb98b7b3"
      "pl"
    end
    language "pt-BR" do
      sha256 "b198e8c1cc2292ba808b192d7e83ddcf04433fb39b8501a045e5ac498f8d220e"
      "pt-BR"
    end
    language "pt" do
      sha256 "01a90d446d4ef215e9f16a1c3f168ab184eab3ba29889bde6eafdbfe4e495de4"
      "pt"
    end
    language "ro" do
      sha256 "38c8fa7b21cc205f57b32305b5e2c647cbb793c20db5f74fc792072054b96e4c"
      "ro"
    end
    language "ru" do
      sha256 "9692294c8685b1abf338c997a1f757bb2e21967ebadae8168a91279cc4e19d65"
      "ru"
    end
    language "rw" do
      sha256 "70d2dacc0c43809e742c3ca07cc7758ee6b95b5149105d6613daadaaae3364e7"
      "rw"
    end
    language "sa-IN" do
      sha256 "41cf27a19c595890d4373bc55f4f9bd58f436764d5e2531e6a528a37fa3ce42d"
      "sa-IN"
    end
    language "sd" do
      sha256 "4c8c55820ec56141a4b690e14466b6c337dc91919a00c5c6825aa2a5fca5e363"
      "sd"
    end
    language "si" do
      sha256 "784950bfc5e390e45802b7fa67243f948798f74c09f6bc35e976bae19cdfbd32"
      "si"
    end
    language "sk" do
      sha256 "ed996b09ee1e4eb602a3ce3a68bcef4a5600db5b68be878591afd10d31890e6b"
      "sk"
    end
    language "sl" do
      sha256 "1008e95bf754741b1efc2a40e4bb9b554d7619c8759853a3ac8cd8af95e79f08"
      "sl"
    end
    language "sq" do
      sha256 "f8dcf85a520724dbbc7d7764eaa83c0cbedffae8c480138cfdf8be6e88f5aad9"
      "sq"
    end
    language "sr" do
      sha256 "bec51453d8f7102bd2fee50a09687c3041ad1b1a19acd960c147b5fc04b04c7e"
      "sr"
    end
    language "ss" do
      sha256 "1517bb92ad6de82bd34e9ac4889c3b5d5379969a2b601f2328bd7ae5aa0f02c5"
      "ss"
    end
    language "st" do
      sha256 "67ee9ce039fc1b831fba2b4d94d219e8c9b0e232fa36b1661ccaf2e2a58cfbcf"
      "st"
    end
    language "sv" do
      sha256 "ac3fda5e387ff874869f74c5c9eb1b807cda85273ecf791ededc55cec88e0353"
      "sv"
    end
    language "sw-TZ" do
      sha256 "997994eed408a785308a9a086ad5857a11dec877426c6d23e97323ad205d9e58"
      "sw-TZ"
    end
    language "ta" do
      sha256 "748eb37b1f3a2d83894671586fd0b45cfa563e4aa8896b5ce9b3e7cec34c53d7"
      "ta"
    end
    language "te" do
      sha256 "11b559c8c1cf667f2d4e5dfc6eb157cce3dcc90bfe21823bf1d82a37ed34b4d0"
      "te"
    end
    language "tg" do
      sha256 "e246fb9b39e12df3e7d66be538a8a4dc286594c9fbfde8ddb504ef639d29e9ba"
      "tg"
    end
    language "th" do
      sha256 "c04077f28606433886856428fa1c3de235deb64f1bb51836153962a1e9d92037"
      "th"
    end
    language "tn" do
      sha256 "07ac9775ba0d09ae5797b312e18db31953f7c7ea4615b54ed8ece2a8ca7dd6f9"
      "tn"
    end
    language "tr" do
      sha256 "bfad2e35f48e319ccd93cd44d654e118054778baf7654b668bbd54673b4e13ef"
      "tr"
    end
    language "ts" do
      sha256 "8a4af1b215a58e4710ed3a685fb162189acf5b3ed90669427b97c7b4134018f2"
      "ts"
    end
    language "tt" do
      sha256 "0ec5b238d49b70eb6ecf766b31c66bf4c38e60107a84005d9e775c9e8f425ad2"
      "tt"
    end
    language "ug" do
      sha256 "3ddb59b972ffd05a4c25b3da58039fef1eab59ad32c5525d3fb692c4290184d4"
      "ug"
    end
    language "uk" do
      sha256 "f08570b71df040910aa18caa3a5a795041ebdb76b31d78cc54de24bd56b57d18"
      "uk"
    end
    language "uz" do
      sha256 "d41b27e07057557723663d7d26939099e3eea3e587f5cad7d2cc1a2060c5baa5"
      "uz"
    end
    language "ve" do
      sha256 "d622274bd1f396c0e9bf52460c2a156f2c542fdb0334f807746de2ac1b0c0cb3"
      "ve"
    end
    language "vi" do
      sha256 "979d963c7abb0627e179ec0127c746aba3c8e5940ebd729077b33b1e2e85b1da"
      "vi"
    end
    language "xh" do
      sha256 "7f94f135ac87b2875aa50371ec605b89ccee409c0df24dcceb1481abcbe74880"
      "xh"
    end
    language "zh-CN" do
      sha256 "c7b93fc78037cc5e02c6850830bfa30dc700124162ef8b6b769eec11a7b212a0"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "f1e2718d8b1b0978d36eedc3d402c13d43d8a1fbf0d031901781fbf049d18cb8"
      "zh-TW"
    end
    language "zu" do
      sha256 "e121820a043cf93aaf71a8f2e9d334f4142eabfeecdb92fde84188d79b414204"
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
