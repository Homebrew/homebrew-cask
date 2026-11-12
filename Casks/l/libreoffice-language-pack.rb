cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.8.3"

  language "af" do
    sha256 arm:   "5f3455290daee6add74c40142b856a6664e6c398d18a174355c6ce161f0f27b4",
           intel: "5fcfd12e2c5574a1a244b2bde99f0700f352c6945c22c471eba3b2fcbc6705fd"
    "af"
  end
  language "am" do
    sha256 arm:   "e486d77ee60533733e3bbcbd460837087ef26ba4bc74ee8af1ce5c5da0094e2c",
           intel: "ce58c51e52480047e785c1a034fe552a54680f8cb2ecb586411a245cf42bbc32"
    "am"
  end
  language "ar" do
    sha256 arm:   "e25c9ac877dfd9080db40a847bf0841dcdd6d515a648f56c3cc4f98778863929",
           intel: "1f1ee2b7cdc9d222b9ae9cfec07e316a3cfb9823ac768d84148239e5257850bf"
    "ar"
  end
  language "as" do
    sha256 arm:   "7e46054e9426d9514d24c56d09069d9821f6459d1f60562696d3c6ffae41647a",
           intel: "bf17301aa25b244b156c6c2fda123916bb90a2f1732cf38841c36b3e19c60111"
    "as"
  end
  language "be" do
    sha256 arm:   "42047053841357c888a036f0a1b41ebf68a51ffba6bc42b8cf09e7e7e51757cf",
           intel: "b935ef54789b6336706520d3f805797e5206cabc8ae50d04fa358c728c56d79f"
    "be"
  end
  language "bg" do
    sha256 arm:   "ebc2831db497322e8cb584e5854e8d3a42e8fa1a8b6bfe485c10e832981ec24d",
           intel: "9db39852a4a1b7d2baf6a340f441dc5c7d8ea0283eb7f47d03b3b4c9d7916588"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "6decc5c38105754dac15464e586375dff3b0bfb94aa46764d4a3a112ff10ae89",
           intel: "46b6e5ecd50e0cb7a50af9acbebb6c6378580a8fb644aeb3d2707b7c6c658416"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "125f019f246d04cc178289a5aaf81fa19996116318fccfd57684696afbd62f58",
           intel: "dedc6c04d8440828d2be44dcf0380a86ef968627bc6f7efc4dd16a3fbb3ee2c8"
    "bn"
  end
  language "bo" do
    sha256 arm:   "f970f2b1f4af901bc176eb4a34757805cfa3c7982f7a9f0c23fc79b1e2ebaa00",
           intel: "113a5ebc544e72d3de14674cd9185f4dd62553623f38da1b06caa54bdb4a7b85"
    "bo"
  end
  language "br" do
    sha256 arm:   "ca227e53228451628322f54d7ca1cbfa5f0fc5068be82046ed3cffcd8b31c696",
           intel: "d885635cf33e8a54b51c7d5462b0875937875523379a2148d8916a1e466565fa"
    "br"
  end
  language "bs" do
    sha256 arm:   "1bba29997cb8a9c9893017d6e10e39e3061e596b5f8dde4c230ca89469b34af3",
           intel: "4624477de961bb8ebdc5b1846c6d7713b582796cc36a256c4714bc77c51b3dae"
    "bs"
  end
  language "ca" do
    sha256 arm:   "56c65e465628d1e282a0e371c0588408ab6058e6c42bc02f4c344d55a0f80770",
           intel: "a7553907cd9237ccf14ebc4475ade3c2c4294d33dcb578ffdf71433fd853b81d"
    "ca"
  end
  language "cs" do
    sha256 arm:   "0cd5ebeaca6764525958496f95e65fb3a2330686942ef1dc778b3ca7d5a8f0db",
           intel: "065078e5a3775dc65bbd1a23d6e065daee521abc30002d70f0be42543a328819"
    "cs"
  end
  language "cy" do
    sha256 arm:   "32addb5f5d89e572eebef49fb70bddf32fdd7eedde5bc632cd9dcbbdb9d0a8b8",
           intel: "7e0296a43e12a32c900ecfa6c083c8108f9778194c16d596c6ee65ecd558ae92"
    "cy"
  end
  language "da" do
    sha256 arm:   "d4ee5f4a429da90160f851fd0af749aa684b7964f336fd3a2126e88737532e7b",
           intel: "93c63c27e51e28b3ee5fba804ddedee33fecc45c92da9f01da152d5264044bb6"
    "da"
  end
  language "de" do
    sha256 arm:   "aaabb9914e9d5efdf1ee0ac4d6fe698def1f6a2537ee9c5682bf3ae79b4ee9c1",
           intel: "062e573a9eec455027800d8f9db7a66fc92aad85bc8ccee315e952569029e175"
    "de"
  end
  language "dz" do
    sha256 arm:   "a0cc05789214b2fa3a607452d70e1da8458e4c325598a9c130313975f2ebfdc9",
           intel: "8252f8cbceabd0622f85ec0f78694ed26cde66df98fad2be85a9df9db61d0b9a"
    "dz"
  end
  language "el" do
    sha256 arm:   "930d71c035ea8649e1ea377964a3ea613d3f5cca25f71a7ce25922a289767541",
           intel: "978b24bd34efa31ea924539ecefc6d9ba3ed118258f026bd497f92d86fba2528"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "6ebd9b80f07d39ed1ef7fe1b14d8384e0a0f5d7c5c8ded8c9a6c3b035e4ac3c9",
           intel: "1776a44659a92dc058fb70d2a4f9ed3272d185ed1a6aa86b94ec5cbdedf559df"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "566f011f62c30556c972eb9c55e0f623dabc934c5d4c410a46524da3ebcc2d28",
           intel: "a8cdbba0115b0c5e4e23b5b0c32f58761fdebd8b6ab4ed66ed91efdd245fe3b4"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "9dc026948cdbdec152f520f18ac21bc8448918d4dab7eb3b011526f86ae62d2e",
           intel: "e06f0e3e746e9e87980cfcc0df0a7e4df4313aa54e81cdbc72c38660357187ed"
    "eo"
  end
  language "es" do
    sha256 arm:   "0b53d24dfa2b5343852f5ee4bdedc3b97b198824512c70e8a1f58d3e77546491",
           intel: "ed46e71da18c492506780678d21f7dbfac2383b226727644c800bfa45f8df787"
    "es"
  end
  language "et" do
    sha256 arm:   "e3136147c931caa66a4f56fdc8503c93e937a31dfb45f8f2f3ab0afa9af8aa0a",
           intel: "0242efbf189ff58e62caa8e71f428825612ed98545dff457eb832034cdb4fc8b"
    "et"
  end
  language "eu" do
    sha256 arm:   "972e2c05f473469e47f25a673ae59580bf60511455f2ca462ad556dc6242ac69",
           intel: "eb75a190621ab4ceb9b3f76b7d9f579d201d0b99c985bbac2795478a998ff82f"
    "eu"
  end
  language "fa" do
    sha256 arm:   "697dcbc04c756acd590b20570c1e300450b318a9fc632c44a3530d405269f259",
           intel: "03f62505c85c7d9ba59b31ef7381e13714927e8c05bd11bab26973a2c11e6bc9"
    "fa"
  end
  language "fi" do
    sha256 arm:   "cb684aca4fab7c0d2d0dff34cceae7d7c037c4876267b8ed4e9035fafb22120d",
           intel: "ccaa43fef4f2550f5bace1d817a2ec011a3e306a17b342ca2a7d2e762b700664"
    "fi"
  end
  language "fr" do
    sha256 arm:   "48d6fe4adf495c70a5589e6f5facf2481fb563aa9ec0541f3a5429fb5d110fd6",
           intel: "2cfd0ef20b344313f2e7003690c10a26c7d3ad9c312a3ad236ffc47ba115449f"
    "fr"
  end
  language "fy" do
    sha256 arm:   "2f9df2004b45c6b618489859f36b9670da3a6b9bf66c90b1ba5cfd3822a47934",
           intel: "a09cbcf97123d89f6c89ffcfde419cdf42c38e3b17e2d6d5522975ebe677a255"
    "fy"
  end
  language "ga" do
    sha256 arm:   "a1fa96a9db209eb056f1ffac2e8f3168572ca3b443e8d64f4055ed038b39524a",
           intel: "d273933a0d2ab7044fca0d239209a3723f9379005814a78c68b06e20d519e53c"
    "ga"
  end
  language "gd" do
    sha256 arm:   "14e491091f1b4267cf2a8dd7735d12d0dc7791bec24bed8daec18171987b82e2",
           intel: "b35b4726a20a14d971625626b5c701c60c6acafdffd34cc60dcad8b5b944a677"
    "gd"
  end
  language "gl" do
    sha256 arm:   "411d4a56e4669f9c38ca721c5bffa53f7d39b1131911da6a2f515383fb9f5fa4",
           intel: "7cc80090f61b359c35d82dee5898b6af0217b7cca4b7acbc30923570fd753ca0"
    "gl"
  end
  language "gu" do
    sha256 arm:   "6ebca8d404533f54de7e6a997f8058a879d5677911be74453a3f34acdf058612",
           intel: "5919c1cde8cd6441ba029c02c6ac4f31f058271e95a2fd4d083330eb9ef36f1d"
    "gu"
  end
  language "he" do
    sha256 arm:   "84d81a26c79a3034e65c88f91fe18636b00bf0be5196ae1bd4841d81e3a12280",
           intel: "b71104302dfffe001db8ec89810df06c4aed0857e0cbbad61e22643d56b762c1"
    "he"
  end
  language "hi" do
    sha256 arm:   "e25b5dc4c7be34e9fa5579fb121203f1df7f03f031e8fef61a0bb884b7ad802b",
           intel: "7cf4ef661069624064233ec148e143c443e34e3fbc12727b6d238aa18b795b2c"
    "hi"
  end
  language "hr" do
    sha256 arm:   "2f008dc09394af4c8df286315f857330452cfe44bd3d28182252b3896c1679ab",
           intel: "7a3c7da32e27e5d69382a001fd65d1945db0a775ce806c53693c217b13f6d961"
    "hr"
  end
  language "hu" do
    sha256 arm:   "78ba8212a52da79d6a73ff924216be006d93ff01d6a8a0c2e2fd56bf25f5f5f7",
           intel: "24ea438d38c61a0acfb01009632914598055be90fed094e04b2e38173ec087cf"
    "hu"
  end
  language "id" do
    sha256 arm:   "fc8c0a9ece963097509d6efffed2126a110e3ad50b5b5fd4aeddc3e8bfe85012",
           intel: "96f187202fbd6b4285ed78db66e3df17d0d1c2269a8eacfdfaf12cc5ec297289"
    "id"
  end
  language "is" do
    sha256 arm:   "47536eca271d769988133143f7d3104d428a8f0a228d711df31dc9f8ab618d39",
           intel: "e09d8bcd3318b83f27f317c3925401ae984c5a70ebabd45ff277be0fac668d59"
    "is"
  end
  language "it" do
    sha256 arm:   "03adc3216219f956e53c23771245846e9cc7f03638630a2cabffda1db2d6c7df",
           intel: "f065c0ab14a6ac41ba60ee7edfedfa9a9ac4f4148957b354dba1154ededbea65"
    "it"
  end
  language "ja" do
    sha256 arm:   "e1cb0c0ab35cd643723269ce2c65978eda3f5a84c83e3582cc5e2c49c537db44",
           intel: "9715a442ed3c4d7209681aec3326b6b57dbc900bed4ffdb9b1ebb85f630d2440"
    "ja"
  end
  language "ka" do
    sha256 arm:   "3c4703054a493a97893bade01134a92bc0ccd793142534901b0a9d575dc0d41b",
           intel: "7e963cdcf79c171616a998b7d68e089e50f78a2ed43392fa905bf66f4f9c67c0"
    "ka"
  end
  language "kk" do
    sha256 arm:   "6e681f538c8d11d9cd53a7e5b0fd46bbd26a5bfddb1397af862967e898ccf666",
           intel: "b7fede9f98b3baa82b6ad208757c731d9442964aec1a3503257480e8fc1bc386"
    "kk"
  end
  language "km" do
    sha256 arm:   "74ce90208959e8e95f9af6781c110d75eaeb478ae910656a5261345694cd2c7c",
           intel: "60ba9e723415ed42d2da8547bffc669beb3ed00455ca0cebc37c42bfe6b1110d"
    "km"
  end
  language "kn" do
    sha256 arm:   "48c54006fa090008d243b6566317600d288dac816b8e6f0df02163ad08c4a027",
           intel: "f8c30631f2900580e82a6bc01e3a2d7c282648f62c93a4966d14fee2ec34b409"
    "kn"
  end
  language "ko" do
    sha256 arm:   "5378472cd401f5225d745d512083bb9bc4f2b41637663fd23b84cd0bb78cf8af",
           intel: "a28e05510d8d547ecb44dc522ffe1b167e75b0b2f887319b1774af41dede56d8"
    "ko"
  end
  language "ks" do
    sha256 arm:   "4a635ea2301fec4c9598fdcf4e4f105672c4a45fd931effbcd24b38e23c8f85a",
           intel: "c0bb3aaa2f666d114cae0ce86bab3cac38fa338322160eb6523dbc60b13b6ae4"
    "ks"
  end
  language "lb" do
    sha256 arm:   "f5416a62b67a18b093caf9e78e26bffdabe12b784bcb37fbf8c24ec11f4a975c",
           intel: "c74ca6fda2902102bc33a1a4479aef10270504ca6d5038d65f3e055969948dc6"
    "lb"
  end
  language "lo" do
    sha256 arm:   "4b71c670fecd99b5fe74a04a6333357ec6c2a1921bb377b06218edd7c41e4ddd",
           intel: "ac072414da325c0500d9ba195e7945e49467948aeeb06207dd7c93261b6dcf49"
    "lo"
  end
  language "lt" do
    sha256 arm:   "a990a57c40e7e9819566590f5151ea846dd17c5829e9f12a4dc019856d6b115d",
           intel: "15b9a760b6399cfb0edf0a24e517ffc9a0c4efbffd19213088365a87fb68254a"
    "lt"
  end
  language "lv" do
    sha256 arm:   "88b2b105ed7c541a90700ab6ca346a62db9c4efed82e6291ec3958a07aa1c7a1",
           intel: "2105d0b6f05ca4b9233e73726aa48333bf9c54d7fb22b5fab8476345981fc7a0"
    "lv"
  end
  language "mk" do
    sha256 arm:   "f70eb9c3927bf8181f0f98b7b9ccce566190509386cee19ce5b387a640789933",
           intel: "733509ddb4e6d59371cc04da5fb494e84379e7a28b92fba4c9e57b8ea5fe527f"
    "mk"
  end
  language "ml" do
    sha256 arm:   "45c2a83e2f45f99b7fcad8754d04e227dcf799690a7f9e5dba2b48a22e5b0210",
           intel: "6543df6217533bd55c60535bce04a77d14c1cce784f75b95a37dd011bcdd1e2e"
    "ml"
  end
  language "mn" do
    sha256 arm:   "f4d7f1c61351dec4af5cb87fd37ad52589aeabd0d3636200bed72d6c01051329",
           intel: "462b4031851f9aa3b0a02d6fefd3eb1a4d3959e8183fe2c8c7cbed04be3effa9"
    "mn"
  end
  language "mr" do
    sha256 arm:   "8e6dc290067e47316a31396e15db802816cb17f0ea955baf1151057295c8db50",
           intel: "b1f17d274a1f0320f1dfb017a866037d3f2b957c7683513107987e89e80211c2"
    "mr"
  end
  language "my" do
    sha256 arm:   "22d70ed5be221b6817021a40926b5577df6ece92e9498f6c79db906b5b5fdfd7",
           intel: "7ad103749d7ac7bfbd56a384c2490e10c1f08d8e6ec6dd1c99fc74f823ed595a"
    "my"
  end
  language "nb" do
    sha256 arm:   "ff0405e327d867ca0abaaa171b3f19e0240394d407e2848e3e73c0604be6b692",
           intel: "cf7eb7506ee69d2c6a7cfa4fb2232232f919edb1d7ad107afd278334d03afb72"
    "nb"
  end
  language "ne" do
    sha256 arm:   "14ab6044fbf05fd64df36d154af157516f8eff414f4da506d71b94717cedd15c",
           intel: "daaaee839b66294683450d854336bc1bbd2f979c38219e1fa0e0c7ecc5043593"
    "ne"
  end
  language "nl" do
    sha256 arm:   "e8b67f80bd4863663bdc506c1e697cc076b1358251679ebb7c8ce2e4e59b430c",
           intel: "bc53214bb873d88d28af7eb9876eeef2510803e0814bd1a14e9e3eee023d2ad7"
    "nl"
  end
  language "nn" do
    sha256 arm:   "cc7647c8b787f0ce40fcbc21ab41d55a30cafb95f63cc15cbb9327926fe15676",
           intel: "4b56845ecadd372d5ffe3958aad21739f6f616cec102db275f6b299694f47b7d"
    "nn"
  end
  language "nr" do
    sha256 arm:   "d825c4247f7c447f56a2436e863f161e2b9bfedfe0f44da866673829ebddabd4",
           intel: "c08babadb3b93958f545bdcca1f6847ccfee338e929c41bd006e2ea2be05f7d1"
    "nr"
  end
  language "oc" do
    sha256 arm:   "617fd789d87b6e7b54ae6c98e55b3c3400811591f6c1eb952ab1d00c155db4de",
           intel: "5b0072eb46dd1e4ec85008225c5e71679aff7852d8d917c6a59d13baf297d106"
    "oc"
  end
  language "om" do
    sha256 arm:   "e52f6434d772698cfa996e47a2344d8f99ae8fd0f8f2d89348ec513e08d31a3a",
           intel: "4c099ce17494b0e012988ba77c72c3d3cc40d2888ee264f1e872e5e762d6a5c1"
    "om"
  end
  language "or" do
    sha256 arm:   "d94bfa79d59b213b0954f2186e0d0f3e9cfc951076866391e6af9309437474d8",
           intel: "d75e309a42449aa731f4bf7d09e89c0093869ced3e10c9e76ac0fce62731cf61"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "14f2c93258861f34ed11d54f84b968f46ea2e83b174494ddd61f9af7fa1f48a7",
           intel: "2cbfdc28dee067fce70c6209564451e3a42fd0bb8164054cc5af93ca853254c1"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "d0bdd244029f2081db72a7fba79d433ffc173b80ea1146fc6fe29763e3859312",
           intel: "4867acce39e3bb598f7d4434a7388e0c17df57f3c49a7b75fd78f76e0ffb706d"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "81c9c9206ec671e56811cbb574d424ff1555640f864251458c7bbe63356d2c62",
           intel: "3a22817057ac730d6f20c010d15178a49bc7c98fd1925c6f05900752157e2c79"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "0495e22d29ec006cd6631dfbe205d75f99f96212944ee6e385139af6f0d6f16c",
           intel: "5880f3fc7c43476d991f9b20b635cbdbe51a0030a3c4d13f92a22490ee9fa153"
    "pt"
  end
  language "ro" do
    sha256 arm:   "c59650d290a8b7d80da7df869ad2affa8dd5d90964051195f7ecf1883ae87316",
           intel: "00b561c41db131c003d489b7f00e740ec1ee34cddecb0133706b16ffcf7be55c"
    "ro"
  end
  language "ru" do
    sha256 arm:   "b43285e2cdc58946dff47785bb2ed840c0b20a2a3be38f8c3def207acd8653bb",
           intel: "ed97e5bab7c98fa822dd9812d52f9db2c67a45e6fb685de1f35e7275086ee3f2"
    "ru"
  end
  language "rw" do
    sha256 arm:   "6828f2fd8eea53ab70a175faa4cdc9a2d6b259e445f017ff2a33ce180735fc6b",
           intel: "60711546a674aa783cca886b5a3e762b2b9a4e5ca13376d2f0bd4a25184b5ac4"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "a572f342a58c6548044b6371e1cd30eac1b71c1d0ab47d4f96b7f44ddebdb501",
           intel: "7be61f4de1504ac50ee688a01000c27d3b68a46a6e07cbc1e9f49fade3032dec"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "a9f4fccfd37fbdf81a7f156c8ecea234a18311a3bcaa7bf57a9eb1abb8d53c62",
           intel: "923b740c3f5cf408858e6e1ecde9d482524835d074935ce4c84ca45a51e53496"
    "sd"
  end
  language "si" do
    sha256 arm:   "ec0c40f8be51a66e5d71126ce0749d9b7882a347b913526deefcae502a68edbd",
           intel: "75dc8a1dd5432733fd7e4e08958e8627253f07003bb1ae6b6981c6ed5f61eab9"
    "si"
  end
  language "sk" do
    sha256 arm:   "d57e3f5f8cb21ffbea394be5e83841c782e82972df5ab705c7d84e52728eb91d",
           intel: "0cf415b6b8fed75fe427af534e0811a1faf197e1d51af67244f3b931f9603e4f"
    "sk"
  end
  language "sl" do
    sha256 arm:   "fe034ddf79ad4ae254e117efdacf05e64ede82fd04b05658f7c3ebc4f7cbfaea",
           intel: "dcff4cecbc0ee0883ef2cb0ad3927e737c544027b609e35014d99910e80f7e8d"
    "sl"
  end
  language "sq" do
    sha256 arm:   "7c46b8b74a61148fe6f9b391c828ae2909c95f6be248fc07b51144e7aeb94a40",
           intel: "9872c9a55fe6f1d7749417daabf8236444f57eeef3a9a4805cb2c871d622a664"
    "sq"
  end
  language "sr" do
    sha256 arm:   "7d692d402f7bd8afabd09d3ae6044648672beae73e920f7b898684bd26a6c8c0",
           intel: "9fb8353f717830f7ff0755800b1e2d93125e6e1615289f5e889aff3924abe4bf"
    "sr"
  end
  language "ss" do
    sha256 arm:   "1fef370db3e62d7b8a512553391cb6d63b51190c3e8f37f53db4de998ed9d66d",
           intel: "204b6f020eed8f0ba204277c60be13770477e20c98b239336ba5fbcc720cf018"
    "ss"
  end
  language "st" do
    sha256 arm:   "4ccbd34bfe3f8cc092ed48f91d02e3158d253f03cf158a1793f169721c3657b5",
           intel: "8fe03fff3a83e8031d57b1e6ab9197bbd276edfddf3ccc303618c433cc5da8fd"
    "st"
  end
  language "sv" do
    sha256 arm:   "2c6b5a1a29449f4c9732465451cb0c979e88081a37f6e649a1c5245d1210c7c7",
           intel: "8cc566e387b55bf6b7811440d7b3db3d4663f28a1d22606a060955fe62d012f7"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "510804709672cf834a830e53f14db9795bd1eae65fa7d5fc50ce157fb1f6ac35",
           intel: "28f8607fba391eedef4a6fefe421f5d49cc21c3b9e3289bef9786ebf99070180"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "c0599c6d0781276fd2b3e315ab881976c9f58633cf1802c1335f19d2749abf27",
           intel: "d32c2a63a80d331160d7e4e48ce1fed9ac17d3c5cc63529649fad0508f66a85a"
    "ta"
  end
  language "te" do
    sha256 arm:   "7a1af9d621844fa3f1eaf918b8e20d636266cbf3277f6915c0895d8e9243f36a",
           intel: "c8ca7dc28ce7f3e4719cdc0b560f1be55df5c64317efff5301f2e94116336755"
    "te"
  end
  language "tg" do
    sha256 arm:   "eb475ac58c4eb917abaea987d17c725ca751cba99f40e8597fb511c66a1d33e9",
           intel: "7a6f840f5d2cf0e70fbdb46239a7c9f545a8143662d354d124d3fea77bd54c31"
    "tg"
  end
  language "th" do
    sha256 arm:   "3abab39730710d5e76c238b222858da924c976fa83241aa5ab12168a2640f043",
           intel: "7fcdf8a59f19d37e05e38c1768163f194fa79d8d02030be67cbc2535e13a2a20"
    "th"
  end
  language "tn" do
    sha256 arm:   "99719f6eaeecacd014ab3db4a87422441792e007720bcf081fff1de2fdc106ca",
           intel: "74ef53c00ed131ebe7b008070f1eb3863a4b36d7d4f838a7ec5a9bac64e0ea3d"
    "tn"
  end
  language "tr" do
    sha256 arm:   "a0d4e6e550081538f3af642415d772dcfd376c342aa3d7a767b445a477c01703",
           intel: "f9a97032c3aa076e57c2b4321a960eb5b0b61cbfeb1b39789ec721d8211c5fc8"
    "tr"
  end
  language "ts" do
    sha256 arm:   "136c898ccbdd0db60f44a2030fd23d3252e715d93dae4e02bdcbbb9e1463f950",
           intel: "c581196c068730e8b2a1f1e5b6c4354a00d56a62ba3d4f3eb2f8c412bf4c6d20"
    "ts"
  end
  language "tt" do
    sha256 arm:   "967db7af32fb7c9ba5d1a0d29c9b98944af66cdef02398958c1c53c2d0520ab5",
           intel: "aaafdbd6dd95c3042f3b5bdea2551a00aaa8a358530dd304f3e392d2d01e8f0a"
    "tt"
  end
  language "ug" do
    sha256 arm:   "13df12a60a1604a625eba3e38a453e138fedf4bbc6ca2b6f5af637abbefb458e",
           intel: "dde3bfef839a62be8501ee7954f76eaddc87eb39f43901ed77ad46bc44dbd524"
    "ug"
  end
  language "uk" do
    sha256 arm:   "faeef57a57338216237dba3a5e73c6d2b14df6250baf51517a24dfbd4659077e",
           intel: "159f8e6e5ab798fe2fcc72f8b54ce48ab8d20e6b6ff3d02d309a24a04cd52c87"
    "uk"
  end
  language "uz" do
    sha256 arm:   "51add2f97b7bb6445245ca0ed4e7e093da15f849203dd6b4df792d12baa497ad",
           intel: "7b1b8d1796f452db779e95f078d688ebd6b88e8dcffd1e7ad69c5150cda34664"
    "uz"
  end
  language "ve" do
    sha256 arm:   "1e6f3586e6487da1e8d3dc0aa3c6f6dcf574457975079c70242902eb0f2360a1",
           intel: "d189b054cef47e266ae7771902830c7a8548517cdc230d42da8c5052f820cec2"
    "ve"
  end
  language "vi" do
    sha256 arm:   "ac05398ef45750bb42dd87a675b71c29d75f3711a413f61a0e924402e1a2b6e9",
           intel: "1da2b6bc12361f1b2d2c52f16f76f48f03c7de069bd94133c32b356e9e9fe8a2"
    "vi"
  end
  language "xh" do
    sha256 arm:   "05076497d83a836d44172a54637b40042ba7ed97fe5c019d77533209268a2792",
           intel: "85d5db532c69bbc07884f27b380f4a567c8409a92f0b28dfc7df7414c91c7113"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "14db617510520b415c00ee9d3dea28de3907b8e63bb9b711db24f7c6a09456a3",
           intel: "928a024c1ff290b53d9b725c8f3ad770a53119a1749a02df1d87959fe370719f"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "85aa2ce78ca07fb5109ca4305e39de161b7728fd4db4913af1b884bc5c2e77c2",
           intel: "61c0818355dd518500ac33401422a53136dbbe10eb7d678441805b1af056e82a"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "8aea82c5c013a176ef44c0b676405078a0e915193c4c134d243b2956f2396a4c",
           intel: "5ba92e4ac80100ceadf9850a7ba66af4af873a09c58c9a777493b579cbddf1d4"
    "zu"
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    cask "libreoffice"
  end

  depends_on cask: "libreoffice"
  depends_on :macos

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

  zap :not_required

  caveats <<~EOS
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
