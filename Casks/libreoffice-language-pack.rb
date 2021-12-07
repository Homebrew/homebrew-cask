cask "libreoffice-language-pack" do
  arch = Hardware::CPU.intel? ? "x86-64" : "aarch64"
  folder = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "7.2.4"

  if Hardware::CPU.intel?
    language "af" do
      sha256 "d0b1ecefb3d465a9fb77cacdfb6b393d7257515ff47cf1f571fd0a0545eec3a5"
      "af"
    end
    language "am" do
      sha256 "a3b493695575517603e6d67a2712f6eb782922c92679c7d5c17ea7263dfce448"
      "am"
    end
    language "ar" do
      sha256 "11952bed34d04b34b37a85a3f4a161d60c6467482d402a62492cfb4fc957da63"
      "ar"
    end
    language "as" do
      sha256 "46677e73f600cb272f8578741149d848be52556e49c688d758a3ef0c44f1bd34"
      "as"
    end
    language "be" do
      sha256 "4e9c12055adc805dcc4f24c2711f2984e3d8b06f4420f2e033dd2b5a86cdff82"
      "be"
    end
    language "bg" do
      sha256 "0d1ffd4e63905bd9c461dbb009ac3f1c3d8e44cc627c90d77aaf89f9d3984ddd"
      "bg"
    end
    language "bn-IN" do
      sha256 "660df3909e562c6bd4410be35205d6c6fcd40e90d3243646ef2849a8506529ae"
      "bn-IN"
    end
    language "bn" do
      sha256 "aaf55302b4cdb71b69fa7cbef6773827a261308e2482ad768d993c6a009fd2dc"
      "bn"
    end
    language "bo" do
      sha256 "c4193791a38bb6044c62009a169928d37cd40dc66f39d10d1215f0d5500fdee1"
      "bo"
    end
    language "br" do
      sha256 "a3e5e051e5c078c5987c98fe8244fe03e22c675139bbac732ac400fbc442ee8a"
      "br"
    end
    language "bs" do
      sha256 "794e020627068fe320c29b196ff224d048c33c8ba49399da415467c2857899f6"
      "bs"
    end
    language "ca" do
      sha256 "3df4a2d32f20418c0108e3292601b448edcfa96b81b5e69120fb8191b7b2a0f3"
      "ca"
    end
    language "cs" do
      sha256 "f2a510e26777bfd9f26df541a12d52aed506758c29d46212fdbb3a48fcbd0ef4"
      "cs"
    end
    language "cy" do
      sha256 "59b5778dc5db5734801817f1260d8d317885766ffb6da6838b7a73962240cdfa"
      "cy"
    end
    language "da" do
      sha256 "25e5e9307e719cd88c629cbfbe0c987639896d3b8cf97b933e708a202050e0f3"
      "da"
    end
    language "de" do
      sha256 "b811ebbf0c178db4e4ccdde5b0dbe40bf8b936579d7be7a9bb86f5047797d91a"
      "de"
    end
    language "dz" do
      sha256 "cc3b8206be151b637fe6708d273f03364b5d0a077b7469f0cdb0cddf5e4cc25c"
      "dz"
    end
    language "el" do
      sha256 "8156d8321c7a99ab8151b4641f1e8e2a0f3c5417a89498207e9d411d137f8d6f"
      "el"
    end
    language "en-GB", default: true do
      sha256 "bd8470707d7b45c5d2229d936cffaf73ee095665f942c22a1daaf17932f776b2"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "7e81d4989b34b8d16e6c1f3dfc34841077f36d1bcd57b00d67a4c31579169694"
      "en-ZA"
    end
    language "eo" do
      sha256 "095cc8ddc3c4b411ad87aadcbd95b534fbfa390759a32d1dc3f586d99df2a165"
      "eo"
    end
    language "es" do
      sha256 "85d5887e9cfc5c23f7ee1b5746d193021d9254c99cb30f9b85f71cdc94c4ff21"
      "es"
    end
    language "et" do
      sha256 "30fe1fdcc8c61e4d4059e3036a35331fa3013f0289eb0fc88bcc61f207955cff"
      "et"
    end
    language "eu" do
      sha256 "6f33f2ada1c2131857cc6995074dbaff3d0aeca41e311ba72619d72cc75a09b2"
      "eu"
    end
    language "fa" do
      sha256 "9c9572893936e53b10b8d65b928b5be00318533dfe93e62d94cbcb6e22bbc6bf"
      "fa"
    end
    language "fi" do
      sha256 "f12650e83fb9f27613b5beeed7c1e63e77ba20242fb1dc681a34b9fad3953703"
      "fi"
    end
    language "fr" do
      sha256 "a062c7908ecdd071863c127901a25959b95a1b942cafa265ac9614cf6a8e4a48"
      "fr"
    end
    language "fy" do
      sha256 "836ea70ff3c0925ef9d0ad142e1a7d3e0f29ac11c55f6175abd018d982bd233a"
      "fy"
    end
    language "ga" do
      sha256 "0f3bc966168c91a1db5d333bf116f968dbc6aba9b8550971bd323f6293f1bee7"
      "ga"
    end
    language "gd" do
      sha256 "928ec7b86509d99babaf7a4e0e3bbf628382fb155e3070d09571d841e8ae36da"
      "gd"
    end
    language "gl" do
      sha256 "070735baaa008bdac629f832d67755418518f58741cd30f223ef6632198713e9"
      "gl"
    end
    language "gu" do
      sha256 "e8d0c63c3c873da73f5fe1a6268d3344b3548e1836910aeaa7ca784556e71fe8"
      "gu"
    end
    language "he" do
      sha256 "c346cee1249624a166f7e524d524719aaf574ffc6a550deeb922231ba71d19e2"
      "he"
    end
    language "hi" do
      sha256 "2b9937fa0d8ad0c4d17d04d0fa467fe1b7a34eed7c07653f712c43556ec42359"
      "hi"
    end
    language "hr" do
      sha256 "8237b0142bf4883a5d37890d83e89a260f316d2c771c68586f3723562d5938e7"
      "hr"
    end
    language "hu" do
      sha256 "34097b00c40dff8eb6bad507ed76052d1388a8eac2f25685378eb676d6f9a1dd"
      "hu"
    end
    language "id" do
      sha256 "1e16a7f14d2af3e66039f7912f7665cfe3355721af86402434f6fb2271cd7d56"
      "id"
    end
    language "is" do
      sha256 "18cc5abf10ba2fe2b4515311242cfecaf4b9a7c64e9cd5a9aa0569f19663aa19"
      "is"
    end
    language "it" do
      sha256 "4e5fba5c1985d9485e4468b7f724e8909a8932b9caeb1f9681564c89a72accb2"
      "it"
    end
    language "ja" do
      sha256 "5d2eca8a282ca2dde02afec8ed1f1ba0a817f5fbd9513e442e8339aa9ffe8eef"
      "ja"
    end
    language "ka" do
      sha256 "e8ec3c022b28ae29473aadf587fc8bb9d1b8cddbb034fc2564070007fb94ac03"
      "ka"
    end
    language "kk" do
      sha256 "e72cc276232910855ea5c1cd06a1e880fef43693d8535d0c8ee099d93668ff33"
      "kk"
    end
    language "km" do
      sha256 "cf355fae3674d428e9fe6729d144b6d518c0888e18aa45e5509b2f205a484302"
      "km"
    end
    language "kn" do
      sha256 "67cca1502685053063fac64ac70886ae459af040b813036028ee9e63c32afe07"
      "kn"
    end
    language "ko" do
      sha256 "8df3f4f113d0c7a8a401e4558e49ed1635834b87ee2148e1a8e0ab902a78d06e"
      "ko"
    end
    language "ks" do
      sha256 "0097a4880bdc19175b550fe509e86d412ab476da0fef97e110afb54944418432"
      "ks"
    end
    language "lb" do
      sha256 "3254d15b2e247384d7badbefe1af42df7ca56da14cbcc835c89fa48a86a2f905"
      "lb"
    end
    language "lo" do
      sha256 "60fec1a8cb6ba2d8ecaaa19e00aba9a204ff562545f8304f5c616cd46bef9d1e"
      "lo"
    end
    language "lt" do
      sha256 "e629236fd3db7ec5158a6f77bacdce185c556a14a89e3ae35886cadbeff5e555"
      "lt"
    end
    language "lv" do
      sha256 "557fb5a4b106dda2f1e125991a2bb6b9e5ce52690f87adf5060b39eee7a65bba"
      "lv"
    end
    language "mk" do
      sha256 "43b3b1b147074e8d8604db1581fab5c1183215bcee6dc59144c33e8b78888999"
      "mk"
    end
    language "ml" do
      sha256 "c861d04bc1213eb875bac5bd708000aa1e957d7b0114de2d1b5265e096cc0bce"
      "ml"
    end
    language "mn" do
      sha256 "f07ae9a9301862a5264de60e98038b108859a73c99be15ce2af5651702fdb898"
      "mn"
    end
    language "mr" do
      sha256 "1d6c829a7e6a14d56659a51f581ce5efe59c36f00a0a8b6a23b0f8b8cb70e14c"
      "mr"
    end
    language "my" do
      sha256 "b756acef1f0011258d562e837a528d1f2eb8c152f7bbc1dd5000b04bb645360b"
      "my"
    end
    language "nb" do
      sha256 "e3e5482cc1c5986732e7efb0ad842124e7313719d4ac29d9bfa7d21f635bc62d"
      "nb"
    end
    language "ne" do
      sha256 "8ad18beccccdc32afb3c8d4b3a30e8d5303c0f09f79b48e48e0c892526893a24"
      "ne"
    end
    language "nl" do
      sha256 "da80bf932b36b8dfd1f100be92071da154115aea4e279511d86a6e5a65059c46"
      "nl"
    end
    language "nn" do
      sha256 "5dac3ae5b1320451a424cc72b6e8b24b006fec4198dc805a80c84adba2915ce2"
      "nn"
    end
    language "nr" do
      sha256 "49a2be33a4c801fd764eb29ec0c7b8b1674ffe3fd584aebe1fffcff9db417da8"
      "nr"
    end
    language "oc" do
      sha256 "823e6940d64f2fcaa78ed4258618f9964aece73c1b157e0d0fd5e6c0754783a1"
      "oc"
    end
    language "om" do
      sha256 "56b77e4e626ad4b3746207f9c6814a73d5b0473ab462eacff1dfde93346dd8f1"
      "om"
    end
    language "or" do
      sha256 "ab4df7c9113f7be745f01f77f809f1d0d15ab1fc54bb2b512007080ea4675e0a"
      "or"
    end
    language "pa-IN" do
      sha256 "bf6b4f7c2ad569cdec15695da7ae7e1ed6743f7d499f61196be1df913bf5d603"
      "pa-IN"
    end
    language "pl" do
      sha256 "06b8d961543d8f217b2f65a8c2730d004d4bf8d3bad1970450bfab11b6bba1e2"
      "pl"
    end
    language "pt-BR" do
      sha256 "668cc3069da5aaa028d7b9f42f9902876b2719cb8b9b32b931c6371e7db81f19"
      "pt-BR"
    end
    language "pt" do
      sha256 "beea44a5b1c0fb210ac33dd4d241cf638fbaea3e7635a7ff07dc444fc09c03a0"
      "pt"
    end
    language "ro" do
      sha256 "cb294c15a0842ccb1fe650be2b61ae99dc6ac8faeaf30a7cdc3617038c06112b"
      "ro"
    end
    language "ru" do
      sha256 "b28a98c938ed189f0a360d24d69b11b1f08509d91b5f9cb83fca9130ebf7e9df"
      "ru"
    end
    language "rw" do
      sha256 "47fb294da624bc3ebfe6e106cdb43dc05a1fcedd36365ba4e6d3030504555399"
      "rw"
    end
    language "sa-IN" do
      sha256 "ccbe65f994caf8a9a466cb0fd3e51fc62b2a5943bf4be322111b0b250bb03872"
      "sa-IN"
    end
    language "sd" do
      sha256 "dabe7ff4224e1f43ebbd9381368f3b237078ebb920773ce9e64387dc10161a41"
      "sd"
    end
    language "si" do
      sha256 "66fe2656b37848970d2ef6678edadaa3c5644999a5e9dcc60e4d342ed70ab41f"
      "si"
    end
    language "sk" do
      sha256 "c9961ffb1b8f9140c7da7b7d1b95e358ac2398da5d8672240991dac46a7c35e0"
      "sk"
    end
    language "sl" do
      sha256 "5c5bad40815a14f269127c6e56723201c1ec578e83db4eae59e265eb0534142c"
      "sl"
    end
    language "sq" do
      sha256 "32df2f4ea5391e0d99fad44c26ddfb5ed965114165131802d4791c0369cb07e8"
      "sq"
    end
    language "sr" do
      sha256 "3abfd1c0002c08ec53fdbf211aaac89ebb9e479c3e6b8d3cc3d327b364e44631"
      "sr"
    end
    language "ss" do
      sha256 "55be4a809370200d4914f23503aa45b28474929f784005c870aab312de3925c3"
      "ss"
    end
    language "st" do
      sha256 "eb463ab557c88c4c095472519ab9681100700d4bb56a56eb73d06bc32a4801eb"
      "st"
    end
    language "sv" do
      sha256 "ae81e67e698c8d0c19728a6038c68a6da03b8795522c03a9bcabefa93cb8366f"
      "sv"
    end
    language "sw-TZ" do
      sha256 "878448db0aae3bfd6d94b5ee075aa1b55ba602a656b3c5f394fc23a7634e80dc"
      "sw-TZ"
    end
    language "ta" do
      sha256 "176a51fcf12c468971ee24007a7b6763022b512d8f31675e8351b7395b164fb5"
      "ta"
    end
    language "te" do
      sha256 "6b470d71d87dbf197beef5a0aaa5a8611657cef2a0cdec5c7f6502e936fd3b87"
      "te"
    end
    language "tg" do
      sha256 "8fb8fb8e82c57dd07661f0c34f8ffc89a576929bf7302c116ab36acd6531168a"
      "tg"
    end
    language "th" do
      sha256 "0ccd66f94bfe39e42c4a0620e7227233eaf402dace5e22aaee46994b6e71705e"
      "th"
    end
    language "tn" do
      sha256 "98580c48a320f07fd5367c0ed62d5f8d52e0cf98ef51a0ea4a7c11669c021f86"
      "tn"
    end
    language "tr" do
      sha256 "2bcefe99da4319d3ce663ac8dccf20ff96a6235e089109b861afc0800a500ee1"
      "tr"
    end
    language "ts" do
      sha256 "03dd87796d5904445f26c36164e2df2954fb2149b366510c664dbec69d4f3f6a"
      "ts"
    end
    language "tt" do
      sha256 "6aa0c51e69c5a75639750963f6a73ab9218b07f8cb1018a6cecb916d8dce82f4"
      "tt"
    end
    language "ug" do
      sha256 "b43109dbb72f00538241e810d3a4d8578a19b7a341c309cb9c425571121b45ff"
      "ug"
    end
    language "uk" do
      sha256 "f06cc257434db8f3b58120a9eacdd7ce24dea6b8479fa54ff23970e97c971e50"
      "uk"
    end
    language "uz" do
      sha256 "8131d986a26e08fa001342a33b03fb6ebe8154d0f8a4ccdc53d84a847467f218"
      "uz"
    end
    language "ve" do
      sha256 "f04eb9513c17f037be45656feac63a8c9eac5505ca895e7a2727baf7e789fd8a"
      "ve"
    end
    language "vi" do
      sha256 "014775e3ae7b79b01c4f122edcde77365f2799debf554d8433bf4204d013a19c"
      "vi"
    end
    language "xh" do
      sha256 "d0b5c26bf45d221b3643c5bbe594118189d09b1ebe5447b1e845c2c4148b3ff9"
      "xh"
    end
    language "zh-CN" do
      sha256 "4ccc653aec9718a269596ee1e3a81c23ddd131eaa4b918e52c80a7c469b7b1fa"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "f21fbe2145230c03d025a47ccd8151490db076871903d5055de1134133499543"
      "zh-TW"
    end
    language "zu" do
      sha256 "2d1c3a4416cbfdd141c97cbabcbbd78a5b7efbe1455e59b88dd370302fa328e6"
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
      sha256 "e9e5606d4d7d902aff410db219c5b9cc3de32ae9f6d0102874064c26ad3363d6"
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
