cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.8.6"

  on_arm do
    language "af" do
      sha256 "6985afa9c61249632673cead593c2a89a14d0b6217f03a7f0443a5fc11b08d45"
      "af"
    end
    language "am" do
      sha256 "68b9d9428c2c73087168d35412a604981c685cc185f0301e262921bb5511ba1d"
      "am"
    end
    language "ar" do
      sha256 "5eddac6c3b27a577bb7547db9a6ac353f4b8a3817307a75aa6fb7f0cb8341253"
      "ar"
    end
    language "as" do
      sha256 "6b48adac04ebd363c8c9dec47d3f953be45a010175160361531428f0e3f3ee21"
      "as"
    end
    language "be" do
      sha256 "39d41d27fd68a2cda977f885c7f489e0d34cc61287b5eaeaa625951d116f5ece"
      "be"
    end
    language "bg" do
      sha256 "f354739cca9656dd133a27be64682ebfa56ae1d5d65091d6852f41054331f8e4"
      "bg"
    end
    language "bn-IN" do
      sha256 "74940862ded85cf748ec838190a9f6de587bb49b3c7c1d3ad185e6ccf8a06351"
      "bn-IN"
    end
    language "bn" do
      sha256 "3bccfdcdcfb911dffe620dc28e52d0c86ea00807d74fc6a0e6f24119cad1851b"
      "bn"
    end
    language "bo" do
      sha256 "749047cbcd1e84408d2689b415510bda1459cb338171eb0fa7fbcc56b8c2195d"
      "bo"
    end
    language "br" do
      sha256 "092cb96650d3400f67ec0126f93e207cecde198f4d7b807722bf320c9e1b401b"
      "br"
    end
    language "bs" do
      sha256 "2effbde6a07ba800bd9e7c3c380162b607cdb6f944dde2b12f5b34fb46d98922"
      "bs"
    end
    language "ca" do
      sha256 "e6e0ae34bf1b43af93454552a6e10506fdb7ffa8bd3f31133640fca2c876bbfb"
      "ca"
    end
    language "cs" do
      sha256 "3a56e0468e611a7148c348e5631c543bd884a10ca3c3b84a2591fcffeb994eed"
      "cs"
    end
    language "cy" do
      sha256 "5dec2d46d4c507480977abd22521ccb2550b8b229f390f47ab0fb45201ac9305"
      "cy"
    end
    language "da" do
      sha256 "437479cad16d5a2acd4ab0479a659c58be3588dbf3e3503a169004939fb3ffbf"
      "da"
    end
    language "de" do
      sha256 "f4199ba0e6deb135f7b3ad867b5eb8cea1827a49b1d63cbcb9be2957a9ea27b2"
      "de"
    end
    language "dz" do
      sha256 "c8c90b7c1364f677ad5cd5f8d6fda8cc3f6fcbcb602cf2142895726c2b75bcfc"
      "dz"
    end
    language "el" do
      sha256 "9666371048217497a4e06197f63e22e6a6b9dc111927c5dfe4273120098d6797"
      "el"
    end
    language "en-GB", default: true do
      sha256 "c3534a5c1aa8c5a63002619fb06dd8b0fe0bda86056bce4be12ecafb4312a425"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "05638986d31ecfeb7e0cede5838c5fafc95673802573ca940344b2e59973afe9"
      "en-ZA"
    end
    language "eo" do
      sha256 "12abdb0e423c2f2e5d2cdd0b50a7a29a06d559ee1f0061cd5de5dc44f9bf1696"
      "eo"
    end
    language "es" do
      sha256 "02b22c712f321ddafd704068373d5abf17ae1def7e491b693a7c2c2f4e6db5e2"
      "es"
    end
    language "et" do
      sha256 "94b687637226cb683b7c45ea4170807532675dba0b4ab5a4b87b0ca120a1235a"
      "et"
    end
    language "eu" do
      sha256 "7dfcc572ba82737bac8353f2b57315ba992caed3de8146697f7e23f70696955f"
      "eu"
    end
    language "fa" do
      sha256 "1bf04e9a903b8834f0ce8c0f68e081dbfc7f313cd28c66868d8c1eec9b693b7c"
      "fa"
    end
    language "fi" do
      sha256 "4d6483c8c19bdf9a7a1e03a56a34038fce9f271921fde47e91d9d29b7bf9f60b"
      "fi"
    end
    language "fr" do
      sha256 "434c7f80f8ead939e4da78bfd043d46bbbd7261091bf305f694578aa9a8084c7"
      "fr"
    end
    language "fy" do
      sha256 "0f6a06046c826773e2129117273a62679de12c5af8060c5871dd1c24b7fca8ed"
      "fy"
    end
    language "ga" do
      sha256 "3e901e63f87e2a2bd47f0137dd4c864caf0f0e4ed15dca3f6ef123b55c669942"
      "ga"
    end
    language "gd" do
      sha256 "f1c901579dccc11e45ad13d68ef6af4b648e9e61e1e46d3452966b60e978c03e"
      "gd"
    end
    language "gl" do
      sha256 "97adcf8bc0aa219b89907e22b83fd08d79bcbb35b0b70b271593a2a4849fee12"
      "gl"
    end
    language "gu" do
      sha256 "34c5da2a73df033d3ca376b105ffbc49da8d00529cc03c5eaa895efcc66484df"
      "gu"
    end
    language "he" do
      sha256 "762de1eaaaec31d5f8a339f5535fc728a9230df4a098f26bd6f36117cf4e7e9a"
      "he"
    end
    language "hi" do
      sha256 "6e89baeedc14cafdb360604e1192dd98cc35f3404c1de73171b1cc3144563596"
      "hi"
    end
    language "hr" do
      sha256 "d00365950a145908d365f7f6e4d2d33e004ea578b8120e18d327719712a03bd5"
      "hr"
    end
    language "hu" do
      sha256 "5db2f0e311ba084b071cc5da8c759224a44c90294a2c499906f4224b6a8b6427"
      "hu"
    end
    language "id" do
      sha256 "448df1673789229fe3675409ec9c716b94de3667c5111e6ded5b347b157f2657"
      "id"
    end
    language "is" do
      sha256 "5777ebf40c90b96b0f25cb5a4a4be8394bce3d58fc85580aac17247694511298"
      "is"
    end
    language "it" do
      sha256 "8377ae395fb2128cff4efc81166916758fae7d47bd0870e3b92ac20053a44faf"
      "it"
    end
    language "ja" do
      sha256 "efd32f1c8cb2b7f60d74981c9f39260c9c6f7251b53d1aa905ba092eea8ee344"
      "ja"
    end
    language "ka" do
      sha256 "337a7f51de30bbeff9c86f253dc677bc80c4cb2f7961ccce41e837a93d918ac9"
      "ka"
    end
    language "kk" do
      sha256 "2b44a539938d4392db9993fd69d14997ed251d8203ec14521d98b03eb5635176"
      "kk"
    end
    language "km" do
      sha256 "e9c42427868dc5f13cadd3cbaf06c94b1b38090217d8044698c026581368e2d9"
      "km"
    end
    language "kn" do
      sha256 "01611060588bcb398207bf1a7ffd156955983e99e55450b81ef8c05e36159d60"
      "kn"
    end
    language "ko" do
      sha256 "95c43b1a9f1ec687c1a355fc0ac9eeab248e7126cb667d493961e8c1711e0cf4"
      "ko"
    end
    language "ks" do
      sha256 "039c1d386fbc5b4356237400eacf6906bf1196bed9a4897bb741a08f3dc89c28"
      "ks"
    end
    language "lb" do
      sha256 "fc8078492829ffb3ea3eb3e857be219550a37b252608290eece9d502f9339dde"
      "lb"
    end
    language "lo" do
      sha256 "6b9def7858d0b3be7813dea6dae7d60a4d79a0908f9bc12a1f3599988f2651c4"
      "lo"
    end
    language "lt" do
      sha256 "b9b8e4df57ad6b7fd1c42694e57c88db03993d01208f7bf65c709bbd82bfcde7"
      "lt"
    end
    language "lv" do
      sha256 "162aa99e8f21e8fbc27b7bd6d81b409119baabe69c0b5db77239255ba7b977bd"
      "lv"
    end
    language "mk" do
      sha256 "eb6c5554e69b2201f5bf9a0586c456df9289379108e9c6e30b87e16f2811c42c"
      "mk"
    end
    language "ml" do
      sha256 "3cd37aee05e77cbe279be59010bbad3d7351a749645d759f6060d1455b8c694c"
      "ml"
    end
    language "mn" do
      sha256 "6aec0da51ff0e9028d04b26302cd015634eb2328b179b934a8df586afc9a8286"
      "mn"
    end
    language "mr" do
      sha256 "0fb48a1e4c7e196f9f3680f2d45d95585d3dfc139408e0f439992f9268da3ecb"
      "mr"
    end
    language "my" do
      sha256 "bb53bd4de74b39ca4181b08698e60be9525328bbf802df478ce23a59d33591f4"
      "my"
    end
    language "nb" do
      sha256 "04ef46dea4564c7680e85488a5b83564701fb2eab524288d2d9dd040ac4c4b91"
      "nb"
    end
    language "ne" do
      sha256 "b4ebbc2b730b51ef3550d31b292ac15028e5b51cb3e3ad4ad7b310538565a9a8"
      "ne"
    end
    language "nl" do
      sha256 "10d426d64b28809ca9a2ff731405ba7799156cd827206a40d6037c95c04f741a"
      "nl"
    end
    language "nn" do
      sha256 "36133bcb63b0cd6aebef98cf441cff1c66c7899212810ad00733a23cb44f2a53"
      "nn"
    end
    language "nr" do
      sha256 "2bd3ffd608e2c5b7fa1802f74cda86e99961838bd8d8f72a4db1a10e81803628"
      "nr"
    end
    language "oc" do
      sha256 "2400ffeb89776e913269d23678fb32b2c06847b97edd6927102a0d341df4f716"
      "oc"
    end
    language "om" do
      sha256 "cdc5dddf184fbf756987b3633a4625676e9534ce192ad2f9210b3559e67cd050"
      "om"
    end
    language "or" do
      sha256 "c187c4647e3ec8185d08f5d440110d43bef50bf03d02b3bae26b1e4f72494cc3"
      "or"
    end
    language "pa-IN" do
      sha256 "ebe51de51a32a865308d49d120abea9639740969286fcaedd8a674cdd1370af7"
      "pa-IN"
    end
    language "pl" do
      sha256 "94949318e4896d0a25db8733cc9882e1e74f065c8331b154d39aca52d0f37065"
      "pl"
    end
    language "pt-BR" do
      sha256 "5d253ca02b48b1ea12025813389c8b6b3f69528d9cf28ec5f69a989a20e38ddb"
      "pt-BR"
    end
    language "pt" do
      sha256 "7a2d0898fe71b9a01688d0e2c0ad9b9e3b038540be264cd062dd06bcaa8e85da"
      "pt"
    end
    language "ro" do
      sha256 "aff31b6cb1190a1229ae9376f01bb516038b94fff51c2ec304b25635734aa28d"
      "ro"
    end
    language "ru" do
      sha256 "a3ace673192edf4d10df86ced0d65dd436970e771f77c00cbd5f8e53ac8c9a92"
      "ru"
    end
    language "rw" do
      sha256 "fb7d295f2b27b50bb7df7aa83ef442f26748c7f03b7e8bc9e7989218375b5ad2"
      "rw"
    end
    language "sa-IN" do
      sha256 "5294709f00157f526e26567f1ae2eb0c712f1491aa8dc93e4c7686076c64d211"
      "sa-IN"
    end
    language "sd" do
      sha256 "c84726262dfde4ba8b9a0f08ab4c3d73cde244dd9b0fb63da076d01269079e77"
      "sd"
    end
    language "si" do
      sha256 "631a9584369584e5500f88d41d03d6b1e063d08cf9b368047ebe3ecb1cf7c629"
      "si"
    end
    language "sk" do
      sha256 "8b63f4e0b8d49e39a5a38210e59337562da2b361231a3fc652c92961c57e4cc6"
      "sk"
    end
    language "sl" do
      sha256 "dbd88e12bedc9ee18825d1d71ddb12caccc07204aac5feb499a41dee03aeb0c3"
      "sl"
    end
    language "sq" do
      sha256 "b82d1a33af0a5d063d3f0123a6a0783f4860f860e152edf777813398724e050e"
      "sq"
    end
    language "sr" do
      sha256 "f3466a06bb5d8f7f45f5d9ac3474e036cdb0e881220a2dd2355ff58954993afb"
      "sr"
    end
    language "ss" do
      sha256 "36d3f575abde1c624d12b7499c204d4f3f67efa59f75dea6c8d09e582ebb066c"
      "ss"
    end
    language "st" do
      sha256 "eb45f46f23d765c8e5db0fa7a44fdfe16a37d85dfef3910e647f9fb52375a55c"
      "st"
    end
    language "sv" do
      sha256 "9b082ba2d0ee062a576f5421a370702b7972842114c612b72c9a79d038d5627a"
      "sv"
    end
    language "sw-TZ" do
      sha256 "dd8b6d463ae4ed4c75cb3e726d41d8d6ac8d2d31b26a102de620f42cc2e68bb5"
      "sw-TZ"
    end
    language "ta" do
      sha256 "d738b895bada1f7aa1c3d5326cf6ed47d0e1ab7526ade4c94c65a290418858f9"
      "ta"
    end
    language "te" do
      sha256 "1edb1a27e6e39f974d2fa1ff834ab78731ef143790cb1b7b902946e7daf82c7e"
      "te"
    end
    language "tg" do
      sha256 "c6c7a13f49c39d721596431f200ce738b33d9a6228c146ceab53c58231f2fd3a"
      "tg"
    end
    language "th" do
      sha256 "f9663f5ceddc44012f754a21eb854dfd565f68e90f89d2c700b0c65588c47142"
      "th"
    end
    language "tn" do
      sha256 "366dfa14f87c002dab5d3f2244cbf19ed1ab12899cb09b8a9331d20347adcdf5"
      "tn"
    end
    language "tr" do
      sha256 "1b23d6173339099a4a4243efecf29d3941995fb137ea4752a722952000848c78"
      "tr"
    end
    language "ts" do
      sha256 "51d7985103652c1f30ea72020eff732bd704086f25df13d4e8915a78fae18a10"
      "ts"
    end
    language "tt" do
      sha256 "d498ce6849e54d412da0541543b1baf2f14958e922bddc238fb2474457fcec21"
      "tt"
    end
    language "ug" do
      sha256 "b3b42d85ccc5fa9928cc5918496d1106e2405acf7055a1bf824b80bd3807aa2f"
      "ug"
    end
    language "uk" do
      sha256 "1fab37a4c471f3ce28482c050fb768e86ee1012bb5f9aaa8566c643a44d23c57"
      "uk"
    end
    language "uz" do
      sha256 "efccec2eb3603f836a97f7ef8d8db643cfc390eb529ec39c9729471c1961d9bb"
      "uz"
    end
    language "ve" do
      sha256 "54a2e140489ae0284b25b780787b0307ba878bcc3b332ac5c9f20efb089132d6"
      "ve"
    end
    language "vi" do
      sha256 "a57639249e46c1545b0088ef5c5eaa6e4cfe3d3e2a7852d25856c31ebb510f7b"
      "vi"
    end
    language "xh" do
      sha256 "81e989381ccb4c011187b0dfd73dfbed5523dbf42de6dbe8c0e56b87c91454d8"
      "xh"
    end
    language "zh-CN" do
      sha256 "7d118f0219330a237f73e209c56d538b165af843ff6acb0e2a1b542b215ae80c"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "d37a2aa193abe857ff6596969edb8367e246cf79f37faa2beea23b9d5ab5d627"
      "zh-TW"
    end
    language "zu" do
      sha256 "960905552e50f1cdd358c6dee6cdf451a0f4a6c5ef0b4b99e2b5ba9d91a47152"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "00cb3f2bebeb3b95c75c261bda445b8d381240ee913d7a559d0b31ea8e1e6282"
      "af"
    end
    language "am" do
      sha256 "b2201f422bc68a734a49e6decd06c57333399dcf7d453363e59e55e907f2742d"
      "am"
    end
    language "ar" do
      sha256 "6c38ae1f11b143bd329a3ee43c2f4cb514ccf3acca96de3cb20649a6aa373f77"
      "ar"
    end
    language "as" do
      sha256 "292f8c151f9d0791a06742c2c47352ee153d9dd62876dfa6c6d65a213623fbe5"
      "as"
    end
    language "be" do
      sha256 "083a91d97d582dc473376503e11621f64080d0946e60412ef673f8113bb78df1"
      "be"
    end
    language "bg" do
      sha256 "41cdee2a0d00aa630ba4bc78bda32ca0b502f479bc8b87b6b28aa7f9df404815"
      "bg"
    end
    language "bn-IN" do
      sha256 "795aa6e8c60334d1775b827cc9ce343aff8af7fa6cfda485e75b5223bd5c4551"
      "bn-IN"
    end
    language "bn" do
      sha256 "b8758207f3a0597d82d7dbbf912c51287905d05a9f58eac6b869516008153246"
      "bn"
    end
    language "bo" do
      sha256 "41a272c166e97543ad90ef6a5aa2d045670341217bbed2073983aff38415eba3"
      "bo"
    end
    language "br" do
      sha256 "005f60f342d27e8295a72f2abab45fa63f037ff5fad991acdc079216c01ceed4"
      "br"
    end
    language "bs" do
      sha256 "e7200aae6d07dbe4ec310d978776c115c0ecd5185dbacb05e07b1dd421a5ffc2"
      "bs"
    end
    language "ca" do
      sha256 "5b266c90ea4264b1cccf2a57c2a25b6318adc4c064b2ecc272ed087a12f8cf07"
      "ca"
    end
    language "cs" do
      sha256 "901306aaeeaa2fbbe4ac19632006876a83c5c482e350ad5aa58d0a8aefa5e4b7"
      "cs"
    end
    language "cy" do
      sha256 "4ceb6d4805682f25a763aadebabb37fd6686589d163aa6b9b79f8417a50d79b4"
      "cy"
    end
    language "da" do
      sha256 "799133dfb74561335249a656bb5c0a03d63f44585380d127f651ff13307b7680"
      "da"
    end
    language "de" do
      sha256 "74e916c97c3ca241aa5e99e97a5d7b8983ed85834b6ad8a852ac39f6b4ecaddc"
      "de"
    end
    language "dz" do
      sha256 "5857488d736a97f32e35b6e36456565840ff95ab8ad78f88de366502c42ffc3e"
      "dz"
    end
    language "el" do
      sha256 "a7e1ed0b1ee46660e219e0fb9a481ca85ecd83410691be1b4abc18a1ec3d0027"
      "el"
    end
    language "en-GB", default: true do
      sha256 "bb23e5c7f1a7d86e97ae24c46f6c6bc0da6b66fccbdd8359783265262ad17f70"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "f377985fe831355af6468a9526323ca7757499b05070e9cf6b9da79bdc5e7b3b"
      "en-ZA"
    end
    language "eo" do
      sha256 "6ce89cce559db4d893c7afdda43b69cca77d3c79f557a1071a131807655abf4c"
      "eo"
    end
    language "es" do
      sha256 "0217185715fda562e1cb5c7f3dde8c76bf2de16162b1bd4068bee2686396ca30"
      "es"
    end
    language "et" do
      sha256 "2c7ed0a8e90db24522d59b0ded7393ccaf01831ecc5ee1f2722b38202650e83c"
      "et"
    end
    language "eu" do
      sha256 "2fd56dac7bbfb5eaa201386bac73db2b1604dac284b6268456ae865bc097f007"
      "eu"
    end
    language "fa" do
      sha256 "e62e2719fb8feed01403ad2930d93c768316de2939074a3e27f637c2a20d1c18"
      "fa"
    end
    language "fi" do
      sha256 "19d712b623010e0b8aa7499625c60f2119d80af0634f7b0a302e209ddabab795"
      "fi"
    end
    language "fr" do
      sha256 "a3e2ccfd87dc7bc8c0bcf5f9be1d36467418b3487daee970068430c9301249b1"
      "fr"
    end
    language "fy" do
      sha256 "2e17044df95e77c06e4b7d7fd730760d7a7cdfd8ba2adc5106025356481c8c69"
      "fy"
    end
    language "ga" do
      sha256 "28dae252a5d231792e640c41b74035139ade81640b58b122ff5b32eac334b7d6"
      "ga"
    end
    language "gd" do
      sha256 "683bec000cfd0f2d0ec9cfd9f3c1d129306fa0a43996dee4d748c5fe616eac21"
      "gd"
    end
    language "gl" do
      sha256 "914cc349fd7f7bdbf9245cf8c5cc3b9af513605d2d56c46df53f69a9ee65a5ca"
      "gl"
    end
    language "gu" do
      sha256 "8ad9ed8d113626822e5e83b36e7d9a120f81e2e2de8b1bcee419d8bfa0dd678c"
      "gu"
    end
    language "he" do
      sha256 "e91d575e1a28b2b9cec75ec42845687a9df03ce3df48c02c4b021b59b0a13ac0"
      "he"
    end
    language "hi" do
      sha256 "72618a518786a7ef0ca1f63cbd425fd1984d81b54e38323b9616d71fb30c7bdf"
      "hi"
    end
    language "hr" do
      sha256 "99aa9de0b6b55b3a13db9dc2f61313f00de9b84a7bca0e16ec57c808b1ea9bb9"
      "hr"
    end
    language "hu" do
      sha256 "60926bd6988a92ae44a6d0a1e992a4e581c2037585533643fc4ee796dce8649b"
      "hu"
    end
    language "id" do
      sha256 "c1ba31d87e9ef97221cbebcdb04e3eb45071061435c51fa959b2a5aae3e0a284"
      "id"
    end
    language "is" do
      sha256 "948e822bb670bb098ccb3102ff4c6ee10d5af144cc5adfaf30e2d4d53de6481e"
      "is"
    end
    language "it" do
      sha256 "d19d8ba9a8929bc9b6a0a931c27b5196433b15427fc2c359d06617bf1cc11357"
      "it"
    end
    language "ja" do
      sha256 "7b43fdfa56c73101f517d0e758667757b4afb0d4f555e10c8304280b0389863f"
      "ja"
    end
    language "ka" do
      sha256 "0cf419f3b6bdf85bae1c7e48c13cc7c7ee1a854ac5d77d050815026bfbb13c30"
      "ka"
    end
    language "kk" do
      sha256 "cc244979391e70fcbc2af311fd11bad28f403db543b2b1041122ee6ef329ab75"
      "kk"
    end
    language "km" do
      sha256 "869ca95052265c6a0c8a65747ab2c105a974e7fbcf42e08717d18050cfd45e7e"
      "km"
    end
    language "kn" do
      sha256 "dcac85d9512e31f31577b30b7c4f1dbf6e28f33e52ad2294c5f562d4b3944d68"
      "kn"
    end
    language "ko" do
      sha256 "e92a78ac364f3c9ce91d95d1f6c284abbf5e2f7f7120b967eb56b574d4b01a10"
      "ko"
    end
    language "ks" do
      sha256 "b0e7c689503a6c6a3e0da372d55b17f81cbf21536b6d1f301ff0fd2bf6b74dcd"
      "ks"
    end
    language "lb" do
      sha256 "5ddad9c694fa809d02f8bbeca45b42f457d9b5af3738a85747fce939a78df708"
      "lb"
    end
    language "lo" do
      sha256 "bdacb05f918ce45a4b6d5ee980385004aeb60667aeddeca592fe5cc36e23568b"
      "lo"
    end
    language "lt" do
      sha256 "dc24c20ff59159d4e408f7ef3e4f9ac2c80fbb7d2861b0a2f0ae5a6638d3d236"
      "lt"
    end
    language "lv" do
      sha256 "9259d53e80d6328d7913b3c934020a234e2ffeb340b3666771b19de24d6724b9"
      "lv"
    end
    language "mk" do
      sha256 "235631e142bc04afd4d0c8cce44f4125f0a0bfba74076174139f70b03bb468e4"
      "mk"
    end
    language "ml" do
      sha256 "a17768e4c37548f5f6a0fb74be94b43fecd87c2225738586d764ff40ab082ee5"
      "ml"
    end
    language "mn" do
      sha256 "ab828fdcd9be14d9f9315be00fb418ba58790a0074a854a06f17bf73a65c1d46"
      "mn"
    end
    language "mr" do
      sha256 "0496bcd03f905deef26d7f7a61bd3896b9b011826aa58c6e6a81d7a1f1036a9d"
      "mr"
    end
    language "my" do
      sha256 "ed6f5566f27e6040456f87f5d15aecd5e29d680f52ef92499c1089b6a21599e9"
      "my"
    end
    language "nb" do
      sha256 "0664b770a1c5cb509bcc2f20478fcda9cbd6d2bcd030a4e35d750f9c14f6c7af"
      "nb"
    end
    language "ne" do
      sha256 "0c1c66dbfba41d3c4e12a8dc68e4d6cf9f204b17447187f8944df4e26e7b8745"
      "ne"
    end
    language "nl" do
      sha256 "90d503c70345367195e8560d2b23de651a62952b2db943f82619548d48961e37"
      "nl"
    end
    language "nn" do
      sha256 "4a5cd4d8262cfe75282fec6b02d044160c61ffd83c72337b7bda29db755910b3"
      "nn"
    end
    language "nr" do
      sha256 "8727a2fb3c1f2cdaad06884892fb7522d38c8f847af0a8c64eba6d861e4f11cb"
      "nr"
    end
    language "oc" do
      sha256 "c90eb7a98af2596372562901bdf7e5d909064454dbec6428024c0709d6a5a1fb"
      "oc"
    end
    language "om" do
      sha256 "ec3ecd8c175b378ba6a7a1640d91aec654e8e9c2161f20b580fa206cee8b749b"
      "om"
    end
    language "or" do
      sha256 "f4c56ed7c330d6c1e4f9cacce8a22cf9c6ea9212aaabde2226706bc57ff865da"
      "or"
    end
    language "pa-IN" do
      sha256 "66e3397549925dc69b83f30a3128a84afa396d44a21a7736194fe3e37db12d50"
      "pa-IN"
    end
    language "pl" do
      sha256 "b6f9b822d6afc409dc67b96a9ccebaffcb3cdfc5f6bc3559eb71d46dcceaf677"
      "pl"
    end
    language "pt-BR" do
      sha256 "bbc3ef38cdad560e86a5a7f5e95276c2ff3f9142be479c33bb093dae4c948265"
      "pt-BR"
    end
    language "pt" do
      sha256 "0b6935db2aff4bf8b76abdcefeaa0405bab9178f4231156ad5cac7cc297fc3b5"
      "pt"
    end
    language "ro" do
      sha256 "e19a8d77fc0f59797b45c06855aa5f12ec97ea9756f1d218de78ef3a8dbf730b"
      "ro"
    end
    language "ru" do
      sha256 "1863caffaae7f3d5e28395a944c2e7c82d898b6ecaa717607ec813ba7a48e7d7"
      "ru"
    end
    language "rw" do
      sha256 "cc58b136e43b15cc9d792482b6ae89337da50b0b99df2723aaa4b0c7056051e7"
      "rw"
    end
    language "sa-IN" do
      sha256 "0508ce6d7a9e7f6eadf5f8dee5e7809ea47be85a97e7383c479ecdd211ce0026"
      "sa-IN"
    end
    language "sd" do
      sha256 "a1a14bc161f6ba03478edc748faa3448962d1a12796c03bb382936f4cd42a59b"
      "sd"
    end
    language "si" do
      sha256 "d8668fd5871bb8a120505359b23109015fc052ca4a2a30b043f16b242be99835"
      "si"
    end
    language "sk" do
      sha256 "a50be11d67425bdf0a57e7c65c22304e63ea348ebb11bf8ad4bb295b16dd5091"
      "sk"
    end
    language "sl" do
      sha256 "42be19db403f01507a4f087543a0f08a6afb22ea347a98abb28293ab01510b7d"
      "sl"
    end
    language "sq" do
      sha256 "96506ea02b49067bee8ea9ee76db4c6efd92f3e23e6b8d77b175eade58e38984"
      "sq"
    end
    language "sr" do
      sha256 "1094653b0717b01c9af7a9af86bb5c73f00e10ca9ff062cba0cc26b81c4b2897"
      "sr"
    end
    language "ss" do
      sha256 "904acf7b51e082f522a0491f93698385046b498f2c70ca6c824f7d1a9d19a58c"
      "ss"
    end
    language "st" do
      sha256 "57bb012f69110c6e09738d1bfba13caff03a77bc965996661dd89869a81ee97d"
      "st"
    end
    language "sv" do
      sha256 "0bd3163eaaed808b7bc75cd1e5e783376c5ce06fd365850a97e90471712877ef"
      "sv"
    end
    language "sw-TZ" do
      sha256 "b62e95c98c0420b0425325fb1934e15446cc0574eb98b5afb8bbc86784e1ba62"
      "sw-TZ"
    end
    language "ta" do
      sha256 "bb0648ad86334b22dd69f2c36b1bf1b1a3fe6a24100e56da26d0e5dbb3afb175"
      "ta"
    end
    language "te" do
      sha256 "f4da2eb81463b6c8a03163554c08bcd9bbf90b9aa9167066664f3244eaa7df85"
      "te"
    end
    language "tg" do
      sha256 "47eb446c4704e4fca49caf12ea98a25bcd0ceafa24c47889a50c003eac586fbf"
      "tg"
    end
    language "th" do
      sha256 "484bd788b6d8870f5fe0a61228a6b53c3755e411206dc2b7964ff097077df6d6"
      "th"
    end
    language "tn" do
      sha256 "6e945059aed677900d19457a28abb8dff59aaa31da62381b9d3a0b2bd1dcba86"
      "tn"
    end
    language "tr" do
      sha256 "3e48ab904d92d9ccd2b764ca0390d4f449ca027ef30b53c0efa8ae9bf16c490a"
      "tr"
    end
    language "ts" do
      sha256 "0a3503e8bea3bfd11f5af503a5011927b8b91f1523b3225bec3ae434ab774838"
      "ts"
    end
    language "tt" do
      sha256 "bb3f733e3e5752367c5065bcc424fc24effce879aac58b9d223c24a487fd5b3e"
      "tt"
    end
    language "ug" do
      sha256 "664c4138b6c4e301e397354a808725733d544861a737dcb4fdfb8b3ce16abf26"
      "ug"
    end
    language "uk" do
      sha256 "fbfba61cdde75e4418e08dec6810d8ebc9ae0a23d6546985d61773e8c23f2c01"
      "uk"
    end
    language "uz" do
      sha256 "7699b910735df76d4459deb510da3a27eae5673b38527ea6d381256d086e6c5c"
      "uz"
    end
    language "ve" do
      sha256 "559cbb66ca39bbfa4211e1b072aebc8788cee880daa310e1efbacf9ca121d85e"
      "ve"
    end
    language "vi" do
      sha256 "9a6548da8f2b2d709718318e4f8db4ab2822562b151821c67ff5cdf10807db63"
      "vi"
    end
    language "xh" do
      sha256 "729502911c6981aa8e79fcc0b52e041ccc05400e85b7aca847440ff79e1e68c0"
      "xh"
    end
    language "zh-CN" do
      sha256 "db05c870dfe1f8d2592a70ac42c9026faab1ec93b426fac00e7c707f1770a47d"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "42ae77124f4ff3dfb76ae1f8dbfa25b8824e30451f52f9a0bb5360eb053c3b56"
      "zh-TW"
    end
    language "zu" do
      sha256 "c94d76c015af8058243adb57b862d37fa7b8ea4ad40fc5834143d5bfe7aff5be"
      "zu"
    end
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    cask "libreoffice-still"
  end

  depends_on cask: "libreoffice-still"
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
