cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.2.4"

  language "af" do
    sha256 arm:   "a5cf056d4987c8cc0d82a3276c8a79e4066b0720e52ac043f5053e1034030c4a",
           intel: "505c297614893c0904ee9c624e319f0e8b2cdb916ccfabb2e2b8a5bf13e9b128"
    "af"
  end
  language "am" do
    sha256 arm:   "5c949d659256a96546be7b1daf941037646c058d8ff2f8f62fc412d11c1f782a",
           intel: "bd8ad6a426d65f397b52e8f359a12462b71a83b4ba2ad86999a4823ea9d0cf34"
    "am"
  end
  language "ar" do
    sha256 arm:   "8c72a2faa0e4378845e861a6687bcaa728004e5226078fb4b96b2995e291796a",
           intel: "f0781902b1bd65a54f54a2848e749b930954aa912c1ca5bef3aa4a69ed5499a5"
    "ar"
  end
  language "as" do
    sha256 arm:   "c701d38a9e43cf910d440b7d4b0f9d87d0c6d2ce9780de023e957529088a3384",
           intel: "a87fb355b5e832823906da7ba5ff047ed3414d3e427dcf1de501cd3e7b71c527"
    "as"
  end
  language "be" do
    sha256 arm:   "b0f627f8dd05a07682b002b6af12dd2833cb1869d537bec6627487600765764f",
           intel: "ce58bc8452fa8cb8b8aa740cee584b1a2da02f283e23b724121c6a392805c069"
    "be"
  end
  language "bg" do
    sha256 arm:   "6c810bfa48e3581b5d79a2f5c0824777d0ca82c7f9be233fab34fc4a0a6a887d",
           intel: "ad656c42f57da6ab9a53e55a5cd57554b456712bbfd7f42ae7588b9df522957e"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "8a93486dcc23ec2a7b78ab55f4bb7ba917fce1608e559fe977bf9695371d0c90",
           intel: "7e6687314f64e593b42a45720ab1118a755fa37262350724d2ff6f09c8a50ed9"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "756b16412f65026afa7608d2d4e43b15a5fca4973610a516e95c474c08facbd9",
           intel: "f2302c69f37ec542e6fb0b67a2509f8e9584c7b7a76cfd130165780307f43160"
    "bn"
  end
  language "bo" do
    sha256 arm:   "e42564960f04c4d21ad6dbc898eb91d5257ce8a8bb35a1fde4e4760485e34429",
           intel: "359e80f716389637f4cfae57a08825db0f83ac22befb9c39a177b31b3c8a9334"
    "bo"
  end
  language "br" do
    sha256 arm:   "76215ef4fb3f11d80b96ed63f2efee4a7df5e04438e538eea0e38d75cbfd0278",
           intel: "25ac908d26986102b2173d17ca52522558a90daafdd33df542eff1c2690a2849"
    "br"
  end
  language "bs" do
    sha256 arm:   "7ec98624f5582da67b4012e6217d8a96e10f279c1d70ab12ed28e0a60775994c",
           intel: "16d2dd01db4941771b85fda53f801e0af918f12d37d2013b10217d0e6a0aaa21"
    "bs"
  end
  language "ca" do
    sha256 arm:   "e49bef7132732cd56e1ea38bb7e65b2da8273b88c6992f1ec452b87f1b17e999",
           intel: "df8b2b7680af28fdc0600dcb2c6d12efa768dfdaec395e16538f6242607cdf1c"
    "ca"
  end
  language "cs" do
    sha256 arm:   "d0a18099fa0424084b337fea6efee557661df3ed55f67193efed167644274df0",
           intel: "ea4099d54fba8c0e507b4b42f96d036cff012f9b1f2b16aa6b16e88a65edb065"
    "cs"
  end
  language "cy" do
    sha256 arm:   "afad51f7cc126570c9d943ab31f75cf5f28e65c89fec5abd4fd1508f2dded83a",
           intel: "18e2524d3fdfd00e8ae70f5f32b2f4cd7c420a3ea2c9729f5676ceb1d395d42b"
    "cy"
  end
  language "da" do
    sha256 arm:   "4bff8d771a69645bb96c6fde25d8157c5a630a63ebae9b6a2f86cd2abcd21301",
           intel: "8a1d5bc4e62822dca62c6e8c973235cb3f7ad18575c6125a412ebca6eb190ec7"
    "da"
  end
  language "de" do
    sha256 arm:   "0eee936fac497409a68d26b48ac4f70ba1a121de414224464c7519f34e70af21",
           intel: "d0466658f0fd15def2e2daaf4d3d4fd88638af71c4df739f974dd93f8ac309a1"
    "de"
  end
  language "dz" do
    sha256 arm:   "b3e8611f49edfccbb86abc1da85428bef719081164c86f15cfddd7521a7f0d68",
           intel: "fbf1f89e2fb330e4c1fd74241eac036987773227cc7f2de7feed4166a85189f5"
    "dz"
  end
  language "el" do
    sha256 arm:   "7a0c24ec6bcb638581629145776667979114ff786e892e129d9c76d89cc5ca4f",
           intel: "556bad67c8f43c4d1ff9cfebee7f8ffead006389ff6770e4636473a0339b152c"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "84206de7848ffd2069864845940a9ceba6db578a5f46c1d36ff259c627f39d38",
           intel: "ab2025334b9807d301724c90efc3656e043d72d252f0fe7ef9d0cd8f733f00c5"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "d4604336b9b114ecda2158c8c6b2e6dbc86a7605da0de70bde0494d9a02088a6",
           intel: "7d40973d89692063b3d25dc78dfe2cb921d922e04e8dd30fea180aa4351d9546"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "b345a72edacb9f5412f8fa45428bbe96daa5b4952869e7e3e7fd5a0fa3c605b0",
           intel: "c4cb3b4f658eca22a7a1f26959288445f65b480fc03227a1f6e3ba14e7b03f88"
    "eo"
  end
  language "es" do
    sha256 arm:   "54b305fced36b21ecbfc11f650415a9f0500f63e7363b17e8d6dd48232cd86c7",
           intel: "06d35ba09a13b0391e1e67d8dfb3e3dd7f2acf42e48cc0df709a8851e6d8cd9f"
    "es"
  end
  language "et" do
    sha256 arm:   "d2590f7b14b53da74c093948ef6cad094ea8a0186229df550ea53ac7b45c9b60",
           intel: "43a70beb1b7c290310c5cdde7498db3fe5db0b5140882296e3f1282e739c910b"
    "et"
  end
  language "eu" do
    sha256 arm:   "b6d3674843d928ff554535c37629a7eaf5684253a787375eafcd218f3afc1d55",
           intel: "9cbec42b36425db6874899e68ff16783f919473b45c7e692083e9833a177ed9a"
    "eu"
  end
  language "fa" do
    sha256 arm:   "2dd4b3ef646c0b2850a01d0ba8a9a28f26ca6a5ba5cbdd4d29bb9c0586de41cc",
           intel: "12282ac45bd52a6e31af5dfaf8bf092f48c00fddd0ec9f33bceecb9ee2c48955"
    "fa"
  end
  language "fi" do
    sha256 arm:   "c1638551cd997831da3c53598662195b7848985ecb054f28f0e897023a680f3b",
           intel: "6bdcc6ed02dc4fd56f938e3bc8e7d37153f2202560d93a19a91034c72b68a622"
    "fi"
  end
  language "fr" do
    sha256 arm:   "64ceb17e8fd4cd2182b94a30f31f80c319c193709a6b71835605ee3ed63f040b",
           intel: "16fff7d81ff1912df26a4ea81575ae058823f4ca73dfb7be7ab8b14445496d17"
    "fr"
  end
  language "fy" do
    sha256 arm:   "77ff6a03d69a1bb6e2737e0ec2071bf0bc88e626f932b884da60e2fa689a8f99",
           intel: "5ff8fcb47351d4a9e3cd3398fc1eb77a52fd622d5238fc7a91a0e8fb839e8e02"
    "fy"
  end
  language "ga" do
    sha256 arm:   "1ce4797daa24f4f082381a77d5401a9dd0dcd91e958247b255006e71c8a0f807",
           intel: "8f7944bda30a0b2bf027bee7dc3544d70cfe9be8a463118c5f63c4dc96fdc883"
    "ga"
  end
  language "gd" do
    sha256 arm:   "44e34211cc01681cf6026b1f7e100f1af4824053e335acbe56eed436210f3546",
           intel: "53307b2a55bd267cc832be6461b5a8bbca6ed9060992c5b013a4291e35507ec8"
    "gd"
  end
  language "gl" do
    sha256 arm:   "e2776d79f2aa7e06dd66979dac456e0a81c211869008e6e35071b472e73bf535",
           intel: "1964e9846988ff595ac8fc43c8f199430c4297396c2aeaadd031bc5fb6959af6"
    "gl"
  end
  language "gu" do
    sha256 arm:   "e7d60208775bcd8a57434f3e314328f8e3264823a236ba82dec924d28851f6b8",
           intel: "27187436bf712d3e302c3158c9d692a0c6ee1b21906a8a1e353aa3883cd4939b"
    "gu"
  end
  language "he" do
    sha256 arm:   "6c104dee533ac77d139309201b91efbabb4d681e80fcbc3f11adba5f55020112",
           intel: "df20fba764206b3f1d0c28f7f2794e21aca6c1364be2234bd8c4cac513f85fbe"
    "he"
  end
  language "hi" do
    sha256 arm:   "f391881972a7ff6d013a6f25256b3630d637ec41f967f06b1c3e7644e333e685",
           intel: "43cdcef6947c3592511dad6acd90bf7f192ec365d7164cb85ef8621b81578f25"
    "hi"
  end
  language "hr" do
    sha256 arm:   "3302d2d586471db155fa2181354fe2c67828ab2283eb6467bc54085006d5e997",
           intel: "34d65c408272c6d7819349186796e8cb96539c1a4e70193ee685e1fb321987cf"
    "hr"
  end
  language "hu" do
    sha256 arm:   "057d6ae10ee02bd441ef92bdc0b33fe27735bbf9b365293f6cbcf97db1acb9a0",
           intel: "4f0fcaf89bc538b20cda031a8bec3966be59f886bf87d2a314d119b3e79f3fd8"
    "hu"
  end
  language "id" do
    sha256 arm:   "68eabb7919522f58e91e1338afd6581bb948e1ea68277525500ee96b840f28ec",
           intel: "b29dfbb16e7faf9d8f65b4fd7df31bf64144c2622dea3a8ddebed9e4f99730ee"
    "id"
  end
  language "is" do
    sha256 arm:   "749e26a98be03585888926594ce8d601f3835cc30b87d4f79d0b70150945ec0b",
           intel: "f04010e6e97ffe0da09b1f771c6b2496a5e48064a17d980d5ba6c39d8f955d2f"
    "is"
  end
  language "it" do
    sha256 arm:   "1dd52ae3f202aa49e6db135c83db8dd6a835235284df7427ebb1514306011708",
           intel: "3ea589ea09f5b1ea8d7cbd95bbc2e241d4a07ae7b0c3a8ebfd7e6d56f4d0e23e"
    "it"
  end
  language "ja" do
    sha256 arm:   "79c78f14a87b899e8446b885cd2125f1b324ccc4150913e948ae8a26b7031205",
           intel: "bde96c57a26f50cdec87a7a16544b88935ddf5a15d5c287568a59a926309ad07"
    "ja"
  end
  language "ka" do
    sha256 arm:   "5559b2bc090afa9a692664fef20e203b0b08df40c6e0b68f4b53124b9354338f",
           intel: "0af563463eb3f951a169b5993e3a77a7417520fc96f01f72ec3a0987a65039be"
    "ka"
  end
  language "kk" do
    sha256 arm:   "460bb90c8dd3155af4ac563a0ad181ef50b36b0b42f7b46d5aef3792ad933cfb",
           intel: "e65ccb4ca509b2bfc9f8649f81a6585a2f12ed8d931c6a7b47de67963bd502ac"
    "kk"
  end
  language "km" do
    sha256 arm:   "dac02a6aa04b62f1f533106a6a99bbb041d06af4e306dcba5098c0dc33561a93",
           intel: "744bb229ca889f057a59573f6f93a5d3f96d910004cde779a8e4ada5d67427a2"
    "km"
  end
  language "kn" do
    sha256 arm:   "7a41343b5d65e1ea8bb33bbb448571766bd21318c551df2d9f8c31243b8ce13a",
           intel: "2c8348cb860fa33cfb9020098f6d23d0951c910b67f95c1db335fbd45b4a49ee"
    "kn"
  end
  language "ko" do
    sha256 arm:   "66a46761c4fb69b60a7804afc8ba0c118a26c8eeac8caad3e216e5489cc3f762",
           intel: "a02619923caf312ce10fddea00296c7ad377e9e420b174ecc021e796de9fbf46"
    "ko"
  end
  language "ks" do
    sha256 arm:   "7b5c0ff0fdf9cccc1f22ced9567524455714e7bec2e3f7c698a74800e49487b0",
           intel: "14f41901951701dffc114d14e8915ce727e0f816c5aa0cb20faf84330586308d"
    "ks"
  end
  language "lb" do
    sha256 arm:   "8c792cdcb6e9d3cf1c3b3ba60ae2ab7282239ea38d6ba4028d5ab6f62da5ae40",
           intel: "29679dd93705b9f8387a41ef43ca1ce102054afe48b4bbab7e2685e484b278eb"
    "lb"
  end
  language "lo" do
    sha256 arm:   "33dbe370f1a5f302d977904d3bc73c05ef4cdfa6e497bc5eb9ee0a8eb534e666",
           intel: "6896ae02a9f219a10d0279213cdfb945efacf1890ff89c4eccd061b38cfec9a4"
    "lo"
  end
  language "lt" do
    sha256 arm:   "aa8a87c5b49633798bdef2609989ee2d06fee529fb1bf66d467527a903637d96",
           intel: "12d74554c25511368fcb422fbfd271b4fb1b0475918a663879384cb251f34ce6"
    "lt"
  end
  language "lv" do
    sha256 arm:   "5bcaaf6aab8302c9f9e7e255ae73daeb556e0fb8bc0dffc39d818e80a7a10450",
           intel: "292edb1e7fe7a1524cba7068e375612d062c6e37fbe3bbacaa74342a59d20a43"
    "lv"
  end
  language "mk" do
    sha256 arm:   "b23c52797a5a196cb87cfbb93c29dbf9dd6ad437de1b3a819f4eda0756a60518",
           intel: "3af5d55169b63fee84026fffd7241d5f028cb09279ed56f1616d49515add299a"
    "mk"
  end
  language "ml" do
    sha256 arm:   "78e3e9205b735469b98bcb33113a9b60b4ba59d9630940cfae955a7f8b4d62e3",
           intel: "85a4812ca2cf1acf003ca1a7274fdfa7640beef49915e23b97679b53b4b045f9"
    "ml"
  end
  language "mn" do
    sha256 arm:   "3c9defca40ab2c7adab84fdeac7363a6b07fc9ebc5ea688b762127c0d0724dde",
           intel: "82badda64e5ca5e21f3fb780cbd0fd2af74ca10710e8873c8285639afc453a02"
    "mn"
  end
  language "mr" do
    sha256 arm:   "4caed057b39425537ea3fad126b0da03e69d9e09c3fd5be74d792616f1c93672",
           intel: "56ed4dcbaf74dc9d1e1556bd099789969fc1a683a409c0777320845f202eedae"
    "mr"
  end
  language "my" do
    sha256 arm:   "5f6269620687ee166a24245a844fae5df6f8c4f48627eef1ba6de4f76d81ee39",
           intel: "b20c0ae119768a8c662459460ae5e679c538fa499b0200216e72708f892e4e64"
    "my"
  end
  language "nb" do
    sha256 arm:   "32149334fffd3d96c8acb1a455be19b735eff49bd37ea8509aaa919c681c7278",
           intel: "2a3ec4fd36739ccf078afd3abd74d2f77f71b15d26299786908cb7cfad5bb822"
    "nb"
  end
  language "ne" do
    sha256 arm:   "8a3cf0a05b889a5358317504a4926bcadf401fc2809c102343bf0202aa9efcfb",
           intel: "21ff03c1a140a2336dd9f5c3dc00d02ac1383fcc10434dea6aa0dfc345529587"
    "ne"
  end
  language "nl" do
    sha256 arm:   "10c313b15b8caccb89f6232b74b36f2baf935db08cef0f680fea5f5d73912064",
           intel: "7c692da9189c402474adc1674de33281b4c4cb3cd3a39cbc484a791b90c95946"
    "nl"
  end
  language "nn" do
    sha256 arm:   "3c44afe7b9b2c8fec5a41d9ea77929f37da65d04ae47648f0ae359dd30e0ab0c",
           intel: "b40cb2bf6f5ed6013bf00857ec1dc76afee76e155888ce67d4965650fad270a5"
    "nn"
  end
  language "nr" do
    sha256 arm:   "8ded2269bec526555495095f4b052bd49068b312bed74a8ce76cda2a04a4ccf8",
           intel: "36676d67b0053c5849fd20ed8252948686e34eb720258be535a4d612a250a043"
    "nr"
  end
  language "oc" do
    sha256 arm:   "0a1f9057a75927bb3ed7b701e1df3a22fd3e5b586517d5466026a7f78e504ab0",
           intel: "060a5a80beac786d1c5e3975c98a5d37590de48bf4b07874253e57e843c62362"
    "oc"
  end
  language "om" do
    sha256 arm:   "d98623e85785644c385d96c9673bb22f081fffadddd6af3e6d487b423c846d29",
           intel: "3a9d3922132b7ce82982001474950f4d7cdaf933de5476216f018e74269959a1"
    "om"
  end
  language "or" do
    sha256 arm:   "81add8262de89d55131dddf3f4b61f6a63a4e75557f6b4af7a110e7f6c23d86b",
           intel: "6e0d804fe69be9ee62cb9eef3692145da2bb7f26eff66befac206492ac94a360"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "cf46d4acb710b3efe527faf107ab2e82632f49539fc1a7f76228b8afd5992f71",
           intel: "de47e5109bd97d986dae12b8f09623d55db04a53ae91da084dae28ffadcedf24"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "c90663127838b9101f191971203e8c470b77c0433eda05e7fcaceda1ca8e63e3",
           intel: "ba6974d809594202c1fb35dd3d41247b8b316854593d5756c83c53a2bcc02139"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "c944f00439fc15b500c1107ae7d91db6b1371874cd7259a960e6a3f9f842f61f",
           intel: "1e23ea4afcf2988f6f155d8db664bfad81bf4d50dc7bc9ecdf228742c2a38d17"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "7adf258b8ffa05865cc1773dc0390aa364120c480b83efd4d2ff84f582d4eedb",
           intel: "4ffd95004430056c745f7a5a39bea12b1e48132a61bae0d6304177132c68768c"
    "pt"
  end
  language "ro" do
    sha256 arm:   "f4b046927e0af5ae549196a17c3761e2c4b9d3cbedb5d648cd3d646ebe2a9500",
           intel: "5aed7e7e6e3742883a728ae60da13d9ff910ee3e66fb7f21ab79e6934e8a561a"
    "ro"
  end
  language "ru" do
    sha256 arm:   "3ac1cc4fc30a87a9fe3f39fe82987ac945c5187948749d152c340368523501b1",
           intel: "789538a07b2a2654f87d412b0ccd20702817ec002dab4a3958431ada4a2b9c2f"
    "ru"
  end
  language "rw" do
    sha256 arm:   "a49a86f64a47e0d4cdb175755dd2b4f6be902f0836a8d7a6f2616a30b346935e",
           intel: "1bbe49dd6d1bb5b957bbc6db45216ab58c0ced785ab041d46a12577b0543cd3a"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "9aebb6339d4dda320e367ac770d6c88607921aa02baa0785e8f7e131ed326d38",
           intel: "8184094257b6caad2e1cfe7d49c81fa4adc55be43f41f30f31c0fc9034271cd1"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "d745839885ebc52064402190955445bf2103906cfe280d88a903be1e3f87f4ed",
           intel: "22a53985351fdb2febc7af84e5d8ebe4f74c1b8c878a25b7b2bf45034c6fd296"
    "sd"
  end
  language "si" do
    sha256 arm:   "6cf3fe1f45e77aec82b2da5613c45b603696945243aa52cdf8231215d316bedf",
           intel: "8a24967a00ae7040c57f855ad297757cb356cbf2265e4f8c2b59f42513405810"
    "si"
  end
  language "sk" do
    sha256 arm:   "b49f89decdf06cfcb0923cd30b500774da2b9c69560a46f9448037f6aef32192",
           intel: "6d51acf8b516c28640a3c333e68309113b381821b415294c5d6f5940e3aa9643"
    "sk"
  end
  language "sl" do
    sha256 arm:   "0220a2b0d6c4d8d219918a694b4648db67793475c5a7ca0f170a81b7a1c4c184",
           intel: "3687044c3cbd9409c87af0ff316dcbdcfae36ad09a8c04e4c7844ac8fc4b566a"
    "sl"
  end
  language "sq" do
    sha256 arm:   "675bee1ac2d7a56307b5b3fedc0f6b63a8815e122d999b99098b0592dd47e802",
           intel: "cc69c5e973c98b40592a9e9c35396251146f013899fda6c18e5c71d3c3ba3bfc"
    "sq"
  end
  language "sr" do
    sha256 arm:   "0ee48ca9404548f11ef86ace48aff4b71f6064b35737d0a48f261eff4e9872b4",
           intel: "7781b166e26b41714607f68e246838de2c2a51a137a886b2f8707b80871f238c"
    "sr"
  end
  language "ss" do
    sha256 arm:   "4656efe4258e57c054d07ebb8056abc177dec9fddc1a6d7345dfac8f9615c5d7",
           intel: "fa30a2c5b1bf12715b5b818ad9be3745e67fa8e18a21b1d0c8a33d0244800a96"
    "ss"
  end
  language "st" do
    sha256 arm:   "42b945850673e5ffab97d1c6c89cbbedcd78d4f0b569b3a68da303623b779532",
           intel: "908becb34611329913effa38d9c7c62390a7147be3fc9f5d42639879e532d857"
    "st"
  end
  language "sv" do
    sha256 arm:   "a5a3469862cd7f469fda5662a0d222fcc521595654560185a91c249b9d1ef50f",
           intel: "683093c047c8d0cb2199da5536268ea979e78db2e3881a65934fda45c5e08947"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "0e977a57e94bb0aaa678c1ca4407f6fde0d30fe05b0099d69dae135dfdf75d9a",
           intel: "8d867ef9030208f3dafc1bb702fd361b47f3ea707595d4823879052681249c6f"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "dddb54491b56569f6c8c2c6e19b0e768e998fb43eb0856aa861bc6c09542fb5b",
           intel: "e29f2540eec23aa281de2b56a23326839fe6e893e426e878321c3517ddc9580d"
    "ta"
  end
  language "te" do
    sha256 arm:   "afcd6c791c30b7d9dfcb682845670d47d85b1423a56422e55e11a99b0d67eec6",
           intel: "32c43f4acc3b51855d6e38067509e58159589c4281ffd5d020f3d502edc95a6e"
    "te"
  end
  language "tg" do
    sha256 arm:   "028e5c7678ef5712302dc23f16348483c23ad1e0328be4197ce977887c619b0d",
           intel: "ea09f65c2502fa11e64942f832d7fd27b5007639afebee404eeac678c9765bff"
    "tg"
  end
  language "th" do
    sha256 arm:   "16bc58792c0ec74dce6f59fa9e5c1e2bdc5d6bd503d4ecd554723332d115a8b7",
           intel: "b8e8b5b4d49e1b97b9e6bda39d5ba5a289dd845b64c4a7e336956550dfab764b"
    "th"
  end
  language "tn" do
    sha256 arm:   "0557e976901949c092f3d35000725bc6c7cb709ce43382d00d6775b657c64c25",
           intel: "928eb7cdf381bd8a98f024470de16780bf4e62c17e7eed50a6fb99d6759b763f"
    "tn"
  end
  language "tr" do
    sha256 arm:   "07b242977abee6f16c66add8b0e8eadc5e53dcbdf46cace00b7010a03cac3c35",
           intel: "37f98667db5fa9c906ce341b3f0c4b8b7537403acbd040f5092fc4313ebca00d"
    "tr"
  end
  language "ts" do
    sha256 arm:   "221538dde30b706b4bb9cdeff5f39fc130200f7829ce0ebdcee60ea9dc4575d1",
           intel: "3759dfb102ac9a44f7f251e826b11ddec2f7b72400dbff3f807a8565104cdee5"
    "ts"
  end
  language "tt" do
    sha256 arm:   "ad6098dd96b72261c0460868ed7fdd9a5d2c611858b394f9984b84faf1849628",
           intel: "a5b98a930b835af823897a06741b8aa137957c7a27d18858b2192d81c0366d68"
    "tt"
  end
  language "ug" do
    sha256 arm:   "6ecf4d14bcb3c995e828b278d4150681ed8aea08f3f81f52b892466009399d1a",
           intel: "075d3da261e17a942c6cf1b9dc88c6a6972dcec2f8dc5db04f7c13e08e3e390f"
    "ug"
  end
  language "uk" do
    sha256 arm:   "a9ff7c43eadcb5dd9d217358d50027b0c3ded83b1cc689ba36f8ac5c9e73641d",
           intel: "b210805caf240c2231339fe2ffde84661236263d47b3fb226c72902fb806135b"
    "uk"
  end
  language "uz" do
    sha256 arm:   "aba6d100c73cbbcc8051ebfe9d0803f321fb055c72eb88b50ab68699e0c6b581",
           intel: "134e478e4c8958fea9b8ef8d888738e333cf494db8f1047bfa065dd8cffd401e"
    "uz"
  end
  language "ve" do
    sha256 arm:   "d7ed8eaed9e4dee6b5ca997a89e5f87432c7a09b74a1559df6f2ade7b84ee01a",
           intel: "d88b74f2bd695216c9a218a28ea8163fa400573f28c6ceef0b878cc4589fa88e"
    "ve"
  end
  language "vi" do
    sha256 arm:   "f5e638a921921ad4d45eb9cb676b6dba4db309fe77a967f47fe44bed05156073",
           intel: "3bb037de76a0ebe28163afc5b77c1c57bd13d01f5c2a6ac3c87ac7d7805f825e"
    "vi"
  end
  language "xh" do
    sha256 arm:   "1a96a3bc9259915e6ec86cff11375e7ff34474a5cfcd640e5e66be149eefc149",
           intel: "2a3d1ee690285b1cddbb06c7bb1c46c9f182b0f09d7f45128f30e5b3790df2c6"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "a5518cc7023ac35b0dff7a4e7932e9a3fad508cd5dbc7ede3421f63b6fab1a4e",
           intel: "02585992b193eb662f52f8200d0383f54ebe8c6dea13f87a7b354854937cbd0a"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "c9dbd235cc9fc0d88d0aec08b8bad8e5933eed1d986164b3d1022968e19ac974",
           intel: "e535928782358417081dd334beb0e8d3a1e36dfa753ef04a8af6b7728f7ff16e"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "19d2189ec1b562b7815d865bb602076114d287eaa7048b92a5f0f5dd173faaa7",
           intel: "c8c23844b1be09dbeefd3dab964a94b822bd482e7e6fc2cedd05e772adeae6b6"
    "zu"
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
    #{token} cannot be upgraded, instead use:

      brew reinstall --cask #{token}
  EOS
end
