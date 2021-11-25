cask "libreoffice-language-pack" do
  arch = Hardware::CPU.intel? ? "x86-64" : "aarch64"
  folder = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "7.2.3"

  if Hardware::CPU.intel?
    language "af" do
      sha256 "bc45db8d41f2084f2182b6af1615e1dfe8892113db2f347e56936c46f41c1afe"
      "af"
    end
    language "am" do
      sha256 "acfb700f50da9d7ddc6f2de21d7de920fb4228ef93d6079244b43da9fbab8842"
      "am"
    end
    language "ar" do
      sha256 "06e4719fe7d3320265eeb5bd680312811368721d4d33e56de5e67b3f1b5efc2c"
      "ar"
    end
    language "as" do
      sha256 "d81660a7f27b428e5ba8ab163464161d9228fda6553805a55b7168d58b807c70"
      "as"
    end
    language "be" do
      sha256 "435ecb3579d52cae991debc7895c55a7caf6f1ca2892e2234dc3b988d4dcf7b1"
      "be"
    end
    language "bg" do
      sha256 "ea876cada7dc10d3c56095bbe365cdfff3566e8f90370f3d009112f349582c23"
      "bg"
    end
    language "bn-IN" do
      sha256 "0cb893459deac6051e99b81ccfd358664aae81df8cd72715d78c60079d01d849"
      "bn-IN"
    end
    language "bn" do
      sha256 "663d563647a22395e3d1decbb99ac7b54eee6390956e4017c0223e6ec9e89ad7"
      "bn"
    end
    language "bo" do
      sha256 "d868d92d0f9a2c5caf35f0ae6905d53a523c0ae43cd828f4a1ebe31aaa23a740"
      "bo"
    end
    language "br" do
      sha256 "2c70d859dae499a4a454914a1a798443979294ce665b2cd4429518c75a12aead"
      "br"
    end
    language "bs" do
      sha256 "4f5c7c4e171b5b969f6e437ddee4fa056212aa369dc82129f46f1838ee5924a3"
      "bs"
    end
    language "ca" do
      sha256 "c4c2dcc540e53cac97e96465388c149cee1b6d9e64fe76337c92fcc7799012a7"
      "ca"
    end
    language "cs" do
      sha256 "6e4d96fe7790f7c54cfc220602535e598aa97a350dc5ed9dc39e483312d93376"
      "cs"
    end
    language "cy" do
      sha256 "6b736a26b667dabac9bea1321775a3320fe9df3a3c7a05eb0336ea15771459e3"
      "cy"
    end
    language "da" do
      sha256 "30e46a75221b180192a1f03aad7270fdbadbbe36865bfc2c081ecc72a2a0c0e4"
      "da"
    end
    language "de" do
      sha256 "36e8ba49d2fd68b8bed4def4557cc5d50557fefcebd18bb119822e1259c5abba"
      "de"
    end
    language "dz" do
      sha256 "31f356d09084828eacd358251d35c2bdb3e1a747b6f3c052aacde2c9b6ddf52a"
      "dz"
    end
    language "el" do
      sha256 "82de51600238dc23ca6d90a134339d91ffd1af970e1441cb6c9b2ac1f20f4b1c"
      "el"
    end
    language "en-GB", default: true do
      sha256 "1f22197403c31431638db8eeb4ce79d64b30f2e907f66a9833901292aa3b008e"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "6e47313f99c69ece43729e80f2977a5c0cbb9ef752a5755d7027e60e9b37c3e2"
      "en-ZA"
    end
    language "eo" do
      sha256 "4960b7e994cd068267484619d316a1b3c6ee83e64b56fb185c35be7ac1623861"
      "eo"
    end
    language "es" do
      sha256 "34d933ad556a2c7c2e34bd38f87c369ff0b30cb315f7781728f3378791ca127c"
      "es"
    end
    language "et" do
      sha256 "6d13de486b11e5c56e6d929f308ec505acc7faf93cad2f2c4f77527d81480bde"
      "et"
    end
    language "eu" do
      sha256 "44e747ec6dcaadfd6d80eace730ed0e89d9b858b6ff666bca012b05af287f8ce"
      "eu"
    end
    language "fa" do
      sha256 "dc99a61c0755699bf4ee2b3d7a01fd945ca1d360ea3126e94093d658b561ee2b"
      "fa"
    end
    language "fi" do
      sha256 "92cac1130398a12da80e177206633ea95a7d48cbe100725d7b99ef9f5017c555"
      "fi"
    end
    language "fr" do
      sha256 "c3b45c01002a1975f4f360e146eb78971446943115e88cfae72bd9973dccbc53"
      "fr"
    end
    language "fy" do
      sha256 "dfb39be7ed3f9574cf9c01d0187b76e4abee696cc832fda08872b598151d6b55"
      "fy"
    end
    language "ga" do
      sha256 "723a558425e72a760c8c2df24ea981d430d8ecefda071df4857ce4d6791652a0"
      "ga"
    end
    language "gd" do
      sha256 "2ba93bb11f383c787634354cb0544138c28e952bfdfead22414badbe3102eb03"
      "gd"
    end
    language "gl" do
      sha256 "46336c339bada02d810f18cf8aadc66d15105ca6763b4e3145c22bde657aba86"
      "gl"
    end
    language "gu" do
      sha256 "1de35867c1b234d72caefd7d246125cd05ded9591aa2a2f6c99f5a46819a7535"
      "gu"
    end
    language "he" do
      sha256 "94a7df39ed2aac8aa10bb59302381f71b1b3007b9cc5532b9a288849f9968686"
      "he"
    end
    language "hi" do
      sha256 "76568d41ad823ef77d42e432fec8151bbde3cf71c8da91ee8bedd650318cc056"
      "hi"
    end
    language "hr" do
      sha256 "a109b79269f4e677a0646e53c996c375fd6d029e6016c6ff9f8440ef91a44ba1"
      "hr"
    end
    language "hu" do
      sha256 "e40b20eda534d0cc59636d3bd03aa10eaed5a566e8fdf682f717b28f525beb14"
      "hu"
    end
    language "id" do
      sha256 "44c67f51a50083c07f8960e1684d0d815bae799ce14c45b08649c169ff1e5666"
      "id"
    end
    language "is" do
      sha256 "2175db63c92003776b2b6207bf24426ecf5f5b8febfa975e804da2b52396b16e"
      "is"
    end
    language "it" do
      sha256 "44da5182261dbde72e581aa30dfacdae7a78f262a76d6c6015cab39c9d92836a"
      "it"
    end
    language "ja" do
      sha256 "6fb36ba5997b2e090f7d6fc19bb4a0530973aff01ef848533841648234b4dbc5"
      "ja"
    end
    language "ka" do
      sha256 "8d0577fb3f138ff8693cd2da415059a21171f7dfb79385aff22d9f6342b56a40"
      "ka"
    end
    language "kk" do
      sha256 "706b5878890c2522dd37e871c8f6a5179ac2e5452218fe97912391dfe3584d3d"
      "kk"
    end
    language "km" do
      sha256 "146dcc6160378a5dcd8cfb7a5f79e32634da5acfaec36d316e4f8404fc13fb5f"
      "km"
    end
    language "kn" do
      sha256 "040d3d45b2cb9fe5cccc13c773b88272d5059f4794c1f1da5d0ff50a974a98f8"
      "kn"
    end
    language "ko" do
      sha256 "ad2520f630f233e59673751f18ca520f1a6cbb20b1dfcd559314a57f941dfb87"
      "ko"
    end
    language "ks" do
      sha256 "6789d06ddbbc308deab8892a537865d284887cd68879a4b23cd384335ff4c710"
      "ks"
    end
    language "lb" do
      sha256 "8ef2aa4c7fc85c13d166452f1331d750815a35a39b420baa9ef12d4a28c134b2"
      "lb"
    end
    language "lo" do
      sha256 "4288e74309930450d0ad048365e336627865d42f136e44089ad9145c938295ae"
      "lo"
    end
    language "lt" do
      sha256 "52e484b92cafa42a79b30b9479a5165d73c3832ebf29fac82fda8eb8934b350b"
      "lt"
    end
    language "lv" do
      sha256 "e2bf05b18c49a789151b5e133bae8a09a6d3e3e79ab0f2b8d572ab371e667af9"
      "lv"
    end
    language "mk" do
      sha256 "e13d3261b80eb75fbccaaa08fee2735279f08616948ea9298283110557d8194e"
      "mk"
    end
    language "ml" do
      sha256 "88163b0f1c88c21e3814de5752bfb62712d75f6d18b0dc6f4adc6177c7fd751e"
      "ml"
    end
    language "mn" do
      sha256 "8516001f3addae4d0a64cb70d434cb5007a8f37ab637df19298dd6a669be1e52"
      "mn"
    end
    language "mr" do
      sha256 "e54a625af3bf1dc2a934c9cdd0d2f68e07e908bdbcf47e120818995d8f312fa6"
      "mr"
    end
    language "my" do
      sha256 "98b1b52b2dc70c071b404db515e6fdc0c8b41409445ebd59595fa0fb7ca073e8"
      "my"
    end
    language "nb" do
      sha256 "6054465c9d34645172d2134910576cf880e35054ec8416d02798185ea5b397e7"
      "nb"
    end
    language "ne" do
      sha256 "6e5246a752516a38ff772e3cfca7337fe275fd82b8741b3ab2fd5da78aded0a2"
      "ne"
    end
    language "nl" do
      sha256 "fcf6e63d7717d6bef309941fa9d80aa5b0ad256281b69d9bfd99d8735d31ffdd"
      "nl"
    end
    language "nn" do
      sha256 "57fe70eef070634e727b57a4348ec3cfb5eca47f7228c0eca61630493315f83d"
      "nn"
    end
    language "nr" do
      sha256 "0b441d58f830ac5cb5f5b180991593ba34855bfd89bc1a0645117bcc53023cd1"
      "nr"
    end
    language "oc" do
      sha256 "306ae585845ccfcd68c4495bc16034a235ee8015ebc93a83381e382db64f0a80"
      "oc"
    end
    language "om" do
      sha256 "3c4bf0c28dfdaa0dc7fe786619fe848c969c2b5f7494d61499d6cdfefcfe8d5f"
      "om"
    end
    language "or" do
      sha256 "80daa1b111a6cac103846eb50f8248a10689681126ce0051f75653467506c2d5"
      "or"
    end
    language "pa-IN" do
      sha256 "c4761286398ddb81d5e8f733344052066fd09000178e5df770193ca89f8b6645"
      "pa-IN"
    end
    language "pl" do
      sha256 "b93600659a2bfe6b408e071d9492a63307defacf5d10c0abac1836178bf662d0"
      "pl"
    end
    language "pt-BR" do
      sha256 "3895b55712f1e3230e2f1a196f5dbed8ac28d7fefac2caaf356263148ecba837"
      "pt-BR"
    end
    language "pt" do
      sha256 "e432bf08b96189ddbe31a0a1652216adc9e93f3a45649a9b38c2921a69ac7cd4"
      "pt"
    end
    language "ro" do
      sha256 "bf26ed16946b7eae2f8e34d1e065fa8780a62057e5601a9b25daa410e805ac51"
      "ro"
    end
    language "ru" do
      sha256 "1e2cb477ada20c3137415130b61bac28cbae9e28c1a7c34504972203ff36347c"
      "ru"
    end
    language "rw" do
      sha256 "cf8b4209ea6099f0a59d577e7ca25d1f9616cf2858e439dbc53e49ced8c9ddf8"
      "rw"
    end
    language "sa-IN" do
      sha256 "255e030581faa327faed2dce531ff9b500b3d560038686b8e8607bfdfd8940bb"
      "sa-IN"
    end
    language "sd" do
      sha256 "75688cea2e3dd9409b622c439abc978f9e900e49987b4efa9d32048e216156a7"
      "sd"
    end
    language "si" do
      sha256 "b07fc8adee3e7e54fb7afdd0bde1e60fa6100a6d5578a236d498e36132b0373c"
      "si"
    end
    language "sk" do
      sha256 "2a94bc173720de4be523ef77c4cd7791689e9fa0cc6600dc141a7af788eaa5cb"
      "sk"
    end
    language "sl" do
      sha256 "208cb5d7b3b13a6f3237baa79d243129f41d06cf9a998be7c099f901fe637ff9"
      "sl"
    end
    language "sq" do
      sha256 "8e0e6687cf8d0b77996091cd554f7dac6b017e3a5199c7d3c2d5166f6d1913b4"
      "sq"
    end
    language "sr" do
      sha256 "9c8d54424512702df5e73e4f408f5726e0be6087e2314e32d951b53cce66a964"
      "sr"
    end
    language "ss" do
      sha256 "2da7d9437edcab9264c85f7dc5a58ffe9153d91852b0b9676c4c6b2ec705e013"
      "ss"
    end
    language "st" do
      sha256 "de2efa2d9a325dff4af750349593fcdb719f4098b539933ee8a946ed7ba5d654"
      "st"
    end
    language "sv" do
      sha256 "21a6133357a5bff123008bafffbe23ca8587feca93e19a592529d91f3069b22c"
      "sv"
    end
    language "sw-TZ" do
      sha256 "7c5afca1f876f369a6660574ed0dba5d053c09b7969bc4ac61d53112a1bb76bd"
      "sw-TZ"
    end
    language "ta" do
      sha256 "38cefeb568743f07a62e927ae38c4f0d904a344419255ddb4a777ea5d9b31afb"
      "ta"
    end
    language "te" do
      sha256 "53c2b721016f0ed8dcf087bf4a90cfa304f642bf226e5a80acd59dda0df0c6f9"
      "te"
    end
    language "tg" do
      sha256 "767ec9495e4842a61e8991695efc510dcb796fec6159f49f7d8144017d5453b8"
      "tg"
    end
    language "th" do
      sha256 "b1e6c96449dc82ee6120b58335969a061f8662df39a0480f70738ae9c1d5a07c"
      "th"
    end
    language "tn" do
      sha256 "e16d9b5672ea5097815195e257bd2e7996eb2cef41ce9c189084385913c7cd2d"
      "tn"
    end
    language "tr" do
      sha256 "db3c038444a98f5c3e33e24cddd5825a4d34a7418a9e06afab118c2187ad11b7"
      "tr"
    end
    language "ts" do
      sha256 "58a83a76d49a6331e59b68093023033f384e884348db9f35660cac6e720f238a"
      "ts"
    end
    language "tt" do
      sha256 "5a666fdf5fa15bbd50c9d7e7c0b02080df8008a8031dbeeb205ed55cedaa5810"
      "tt"
    end
    language "ug" do
      sha256 "0251eb29aab89587b5d9a193ea6a5917d17c6b9df28304d5a71f3643287bfe7b"
      "ug"
    end
    language "uk" do
      sha256 "945f7f7cdcf833a62e304480038adc27ff95f932065ad0be29f413543e828bcb"
      "uk"
    end
    language "uz" do
      sha256 "ea97a75a1c3cf11f9df612b79dd998dd35297bc03e224b236706fa97b58ff069"
      "uz"
    end
    language "ve" do
      sha256 "a3a723af903642e854fd8bbab255b6a4181107796b31a49258d79d7a2e3977f6"
      "ve"
    end
    language "vi" do
      sha256 "03e5c609c005ca4b5d564ea87652bed1f7a0db5062f486cb2f6445abbc2cc19e"
      "vi"
    end
    language "xh" do
      sha256 "ccc87267cefb3f29522672f476c3da51a9a0a20db425bf1fff8e10f52b73c7ed"
      "xh"
    end
    language "zh-CN" do
      sha256 "78d50883df67f9cabb8fe8d7966760f4ccbad5e20f8d24fe1eeee968b3149198"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "cbdfdfc650ac12993fcfffb42317e744fb354058f6951b66d7c32255887de781"
      "zh-TW"
    end
    language "zu" do
      sha256 "303e60ef6ece17ac4b7d989d4bab4e6de69dbb0bfbdf648052d7b8d996faf1e3"
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
      sha256 "0ab5f6bc03a5360a6469ecae038296509910427e41748fea6d32ea6c1457170d"
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
