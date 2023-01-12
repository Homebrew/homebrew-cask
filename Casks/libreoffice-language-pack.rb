cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.4.4"

  on_intel do
    language "af" do
      sha256 "e5f17c8609d180364a143801a203aa2009485a3e0ea5df4fffeb347b97021d62"
      "af"
    end
    language "am" do
      sha256 "33b3a94665b232ea36abf4e5b0ffa1dd899ffc146adcd659cd94dc46cd3e5cff"
      "am"
    end
    language "ar" do
      sha256 "c1015340312f05406bb0bce276e87ead66bfd52e47e22a3afe9dcc83768b254b"
      "ar"
    end
    language "as" do
      sha256 "ef90e3585feaf63bec30165f942e866155b30e046e50bba330fe1009a4237cb2"
      "as"
    end
    language "be" do
      sha256 "69a11fd9f14ce3c377a9d801db27a020a3d4bd49b5e336acd11a5f0e480596ab"
      "be"
    end
    language "bg" do
      sha256 "134069250829d0ddb5cbf4a8f7f2cfcf7c5a53d3c156e09be12974c91196be23"
      "bg"
    end
    language "bn-IN" do
      sha256 "444bcddd2630d2681ab12b6cafdd56747dca592b4b9a8e8a5abb3141282eaf91"
      "bn-IN"
    end
    language "bn" do
      sha256 "1232d893c043b3a8d8b75854676ff9a7e8a44d7fdc978d2dfb66451499b607b0"
      "bn"
    end
    language "bo" do
      sha256 "4ad77cde8d7c5c99f07d7d7452479e07de12ee87f8dc8c40e2b92cbd69c96327"
      "bo"
    end
    language "br" do
      sha256 "fd6cc5f003123f07fbfb05044459eacd0c5b7cdca239852d2ae54c2ff38994b4"
      "br"
    end
    language "bs" do
      sha256 "8491f0da77016ab3c5b0b6f121771bd8a0cde1fc1b670bd72930152cf02a022d"
      "bs"
    end
    language "ca" do
      sha256 "130dd171bd315a4e4612fbade50d49f39bfe8ed43b014670263b2c6a56869259"
      "ca"
    end
    language "cs" do
      sha256 "c74b949d446cc3a853c1b5ec5c0ecb2282f64e46851255652e0edfc246dade97"
      "cs"
    end
    language "cy" do
      sha256 "ed262355c3fb7524745c2f7641af9615f5657f79e67da96b0846c36e414ceb5a"
      "cy"
    end
    language "da" do
      sha256 "28283c586f1974fd50266734c831a5d96119ff62ca3e9b9403cf0c8e430baa82"
      "da"
    end
    language "de" do
      sha256 "bd041645a2cd85a0334b01fe5ee4685a10e437824182bbb233cb5f300f18b9fa"
      "de"
    end
    language "dz" do
      sha256 "3936c8324f54e4b0c198276da11835c044d5ca5d37509b2b9e2455ee6493bfcf"
      "dz"
    end
    language "el" do
      sha256 "07c3de7e6c0a941ed45ab355d69335aeab9a94cc4eaf7a31bdd2fafd8b5d23e1"
      "el"
    end
    language "en-GB", default: true do
      sha256 "1262650d928847e78089d1f20529ce9065a7f78a45416ff31a0bb6d93f262e56"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "97c1868d4bbc8f19834d82449925ec2dfa3b8b821013ac228da19452a51205c0"
      "en-ZA"
    end
    language "eo" do
      sha256 "8551fbcda8de3356c787dd273e8d0409372cd505f679ae25d6cbd6f0cc33a385"
      "eo"
    end
    language "es" do
      sha256 "bcbe66a2edbbe0b1367440b09d4423e52aaba51aa09514b6d33a9d35a10d6d99"
      "es"
    end
    language "et" do
      sha256 "4293aaeb3de38608bee1cef773ae87ea23bab91c6a7047cd15a19e0332afe7a7"
      "et"
    end
    language "eu" do
      sha256 "76e21db34feb497a05dd89b77ba4c76c7a6517ca6f52ded4760a2c39355650e6"
      "eu"
    end
    language "fa" do
      sha256 "035f9a1436eafed013b7ba0ba4d691bf2879e4534d1ee4dba9aedc12b38f4400"
      "fa"
    end
    language "fi" do
      sha256 "313d9780c4135c6880f53e4359b3c3a3654212bf94d2b6593c9978acdb8badb7"
      "fi"
    end
    language "fr" do
      sha256 "21582393efcd6afcde4b1df9fa62d1e5b323e850aecd72b44e3aa0fed8866589"
      "fr"
    end
    language "fy" do
      sha256 "7452e8cd257ad1711c803b2c7ae1ef7f1b8176f10902e602f71797e4f0d2037e"
      "fy"
    end
    language "ga" do
      sha256 "fc14d2fea132cf715a5b5eb697dc692ad4b15628a4c04b317be30c9d0295fffc"
      "ga"
    end
    language "gd" do
      sha256 "c12436d2775d3126e6ccd4ed4c592fc9dca6c739fd9af7a61b226dbaddcaec78"
      "gd"
    end
    language "gl" do
      sha256 "d7c304dc51cfa0510cbe65565d6b21ec0a8ccf8c03ad9a197dc72ffcb8a77215"
      "gl"
    end
    language "gu" do
      sha256 "c0f54e0bfd35e668c406cfb3afedf1b726abae29388e749c8725cd556d144050"
      "gu"
    end
    language "he" do
      sha256 "c67059ea7e14a4ad39a9d267af0fce7d0c145741f509f7ec5970fd329680a325"
      "he"
    end
    language "hi" do
      sha256 "d81c828848780821fabac165e0b48ae96995425f25cec38ba15f458b936f4f96"
      "hi"
    end
    language "hr" do
      sha256 "6977afe342f63597c4bae00462a0764cb3e69a50ba5aa03d2ef8fdb434db7db1"
      "hr"
    end
    language "hu" do
      sha256 "22bf62b7768f8bb33f0d126c4892c5a4ac1ae62bbbdb7377c029a47a1b73a0a7"
      "hu"
    end
    language "id" do
      sha256 "47230de7558646ddf68f2c4fa52e5cc205dcfffe91d3051963e1a6bb22d6d62f"
      "id"
    end
    language "is" do
      sha256 "8dac6873707a25a72ba670e1be5072f8398fb53033cbc27405a7460442bf4403"
      "is"
    end
    language "it" do
      sha256 "0b8f94fe5d5b52e98b9bc57e2f7b7aa37c516edbc513a7657248c2ac301b38c7"
      "it"
    end
    language "ja" do
      sha256 "6dfade6c8de98610e7e09fbe46f30225cd9e1f505d7f976d3da32a627fdf3e4c"
      "ja"
    end
    language "ka" do
      sha256 "fa26165ad1114cddea4a474c26606af3c561f69aae9f2201bedd6a31b34c89ec"
      "ka"
    end
    language "kk" do
      sha256 "0eb9be93dc2a9b8a7c1b966e15f1f8eb098b3b2aa65fc80e218932a1d88f11a3"
      "kk"
    end
    language "km" do
      sha256 "546d6ed7cb66fbdde129988657af57b85bb3bd49d12168817124cb0812818e9f"
      "km"
    end
    language "kn" do
      sha256 "6a662ecf3e2169be9f8782278d983994a78536ddd3b36095be5114c51ae626d9"
      "kn"
    end
    language "ko" do
      sha256 "f9fbbcc3e2c47533874598a6f03210f2d77102726c960ba87d7f9f3d066e514e"
      "ko"
    end
    language "ks" do
      sha256 "3c28338d66da818dd3081685b47ab68d6d14620ac0a69016487880e7270bf25e"
      "ks"
    end
    language "lb" do
      sha256 "bbb8d48890dd5b54d6f64ffb455449fb1011869bb4d0520f1af0437ea7593a4d"
      "lb"
    end
    language "lo" do
      sha256 "c0537fd0def62422d389cdc2f2e5a028af04fbc202249cf25643cf6298b11d1b"
      "lo"
    end
    language "lt" do
      sha256 "8b2bca80d833f3286f47f97154a087c07f2d5cdc1c119d296b5efcb136c9d6a2"
      "lt"
    end
    language "lv" do
      sha256 "47fe49233b5d28fb6b6edcb1062695f34b502b00b71b255a7e1c1e89bccb5d62"
      "lv"
    end
    language "mk" do
      sha256 "38ac847bfba60247cb4ce10d36da93d1388666ddd80f0d8ac913f309e941d804"
      "mk"
    end
    language "ml" do
      sha256 "c4de396c9ed7f040da9f898d4d347c97af83ec724b2aef60312a63315e3b089a"
      "ml"
    end
    language "mn" do
      sha256 "328df9adbd19f3c096428d3a33ead8962115d0d8fc1d43e41704b80bb583743a"
      "mn"
    end
    language "mr" do
      sha256 "df3a91f349b1519a8bceec15434afce6deb15d1039ce0c37d92281dc52083d32"
      "mr"
    end
    language "my" do
      sha256 "f9f793fec66c98d2ea4f9cf35b07a41ab8296524135d6776666b33419b76bdbe"
      "my"
    end
    language "nb" do
      sha256 "ff2413e0f6832731959185c02854f5c24a9ab51cb3f938c0bf6c74259d49c93a"
      "nb"
    end
    language "ne" do
      sha256 "84ab9c7011ff720eba5259218a894b743c7a72d48e4b4a45d22952c81b28e71d"
      "ne"
    end
    language "nl" do
      sha256 "207ddcd21e27fa41fd9b8a7d661e0078b033854482d0ebedd23a23ab6fc1505d"
      "nl"
    end
    language "nn" do
      sha256 "cc1b61c60a41d63355b05638270138a99b1120c4ccb137c72f5c2c69bf70ca0e"
      "nn"
    end
    language "nr" do
      sha256 "ffeea230d5fd4817552c48bc76187425e50263fbdc68b5476a03c3f01af94789"
      "nr"
    end
    language "oc" do
      sha256 "b324734d241c49ef9e84fe0f3118a3b6fc2fc8a4ba1f7977a8a401d2643526f5"
      "oc"
    end
    language "om" do
      sha256 "89d5046140240b2d00b93a365f82023e8bef2a318efe06fe8015eeeaec998ea0"
      "om"
    end
    language "or" do
      sha256 "5280ea6c9e3f753439f8825e2f0ba40683d593e608e6c8299d6750e32cbaba8a"
      "or"
    end
    language "pa-IN" do
      sha256 "10248ffa675374a831faecc64f4da786e6a092ee0a06538d99068160b7ece09f"
      "pa-IN"
    end
    language "pl" do
      sha256 "040da05eb329205d72ae6f9f0afcbb5b5ebb560336c0de73151331f1a2003e7e"
      "pl"
    end
    language "pt-BR" do
      sha256 "689e3fae3c0805af783b54a2b75a4b6a959d55affa1a0d16cbf3f65b43804125"
      "pt-BR"
    end
    language "pt" do
      sha256 "bd1120a962ab0e177be7da8c57f4ce3420c6bb94b21b80d1eff050b52ce9b125"
      "pt"
    end
    language "ro" do
      sha256 "cc7333a753b68040cd1a2030522b71aded5780a7a136b97d657d8534d62c638c"
      "ro"
    end
    language "ru" do
      sha256 "fce34a8727afe99bc0e3cd74a50f553df7412d132039c871c7ff8efb569b4557"
      "ru"
    end
    language "rw" do
      sha256 "0af26200fcd031d833f2271563e2d0aa0ebb54c94b13f3aa0322b7946b0ded19"
      "rw"
    end
    language "sa-IN" do
      sha256 "39f7753d1204a4db26b78239150def87c1c3ff62b2db4f33c9af18b688ebf51b"
      "sa-IN"
    end
    language "sd" do
      sha256 "c0f8999ba21e93d5d83dcc767259e459e13bc6b232b634d8c38c706a247285a3"
      "sd"
    end
    language "si" do
      sha256 "0a29915bbb9d95ec194ce2369e07854c10afbdbece07bb009ae08c5b77371bc4"
      "si"
    end
    language "sk" do
      sha256 "bd6799b634034aa696020a90778b79f0486351eedcd57f72bf0303e304aed422"
      "sk"
    end
    language "sl" do
      sha256 "2b5f663862ef364df1e6ea54c7cf2ffb35e0973e17e90d47873db0b2c6d2c00f"
      "sl"
    end
    language "sq" do
      sha256 "4e1f22f8cc789891875a328726ac6d26b07c13dcfde219314cda3aec15b10c02"
      "sq"
    end
    language "sr" do
      sha256 "7cdd3e39b9b4818bfe6fdca09780f59fdb1baa8c04c0b402c46b5d8d6fea720b"
      "sr"
    end
    language "ss" do
      sha256 "11a3d62d0f9d22d9924d24fdb343accadce2a9b428744e4166aa11cb9b9f9484"
      "ss"
    end
    language "st" do
      sha256 "66e813ee08312be772bc08a62c57a9e008556e9c399870b47adb8f7700acb45e"
      "st"
    end
    language "sv" do
      sha256 "8c5b66a0a016c31bb0539a32b227e723ad8bddde2a92d1f7bc5bef4ab66ad386"
      "sv"
    end
    language "sw-TZ" do
      sha256 "9ebc8c6a83fbb12886cc355862772427093b08b13f297d81649f82c6901bf159"
      "sw-TZ"
    end
    language "ta" do
      sha256 "4240fd3285c002a8e616a1ee7b13f5dd2656f1e5b1647d8a9aeffd04979aad76"
      "ta"
    end
    language "te" do
      sha256 "fbd9d481c26b17b2c5c1ee41fb9b0c6b2ff562574fd79d23e69597aac137ee39"
      "te"
    end
    language "tg" do
      sha256 "213c51f6bbcf8d58de90f3803108d26caaba59e1f7fad2f7f1a49c97c434a8e5"
      "tg"
    end
    language "th" do
      sha256 "8a91d30a8b91377a7ace7034bc2bfad8dd59b60841c9166deae670302ae924dc"
      "th"
    end
    language "tn" do
      sha256 "bdc9c0f80b29358e7d2f16f5266d1e6b6097b32fd3c3edc89dba4d26fbbd47f2"
      "tn"
    end
    language "tr" do
      sha256 "7bcb984a0e54299f94149af27e8305fac33bd09aa7c497150fb5746967d51dbf"
      "tr"
    end
    language "ts" do
      sha256 "a9f010b8b7f2c588b1a5b5e7c286f36e3cd7721ea56f32de95276c8ec9a03ebe"
      "ts"
    end
    language "tt" do
      sha256 "2e3fe323289f0a0984455620f0ee831799d5c075d2b788124ad1f7fe514b6d17"
      "tt"
    end
    language "ug" do
      sha256 "7ddabc04ed512ac54211980e5bbd2ba5be82d0fb6602ed5f9047abc0d98e2e63"
      "ug"
    end
    language "uk" do
      sha256 "ea8c1782ee96276c5b499002089774ace3d151e7b835b9277cadb146091269c5"
      "uk"
    end
    language "uz" do
      sha256 "745be5ee29e80ea8b4faae1d10279761a6bc5bcfeb22c3bbe0dbe0ce701b5a34"
      "uz"
    end
    language "ve" do
      sha256 "9d3c143eeab626886d7e16bcba27468dae7e99c592b03047c2bc5792bd4e6d05"
      "ve"
    end
    language "vi" do
      sha256 "31638fbea83dd28da845dc5ca6425e442f08b3c422d974a036ef3cf4f8a1b04d"
      "vi"
    end
    language "xh" do
      sha256 "6f905cd905faa936abe232863a54ace78a121ce25a3e15f2961f334997eaf3e2"
      "xh"
    end
    language "zh-CN" do
      sha256 "467ea027f92c3b7f8999efbd286f070f16d187f37ab8b67ae88f1322ea03b76c"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "ace229360c8d9b2ab05291b5a85a13b07e1b25d2bc08b6a078245711be42ebb5"
      "zh-TW"
    end
    language "zu" do
      sha256 "bdc68eba713c49abe338593f739a41f03a8b2d9d353e846c0515e711836830b4"
      "zu"
    end
  end
  on_arm do
    language "af" do
      sha256 "3b7779d43f3298822d7fe4480ffe92eb0cc9bbb314ba54cda66b8115f328bc08"
      "af"
    end
    language "am" do
      sha256 "872c894f015dd3c508e1a5d326360f9140fa2f8bbb5fd91bbfe7ad8c0bb337de"
      "am"
    end
    language "ar" do
      sha256 "e7e4a2428be11a3d8a6810a950d61a2634f68a93a97e9b24b3c74e97b6372d57"
      "ar"
    end
    language "as" do
      sha256 "53a7bcd2d516800831c3ce55658ff70078680f2c1ad15710579fda0d3e8633cc"
      "as"
    end
    language "be" do
      sha256 "91c976c47b1d35f8478a0819ff9145b88ac5266a1cf4368414c26e935e941640"
      "be"
    end
    language "bg" do
      sha256 "f60653197b9858102ac44604eb3aab221127177565ee90031837030f6b661df3"
      "bg"
    end
    language "bn-IN" do
      sha256 "b60b147e24d3ce13acbd266d7e18dfa653b6fc82be9300af1440f34d902e78f4"
      "bn-IN"
    end
    language "bn" do
      sha256 "c3f496c1b648c73fd25d382e547a95cbeb21d2cdd4edb8d8260aa485c68ad46a"
      "bn"
    end
    language "bo" do
      sha256 "db7acd784b05fc57a04cc2c6891cb04f90c7013838036071d5a908263e635cfd"
      "bo"
    end
    language "br" do
      sha256 "6b16964bdf61877ff60995c05fb097c7c2e215e194c3e8a0ef079a055ad2251d"
      "br"
    end
    language "bs" do
      sha256 "09e44948c8c70e69197768e85165115810b3ac19692fa8efebd93d8629eca89f"
      "bs"
    end
    language "ca" do
      sha256 "1185ea52d8ca3c91d1d1b814aa5ddb6d4231b6d7c489246d03b131b808a6020c"
      "ca"
    end
    language "cs" do
      sha256 "374a6a8494d9eb27eb8e4abd5056ca1227fe89bce6e8a037d879eaec98b66dd4"
      "cs"
    end
    language "cy" do
      sha256 "7db942f746403491852f630949019cba5d7d1a0b0dfc602c5e8d3d12b8a25d4c"
      "cy"
    end
    language "da" do
      sha256 "be191bafa76d88079d85c90da47c6eb5d6c9c32ac8ee2071ccf4ce62dd957e20"
      "da"
    end
    language "de" do
      sha256 "64d9c26b7a973e236813c4c2d0a0696855f6e190721bd86c2e5a0ca124b130c2"
      "de"
    end
    language "dz" do
      sha256 "0f0a90c79e5841685298a816fd8b76a343ca939f8fa756bd2185e26b8880ef7c"
      "dz"
    end
    language "el" do
      sha256 "46a492468e58a097968673a266eca9166d0375fe9e4d2449a6ced1d460b4102e"
      "el"
    end
    language "en-GB", default: true do
      sha256 "8dfef2a6c331f8bdfe5d496441ed126e449b7f93fa6872884907b32c87295d86"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "e213d8a877a3b5319c3d8d209df05c102a97b6e3d588d92d1d5f0a0ba35854c8"
      "en-ZA"
    end
    language "eo" do
      sha256 "1797ff7fe55c12fead14011efc9f751d7084549d8729707219dc25cc42e3bf85"
      "eo"
    end
    language "es" do
      sha256 "9e5319a3979a4d237edf679c96f0f254a19f4b54e8eb74af9dca348e811a41c6"
      "es"
    end
    language "et" do
      sha256 "ecb6f9fcb7ab63a0dfc31ebb5caa1bc3c3651873df0ac477170926e58fc8e0af"
      "et"
    end
    language "eu" do
      sha256 "e18d26f7af75abe8d92dccdaf6c828e9c46913dbdbd4ea73b156a44795add9f3"
      "eu"
    end
    language "fa" do
      sha256 "64de436c90240caaed12146d8d3269fe7e71810dec315ecda688aa67f635f309"
      "fa"
    end
    language "fi" do
      sha256 "f6cb469ce94ca8bd6c5b12ae9689026978d04925ef7b667571ca8a0de91e1c44"
      "fi"
    end
    language "fr" do
      sha256 "e4f6bf93621192a0abf45f4ce098ebfe64bcb35b5f82e555a235a45369673be4"
      "fr"
    end
    language "fy" do
      sha256 "08eeb99f0434ca4ac68a764e186efc1fd0e02fb0a2d1483b6f52df26ecb8365c"
      "fy"
    end
    language "ga" do
      sha256 "dfe1dba7c73828438340d474ea0a78f7c233339cb177ab450cd0dc37a7cdf9ff"
      "ga"
    end
    language "gd" do
      sha256 "aad8ed9df8329877a824975aabdfbb53709b1064cdb5c00b117355668966c98d"
      "gd"
    end
    language "gl" do
      sha256 "05a3eccbe060dc77037adb1844ce0e498019c4af7af4704819191a9a3c62e12c"
      "gl"
    end
    language "gu" do
      sha256 "3bd89c25052d588b068f06beb7bced3ac9d82feaae46246700354b1debcb76bc"
      "gu"
    end
    language "he" do
      sha256 "f14fe9572ddbce1ee5d11149a4c5a129aaeed9c65cee7d0201a6e3e3df96b5aa"
      "he"
    end
    language "hi" do
      sha256 "e5ac33103ed4d3758856816db33c08d78160cc9841ed34b665c467930b98f5a9"
      "hi"
    end
    language "hr" do
      sha256 "afdf480dd490a96401a186444f83f7c36908c22f3f2fb3b0330ce5e633b4e671"
      "hr"
    end
    language "hu" do
      sha256 "fe2027660cbe6d0d5fa558497612502e052a5ed50e3fb462cd886731bcaa1c44"
      "hu"
    end
    language "id" do
      sha256 "a753d00cd6c9a1d637ffd049464db7686a4578184f6cb2ddb4e602ea2597030c"
      "id"
    end
    language "is" do
      sha256 "533280827852166937a9f4a23a780a93adba40de6d431e702f6b85693b772ed8"
      "is"
    end
    language "it" do
      sha256 "1ec6daa9e1527942bde9989532925032718b06d8eff276f3ee5445e44bd43be8"
      "it"
    end
    language "ja" do
      sha256 "7a6dc44f2cd0911711a796d667f28fcdf8a9b1916b504da97c8f020b72484a0e"
      "ja"
    end
    language "ka" do
      sha256 "045fdd80d2fd1c0c4e9933c5c22abbf7e6d673518580a5497c58f76d75cacc10"
      "ka"
    end
    language "kk" do
      sha256 "a96d1d9171bbdee427ab565eda8b347f92a7fb5de2e99fd351d167666686e80b"
      "kk"
    end
    language "km" do
      sha256 "0a3bf62403e4818b326e555726ee75549871a3522802f281e5fe6abeba8d2d06"
      "km"
    end
    language "kn" do
      sha256 "aac8577c06b3718bc6af69ebf4862d13b38b85bfbc22ca9fdc7d88ad3bec15cf"
      "kn"
    end
    language "ko" do
      sha256 "38e41ed086f952a29ec759bc883dcde28a6f1312eafb07e8589fbdf62cb00915"
      "ko"
    end
    language "ks" do
      sha256 "38dc1d97d800f80a2aff25a6afa1d18151a61d464cdc896ab6cfe9a32d99ec6f"
      "ks"
    end
    language "lb" do
      sha256 "06fabc4359727f1f1a8d0d9b450872788051ce9bef9f2ea29390dfc670d454a2"
      "lb"
    end
    language "lo" do
      sha256 "c1718f6ffce5c3622560834570e17ba23f74f6a08c9ade94eee2d27443c842ea"
      "lo"
    end
    language "lt" do
      sha256 "d3f59367599b960e56ea25fa0fe271fb96341bca7f7166ad86d8b99234aefdb5"
      "lt"
    end
    language "lv" do
      sha256 "7cc52237f8fb2edcf68c1176ef2c7a2331bf374b6e92c2bd32674bf631958241"
      "lv"
    end
    language "mk" do
      sha256 "a9cf545c04bb0c47ba1812f397e7b7dee05b1e8f081ede71af70e9a347c97c39"
      "mk"
    end
    language "ml" do
      sha256 "c702349f88146a904bf1c54d78dbcf0d3f7896e5426ba77ed39f0e18c969e37b"
      "ml"
    end
    language "mn" do
      sha256 "c4b16202adab19b38431b667c67798982bdf7a18aae4bd794dc1b08261f3d466"
      "mn"
    end
    language "mr" do
      sha256 "0820cdd7048a461c3d2ec9f112abef110d37bc522eafa6a8d67297baf32c2ee0"
      "mr"
    end
    language "my" do
      sha256 "afd5aa314af005b28484bc27ddd51448433754801a627d967a4d6b3cd4268926"
      "my"
    end
    language "nb" do
      sha256 "b549d1edb3f6c41996e1d80949cd344ef31570613cff2893db76c798f2f8070e"
      "nb"
    end
    language "ne" do
      sha256 "7aacf8fbf2ea8d98e6c71176a9e00b659367ff99a47b2375ef3129c1dd114f4e"
      "ne"
    end
    language "nl" do
      sha256 "2ab329b79f1f4a9dd785550b7a2afc776835d7d633dc41a0b047c643767f849d"
      "nl"
    end
    language "nn" do
      sha256 "e8b666b381f62a3451019908c776046eb02571aa6b36081da7f8b1dcf4073866"
      "nn"
    end
    language "nr" do
      sha256 "33e84cc4dfc1a4a6a436e97c8e03db01fa7b0ab15ec13654a0f96442b39030b3"
      "nr"
    end
    language "oc" do
      sha256 "47378e36a7385b1451595e464210065a53802a048c5fdf4fa48e078df1262572"
      "oc"
    end
    language "om" do
      sha256 "14e271c313f3e531ae9ebac640e53b539e07326cdb7c7b3551eb4404a6f3dd6d"
      "om"
    end
    language "or" do
      sha256 "65618ca740263ab7e12b8444aad8276633e61bae7d8792b07d5fd5c0d90949ca"
      "or"
    end
    language "pa-IN" do
      sha256 "381e604ff4a1e40dbe4c608050d7710924568c4a38e69d4cef3d68839fa70a66"
      "pa-IN"
    end
    language "pl" do
      sha256 "d7fa319f6a49fbe9decfbc5f94cdf228d8a6d69a802871ae195f9d8640cd341f"
      "pl"
    end
    language "pt-BR" do
      sha256 "5ffda3a5e598bc5750b38e2334e74adf6ad2bb486c74d86ff7e5ce3c3ff59882"
      "pt-BR"
    end
    language "pt" do
      sha256 "4051c16d6e606862867f57412c688307b490b27f0d31efc9eaa8f6a2f415733e"
      "pt"
    end
    language "ro" do
      sha256 "0c2af097a6885b84f3a9fd4d8c3a09112f319b1b57faec5953a86107139bef09"
      "ro"
    end
    language "ru" do
      sha256 "d22716dbc6eb25993eebb64e5833b17ab8093187a1ae1f51911c7c31a65fb963"
      "ru"
    end
    language "rw" do
      sha256 "c7ca75b65b13ba27fcb35afea0d0d13c1a7982a2b164491293c7663ac5f67a05"
      "rw"
    end
    language "sa-IN" do
      sha256 "89e407452e267d9b65abfc890765002ce73bf7a21f0aae417418ed8f0a9a2fc6"
      "sa-IN"
    end
    language "sd" do
      sha256 "03848bc4f8a0bd4811c40d627372b8ade1feda7dfe09b6fa07f8ffe772ea33f9"
      "sd"
    end
    language "si" do
      sha256 "e2b0a7028ce8a49825ea331fd96ca3e95e6867afe8d248e6237be111d09b4892"
      "si"
    end
    language "sk" do
      sha256 "47514bc85d94362235e7e9554375fedbbe56909eb4d4bc5a72d02a12bb3f3f46"
      "sk"
    end
    language "sl" do
      sha256 "75efb3967174ff382b1732cd56d56fecc5a893fc1ef6554fe5a2423a6bf986ee"
      "sl"
    end
    language "sq" do
      sha256 "92cc080088f3fb20c69c51c2870125ebc6e76171f9cd54fb7e98ec47f38d1dc8"
      "sq"
    end
    language "sr" do
      sha256 "4994a3ac20788672d97e008ed5faf8cafc5861821d6409c2b5b95a697e7ed399"
      "sr"
    end
    language "ss" do
      sha256 "b001f6a629abc9ea869883e741a15147701ca41cf5292c282a2420a4ba9db741"
      "ss"
    end
    language "st" do
      sha256 "d7a7df46190e1cd9a24c799b57f01c14f70c14eca03534f68ef42f0d146a547d"
      "st"
    end
    language "sv" do
      sha256 "434e32f449f1d468d697c77ef8b9bb30733b1f22e0928935e29c917cfec09172"
      "sv"
    end
    language "sw-TZ" do
      sha256 "a4b00d069d5daef2b0ea41cf9f16961ba61ce6b8ecdc8c2769a2b1489e5533d6"
      "sw-TZ"
    end
    language "ta" do
      sha256 "7bd727f7c2e18e34859979d28dde13bb734b29eaae6ef957a63b75c05868d261"
      "ta"
    end
    language "te" do
      sha256 "5c63d14c4cfab913fcea76a24c745c264ac10137e1551632e894bfd89049ca5d"
      "te"
    end
    language "tg" do
      sha256 "03b0857a49b5c4d94b23ee5cd047780a7311fe1fff5fa045e15a3cca773b834a"
      "tg"
    end
    language "th" do
      sha256 "1c2376cb98df52136f0710defe8306a1f79ee9403c6c631f48fbc67174f5897f"
      "th"
    end
    language "tn" do
      sha256 "d0ed1e090b471fb9f81558c3fc913ede067a9ae3333438468286f94c9d4fa622"
      "tn"
    end
    language "tr" do
      sha256 "d011348f01cb522b8079b62151d8158ec00ba912e84d971d06e69f2fa0e1c316"
      "tr"
    end
    language "ts" do
      sha256 "a3a37304508d8543f90963fa8c532f2ce7c5134513705dcaf930b8d08465a356"
      "ts"
    end
    language "tt" do
      sha256 "59847db481baf240763d159e58675710e401c41eb6d46c9079e8616f945fae37"
      "tt"
    end
    language "ug" do
      sha256 "381f0597a074a0ba00314664b67bbc527381c42b2da73056a6e81132b948d98a"
      "ug"
    end
    language "uk" do
      sha256 "dd969df8eaeff3f05884fce7903c2b675769534d192184a9811a9b93ccd6228e"
      "uk"
    end
    language "uz" do
      sha256 "8fb3bd1de7d82f02afcbf8b52974c82e496457aa4749ad62beeec6b4bc66e28e"
      "uz"
    end
    language "ve" do
      sha256 "31cdad94124ca811f86cf55f176ee42dc835f603f840f000e3bcca0c43955ab0"
      "ve"
    end
    language "vi" do
      sha256 "8c4e6a9d88c62af811b55671de5e17a9db326a36bafec5fc7f988d658668419d"
      "vi"
    end
    language "xh" do
      sha256 "14cad4a0119375190016d5d9d7d3b6cb6fd2755aa6ec60f3895a100c74fa3bdc"
      "xh"
    end
    language "zh-CN" do
      sha256 "8aec50c4042ad0f296648f03113cafa84f23179203d8359b238f1d7f7d70bdd6"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "12d8cb58d7fc719cf3eb7807bd6f18b868e1a6345adb40088dbf2d2194c48c70"
      "zh-TW"
    end
    language "zu" do
      sha256 "111feccc8e1cbd3119f7e83e5f9f464df29d9326fdc0d0dc93b8ef4a2a23c699"
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
