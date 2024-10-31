cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.2.7"

  on_arm do
    language "af" do
      sha256 "416ec45bc3362877b1904147ab44046aeddedcb2e9983e287ccf257d84d840fd"
      "af"
    end
    language "am" do
      sha256 "743a9abeb0cf26c560ea7371da6b964f6436155a990c46ed637c1440add7c349"
      "am"
    end
    language "ar" do
      sha256 "9587af2f0606f7ee84f12abe74d9110f174a2ae853a79c8a750fae4e03853cde"
      "ar"
    end
    language "as" do
      sha256 "26fffb0f91d0fd7c30d0d40f266300d4c1aae073e9d63f874c6c169bf955ff87"
      "as"
    end
    language "be" do
      sha256 "8739def21db84a19a3b2835aaf1b9fbebeae753959a0d802f711f2b49e9830fa"
      "be"
    end
    language "bg" do
      sha256 "f9046d2b2a76eeb14ec5c72795a3af32c02b04fcd4da4a51223bc31bb5979922"
      "bg"
    end
    language "bn-IN" do
      sha256 "5842cd6cd668f4e23bdd79e022b4582be69afc4273f8c1c4aa2948e2e2dbbf50"
      "bn-IN"
    end
    language "bn" do
      sha256 "b48605ac058b3e1f877b70d29261f8a372efd550aeb6f7023eef2026cda17108"
      "bn"
    end
    language "bo" do
      sha256 "2759de6198758f8e8c330812f24fa9dce5501afe2aa39bb502fec217ebda9198"
      "bo"
    end
    language "br" do
      sha256 "3eefbdc80fb99482ac211aa0d20cd4d628ea733484b5709261a8cccf50251f0d"
      "br"
    end
    language "bs" do
      sha256 "567157346324815a894bde4fc22f75592fde313493a561abc9ad0f1e1ec7592e"
      "bs"
    end
    language "ca" do
      sha256 "8390297b11e7d77372db605f89f6d7fecb59c05bd2d75dbd6ba3938fa1653b1a"
      "ca"
    end
    language "cs" do
      sha256 "33e4876758349eed86cccad8a8acaed35d90b8a7719e5975deb2240b066f1874"
      "cs"
    end
    language "cy" do
      sha256 "e4b3c5c2afbc65397e161ac460246c4544e79811409dc59168d0edc6740baabb"
      "cy"
    end
    language "da" do
      sha256 "deb2de311e35636ec42f60520c7d4d69d6a2bbff270f2e37f320ed48c75feff0"
      "da"
    end
    language "de" do
      sha256 "76d815fe1f1c7494649e00f69dc6b49754f21f5bbe5dc06c5218e17bd6386fc8"
      "de"
    end
    language "dz" do
      sha256 "91f241a534953b104d94dec3e60cfeda1d8a6171d768d465c4074c01a3bd0862"
      "dz"
    end
    language "el" do
      sha256 "173654484b59f020f5cbc216c38be325b47a5af12bbde4d1967e4e1572cb5983"
      "el"
    end
    language "en-GB", default: true do
      sha256 "133ccc27b4d6f997212a3bae667f2040aaaba1d20d929ba882bc2e6ee668adf1"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "5ea84edae0a40b32e264424d674f8f2351ad5c88fd2739b4e367566d6a84e9e7"
      "en-ZA"
    end
    language "eo" do
      sha256 "1556fa470c43a1f8fdd77ccf6ea9d94c0c7e5ce50af2b321af6204f4ec05da9b"
      "eo"
    end
    language "es" do
      sha256 "afe7b48b20939bf250290595e8e0ac705912bc2b077481c919b831b36d18c5ee"
      "es"
    end
    language "et" do
      sha256 "ecf73e7d5578c9cd8a4e176f2c9d9082df5e1a933dd53f7f81aa82984aa8277d"
      "et"
    end
    language "eu" do
      sha256 "83dbb203e3e0c0c8671b9d1a1d380eb9b2f81248eb57dc6b921ab6ad22dca07e"
      "eu"
    end
    language "fa" do
      sha256 "3794d5adbc8c2709c872d93fdba77e63d3ea4c790d77a3b353e3fb3236e84dad"
      "fa"
    end
    language "fi" do
      sha256 "1dba7e39a949d3a39f357183f48e32f4dca77b7e5a4537f8b2d0d1f2242807ec"
      "fi"
    end
    language "fr" do
      sha256 "d11ff45740b37f0ab020bc1b837df73820304fbfbf78d3837dae582fd0ba7952"
      "fr"
    end
    language "fy" do
      sha256 "4582cbe4adb20b4a450e70e3cfb02d0aa15dddf134a8570030b8c4f2def127fe"
      "fy"
    end
    language "ga" do
      sha256 "87c979204ecf2260f1c58c6d14f4e8b58fe0b834ca7f3f28b34ca5f85a81aa7d"
      "ga"
    end
    language "gd" do
      sha256 "9799a1df675212278b52e8dbbdef5c6524fa4a1d696a060f2b5a1f4d85e6cb0b"
      "gd"
    end
    language "gl" do
      sha256 "4fdbe3caa69bb26e226d8bb174af29c20d38c49ea7f2c2efa6cee07f9555b40c"
      "gl"
    end
    language "gu" do
      sha256 "6e7423af81a61b90009bcb53103a241758b96626834c1530912cc81da040e967"
      "gu"
    end
    language "he" do
      sha256 "a39478bdce4c28827230cf1332b475561c5174f48670f36e47c6cb6759feb758"
      "he"
    end
    language "hi" do
      sha256 "2351e94a07e2042955cfe6ec4461cb2c32f07dc455aeae5fc828ed5724ace7af"
      "hi"
    end
    language "hr" do
      sha256 "16badf930c3bc2112258e382447527b0a53163e07f74cd84c2616f83011b4ae5"
      "hr"
    end
    language "hu" do
      sha256 "05a334cb3979ec1ab45caa9f9eb90189f002e92836359454696ba581b805149e"
      "hu"
    end
    language "id" do
      sha256 "714264df0c0939b7369f284270169bd08087bc6251009dac65da598091248e88"
      "id"
    end
    language "is" do
      sha256 "4cc15df73ea9422e0c7a22b7d3fef9a82fb1ca09b61487e71a3d94b6334bcdc0"
      "is"
    end
    language "it" do
      sha256 "9971a87d4eab9ae8978a8691184eb4c7d2370a85593ee1714a370166a531c4fb"
      "it"
    end
    language "ja" do
      sha256 "87206c231539c81b9d18c02fd0183551b3827f33ac6e1ec985074e06bce73573"
      "ja"
    end
    language "ka" do
      sha256 "997073ec454be19a400e8e40114ee81152d92e82d8a150b01f12c470c272cd80"
      "ka"
    end
    language "kk" do
      sha256 "0b44306cb9704baeb0e83ef99a4a3a4c63350199ce39e2ab5783df177c374863"
      "kk"
    end
    language "km" do
      sha256 "4f7c9ee2658db441ebd6b515b9b30722f359588f9809964f0386c4b5c48cdafa"
      "km"
    end
    language "kn" do
      sha256 "6befea035003b27e1aa8683071b06db5c4fee7c4a4550669375882c289a71e31"
      "kn"
    end
    language "ko" do
      sha256 "258d86688567fdae13795bdf8e844f3f0173636f523067125535bdad944e9a3a"
      "ko"
    end
    language "ks" do
      sha256 "c8f8f59fc58940c332734099a4b8be0ccf9763a780a58bdf8cbb4bc008ea8126"
      "ks"
    end
    language "lb" do
      sha256 "03065b96d1a59e4259389dc30ed6284481c4eb749a8699610ab33a6bf56744a2"
      "lb"
    end
    language "lo" do
      sha256 "153b89b58d850de3400c24ee571c4937057e2434f5b1335904d29a5704ff678c"
      "lo"
    end
    language "lt" do
      sha256 "89af5bc678efa8f8dd07a45cb79459bfeb33b644ebe50a2df8fa94154c21bf8a"
      "lt"
    end
    language "lv" do
      sha256 "587c918894d43288498a35f09d003ea199f3f5241606d6dc2d506e54d29e57d2"
      "lv"
    end
    language "mk" do
      sha256 "0722cf396220525f84bc260f26291e8edc6e737be545a7d227de141c36be365b"
      "mk"
    end
    language "ml" do
      sha256 "b81b9fa3a7f369011427e79bb128fe50e6124f9b544c762f327481b9d90ff175"
      "ml"
    end
    language "mn" do
      sha256 "44ad9e658df3e269b92f0a37dd39094135f417f00a0d9d3f1b9f331aa6b949b1"
      "mn"
    end
    language "mr" do
      sha256 "a40c07fa38f290410e00d1f466418f1d7042ea763f799559bf1ab520b59a0c07"
      "mr"
    end
    language "my" do
      sha256 "35049165ac7355b5fa8e9573e4d1c0afe2484ac04ad375cc0d6c73d5be8d2d55"
      "my"
    end
    language "nb" do
      sha256 "1145b690a542f77cd57de4a213fffe1cff84b2085820d71343619e1b70b4184d"
      "nb"
    end
    language "ne" do
      sha256 "4b0fe0ec7d13eaaa25697de093f93147bec4337e9c0a4ce4d096f31108cb688c"
      "ne"
    end
    language "nl" do
      sha256 "315f18780def07a7420f7a76a6e66a4af6d0439f704c3f899cbdf41f6f55a5e3"
      "nl"
    end
    language "nn" do
      sha256 "9b9dbf99eba5ec294e93bc7ce644d74b5cc51726330e0ece2d6bb1190fc4b1af"
      "nn"
    end
    language "nr" do
      sha256 "a0ccf35034a638ccd5c0ad45782e8e7e4d223e5631b0ee7cf938f39de66c894b"
      "nr"
    end
    language "oc" do
      sha256 "5b10300517fd365dff31b63327312498b4114bb20ccff8e3d29f392e6f4c1d58"
      "oc"
    end
    language "om" do
      sha256 "d6822a57beb815dc55327dfd48a469d4383988ff3283a361d935ed44f9ff40ea"
      "om"
    end
    language "or" do
      sha256 "1a72cc6dcf650c62e1e852f26964fe0738aebd20dc94deb5fcef543596456b05"
      "or"
    end
    language "pa-IN" do
      sha256 "c2f7110afcf2b0bb7aa537be24b882f9928d96d5ff3813ee9bf8d388b496233d"
      "pa-IN"
    end
    language "pl" do
      sha256 "b742cd9b6d7d60610fdceab52822c6bf78d05953e3eaa335482170e6d26567bb"
      "pl"
    end
    language "pt-BR" do
      sha256 "0dd88e0234678891321a2190572681d8d7a57a06757c0de03586a502936b8348"
      "pt-BR"
    end
    language "pt" do
      sha256 "b1cc6c1bb7d3afd7b96612935dfeeea7efb50709e670352d27cb10b688fec7ed"
      "pt"
    end
    language "ro" do
      sha256 "a16b05bebf14c25013c79201608c467fd806473c53e2c7b53440046103081a59"
      "ro"
    end
    language "ru" do
      sha256 "31d58817c7228cb9eba86c6ac236b4e3fbd426b11bbaf3ca57f49fb8d32da3f1"
      "ru"
    end
    language "rw" do
      sha256 "44eb985c647d2eb71a3d00c4b09809cf8c08c7253dcffb82fe02873db11785c4"
      "rw"
    end
    language "sa-IN" do
      sha256 "fad19a375031c5f2e8a7ed32a80aaf4edd6ea694659f40d85fda05d3fd3ddf9a"
      "sa-IN"
    end
    language "sd" do
      sha256 "947e4a8757cbf4cc8ea33c6457fbdc5716bbd31f7626d79a00d221908362a3c1"
      "sd"
    end
    language "si" do
      sha256 "51b6543f19ab5d8444dedd03a25412bc94bed3fd777b3473e93bba2538e3b664"
      "si"
    end
    language "sk" do
      sha256 "a143c03463fba6654e3725b9c94dddc2013c6c6e13b029197206bea9e8acea4f"
      "sk"
    end
    language "sl" do
      sha256 "22533cb533578a5810f6799faa75c36d595953fc5c2c993c9d51be00d5db18a4"
      "sl"
    end
    language "sq" do
      sha256 "de4f5717bc18aef04f1bf18702f640e3f50c13f0cb879978dc3766c866e16274"
      "sq"
    end
    language "sr" do
      sha256 "82b6e015c11a5ba813995f7450651119ba2fcb86afd688e97c975fb1d3b6ba2b"
      "sr"
    end
    language "ss" do
      sha256 "f9cea91049c1351c6a4f1e345262401b8e0fc94f050e2b1a60b05ab4fbe4c287"
      "ss"
    end
    language "st" do
      sha256 "a024b0247be86a885f28386afdac93159165879d294124e0ec70ccf627738668"
      "st"
    end
    language "sv" do
      sha256 "bf787262120ec162fe7300fcbe77f2b36ea711e7bd26298033b11bf49f53a098"
      "sv"
    end
    language "sw-TZ" do
      sha256 "3d28b97f936eb87e6e57759fcc6f1b54feaa6492d2313918d7979765b99a2095"
      "sw-TZ"
    end
    language "ta" do
      sha256 "93c8f46096d5ace988b6ca9c592874cce5f68ac20fb34a7bdd082653d30ba871"
      "ta"
    end
    language "te" do
      sha256 "6a54ed541ca83f89537b6fdced25489a8d9cc7b1d14a0f87e271b9bd5ebe1ef9"
      "te"
    end
    language "tg" do
      sha256 "3801cba2d50db9063b12cd597b8f38123cfbba2fae47519d5081e2ce40519346"
      "tg"
    end
    language "th" do
      sha256 "7ab91d387a042627f8d1a5ceb13f4442257baaf242e67bd1ce4d3666c6e9a6cc"
      "th"
    end
    language "tn" do
      sha256 "e050e8f130ec55e3980e9da3df07c802c706f34f5be33e4e64c8a59f52c8f368"
      "tn"
    end
    language "tr" do
      sha256 "89d0ee35faadd97268c7370ab2a14f7ef16d53986a990b3c7c3fed65e2ad4409"
      "tr"
    end
    language "ts" do
      sha256 "dbc9ca3ed6a36f96e5d2c3c26346abcfbd53b1205375ae1979cac057bdc6807c"
      "ts"
    end
    language "tt" do
      sha256 "ac7e75d8750fe079671f2880f0683ff851846bd17de7e788baeca059a99a4f64"
      "tt"
    end
    language "ug" do
      sha256 "14fdd422bd767b2a6c3d11701b372498f8d721f2f821bbe6b47f4977916cc1da"
      "ug"
    end
    language "uk" do
      sha256 "9194a8067aa65aa850b12e3ef26617d19be77278bb39281a3c800237db714f5d"
      "uk"
    end
    language "uz" do
      sha256 "9ed806af4f0e5bd62fa39ff64c1e0ea2ab945c93c0ee331e647d0332ac0661dc"
      "uz"
    end
    language "ve" do
      sha256 "6bc3c45fc7921df4e7a39d205efd72032b46bc1f04e04f16cb010ae1ca634fe4"
      "ve"
    end
    language "vi" do
      sha256 "ead000a20b5b01ff616ed5d47d7080cd0bc0b952691e28cde7e186bdc0abcffd"
      "vi"
    end
    language "xh" do
      sha256 "1d1cb800d17cc7c90177a9441e205a0b83ce41fa60d9c31db761318f2449c41c"
      "xh"
    end
    language "zh-CN" do
      sha256 "dfbc8606d6b7fd75bca2fe5f5f8fc5a3cd45471951c2bbf92e3696e676b1f174"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "d3610fff7e013331766a00d3de714390813e2fa518601e3cc0a3bd114be39098"
      "zh-TW"
    end
    language "zu" do
      sha256 "2a07346d2ac9bbbe4843d7a39d9b181054fee401aeb330202894c94ebc37333a"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "c341bfed064281b78e8fc3466fa7559a205a0f9fbeb3b66cbf882f2ac59a4f5a"
      "af"
    end
    language "am" do
      sha256 "d6994684c0d8f63ff077e24f670689e44394b4a25f93854fb6b021bc039e0b94"
      "am"
    end
    language "ar" do
      sha256 "e6cd37189442daccc5ef4f36c8759cf52dcf1b9a86eb5626198f829433517eba"
      "ar"
    end
    language "as" do
      sha256 "4a2eea9a929be5f6abac458f57e726f980ba1f0f769d56045eba602e7efdb951"
      "as"
    end
    language "be" do
      sha256 "1287f706344c27cb162d88ec7392fc90c4b874cacde9e7da5bded4752a543dca"
      "be"
    end
    language "bg" do
      sha256 "ee5b2e3b91bd18732ff636c91d9a72a0fdf7dd5d3f571b0236340a063a9b47a6"
      "bg"
    end
    language "bn-IN" do
      sha256 "771e6b39008fe40aa2a930a37128353669b3c1decb1d3c4c8691906c384f93ff"
      "bn-IN"
    end
    language "bn" do
      sha256 "85dba5b8ad1e9316a8d2de566aebbb69306bb8f5b745b7791d5ad042321b2ea9"
      "bn"
    end
    language "bo" do
      sha256 "059e104a382cb6df447cf78de6e87e1dbb1d35386d4d935c58e79c1e37c079b4"
      "bo"
    end
    language "br" do
      sha256 "a454586af3a8eb2b0ccfdddef843357fa7f479200d9db51be14c02d507cfa8f6"
      "br"
    end
    language "bs" do
      sha256 "185b9ab3dcd4ab371f4ede71e727c7d4f30e0ff2d096d6d50d5a37e210b70c7f"
      "bs"
    end
    language "ca" do
      sha256 "915f39645094c27d2c2af3478b584983b841eb256ebdcf20b4d1dc78d5e5a702"
      "ca"
    end
    language "cs" do
      sha256 "06b0fc68e77dc60112a8f0c2328a85f8dde6f34e339dbf20f74dbf991650896a"
      "cs"
    end
    language "cy" do
      sha256 "9f253ec0d8057ec79f9e806f5525460e8bf3b289f99803f6bd23e32ea62179ea"
      "cy"
    end
    language "da" do
      sha256 "d13ea109c54cd87bf4e4dfb6a346131134dcb6536bf409a6bbdcfb5da6bd43ad"
      "da"
    end
    language "de" do
      sha256 "e6b86c63859e5dc2c6b2f5a2472762d11f6182210557e5f0a6e4ac167e6884bb"
      "de"
    end
    language "dz" do
      sha256 "4b15f6517a4522283bcd19f5625d871ac9e26b7ff9664b8fe5efb6253db924ca"
      "dz"
    end
    language "el" do
      sha256 "26dd26d25701509118e67de7819759e4563e1e0b3f4878b67740e3607984a63e"
      "el"
    end
    language "en-GB", default: true do
      sha256 "40e61398447b069ad16dafafda0c3dc12d60b593d7e0e09c51eb0650059ae429"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "3962c657f1de5af10e9ff16407a71c8e9a6dd9ee30309db1ff29a9d442d0ca27"
      "en-ZA"
    end
    language "eo" do
      sha256 "60026925ad1be44286da70236fe90244d995ecbdc69d470ae3b3241ef99f62f6"
      "eo"
    end
    language "es" do
      sha256 "ceb6a49b64110b9b711bd2ffa515c4af4d6a4878b9f581489ff2eca513e06b7d"
      "es"
    end
    language "et" do
      sha256 "ebdcee910d6972830f3c77d63dec3bb218509cf9bde712a0342e4bf0952a4e2c"
      "et"
    end
    language "eu" do
      sha256 "bb0b4985403f8a8e27851a9361b1bab307e1cea04e46874d1c047e45759fd12c"
      "eu"
    end
    language "fa" do
      sha256 "ee8d34d45d9fa16ed4f44544445c5af5e5243597147605fa7fd13fb6d16abfc6"
      "fa"
    end
    language "fi" do
      sha256 "af43ea804e2701a77f20d3a0d07e9e9bfd3fdbeb2efdbf1bfb3279dcb3424072"
      "fi"
    end
    language "fr" do
      sha256 "4459717c1f39f86f27b05360b93e85f99776cdd67ce0242cf6c792bf695c1cc7"
      "fr"
    end
    language "fy" do
      sha256 "df0ae36c0d0693341fc3196d230bfe549d2069790a4c8b9c2d9bda19c7e6f053"
      "fy"
    end
    language "ga" do
      sha256 "fc6196242e272b821ee3ad9cfe5a76c92d905e507603d8b0df8bb367865d8c7b"
      "ga"
    end
    language "gd" do
      sha256 "838aab8c1f721edb149a6109c443008021fd39f58e5163f54d1c717cac3ecbf3"
      "gd"
    end
    language "gl" do
      sha256 "8439c031c81ec06e56bc64c8e02aa1e76e0d6be649b037c6d88b39cbdb487bf4"
      "gl"
    end
    language "gu" do
      sha256 "f5ba6035b26ce9b0232a179ce94bfead9598e2d9cc502d44d6079308cc39bfc2"
      "gu"
    end
    language "he" do
      sha256 "28986b1f84632718d6b13777a8fdf31f9755f59b3f8b4eb656302f89ee17b832"
      "he"
    end
    language "hi" do
      sha256 "bded7d9364f126626298dccebac9cc7d842a078819786df3c087fb4b42450026"
      "hi"
    end
    language "hr" do
      sha256 "7965e8cf8e83bc0b84a7643e3ce33915d78a359f5491e5b7b3cb036044bef76a"
      "hr"
    end
    language "hu" do
      sha256 "9e7422f4543b3afb879c4e3e2b7c5f9699533d98942c4245971841270508faa6"
      "hu"
    end
    language "id" do
      sha256 "321900fd43cc4b6b2d5f80b3b0081c1c810216a26604236bf099b0422e234ad8"
      "id"
    end
    language "is" do
      sha256 "af99da4f1d39e98bec88414bd67ff4466a22e00a36a1cc0d1712b7bef58bcd6e"
      "is"
    end
    language "it" do
      sha256 "a72dd3d936a8eddfe3f72a8321a091aa446f8ead51d64d1036fe858cf6e5e350"
      "it"
    end
    language "ja" do
      sha256 "ea139e3622dcd76e1a6bc5299618e9a71eecd0e1d0c1ac574a6acabf77944df4"
      "ja"
    end
    language "ka" do
      sha256 "db013d363c1fcd13cf3eecea7cfb57fffd89e973f5885fffbb1c470206ac352e"
      "ka"
    end
    language "kk" do
      sha256 "a3fa4abb3cb85c0aaa7664414d8e25a28d9f99d449169e94d868cf542db5746c"
      "kk"
    end
    language "km" do
      sha256 "4b5cfe674638f85df674a5b5414a2ede7014526342fea64de59867209e71e9f6"
      "km"
    end
    language "kn" do
      sha256 "45bc04e84925fa9aa82f0125b49c99fd710c3b9ba8441e4d1e2a2a1bad265112"
      "kn"
    end
    language "ko" do
      sha256 "a8bedbbaf1970415e2b1656caebb0853006883f5a8130df2b4d615f7819c068d"
      "ko"
    end
    language "ks" do
      sha256 "eb09d5ba3454e83f164be421f5cd1d23c5e80497c8a4d0a19bac8beae7a7bcbe"
      "ks"
    end
    language "lb" do
      sha256 "1efe0c93204b339593678a3aa1036f4fd055adb364588c5df68df6f5f7004886"
      "lb"
    end
    language "lo" do
      sha256 "a5415437652fbf847a24daec1d9bb0f39451f5b46203b0f61ed4f16a8ee2c378"
      "lo"
    end
    language "lt" do
      sha256 "47c3ecc118f9dd0f021b5b8185ed80b90f56bfef78cd751d774df5aa60a17cc3"
      "lt"
    end
    language "lv" do
      sha256 "925ea259057ed0cddc4bf6374a8be48d01b2d29aba4d08bec6d453ed2fded6a5"
      "lv"
    end
    language "mk" do
      sha256 "afc17296ea40e6c84eb0848201656cf423a0114b86188d471e623926ce1ea543"
      "mk"
    end
    language "ml" do
      sha256 "5526aa64a4526c94daa6534d1f2d79b55e52d01605fd4aad0f2c062c2f539166"
      "ml"
    end
    language "mn" do
      sha256 "13caed87702f694fc88bc74e325edb78849e1f27d8c9282cf1bc452f01eb8b8b"
      "mn"
    end
    language "mr" do
      sha256 "b398caaf23c3b73a628f74e8f8bbca6f36f5ab9905b91684ba880d304def74db"
      "mr"
    end
    language "my" do
      sha256 "967cc2904176e226a5c3958c955e6b3f6fe25d5c2368ee6470ec398a9a2f5e79"
      "my"
    end
    language "nb" do
      sha256 "50c1e67c8e83924ebd05287b4e63a5f789930ec836628aaf8d60e70614720711"
      "nb"
    end
    language "ne" do
      sha256 "e4964898fb2e4191ab0d77245b298f78889f235f28448dda030b3b3d24a2588b"
      "ne"
    end
    language "nl" do
      sha256 "ff41596383b1cd2a8f8e0c49b8008457887af0969d7422521a59e1ccb1dfc321"
      "nl"
    end
    language "nn" do
      sha256 "ebf03d0fb046974f5624387d17023afa797b465430600b0204c7137f68680d82"
      "nn"
    end
    language "nr" do
      sha256 "fba6e0a2757ae0a56d0d4ca8c4bf7aebe7f6978e2daefa85f6cf5f17f0e4ca39"
      "nr"
    end
    language "oc" do
      sha256 "21404752223db6a2a342e87a77cf0f0b376f6fe71a1b7ecde6673eee65666060"
      "oc"
    end
    language "om" do
      sha256 "34b4898c43c91198733bcb942ae4b6f8164f68552c2c8ed00412fc533aba3abf"
      "om"
    end
    language "or" do
      sha256 "dba03366b05be50d6ea405ea85b827d7a85ab3dc787cbfb1b314afb47bed3674"
      "or"
    end
    language "pa-IN" do
      sha256 "6d8e105c193c9072c36f6f93d42710d406438f2dced787c89b1c895bd7ff4dc5"
      "pa-IN"
    end
    language "pl" do
      sha256 "c174f67b85198b959e9db6eca81cfacdf13417ac00d235b9ce081f521f866525"
      "pl"
    end
    language "pt-BR" do
      sha256 "80f04de962b0759dbbb85d3845e9cff2a65c22ff32973784339cf7cc0c57c049"
      "pt-BR"
    end
    language "pt" do
      sha256 "84db82b5701bcaf7201fea2bc10d7afadc7a74e76b6e87433adcff26878aa8ee"
      "pt"
    end
    language "ro" do
      sha256 "637bb36f1afc6128d409a698abdbbd6349c2e02633e915572b34b59eba8ede6d"
      "ro"
    end
    language "ru" do
      sha256 "b899d958409a8df2dad368d2f4dd916cf37b35cd56d9ca70e43c5e73df9ef3f7"
      "ru"
    end
    language "rw" do
      sha256 "193e25d00213a5d569afdb52433044ebb7b0e31476d0e0e02da07a0271fee23d"
      "rw"
    end
    language "sa-IN" do
      sha256 "8a3823758ba7e13dc2086324b19dda51aa6953e1cd15774af4e894861515dbfc"
      "sa-IN"
    end
    language "sd" do
      sha256 "0c6f0e6b6a61455f2dc2d302078cadbb7cbc41f2477b6384e15bb3a208adf19d"
      "sd"
    end
    language "si" do
      sha256 "040d4078ed206a9ad68d55cb113b1bfab50a8630bad0fb604dfea00ebb18783d"
      "si"
    end
    language "sk" do
      sha256 "c1647f956de829c570f4a4fd0d0015c95bc0607f026806d21d7a85b3fa6af410"
      "sk"
    end
    language "sl" do
      sha256 "5deecbd14f65c5d25bd22d2de5ad1b6f0478270285f41d6a678bd39f338affb2"
      "sl"
    end
    language "sq" do
      sha256 "383ee84053b84e6f05fd47292ec6763ec1482bd96e8d99d738f5e08921dfe8bf"
      "sq"
    end
    language "sr" do
      sha256 "fb6f536d81503fe47d20ac1e9ebff355deb8e54c81c8f69155e2136daf8cef0c"
      "sr"
    end
    language "ss" do
      sha256 "a0e5fc171cc5606546ae38444fd829bb47fd0179b3f59d16eac108c28933a180"
      "ss"
    end
    language "st" do
      sha256 "1088e9e574816e8cebe4d18f10e189ff77285028005483bb3dd41b91ab79539a"
      "st"
    end
    language "sv" do
      sha256 "e01a166381becf68c25adec2e1ee9ec5f020cdf7813185c1ebfd923a67d221a3"
      "sv"
    end
    language "sw-TZ" do
      sha256 "724985ea384174eca27a3aa6d200ca84738b70661dcb9d6d3074ca26e3bafe65"
      "sw-TZ"
    end
    language "ta" do
      sha256 "86a527d604ac188ad8d1acfd955ead3def54a85f0a4a7f1673429aa9ae282824"
      "ta"
    end
    language "te" do
      sha256 "acfd10839ec6cc43fc67aaca8ea9e4372a3fd682a99e69f1265cccba00af15d9"
      "te"
    end
    language "tg" do
      sha256 "6b822ce118b84558c154b13f9388c22300712c4bf46edf6cc96fa4cd9db7b5b6"
      "tg"
    end
    language "th" do
      sha256 "7a775bb03f4732ae5c813ed674b6d0d65679c97fbc5c52ffd289cc99039c7cc4"
      "th"
    end
    language "tn" do
      sha256 "e4bf45ec8e614e0805aa578d6889a1d67777cb4195c2a309edb7a941ffad1e91"
      "tn"
    end
    language "tr" do
      sha256 "dd8a3e674b05e514260a455257ec442326b39572d96a37e85c489687ab6c3671"
      "tr"
    end
    language "ts" do
      sha256 "c7ee37803b08c95c24db3a7f68850faa243d226849772a50acaaa320f7af280a"
      "ts"
    end
    language "tt" do
      sha256 "6b236e8b1e40466e2e12032d327612eee86049941ce10e73fe6fc0fda7c6cc9c"
      "tt"
    end
    language "ug" do
      sha256 "f02787fab93902c5be4832cbd37daec83f4ff791ea0dc4b9968449f363a9e47d"
      "ug"
    end
    language "uk" do
      sha256 "fea8236ae477b5ed3058b3bd9fb29bdb8ad3f66e9c1074f40d012c9b5309d40f"
      "uk"
    end
    language "uz" do
      sha256 "bcf7f332ee4123e928923ea08cb39652f29f968e8cde2fd2a148287751627ee8"
      "uz"
    end
    language "ve" do
      sha256 "c527221f4c8e9c5c08aa9e668f5d5c3559ffe33fa48d0aec60d1f3b4ec23454d"
      "ve"
    end
    language "vi" do
      sha256 "d5a86f6c3aac4c2743c56700ea1910f5aa73f79edb84f01f37b0476178cc5501"
      "vi"
    end
    language "xh" do
      sha256 "b67361d07e654ac40717b3d74d2294fd8f053a6b353468994d92dbe2020cb6cd"
      "xh"
    end
    language "zh-CN" do
      sha256 "9885d322f934e9cc0fd9151c47a84b9be3971ced8b2cdee4ac0eeea06b35d942"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "ff1609873bea962de90b483b66dab37477274951d352ad9189971e8ca42f3774"
      "zh-TW"
    end
    language "zu" do
      sha256 "6422c6b38ece035630a5ced569d04f6cf1314d080770ec64dd5c0f6fe343052f"
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
