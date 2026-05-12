cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.8.7"

  language "af" do
    sha256 arm:   "7f4f3b0ffb4d3f8da64e702d42ee8d591b3cd0697817c659330755fc7afdb191",
           intel: "6ddb7d80b47c1c67902b1da7101810f5f3a635146b93baa1bb6ba2e120f64d08"
    "af"
  end
  language "am" do
    sha256 arm:   "b8a4ddeed92f9b0f08534fd86c81ac4db0b8cddad22383eda289a41fee6115d7",
           intel: "123e087dd34fbc1903868e56cb239f192ed79f18b5f00aa7160af58683b63723"
    "am"
  end
  language "ar" do
    sha256 arm:   "7f1e052e218783095ee2987b31a41715f211254f16fd4092220fd43e41340dc0",
           intel: "3127f77471cf77d208a86e5830423856eafdab0988686354b1e82289048087e3"
    "ar"
  end
  language "as" do
    sha256 arm:   "da4b17d1b05a72c5c0569cfd012cac9674fc30a5aa3eeba80cfb958c9c5aa5c1",
           intel: "b8f29c4f3b8fd43ffbc408dcb3c9d449e0b2599288192017ae54ddd1ff1f963d"
    "as"
  end
  language "be" do
    sha256 arm:   "5bea50180d1281ab8c9266484ea6641e890ded6bcde182520ee776c1e58afde9",
           intel: "926e0625e26f64396913373ab97e8aa30b6c76873a2267b6f7333859797b7105"
    "be"
  end
  language "bg" do
    sha256 arm:   "e3f5a8efc57ac5f818461037770b757de4a68fb629c5f7976bdbcece1bb75223",
           intel: "96898844235eb2f1ecc5d802dd87e4ae9f39223455a067c885da78ad8f9aef17"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "db0b8024b445b1c1396e96cf4ff120ed2c2e65caf8f491e32dcc794822a2abd2",
           intel: "088216374deeb9d01c343628af9323cf0574d8aee2a2a76e5055f73e75195444"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "bf31492378f65bda41cd567d3024385445667457182969eaa58cbf6651098cee",
           intel: "cd20bfa5bb18e3a68285da74f2f0875dc10fad028c3f20daf5383f1b8e53f9ad"
    "bn"
  end
  language "bo" do
    sha256 arm:   "f2e71d8fc75e27ff0e0ed31b3104b39aca4435876e0c6b9a529d71ecceb8c218",
           intel: "651d2998690f82000db303ab64642f85aa05c703c899e64f0b7de41a0e77736a"
    "bo"
  end
  language "br" do
    sha256 arm:   "6adb07b2d361268da71bc5190eb287aa92738e4227cf62633b1d449c36e30b05",
           intel: "f6a82bdf30d7e635163516c479fcfd08b72237489b74c1d0426e8c2af33d04b4"
    "br"
  end
  language "bs" do
    sha256 arm:   "71f16b773a2722da3541e076df739093fdb7c4154b7435d1e446c8b09bfafef2",
           intel: "e0a42fb1fd2144202533eb2b0cd2e8a666016f3454cff23bcc25235c27a633f6"
    "bs"
  end
  language "ca" do
    sha256 arm:   "17493652ef7a8e98e2a33b05873f35331d5a4cbd97cb2f04a3293f56807155aa",
           intel: "b54afabaa681f89a8101e8521ab8af84df6664c1cfb0068c1c24fc79b3be72d7"
    "ca"
  end
  language "cs" do
    sha256 arm:   "51605280c250396caa62c78b218936d926f782d4834154a6d40e614a9e1fb529",
           intel: "0c36e9982c557fcb77ce88545aea7b898874972f7f39378e7b1b8cdf007e1f67"
    "cs"
  end
  language "cy" do
    sha256 arm:   "69e27489db08bebaf5efec4e3aa124c9400eb5fbd9b92954c7a82232488ccabb",
           intel: "7f5923cd17a32869654a21f196bbad91b5ace98bec0f2c66f1728410399af3aa"
    "cy"
  end
  language "da" do
    sha256 arm:   "a47f3161c983d92e884459cab96f42154c1b67c283200f08ca457212728b439a",
           intel: "821445ca1bea45d3e5dbfd124d017eeb89c8cc87faaa1d47fdcc95474c04e9f8"
    "da"
  end
  language "de" do
    sha256 arm:   "df0fc320dc6a62a18921b24bd194b7226b76e30cdfae3ab5fbf23b69bea812e3",
           intel: "786f43aa7d22d886adcd7df858807e9236563b5c3e84c1454c38653f74226f31"
    "de"
  end
  language "dz" do
    sha256 arm:   "b68eb40907195baf6939c5ed7b82757e45a09cf602369ef6b6ad51f6bf5ce280",
           intel: "b33007fbf590a70a2088717ba900e89191146b8fa44b066a90e536fa7463b6e9"
    "dz"
  end
  language "el" do
    sha256 arm:   "d20a37c751a4f198cf53d6c66be50af88afc5893cdb59b47297cda0d90c0a5e9",
           intel: "e777c46014346ac6c4d902ea0df70edc186560b3164d9dcc33f1eb0c5ff72573"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "3eb7861e78b3d35950a7c2c9a2c81f18fb8de50317cc960580426babe261d459",
           intel: "a06fc55dea25ff646c168c168fd3db9db2b21ce33a0ee7d8babc96b5fbe64ccf"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "c73a41e0fcfcd1156340567a414d7397fbf741a7af25cc8c23147e33e84de99c",
           intel: "346a255561c263329e1bc604221659d22bda0664f4cebbd8c9ea1277dc9852b6"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "28f80059996cbf43e4e0d3ffc9518fe29f99d9a8a705c1d9fea299f0421c5e46",
           intel: "11a9a81e55750e9e05f214ee71ca8ab753344aa45895ce27a4bac524fd3a1cf8"
    "eo"
  end
  language "es" do
    sha256 arm:   "837d47fb6cdda075a2ce5bee18fd31b7d144532b62afb0a74fc9807bb6b4a1fd",
           intel: "dbaf6a413deb18663e42bbad76b8106f0fa3a1d65f129d9150c28dc58d72b61f"
    "es"
  end
  language "et" do
    sha256 arm:   "2817a04cd71e1877a84041b57daf898ad1584ee7cfae28d6f899ba3c5ab4c126",
           intel: "6b3f2f41d78d7ee0fba80644343fe81d8acb529fe1318376f6722cc8b4e3991b"
    "et"
  end
  language "eu" do
    sha256 arm:   "6f174dcc88c9730e011a15f2505ebfa7d50301ec07a88b26c539e911d92fe688",
           intel: "7c921609d322ac0e48ce79d608fa02e585912678e014a90ac952c3d29e16b648"
    "eu"
  end
  language "fa" do
    sha256 arm:   "6ff25a1b0cd7adc6edda0bc89b8f61f2c430f5f7f5f7b10a3c0a079b4d38fc97",
           intel: "8857f36ce6b4c2f9456b775b52635acc7fcf7c32d900bd12a69bb344f97bafd7"
    "fa"
  end
  language "fi" do
    sha256 arm:   "e8235d0e49262a2c92d1686d1358784f60a51947ecf349f0aa51373419b1d130",
           intel: "40a7fbbe1a4bf41b513811cef0364fc1ec9c48f7fbdef6d3509e1371eb138da7"
    "fi"
  end
  language "fr" do
    sha256 arm:   "76a3ffa501ba811d27da137a0799f370ebce9778dcd3bac2fc8ffc2c68787548",
           intel: "d0561a55029fada65ea22df32e22b90672424c2e9abdf11d8c0c8849aa99cbe0"
    "fr"
  end
  language "fy" do
    sha256 arm:   "b4d608a4a8cdefefbdbaa571758ef2b7263412359f3f929b4879f6f9b28f47a3",
           intel: "f4f377f3f05e6e539075ea9797f8a4ff019372fcb35a66b8854b55c3678127d2"
    "fy"
  end
  language "ga" do
    sha256 arm:   "df343c71b02c948e949c0d8366ec1a276868cf1f36fe4007533f06341c05d5e3",
           intel: "0805b29f6af08a20cf6b6766e7dd662aa5aca9d2a7eb837b29493d9d6684b558"
    "ga"
  end
  language "gd" do
    sha256 arm:   "f2881a182ab9bc0b586bf1978fb0870fb97baceab3069f1d86cee1d516a8c53a",
           intel: "6c12b44f411f7395db38aba2f6e055bd99c3460bbccfb1433db8e6f3648c629e"
    "gd"
  end
  language "gl" do
    sha256 arm:   "e5797b06a767051e1573562695cb4779d297e2afbe3f25afb1d05124fff2f081",
           intel: "1035650b540d3840a7fd44772c47a03049a25e953066facd7241f81b0d28b0dd"
    "gl"
  end
  language "gu" do
    sha256 arm:   "a0a81a7fe72a68c376cc4544fe849d17be6601cb4b959d81761bffacf578fe38",
           intel: "3deaa109830ce16731267d0f409572ff8354437b3ea762a20cf94e496580e702"
    "gu"
  end
  language "he" do
    sha256 arm:   "895a81a5509ed7f9c2484ea41c5c3e9f01e8bad94d76f2325a5d83e47814da0a",
           intel: "964d92b46b4ec384a8160e95fdecece350d6df9215fd6ffe5cffec18d780d24d"
    "he"
  end
  language "hi" do
    sha256 arm:   "4282c09335c7523e118c316501da19833e858942b5204db2138c5d49f73b35f1",
           intel: "0f4086662fad3c8f315de76effc0368865f78609b2f3972987f1305adfc9dc89"
    "hi"
  end
  language "hr" do
    sha256 arm:   "96af0da346f4b601eb068477e6463e8bd98e819486c1d0891d34e03188e436c0",
           intel: "86fbee94c0929fbdf338f72b44f246c3fe895fcbb5ee37477f9185b00d070ad1"
    "hr"
  end
  language "hu" do
    sha256 arm:   "616a9428b1313b4a92142505a2a23ddd43ac68e69a64a3273d34051a4e948dda",
           intel: "eee83adfb61070126b4fc803e4fd875751cd850171a9396f71a4691b046bdb41"
    "hu"
  end
  language "id" do
    sha256 arm:   "e14bf3bef767eb5747007515d2ccc58ac3e8134d21b909f7082468423f2448c7",
           intel: "66cad4185caf07c943275ab657cf7287f449bd5305cb48d866f3fdab6517865b"
    "id"
  end
  language "is" do
    sha256 arm:   "e563016c0a9395c18d40ce1b867393a2deafc5183fcc703fd1c3a807fd1295bf",
           intel: "673db54a0317ce21f34d87e85b7502a49bd62105e8127def1105e2ee9351445c"
    "is"
  end
  language "it" do
    sha256 arm:   "5266b16e17d523e3145d81c7905c62b82da8cbc296d9260f2dc4fe31ebdd95a8",
           intel: "1968f88f1abe8e752c17e08ed083e8b8e09150d5b4694b4e23e6480d00c1a805"
    "it"
  end
  language "ja" do
    sha256 arm:   "869985d324e460bd094d9ae13d740e6dae426d0a0bc40ab6f14a526907fc18c6",
           intel: "92a281fdd548e334bc67b9acc9cf858bdde7214409b55fa2898f5489bf83836e"
    "ja"
  end
  language "ka" do
    sha256 arm:   "b1b2bce2a7a97e9ccd301675364d90fa666958c06d3bf72b80ef3f1a6227b8d2",
           intel: "82bcd8118d8b438a56bed2eb4435cb8e72476acddf5e460fe1f32ee5e13f44cf"
    "ka"
  end
  language "kk" do
    sha256 arm:   "42a2746f977ead9e085770112aba04a43f7e7ace31294460a0caca3aa70bab79",
           intel: "148b053ab280b6d88ef09fe4b28dcae53c27d5c091c6df732d95b25dcc4f5bfe"
    "kk"
  end
  language "km" do
    sha256 arm:   "a70f36c8707013ed7c6ec9040f207d7e6c99f067e6a0d407e86d5babfba49584",
           intel: "be189ac69f94e05e7addde56fdebb3a53c6fd98f3d1ebad5115b0b4ca2f89933"
    "km"
  end
  language "kn" do
    sha256 arm:   "73c8c68628dcfba71278ee3888c19b4aded043c36ea72bd60d8769c7b477e269",
           intel: "b1bb4e360a52a707c2d876f760ceeeb49070c465ea602bf64affcc98f1e0afa2"
    "kn"
  end
  language "ko" do
    sha256 arm:   "59030e74b3baf622242a7d50b9b7d4b226607220a7e6d0b768e6d9bb40c32632",
           intel: "7f09ce7cdb4e5b6bd1b2af44281499d7d96c5acd5b5c82c85d379968231bf6c0"
    "ko"
  end
  language "ks" do
    sha256 arm:   "b4ab56b42c94ae84b6824878827fb800acde26193d3f203399bfb3e9feedb58a",
           intel: "014660c5e0d51134631edf4282a86c94b5c736eca427908cc152927bf1622a51"
    "ks"
  end
  language "lb" do
    sha256 arm:   "431b0add12f2cfc623e807f05caaaf95b831ee78f4facd7f0aa9d0db17dca9fb",
           intel: "f56647408c5b1a2a644b16cbbde331083538456feb030e994745561c5f7dc6c1"
    "lb"
  end
  language "lo" do
    sha256 arm:   "2149e8e181f94f6f1f51a801cec947d536c8b31fd5f0ac2c31d830892d5d9527",
           intel: "bdc03ce86eb0f4b77c877752a230f18818f2dba2454723abc19aa4fc28c3e839"
    "lo"
  end
  language "lt" do
    sha256 arm:   "7c06574b40be5d380ae19774f4bd3b6206c5810b76658eb92d726c256c46daf6",
           intel: "cf42e65dcf61806b6ce822a9ad7af4de08bb3991b578a65a7aa86a301e49c577"
    "lt"
  end
  language "lv" do
    sha256 arm:   "9931b0642315768ec81c69f2051827d907b5fa9017f54f25f74819fcb6d548f8",
           intel: "f789743ebe0ee8d5cedcac8893b2c8c643bcb6b458bdcae2c0679abb9cfc459b"
    "lv"
  end
  language "mk" do
    sha256 arm:   "58c0c73faaf6c8157761a0a1c266c90af338dff402075739d2f9af0b5fa81d3a",
           intel: "01cdf862055a03145ac932d3bc1883cc185e39d947601c0bef1f180e191fd19f"
    "mk"
  end
  language "ml" do
    sha256 arm:   "0651920895ff4733a2acfa882c3bffb41d49b41f6c38ace06948bd02ef3ba85f",
           intel: "cc142556c8c6a50acf7089bbd0f464b8973c97cbdeb3f6b1e42362fd8e89aa28"
    "ml"
  end
  language "mn" do
    sha256 arm:   "d2cfe288ceb399becfd6036a53f36b005aa382a12b1eafe531e7b98089da5e09",
           intel: "6144a99c3acddc436e9f85459a1bcee4a642cbf5f285e1b983103f45e759df65"
    "mn"
  end
  language "mr" do
    sha256 arm:   "d1952c562c9c01779e49e0403908519c90e4bde42718fb0e9558d216e30717f2",
           intel: "299aeacfdd73eb1ee8bf4f76340f2eb2c4e5b09ef85aadb4cff4ba09d4771f8d"
    "mr"
  end
  language "my" do
    sha256 arm:   "4085c8f1dd1678c642eb98227b39353550546da5dcc98e35560c60fe8ba9a5d3",
           intel: "0d55af31787e1c2ce52220d146f3130abd904b91d5076498e25c4ae91e404905"
    "my"
  end
  language "nb" do
    sha256 arm:   "ec110123ad55e78ac80d896e5b7f1a24385c241112124ed168b049bd8d6d1700",
           intel: "af3b820e795f2e7b905bfece90f5223e315990dc46512b1cdf18be5745de793d"
    "nb"
  end
  language "ne" do
    sha256 arm:   "87790ed5bb6f6e721aaa7d3172b67a95d50fbb07d7a1a4fcbf9ef9fff809e295",
           intel: "67f3f8eb79796bf72959b16e7bbc9c0464b0809e24a4f1eb156d4c1ffd77cf0a"
    "ne"
  end
  language "nl" do
    sha256 arm:   "cd4b06ed89a633659f3f82190c861e780f3f7e9f9991a6d697098be9d6955469",
           intel: "1753b690e10db723044c49777fa02a51312873dffb1d46aa538f2dbb8b0942eb"
    "nl"
  end
  language "nn" do
    sha256 arm:   "6aa2b72de676e5465c1faf080a108354320d23c5ca74dd79eca06d907f4d1c0f",
           intel: "8659f7496e4738a8b740a1cce3644336b17592fe964f4bb50c05287dde001116"
    "nn"
  end
  language "nr" do
    sha256 arm:   "bbaa1be6ac9adc3249c41c389eda9414b0bbce663e773451711178f4098a079a",
           intel: "e75a77c5297a60199c3cbafe106b2fd6c0e5bc3acc2b53373e481a3676980984"
    "nr"
  end
  language "oc" do
    sha256 arm:   "d2eb90b08ac36864293250564314e78c7e4ae86a765c070b6162acdf98f01d29",
           intel: "28eca8f7512f2b12028008ed5fb9ada761acd49b90dd129908b46c0d183c4baf"
    "oc"
  end
  language "om" do
    sha256 arm:   "83d75f52f30593d756735ffa7055293c9411f0c82650a5aae19a4aee4cd87740",
           intel: "7e3c41c41361738320efbd99310aaed8b9f495f8eccd28eff6b99b2bb3f9d731"
    "om"
  end
  language "or" do
    sha256 arm:   "e1c7e7d66ec4a8cc090812391008c5f85ac7ebe4ee28df20a516db751ed31cdf",
           intel: "0d426ef498be50366daf71549329953e13b5439b435ef34e9d19a332eed986e2"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "07dee02d1c57e5656bd6fa0acc9266fe454a09e3f30234bf8a09d6d232eadc89",
           intel: "1a1191f84fb2d5b2b173e90937c0d35a3f5e8bea129c400da5804a0734c7d7a4"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "923e0d2d5434bb8ca4b744d4af8d59642802b3ad0861d23c680cdb2b95a2d534",
           intel: "eac0792c275536a5cad5d735d68bbbf393e25e41f7c8f018b890d25e54227472"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "952271486b94c4aa6b76e28d559f4c252e3bbfd9bdafc505c4689ed1c6536882",
           intel: "1e758246250b05717f9b7ebee64afa253610a25434a6581135b02bbd20c7e5fc"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "df633a089485d71ae7d59e6b8de2dfbec65aab16ffa9b616f916176874798a08",
           intel: "0d7859e0459fcc91952d2a0622bbcae01bd5e05bb931b06de43cf73d8b297dce"
    "pt"
  end
  language "ro" do
    sha256 arm:   "4185dee12281e1afae269a9bdd2b18dae0f56aa8ff6dc59d03e1befd52bf8ee4",
           intel: "d13067b298b2a0dbf62c36413860d9bd81cbdb4a4a21d4500d2ff894944103e4"
    "ro"
  end
  language "ru" do
    sha256 arm:   "00f9435417e3c07693276341b620fab0a7da5dd5c4b97ad3b65620dc267d47ce",
           intel: "d5e3705b04bb0f8a92210d3d5ce5264b6a1944b6ad40bdbcb678b8d8cb0f8998"
    "ru"
  end
  language "rw" do
    sha256 arm:   "5e75a4e546d470a2763689f4bd5133ca5e5e8a6bff3b1e73bf3ceedf55e8b746",
           intel: "a534ee6435da0f48be320b57f549f477d91050fdc422fba63031465ab93c1ad9"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "9b0a0bd593a31f2885bc9daffb8aae869de97680cb4fdc49b1757b42276a7150",
           intel: "60469492e36a217a5557ea47ae74ccf7b76af7a44e2781f73e798af84a3d3dab"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "26e8059384b1c30c42e331d4d8fedfab6e28ddb45294d766e7d524ebad293398",
           intel: "6dffae9aa559c10099ad7ae863f8a1c78727cdd928eacd965b7607f0d79be43e"
    "sd"
  end
  language "si" do
    sha256 arm:   "31bdbd973ec42d9db2a3d39f4a75d21c0b934e021ce41983e73fb75cd7431427",
           intel: "ac926cda90492d68a25d2028a3e55f314907ac56c7724bdcb7d48d48c6a6c11e"
    "si"
  end
  language "sk" do
    sha256 arm:   "1bf025ed4a9f3be940107472de1be8f6468d33151b1b0bd65a02f002c4133202",
           intel: "484181a04ab45cbb7a64f8a0eea8f0e112ad80bd7c4bf3c40dbec6c8ea8525db"
    "sk"
  end
  language "sl" do
    sha256 arm:   "816d18982823b207ef5a994868fa8088128210b6f70320d63c203a2ddd7cc33e",
           intel: "f1d202dbae4a110ec816c19112a6080487e53bc1c658bbac61fe1537bec92438"
    "sl"
  end
  language "sq" do
    sha256 arm:   "b84731a6b202158eed8b87c0aad2982af3315a7a91ef8cbe33631c835d45d4d7",
           intel: "8dd07839f112eba92f7cf6c5a51736956121b4349ae3104401a681646ec8619e"
    "sq"
  end
  language "sr" do
    sha256 arm:   "2ae92beb68afc928f6f722ac3bbd73cf7e1c8d9b9c6733673516802e26c756a3",
           intel: "b3023acdace93acd0c7c174c852162c6acb8d2cab178574c9d9f5c475cbdc315"
    "sr"
  end
  language "ss" do
    sha256 arm:   "d99124d2073da45e0fa4af8168ad4a159c4e9594d28db579b64beb87983d90a4",
           intel: "2f302860c8f63d744abf2e5fdc1e0d919d60198d7e6e2b64ef6af97977844365"
    "ss"
  end
  language "st" do
    sha256 arm:   "8eccca8c3b37a6b46cbb2b3125d1487175920690840ce68e23e2a9525f570a74",
           intel: "f2ccbe423975aef441fde14b82ae5c46be8153f90e5f928bd7c631068a1e9fe4"
    "st"
  end
  language "sv" do
    sha256 arm:   "d800dae6cf0d90f60e9aacf1f63cc5ac4c6b689ac9613e4840a9f0b0676295b2",
           intel: "964f8438b4f86849fb06e4cdb790c0e188903da977d7964a31c30607d409301d"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "ee7a9cbe2a1092f9ab7d36280d528750fce045a1474861202993a992d5bf5035",
           intel: "78f2ea4e6e4bd370476caf862f67b5bb69d6deb0f4c736e12c8bf4b8dbbf9b3a"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "87a45ceba31500e84e03af768279610f318764feb9a6820965987f3d34290b2a",
           intel: "627802beb9d98aaab35df30b864a016612d26e47a47fe23d2b0edcd890d7ddca"
    "ta"
  end
  language "te" do
    sha256 arm:   "4876d7441443a17c99ca1962c58d6daa98e2158406d58c23f2fb4486c09166f9",
           intel: "4518e21412175db9a380fde9ca8a1569c5015a4e3e473e59bd91e6adb5adaa45"
    "te"
  end
  language "tg" do
    sha256 arm:   "63493cb5c8b2148e086cf3ae7e39b65341a13a4a7416968bb342654f36bcc820",
           intel: "908426b5d9271803bb35a3d1f759b8f47f21a9e273f916deaa22ce93651d08aa"
    "tg"
  end
  language "th" do
    sha256 arm:   "973b2fe25c17d6fa462ebe6d849c56f05824b69ceb608aab67dc3546534c4d4f",
           intel: "3b657a150a08bf23c87b003f5c6043d2534dd81d9ed843021abd67bd0ca5e461"
    "th"
  end
  language "tn" do
    sha256 arm:   "75eab06682b4866c4d4c4537be9853777797bc030eba76276b15babbde51b5b7",
           intel: "435ecab9c5fde0bd9167a45638b0ab1d08b256bb50589098365c61d443e5cdba"
    "tn"
  end
  language "tr" do
    sha256 arm:   "1c316fc6b08563ea0df6f30374849947f557dadd36fcdfdbf092938394086085",
           intel: "ff616b68cabd3e80d90d6aea368597208f178ea39371b57241a0e6c696a15beb"
    "tr"
  end
  language "ts" do
    sha256 arm:   "f802be5410b97cd9387e082d976ccfef1df55f88fc8e75d9e1f07bdb99547567",
           intel: "643302bb2f9f42d5a1ea274dca60588068da17b55bb6a4e87eb32f491107cda0"
    "ts"
  end
  language "tt" do
    sha256 arm:   "2b9335566c0fc6aa1b24b35ab9f47b13efa01541c2ee0259a7ad1f775cad0e57",
           intel: "33c19722c6d93f0b88d33077472732afbff9c87e18aacbe0e28c288049535470"
    "tt"
  end
  language "ug" do
    sha256 arm:   "c7359af40b09a235243a227628ec6a557c04a35c3fff54688c57575129d628dd",
           intel: "8ec0b9b3c3f3f3e3423bfb0aed9cc9f6c962026668cbca96479fcb0fd4da22ea"
    "ug"
  end
  language "uk" do
    sha256 arm:   "a60c57b823810d9ed8be045c2850f4d92a54fc221f00028e106cff86f4db44f4",
           intel: "bb24f0b24c2328c8f2051f29ff4cf4be06b08e3d0379b546ca7e7aebdd403f8e"
    "uk"
  end
  language "uz" do
    sha256 arm:   "42a7683a1bb7a45fe3d109e4e7cfb86ad9293a1ee656bb3a005ddb6f40f340c9",
           intel: "5c61d61b4b17f95031fe4b4bb61cef4fa53e10fdb6afe8614b95ab911ccf52a1"
    "uz"
  end
  language "ve" do
    sha256 arm:   "16a8dd6215305b1546adddbcff39fc77536a90ae9fcd8fd8bcf33961d18de8bb",
           intel: "b8f215315da32da28135eb6a08b804238d3ee3790a02916d5d74a62e3aca28e1"
    "ve"
  end
  language "vi" do
    sha256 arm:   "41bf8572e9ad945f4427742075e60a71d6b5e48e9e26c35dec215174a18a07b2",
           intel: "0a5ae12ceae3b55d74a6fdb7d3d2075e84a40fc4fd7ace8cc9b633aa174d52fb"
    "vi"
  end
  language "xh" do
    sha256 arm:   "f9cb1d29320ca15e8f79eb067aa41c174e520a785c76e3709badcdde17b9d3f3",
           intel: "b38f0389de283105d465942c3bd4a95135004203d94729ac7794505db5f7856d"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "4c3c19839d6fd77089a07c9569eb166724ae5770d9dfbb872ad300fd3d98485e",
           intel: "cdf2851a52aa6bfacce6fb36934d6b9aed6dcbf8f5150a051bb0dd432172dd8d"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "2fa0739b16b01b467031eed0da30d40fb2771e32b350c206fc10902b447d4d8b",
           intel: "c76f07506e4625911b7eb1192d684ce3cc14330f991c812ad0d88bbf2e8e15b4"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "990276394f23709ebc15c58e231cc9d1d5bf990c8c2b6b69ecfeb5d5b6fb23fb",
           intel: "a7c7c65bc762ac6a7df7feddf2c0b2981bf6d46894a6a0df4ae3c0cfd55f61ca"
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

  depends_on :macos
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
  uninstall delete: [
    "#{staged_path}/#{token}",
    "#{staged_path}/SilentInstall.sh",
  ]

  # No zap stanza required

  caveats <<~EOS
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
