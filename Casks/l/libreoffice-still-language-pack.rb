cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.2.7"

  language "af" do
    sha256 arm:   "0e9d8ab1fc00d30b94c456638daed72fffb40e772077156b5236764446b22b9b",
           intel: "863eac0b05375a7dc555c6e823d01f26c8f6b5e3283ed7d0fc573659407f034a"
    "af"
  end
  language "am" do
    sha256 arm:   "21b257aaa9c0d4cd816f0594ff2ab4effa883d1d1cb4183b4129a630da48e8b7",
           intel: "68de37260af0cad020ff15875ffc8a39a10d9113d0ccba6e8abee474ef0f50d8"
    "am"
  end
  language "ar" do
    sha256 arm:   "ded89990f422048f13f1e82c86301ab09ddf810188b7885b3c49841b543062f6",
           intel: "88f55f706b9d1a299fa90fb7cb6120e6ecefcbf25fe5d6296296e27db61197a7"
    "ar"
  end
  language "as" do
    sha256 arm:   "f03f9a761ae2493b1eaba82b2915ea0c1a309f2a0d6167f0646efc28610cc3dc",
           intel: "1000f3e6b98e4956c355ba235e25c83e93aed457968fe1e82562133a15dd77ba"
    "as"
  end
  language "be" do
    sha256 arm:   "5ee73776351974772c662622c2e693c2c75a36c840e8a88cada952daecf5ecf4",
           intel: "025d056f3c723e46d43f8de1b2fa184ef15a03c34a3a8143a77d5d3f4edd6c7e"
    "be"
  end
  language "bg" do
    sha256 arm:   "bdf81739fd04a837a37ac2522cea3d27f0c89c43c73e1ec8e5c567d011c53bb2",
           intel: "4a7da475dce297b7704e9bb867c4b83be3edaeba2e58e1532ab4ef04dc40c1c5"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "49a94024ebca0544605fc2baeb1115f166d6cab270e04eae3964bbc22a2f906f",
           intel: "924dd4d6e79c1791e00f667f0f97867541a9698c61d3a008f166f156b3dbafce"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "4109d8d2cda7ba54aa72ade3e489577a0357ed679beadcd43a1390ce81c07a2a",
           intel: "d2a520d6584f3a52a02ea2727bda726f74ef50c9de038c1b63256e7b0bf836b0"
    "bn"
  end
  language "bo" do
    sha256 arm:   "206dba88a196b894e22e5f20548823eead6c121cb17f5032a7a2be6f0355db7f",
           intel: "7b8bf86736c586ab66ec63ab379efe0804d0bc7f9ccfa446d9049927e15dce4d"
    "bo"
  end
  language "br" do
    sha256 arm:   "ee365cf4ab500fdf1d15e70bf5fedd3100d7415ae0bdbf889f48be951c7a2449",
           intel: "600c9fa5d0cccfd750c82511f6339bd9a45c321ea0e931b97997b2455c3bc5f7"
    "br"
  end
  language "bs" do
    sha256 arm:   "638d3fd211190abddeceb359d68184248a53ac0885da86b1279bb0cb1d613a6c",
           intel: "99b5c9976668706b9e29cb9eb1ee789c002a614ac8d4b3935f8eeb9932fb5add"
    "bs"
  end
  language "ca" do
    sha256 arm:   "27be1bc4b7871b0481ad7d513d3b215d29877ebfdbd4d54b2a1062d8a3e0501e",
           intel: "4c10013db8f5ae305e630c9a19f8a3c4ff6dd96230b4c4cd367f7873471a9ecd"
    "ca"
  end
  language "cs" do
    sha256 arm:   "146c0e3e9c3d21d8ee7cad9c2e238a1508b4f6d9f58f43296c0771643697ad37",
           intel: "a6b04ca085d538eb280ede69b75a90f062d7a4a6b52897fddaaa0e63190d15da"
    "cs"
  end
  language "cy" do
    sha256 arm:   "0c5eddc60a11f4b4965849590969480a52c8c30ee01d3354e651cd4cc48e11ac",
           intel: "3409e587dbd2c25c32489d9c187ecb95c5dba4ec7824bd339317a2e8b76fed5c"
    "cy"
  end
  language "da" do
    sha256 arm:   "f9b02df61cde632fd66bb16920530466646394beb9dabf22e9a71f02ffff53be",
           intel: "ec785bf2ba122c054535badb1ede605faa2b4c56435c2ed40bd622cb81dd932b"
    "da"
  end
  language "de" do
    sha256 arm:   "4075efd9044ea98a06aa4b119934b9a3eedf112fc423f1fbf95f79abcd3a254b",
           intel: "9f784324d5614e74259e3b36128c02060d4ba892ff5e49826cc240ffc324bbc6"
    "de"
  end
  language "dz" do
    sha256 arm:   "3a85e5bc91298e2c7399cc9d55cc6791313c4718e5b4635f49d40848bcf6b089",
           intel: "6bafc830f3627d9c6713bd0faeecabd28c547cf912493168f5e99dc0f51aabdb"
    "dz"
  end
  language "el" do
    sha256 arm:   "2e14bc2675d28768665613461c10cc91d1d1456b11218d9c2fdaf05d2983517c",
           intel: "3e5182432011cd93281d2fb10d457b72894e273767d7e4362bd89b31e37c8d99"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "22cc93770f6af5a0a523aa8d4be4dd1a6dbf7817a2ea9b856decaab735e54b7c",
           intel: "14bf5747e2d084edb1fe1571275a1396d1595532c8bdec3bee8d6b3a1892654d"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "431b668894954f8bdb559701e735e11069cd250caba9ad7c42ba2f8c54191e03",
           intel: "33fac436e36f63d92d1457bb9783dfdb48c55d74ec306f053ae6221891c6f5fb"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "bad462a1e17c62898146c105debc33a3dfc93a31e0bddf776fc6cfdec04aa18d",
           intel: "5031329694ac98e2981051a9147960bd01620a2ff6959f2a57d21dbdaec40240"
    "eo"
  end
  language "es" do
    sha256 arm:   "32f6f9ef0faf88b06e4cceaf652704e527867a92e4bce6460599658dff2245e7",
           intel: "d1887d93e89c2330670bb46d221b23519268395aa9f44b7741f72e8669e371b8"
    "es"
  end
  language "et" do
    sha256 arm:   "f7ea8995729574e7fbd7fc2b5e2ccd2a2a2aae3b8a9f1c9a8b1cac50ebdbfe27",
           intel: "20363cc41abfba4b975ed0846ca050af6f7c408cee36de4c6d4f44b7b979fe0e"
    "et"
  end
  language "eu" do
    sha256 arm:   "7e97c5321d026646311680ae767b470e10a43cb8058a0dc8f9fc6839da535a09",
           intel: "457a61b30fd0b580b5591f01224fb6200215fea2ee14a3f36ebc0d95d5455364"
    "eu"
  end
  language "fa" do
    sha256 arm:   "b8228b7bdebec8133677c97da728918a56f5a6a90507be8db0fa7533fc75f1f8",
           intel: "357b4b5a7543993909b165d0d6b304889f32454a376e0255e5eedb5ec265deff"
    "fa"
  end
  language "fi" do
    sha256 arm:   "7c71a085c021580ad5175a62286247e58970296005c6896b3ba26a903b06b163",
           intel: "f99b5eeddb28fd4a4e7b1ed2a02b377dc44fe3eb1967456d0ef59930271f72ff"
    "fi"
  end
  language "fr" do
    sha256 arm:   "9edc29b0687331abe9852bc2c6c56ca00f932ff52ab6e3be28c7bd120fa1d2da",
           intel: "d16a9266e181cc4811f32245cd73aa5313314ab3e4aaef33517d70a4b3c7b824"
    "fr"
  end
  language "fy" do
    sha256 arm:   "5ba26350f7053ea490e042467261303541b9712c417b526d8fd29aea9fd3d24d",
           intel: "ba8aa3916ad0c65b501c0dcb6c37386e6f7f19d3a447f1d3ca1a37d055becc5c"
    "fy"
  end
  language "ga" do
    sha256 arm:   "0a6b79364081eaf8eff48edac7680c5d28689390108ea6a4e9ae434cd6b69290",
           intel: "0ea9797a284a9615d3e4ae1ca5ba9c849c190e4a797e8ce395171a7f523249d8"
    "ga"
  end
  language "gd" do
    sha256 arm:   "c03e5f3c74302506457624eaee812a526fa2460b47525423a6cf544c39909237",
           intel: "df62b7200b0ca787f8f8bfe20ad4d088529094b2092a82dc47dcb673c6d2de4a"
    "gd"
  end
  language "gl" do
    sha256 arm:   "2828022c1fd004f4aa6af466229a257d484c26cda406335aa09c721b914b7d96",
           intel: "ec9eb5adcb7a16361bae8ca1c1e9743d4ce8bfe8f84bb1a40bb191ab1541ab90"
    "gl"
  end
  language "gu" do
    sha256 arm:   "2206e5e873b56aaf1c463411cef340b028c6139dbb73c406e42f096412f45341",
           intel: "0e3316da806baf14a280eff97afcd539d0bea87ec6d06aeb72ca6a6db01df6be"
    "gu"
  end
  language "he" do
    sha256 arm:   "d0b81b91feba2878ca6a0bb099f89ab2a439e083a554544bcead8ec44d0c4daa",
           intel: "112afe84a65a7b32bb052b5577d7b7957a9b63e5b043c0d35152f281838d984d"
    "he"
  end
  language "hi" do
    sha256 arm:   "178a31b9a40f878f2afbee2ad66785fde698b9def3060b2f7ce528e32a8b148f",
           intel: "a5995f0974d7777cd6c43eeedf4f2bd2c24e363573d0a25c30af48f7a9d9fe30"
    "hi"
  end
  language "hr" do
    sha256 arm:   "bc265fb6cd3f74f6bb18cb76a1dafd13b2274d22cdb9dd4f3b9c4d6a43dbb742",
           intel: "7b7911a78665c1265dde39be9cc1a569b406ea29ea0b94c1e7ebd9e1481f6c8d"
    "hr"
  end
  language "hu" do
    sha256 arm:   "744918cbdc2b301a4fa914880452d1b0665bfe801d7b8f2582b53caf02cee7ce",
           intel: "a166f4c4ada8c9f433e0478b9b6287cd467f9660d9189fa38b6afae66a6eaace"
    "hu"
  end
  language "id" do
    sha256 arm:   "6144975c11f4c03cddadf3413e33e062cac375ac086c0d04dc239ceae0a2c0e5",
           intel: "e49927339d1291c3ceb1809fe2da14ad208af99006f9a02fd91edf86bd807ca8"
    "id"
  end
  language "is" do
    sha256 arm:   "5ba24840a3c4e3097f182eda9dffc8c17fee74755c86084a43d40de59b9f4c12",
           intel: "1e953b3bb9c60ba5488b064353e33edf396b8450e4930e4e7724d73b686b64fa"
    "is"
  end
  language "it" do
    sha256 arm:   "b88dd492ddb2fdc357a157134aeb6f32c8d03a1fa53e08399117ca5542e89e0c",
           intel: "b6e88fea7c9e0fe7efb65ad465ebce1a39365f35c2a3b657ff840d50aff0a30b"
    "it"
  end
  language "ja" do
    sha256 arm:   "6a5c6dd2c469279c262598c32b291078db4792f6dad676e1f0023dd45a1bf5a2",
           intel: "0d5a6f6f61ed354c4253c5e8ca73ab46652082aee91f4730c089ecdc17821942"
    "ja"
  end
  language "ka" do
    sha256 arm:   "c2498093ef60f67bd558e50bbacf5259c794c5d0c4538f5d112792476ab77053",
           intel: "159047ef20455f6f8b779dcb9a14185ba7a8610736fe47265b78e0614b2e0e5e"
    "ka"
  end
  language "kk" do
    sha256 arm:   "27e1219e9d21643ed39e30f024f044ec18946dad86abdd725fdaef5fe470b651",
           intel: "4e0f649d2865b6918dbd9064ba9b5f44775075bdf5243202a2cb34c0de089235"
    "kk"
  end
  language "km" do
    sha256 arm:   "32fc2c1b73d13e9855c84982d3cd02c2893c87d5089a8d69868e1eca4b3096f4",
           intel: "51f3e36d6d9cae3eba8e0c6b9a6509ef38fd2a9c8b855cd0a07d99c7c0b58540"
    "km"
  end
  language "kn" do
    sha256 arm:   "01068a50cde8a3c90f1d474f153d66ab53a04fc0ed1174c26710aa5d67e1dbb7",
           intel: "092db8927ce451963a05281ac3912a2f8cb2ce59fc915f053fa04e8c14bd8d01"
    "kn"
  end
  language "ko" do
    sha256 arm:   "ea3e25ea407042f90b1b72e66a3a6df36ef320e881fad4bb939c4a58170111b7",
           intel: "c13e0df1f7fa0667754e29efe247e02193284c2b56c8112ff9c3b85e261c3f15"
    "ko"
  end
  language "ks" do
    sha256 arm:   "0158b7a3124aed4970fc10b0c3d7f95c4551a351d913a10b0d8a5dcaffcc3944",
           intel: "f5bf7c0dd5c5bbf8cf652d1ae9a88e285d01fcce48caf5fc0755d2ec916385e5"
    "ks"
  end
  language "lb" do
    sha256 arm:   "3cddfe7db5866cf67398ffd0820ff59d12b32880e9733c55d0561ae3d8d4f939",
           intel: "914bd9ba231643f1c882962a620030f7adb01e92c2d2ef3632b01b2aaff48287"
    "lb"
  end
  language "lo" do
    sha256 arm:   "2c6fe24bac2763ae84a17c76e6cc575ddc6bfe4610ef35be91419a6a622d589a",
           intel: "288cc7154b52ddc59820a548c193c893c759009c1443af3ab8e7820009947e76"
    "lo"
  end
  language "lt" do
    sha256 arm:   "1369a1e9c0356948b1ad9c04f0d48abe044029c071853364ea5ab0e9fcb3f5da",
           intel: "4a7d7f3877f4086e47a4df98d195e9723e028c96ed7052270a7df217311facca"
    "lt"
  end
  language "lv" do
    sha256 arm:   "a8d96abc45df5054b79059a843bbc08de9b05526e8ddee1a1987755deaa9e9dd",
           intel: "a0d98206b845d6eb989cf4f528491609c51beb91e150736ec3463470f8aa134d"
    "lv"
  end
  language "mk" do
    sha256 arm:   "7ef6bc0179fd590c2d9f1192055db2676de4c65c6f91ce361fbb2e5b27b56c34",
           intel: "e919fbfc7262c3ccdd36473d29c82424cace4c2d58166b059d47c25980fa9cab"
    "mk"
  end
  language "ml" do
    sha256 arm:   "ec471a05a2ee7e4c0038db05f8132d048691773429a7753b46d8056bab4f820a",
           intel: "f62cfaad7f8df03b1b21814d551e6341456aaa281e6dece887285eb797dc57a1"
    "ml"
  end
  language "mn" do
    sha256 arm:   "47b43eca16827cdedc43c326f2f8fecb0eab0a24311ac83800a996e7b50e2229",
           intel: "b6c2c9760018385c6757dafb0791f35c0f10eb3d6be6c32780e756ea002010b1"
    "mn"
  end
  language "mr" do
    sha256 arm:   "71fd8e545e53352a7987be2a5cc9f58c437d73bcb8f6f82ee84a1e2cb1d14a8f",
           intel: "c0b792d13fec568db498d323b940a237ab3e9633fbeff510657451c041850dea"
    "mr"
  end
  language "my" do
    sha256 arm:   "6b893de589d3b22fcc1b6e38909ed474335e689cd7de484e4770485dbb44e961",
           intel: "9da07654a547d5109c2fd53f9ac0928ef5b42ebd0c3aaf18149b6be4d453dd32"
    "my"
  end
  language "nb" do
    sha256 arm:   "b5e01a5964ac9504b5b228bd4a17bcd3f2982c394eccc67bf660acf97b424fbb",
           intel: "2c68a89753789efec328c7d865cd7f6ad11b4b4b25f6a14e12f0e9a9dbd45b17"
    "nb"
  end
  language "ne" do
    sha256 arm:   "81aef8bad0504a4d4e03b015e4e85df97e0be668f0fb267cfb82f3b5af163a66",
           intel: "2a295a83c87547b7420cb538e53f54ebdee386575ac0134595818029cd93a387"
    "ne"
  end
  language "nl" do
    sha256 arm:   "784a6ca37cc9eb256f9ea69116c26d6fdd170161a48259b2a96a1e3416a749a4",
           intel: "69a8a7a877a147b1f35cb7366a32fe3890d546bd7e4b885cc285cc476ed505fc"
    "nl"
  end
  language "nn" do
    sha256 arm:   "4d6693c9a409ff2def6400564677e06cc4b6a93fded5a261d76567ed29b4546a",
           intel: "40f213f44015ff21bb6594fd6465114d0b03e7e49aeedb12e62ba629f1a5003a"
    "nn"
  end
  language "nr" do
    sha256 arm:   "2985d6c7621baafddc4987dffe0ee182fbc660c1d676d6b00fcdff0d2d7fcda9",
           intel: "2b6e0ebe68ed2fbcaa94761078ea50abfd2cc9c26c775b740a32d46f6eb303e0"
    "nr"
  end
  language "oc" do
    sha256 arm:   "b8cc1a4588e0db71a7da1a545d32ca5a69a1df1f00b0d4c2d476afa84088ecc1",
           intel: "818f41b6af7760075465166e1db7b34504faa6e1a2fadd358d866aa3dc9ccb29"
    "oc"
  end
  language "om" do
    sha256 arm:   "386381f021ed0a3fcccbca49650593fdaef6b5f2e30f717a763ac3ee77407bc4",
           intel: "397aae1f6cc7d35b84a52dacc48e659420dd4ca1fb17e8250cc9633ad1325fbc"
    "om"
  end
  language "or" do
    sha256 arm:   "82d12f5c9e7e1916adacc40c29bab5bd9211dbf80b31fa8ee80e39d0c7d3723d",
           intel: "a265c46bfbe8e8eba277cd1fd63df25ae1f9a2bb2a3abd53b76abf3087546398"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "467b9ab3c4e17fd4e22ed843d390038077121341f3d22cbea32bad8fb97bf6b0",
           intel: "c3896c93356a74a464df3a31c4685a40fffd2cb617c59bf135c0a9f729a38340"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "b6105141c54d0b104fdd87b2c77e9e2a40dae9bc79b2359a14a93bf58e30d0b3",
           intel: "be5388e597d2d7bffe113ac124347d66df7c2e957ccb75ec07b3da10808763ec"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "4e411b0dcf3b5959ff2a647e55109b245647ac4af667dd0e4d6ce71958ae3c93",
           intel: "f62778376c301450fe5fe1bd164f4241dd9084b9870dbd1f61aea6a5edd59956"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "bd56ee268f908f03b392ef239544189f3f91efcfba55df1a7ef3196ecded1137",
           intel: "19fa3d37b153ffb4e00e199964856c8272425361710b5629bbda9e3f5073b92b"
    "pt"
  end
  language "ro" do
    sha256 arm:   "bc73895a177c70c5db790268f6c7cc18020d9e923cc47ac5edf13344ea089767",
           intel: "8a3fe74cc57168cad8e397b8eef9c0bdec5e5882b31939cb5363a311e681e72a"
    "ro"
  end
  language "ru" do
    sha256 arm:   "d387ffe378bbf48e1c8b788c1c7c649e3b8f47953c039d58077223831c593856",
           intel: "08ed7ad52bc516f36815b6a7587e44f1a00e81fc6f03ffa3c3452d95be3786f8"
    "ru"
  end
  language "rw" do
    sha256 arm:   "09618a330a9d4ea639fb4026f797395c54ee9cc53f464c3b3052907291a8a2bb",
           intel: "1a17dd5bb15f071208e18e6615c5cc55a539bc88fa108a91d9fb519491b41768"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "d70284a9ccb2159c266d7b202cc191cd5c10df905389319709e67c5da2a9431e",
           intel: "66e950a5ee47dcecf5ee598b29540b1c3fc77e37934472b6dcd1ff4d3f77156b"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "5bbe7b96227deff91e8be04300b72bc390aaacc403d3569e6fcce5c6463faa16",
           intel: "962a0ef846b5f1b19f5ddd06bb76c6f9283006d910bbfb970cc42ce3cf7a8092"
    "sd"
  end
  language "si" do
    sha256 arm:   "c5771b7fac4be5d6437f16e2b33f2cacd31556576ba6961dec7b595bbfe5182b",
           intel: "1819b4ab1816daf1eba574db9aa94cdac91cb5404f89edeec1093626319866d8"
    "si"
  end
  language "sk" do
    sha256 arm:   "16c7941f601afe178972b30be1cb84208703b8f69fc5254d65cf09f5fb0fc175",
           intel: "d0493d77f3695f7d30bd826fb56a2f6c859372c12b6f2ac7ef5987bba54ecf4f"
    "sk"
  end
  language "sl" do
    sha256 arm:   "207722908e3098640c357b78234e57f310fb5be5a8eced0e3106104faadc1280",
           intel: "b931c00b5061040e29e88ada7f61bc09cdc5604c629d4dee45aa0b3c63879c80"
    "sl"
  end
  language "sq" do
    sha256 arm:   "6cb2f00c57c12cff95171f542382294d38f1c52f5aee7f06ef321609fe476eef",
           intel: "0fbf5e3b71f5cba4c330c95592c38e6749e616b8867c2551339e3b4a284d6cfd"
    "sq"
  end
  language "sr" do
    sha256 arm:   "db713fd1b1c1197f8128a212fb2955d9794b1d87eebeb94a390fcff1db82094b",
           intel: "1df7ab7e0fd51a3040f9b7770eb5153e98efcafc57f2276ab2802c88e57bb393"
    "sr"
  end
  language "ss" do
    sha256 arm:   "b4b16ccb9305fda2e7d1c842aa2190bb2852a0becc5fec98598da18f1261c42a",
           intel: "a23899da3afacf001619920ff4508e0fabf431e210f84b72d73603df45ddb5ba"
    "ss"
  end
  language "st" do
    sha256 arm:   "6c3dcc125e219bb6e6b367814a859a99caed1b918653e54732620df2c4edf91c",
           intel: "c9236aeebd4532c1d0af2fac13f4f553e83b47256feb1fb9ebb9e97761201263"
    "st"
  end
  language "sv" do
    sha256 arm:   "51326d28bdc888e5e9c98f5c8d0d14c63cb046025bbf367e591de193f9387cd8",
           intel: "faeffbe4f53cec4f9eeede1cbedb48f89a8d31e43c3bc789eed172a9d42b0796"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "bda293dd43ea63cd5c60bc3349eee1dfdddc0b3e89fd07ba6eac9f5842d119f6",
           intel: "f8e1e80b7e166c7176efa4c823c69a4b52af08de7f5eb69a266ee9f7f1aaa208"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "1395eccb03a3c37017319278f0a5982dd2c380cc7c77abce8ffd9bcdb1e4e5be",
           intel: "85c051b7f1a9b61c0efe969e0c8920e1f6aa05924a1bd49c607afe4bd3d056d6"
    "ta"
  end
  language "te" do
    sha256 arm:   "f819a34388ff7fce8d24de2d644293f83b72fa31826e0225563f40a880e1fb08",
           intel: "f7561f14481e8f681b84646c2471e8929aae1f5e793c6aca134092083950e515"
    "te"
  end
  language "tg" do
    sha256 arm:   "3364845039962011650a08ea5dece15325a0d0f96c5f30753e66fe2c5a2e38c5",
           intel: "f3f0e3a73d2009484a386849c7332e1dd879b6b46fac7d9dd2e8f83a90009902"
    "tg"
  end
  language "th" do
    sha256 arm:   "79b96899f0796cc7918b203ff66c8a827038e11616f43b0e241fa03185dcb33d",
           intel: "f6a5ad55bf0fd5500bed5135e5203d81347101b90ecb78a88882eeda96976f42"
    "th"
  end
  language "tn" do
    sha256 arm:   "3a7c7c7bdb315bf07e11fad0239955fa0b133957af2797ff4092082b7c736381",
           intel: "c61a7b97d1cf3ef33774c3186d73b3a3fe99e545b57e8e29f59bf8f68b9e2d60"
    "tn"
  end
  language "tr" do
    sha256 arm:   "bfa8618235d03174eeae7cad9411055a9d475e5b90a30cd0bbf4b6e40164e091",
           intel: "390de849f77520691c3a6bdae81e655375c5fecca95052592140e6c27b56fdb4"
    "tr"
  end
  language "ts" do
    sha256 arm:   "7f080b9952931ab1f2e011b9af74a227275a54c12a330ae8c6ba23926d225392",
           intel: "4ab41353b15b23e22855506b4e77c19cd6b13fbfda9e4f8ffa38cffae9609ba1"
    "ts"
  end
  language "tt" do
    sha256 arm:   "83c10df16783186fb1316e1296074b198c05efc632bba32e613e5e25df65a229",
           intel: "3d24721f85b2824dddc95561e23f6460ae4cd1fff929e53f787a77851da46d66"
    "tt"
  end
  language "ug" do
    sha256 arm:   "a9bfb9877d35789db7254a3964225edb12a14c14d4b875cfd9e9b6d3843a0fcf",
           intel: "242ef4459964b629e2c7ecee602a6f13b704aa483793422455646154c828601f"
    "ug"
  end
  language "uk" do
    sha256 arm:   "c06874113b8933a97f95ffd4aff4c88f0d08575b27360260df1ef0b5eeacdc8e",
           intel: "5ba2ca8acc087bf36d536aca1033986011f39a738c355bb253f47e3662f716c2"
    "uk"
  end
  language "uz" do
    sha256 arm:   "ad2018b64b046827480b29686f30ebee1640ec89ab8bae44dcedd70145fdc26e",
           intel: "511014ca3e948e6573fa3647b37f74521bcdd51217ae60bffc92688b08f80ca1"
    "uz"
  end
  language "ve" do
    sha256 arm:   "f50bd3f961b1e944f6196c49c537adf5e1eb6f35ef1bea51e0d6f984eeb4d53f",
           intel: "0e1cf9a34b2bc7da7bdc7d3caf6087431554d8f02e77a319c3efabd26b788315"
    "ve"
  end
  language "vi" do
    sha256 arm:   "83c48330103f7f967db210a82e4c3b0233354ad4b362125c97513bdbced0d0c1",
           intel: "7536bdc2cc74d64679ac4e697c2269e8205f8ff96482e4922941f8aa9fd77ad7"
    "vi"
  end
  language "xh" do
    sha256 arm:   "a32f6c78c747f8f6b03f0b8192c908d8e6b9c2dd29859ed0712e9e404bbe22ef",
           intel: "9a16f22175f495d31c6332f4cfad141ff5236232f598458f1cfd030a7b52ed84"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "49e67a424543ae3c1280bfdfb9a75a15878a3eec614a87bfe6418329035fc647",
           intel: "f627bc82f2d1721cec16890dd3cb0a7208bb3dd3938aea97a75eeb7f4e2dea0b"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "0d5b6d6cec27f7acae308e471cb450126c0146444641bbf126cd1a4d8ca5f952",
           intel: "92d693a50c4afd6bc88ef3bb3f2260e3c7c488da795fcc02577f5db5f7bd362e"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "a1ed4b5e5ada0ef0b7d2ef49faafdcae6521e3242d771ddee295da06d0925320",
           intel: "c3649cedba102ded078c7e61818ba3ccf92aa3abd9e04f855e79e64b41b7b188"
    "zu"
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
