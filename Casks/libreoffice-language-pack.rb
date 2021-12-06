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
      sha256 "b4e8835bc6d88626f4ec8fe23640ec8ab435837af5e40f337070ae6c1a7efca0"
      "af"
    end
    language "am" do
      sha256 "3813c369166723ee86bd736598aca2d9f91a99810ef403bd9ae46633835964c9"
      "am"
    end
    language "ar" do
      sha256 "b3ca8da94b6bbaba7a5e6aad834817c84cbc588cebd80b01a88c540465a40ead"
      "ar"
    end
    language "as" do
      sha256 "3ed1f8293787561ca8bc2db5de049901c9c933f4aa53da66ad9cacd545d09a21"
      "as"
    end
    language "be" do
      sha256 "d8eecaf65746ac6f1804f61bbd295b0fb0a755aeb297339add141b9af4cb918c"
      "be"
    end
    language "bg" do
      sha256 "0e9a09dae23dc0084f824c15f3fb7b80f9d9747e9dcb0100c6dfb346b76385b4"
      "bg"
    end
    language "bn-IN" do
      sha256 "66eddc43082c51a099d462a925fd5c2a1c188d578172556a89e94b0462e91cb6"
      "bn-IN"
    end
    language "bn" do
      sha256 "1df15f2da381a8d4c2b4fbf753b933688954348d4ad38a407fd94d57622e1c37"
      "bn"
    end
    language "bo" do
      sha256 "97825573fcd30d4616c654aea35ab2006926863af70ca992462a66e9d8224811"
      "bo"
    end
    language "br" do
      sha256 "90650357614edfdeda55a00a73cbde6bf3da040bb37d3aaf9bf41c16dcf7cc3f"
      "br"
    end
    language "bs" do
      sha256 "2c074fac5624f4b4707d9087df1523b4a3b989edf0f8dac67d3565cf8c973bcf"
      "bs"
    end
    language "ca" do
      sha256 "f390262a55e63530e84841c708ee3178bb6c8d80a7703f9682f8af7408bbb4d9"
      "ca"
    end
    language "cs" do
      sha256 "1a4bc571314b768f6daf98bee72a522994cfafc1d5dcf891d9ff080222f14c06"
      "cs"
    end
    language "cy" do
      sha256 "69260e05452d1ecad6596f4318cd9851ec355adcdcfafc3bc690c9e4de8437f2"
      "cy"
    end
    language "da" do
      sha256 "3a099e568f6ef9de4b539fb005c6294a7e450207e45a3ffa9ce240a7266549d4"
      "da"
    end
    language "de" do
      sha256 "863c832782726ddffce131a50c145250368def17678ca1a8a561e145fe7d8d64"
      "de"
    end
    language "dz" do
      sha256 "bd4915d11d4f096275fdd714c297d2f361137acd3b8864670a2006d74d18d02b"
      "dz"
    end
    language "el" do
      sha256 "2dba158e652e1bdbe22030947e86b4749c0dec516a8ec5053fdbaa3dd9c417f9"
      "el"
    end
    language "en-GB", default: true do
      sha256 "fdbd250417c4b0b25e13543984f2d161af853481e0324139f6d6e6815463c977"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "9da7ba1082d7aa5d741631eba3a1577603d8b0cd6a547b2eac9e44dbe2205058"
      "en-ZA"
    end
    language "eo" do
      sha256 "8344d8862db85318f0e3e9dc74a4881dccbe678577517ee173f98a119b622bd1"
      "eo"
    end
    language "es" do
      sha256 "5419cb7eecaba8471f896c81f2d8d72c51a3d5670fbcf83d24376294a43ca73c"
      "es"
    end
    language "et" do
      sha256 "e1fabe4d44b1b06bce2bcccb578af6d443e9a575a345d8257497cbb18a3294d4"
      "et"
    end
    language "eu" do
      sha256 "9a5908dc6e7ccda6d164a07ed1e1b03fb60b049c88c068e201a7a645ee33528b"
      "eu"
    end
    language "fa" do
      sha256 "9bf3dd3e89fa5f9944e49761ff274a35465f39469d1675641ce541e16057d6de"
      "fa"
    end
    language "fi" do
      sha256 "e4dc0e57b0e25f8bafab5e9f1a4e7bf6a3a3184af5474adba579317d5fb14298"
      "fi"
    end
    language "fr" do
      sha256 "21acb2188a32249431aa7a7035b5986177a6f86fe7e0e82df07dcb084d3f9c6e"
      "fr"
    end
    language "fy" do
      sha256 "0487f40510e2a0e0fa56283d80f55457eba1e79a5d8439fdeaf6aafdd9cd3946"
      "fy"
    end
    language "ga" do
      sha256 "cce357afbbdbda6f14d1147570c115adae3cbc1685a3432ad648369bb5c10865"
      "ga"
    end
    language "gd" do
      sha256 "af2a273733b06b5cc82ff083c32d7ee0c35f1feab96187a86b59cd4e7b9d5f07"
      "gd"
    end
    language "gl" do
      sha256 "a371f379a42c9ed6fc4a03f900fc72adff72468705dffcd71d475d66599f7108"
      "gl"
    end
    language "gu" do
      sha256 "5cbcb2b4b468d8c516c2c3f63c9f5bded35ba04f904535e45ee53d70959957f9"
      "gu"
    end
    language "he" do
      sha256 "e678131a36693a1703b93e3252d48fd4c1716ba3e7010afbfa0967633c8d67b4"
      "he"
    end
    language "hi" do
      sha256 "b4d17a09eaa5bd85d31c10bb97a2454bb445a8f1a55808599eb58a9dd96f7eb6"
      "hi"
    end
    language "hr" do
      sha256 "c6cd556b8fb2ed88766782f0d5f99f67aae39dde30c08756ee11ead8381ca047"
      "hr"
    end
    language "hu" do
      sha256 "bc82d01c0d54172fd774fba79375a3a28f632556ee51d1c07ce765eb1b6ec983"
      "hu"
    end
    language "id" do
      sha256 "16680af21e7025b7ca22bea2bdea299a85eb9e128b78f3e06b26d4317cba5b1c"
      "id"
    end
    language "is" do
      sha256 "55949b5ee96628bb9a720a777ec966f365c0066f72b0e0712850d770c9802379"
      "is"
    end
    language "it" do
      sha256 "c563a1364e9b13351c8dee0ea4dedaf6921d2a8891e8e40a2e82e485528183d0"
      "it"
    end
    language "ja" do
      sha256 "71e6698eb04ad5223af728e277bd2577b4fddda76a9b730ff8f1f714d0a9eb7f"
      "ja"
    end
    language "ka" do
      sha256 "9e540c2a8d6de75844dc8d6008c895dac7a0b047d80cf71eef8bd35d7fcbcee5"
      "ka"
    end
    language "kk" do
      sha256 "e6dae7f4a0de773be86f6deedea8aaec267b669419c7f5d4cb9fdd56069d8ff6"
      "kk"
    end
    language "km" do
      sha256 "6b4ef6d9e3bfcd574d424e6ff291149bef7c8782c6d4d1464918dbc6a9387e0f"
      "km"
    end
    language "kn" do
      sha256 "37ad006f783c884fad397ab087e729001f180c5fdd7a5b6665153680deb64f1d"
      "kn"
    end
    language "ko" do
      sha256 "68e58776fe69e3c8258129428449595627ac6bf6dfa66347709987f621ba3ed3"
      "ko"
    end
    language "ks" do
      sha256 "4b37602e64f77a63203032df78bcc41a623b4781556e9e464f47204213636bc7"
      "ks"
    end
    language "lb" do
      sha256 "075a01d98750d20a1df9e9edefc26600150e8f86eee8d90ec3f5d9d6456a43e5"
      "lb"
    end
    language "lo" do
      sha256 "dd5ce62e8667447c1de3d8ce10bb7796161ebfeb7ee739278b2788fe11425820"
      "lo"
    end
    language "lt" do
      sha256 "91ad967b09143f965e1a6110612361dc0f98e69c4438f78c5118162418b4c5d7"
      "lt"
    end
    language "lv" do
      sha256 "44347a4de2519bc7cfe7752cb913c2dbf8b970b56f3e042e3a345dd8f93949d2"
      "lv"
    end
    language "mk" do
      sha256 "30113d14c318ca4083b3de342f1339cf13aa190c593b1e9f88d90f8c3e0f146c"
      "mk"
    end
    language "ml" do
      sha256 "6a4be6bb9d085b236e210b574d51bcdf2e1d0671db78c7249ac4f31367b8a641"
      "ml"
    end
    language "mn" do
      sha256 "9b642a77ad8385b201030828765df4e4525d07b2d61b54f33994de184b02eff0"
      "mn"
    end
    language "mr" do
      sha256 "d55e8436fdefa85594ae4ee69cc2cdbabd2cb31356a3c076d2e114b190571e5f"
      "mr"
    end
    language "my" do
      sha256 "c8626168ab3f1c02eb36a99639dd4500c431254bbd8d82034dfd3592c2b3850c"
      "my"
    end
    language "nb" do
      sha256 "5b9770e86dea462f79e02a9d5fb9afa332fc768dd3a585b772559a40f36d65e2"
      "nb"
    end
    language "ne" do
      sha256 "7f8a2500f5b411447f99216198bf0735aaff3b877218f12d94f300db6d89113e"
      "ne"
    end
    language "nl" do
      sha256 "c0e261d66bd02fb3d4339611cf229318074b65bcd43e75e49980710cf90ee27b"
      "nl"
    end
    language "nn" do
      sha256 "4faf6ec14e38b05f10434b2d5f980993304e63354ce7a86e548050b7aed196e0"
      "nn"
    end
    language "nr" do
      sha256 "c107f9cf5927c663a032520e1eebfb61cb6ca4231816122f4dcb41ea1076573e"
      "nr"
    end
    language "oc" do
      sha256 "59d658b690597f8e2e918fd210db394d526096c56834693d3b18aa1973ad9316"
      "oc"
    end
    language "om" do
      sha256 "9cc9a73cf037b8c51558378ccce8cbe9b4d1862990c47eba67b839c54c987fdc"
      "om"
    end
    language "or" do
      sha256 "a0eff1a8f564bfb8c32a22c170853df8f5a7672099f2768fec6bdc3c2c11dd94"
      "or"
    end
    language "pa-IN" do
      sha256 "721d8b7514533925023264c86028e0a038bb76fd438aa5974571be4f7703d110"
      "pa-IN"
    end
    language "pl" do
      sha256 "347e3f1d9e31ffc20a7e950b7f24c5e0bebc4af3e1e3886d6362aa334c261731"
      "pl"
    end
    language "pt-BR" do
      sha256 "6941128042435e7552c28e70221da7ad6b7ab6a2c48680bdea0282bf8f685d3d"
      "pt-BR"
    end
    language "pt" do
      sha256 "27e1dbc9ccc1598a12a1fb61260cbda985edd6993919ddaea3a6908b93cf2a55"
      "pt"
    end
    language "ro" do
      sha256 "67a7ff5a0c4340698c5a70dd654ae2b03578d018fcd70c06cd663a9eb89e49e2"
      "ro"
    end
    language "ru" do
      sha256 "b15c84106ea1ede592e13e9cb1a0ba6e7f994b45dc5e9f5ca5cd7150a55e63a5"
      "ru"
    end
    language "rw" do
      sha256 "abc484bbe85ca5f5afd41e6c4813e81f124ee77038883e9308a5f683559e711a"
      "rw"
    end
    language "sa-IN" do
      sha256 "ab674dd35f7d72531489f0cd46c2a0bf0605b24d3931d1a715eae7d627ad7f49"
      "sa-IN"
    end
    language "sd" do
      sha256 "e706f1d85b1ecbbce2f806d6f39922edec0a6c82e891d09f79e131b9535f05da"
      "sd"
    end
    language "si" do
      sha256 "a3f80b1ad9b75b99ec5b6a78529e18a2be55d773a0af7a4e2a2a68f1f809d282"
      "si"
    end
    language "sk" do
      sha256 "6738d5f3d6628e326c43ad6fef92fdab9723330c8f1477bbc1efe7a514bcbd33"
      "sk"
    end
    language "sl" do
      sha256 "b9f75a0ca0c6006ca1f21a123c84fe9b8ea23cd80cf972fcb552d15f64350be2"
      "sl"
    end
    language "sq" do
      sha256 "8b605bc9b3b12f57bea1a202d235daf37ba0b3e3ea8c99c76baa6fcb255b3fb7"
      "sq"
    end
    language "sr" do
      sha256 "623481c829de709d3ebf0a96cf261af15ebedd615d000176dda46e54067ee1b5"
      "sr"
    end
    language "ss" do
      sha256 "5f02bd607bac695e9f6e8da105024096a05f88f29c6b5efc5dcc32d329d9be73"
      "ss"
    end
    language "st" do
      sha256 "395ddbb77ac018187663c645abbcbc16760fc27c92a9b36bcd7ef780beb17099"
      "st"
    end
    language "sv" do
      sha256 "9f606c6f053fe8386f8655bc6c6c30e5110199a2538aecad37748b2c7c170cba"
      "sv"
    end
    language "sw-TZ" do
      sha256 "981fd41645cb0b9265f7e87157e8ff28e1f1565a9c1cda2b5c608ca1b3bb2241"
      "sw-TZ"
    end
    language "ta" do
      sha256 "464e33d1c29a612d0cc6b118c9e2838192cbc64b202a2dc1629e50a62482b02d"
      "ta"
    end
    language "te" do
      sha256 "61be9de71912c758abb65fc2a918a6e93b2cfcbf0d5f97773e995d45afc4cb75"
      "te"
    end
    language "tg" do
      sha256 "5c2b396f81c760e1d1d4964ac273522a7b58c81896a8042383a58b9ca931ad08"
      "tg"
    end
    language "th" do
      sha256 "e328b5c3fd2e047827539ff0fe9dfa3754b5d1dbd3e1b8481e51f8f98a076fa4"
      "th"
    end
    language "tn" do
      sha256 "3fc7c97ac4f9118358f1bb4232ffd46c28c2d442490faed603e53194f9990e06"
      "tn"
    end
    language "tr" do
      sha256 "b8a19eda42d3b0fa7f686e1bd8942173b903f58c859a334e35140316ab904a8e"
      "tr"
    end
    language "ts" do
      sha256 "d9ebc4aa9fef19a49a2ff55e7d9c7bf1bdf92754e604a3fca4b26db1c107d5c5"
      "ts"
    end
    language "tt" do
      sha256 "37147f1471b6f044933c05d8ffffe7bbf9a6c5d35939d0ced6e0c1f2c5eed2c5"
      "tt"
    end
    language "ug" do
      sha256 "4e0e60cc738ad0e7c0a761a3d848a4295446656997f2793e4cab57d78711837e"
      "ug"
    end
    language "uk" do
      sha256 "d267ee754ecae2e4a741b362ac5a2cf2bdc3d7c3955b5d14c20468cf1f99e8cd"
      "uk"
    end
    language "uz" do
      sha256 "429cb6fca700bd65086404c4fd70c5d68f6accda8d8830273b85901e31913310"
      "uz"
    end
    language "ve" do
      sha256 "e8c1a487fb7fda4e7dcd0b6260067020edb2164067e47feea4092fda9f547665"
      "ve"
    end
    language "vi" do
      sha256 "4b1c6aeb75c4596becdc22f40bc192672da58f3db10d906d7d9a2d2c144b5a37"
      "vi"
    end
    language "xh" do
      sha256 "c83648c3d6912cc1afab16fedbb87ddaaf7fda695bd868af3d412fe9a0f44515"
      "xh"
    end
    language "zh-CN" do
      sha256 "e9be08afd75299552255dedbd24be3efbe4546007a014f4bf364bf7ff86cc709"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "c087be2788b0053b0afba792555d36a3065a7b96bbe9b0d6099bb0681890a38b"
      "zh-TW"
    end
    language "zu" do
      sha256 "2be00aa99f077600518d4596e64c8a7b72f1942af1caed68d637e3e2fcca49a1"
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
