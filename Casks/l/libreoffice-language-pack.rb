cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.2.0"

  on_arm do
    language "af" do
      sha256 "6527ae6b06286936bea1363f676522ba313df6d92b1968cef13e41aa8007a6ba"
      "af"
    end
    language "am" do
      sha256 "b15ef7ce4e933c5ea8d3c5d5d8017e6ab20012fa8ad413c9f29b0bfac9324672"
      "am"
    end
    language "ar" do
      sha256 "56f1ec4d1ef42ec9ca8c6b38c619fc7ffdc7259cf36f76ac2734d7bd28b37339"
      "ar"
    end
    language "as" do
      sha256 "2b302e6af388656d5b24701d36a91cc953e235ac98648b60f20bfbff335a35b3"
      "as"
    end
    language "be" do
      sha256 "ba38c280718c2de6e7ecc22d7878e5273be9ef39cecde9fcf5ad5d229f366065"
      "be"
    end
    language "bg" do
      sha256 "2a3889bb21fc961173d9e83f19754cb71fd7f5bd595c6d968b42d40f0f757eb7"
      "bg"
    end
    language "bn-IN" do
      sha256 "bda99e906b657043a41c4bbbe48c3772682fbdfb7fae0ec43a3c1619b32988cb"
      "bn-IN"
    end
    language "bn" do
      sha256 "a08d86e0cc1bc4e9b20544c71654432a94351b323c39e910c33e37ba75bc12ba"
      "bn"
    end
    language "bo" do
      sha256 "8af1404f4537d35fbb77efdfe6f17b7025897db134256f6333ac159dfe7921d7"
      "bo"
    end
    language "br" do
      sha256 "3fe5266d8f0235088f445505ae55ade246a31713fe35d126e5eaefb932fbfc30"
      "br"
    end
    language "bs" do
      sha256 "aef071178fc781c2a64b5bbf5a12c98ae314adcb3541bfd8387c1dd740b7d1bc"
      "bs"
    end
    language "ca" do
      sha256 "d30dc9f5e9e2135c3aa9260ec827d328d1a71a862a468a75fe66549d8cd01033"
      "ca"
    end
    language "cs" do
      sha256 "93b18f451452ca5a26e237b2063de359b23ecd12412e4617b6a7621fbc092db5"
      "cs"
    end
    language "cy" do
      sha256 "76d518bc57702b984b75589f7b610931e5ac0e7095f2b23c53d4c4a89ba4e090"
      "cy"
    end
    language "da" do
      sha256 "ba74341b8f6f97d4f3d7c0692c5f54f3810bfa8a199a17fe3f4b613e2eef4a56"
      "da"
    end
    language "de" do
      sha256 "6dc71a452cf1d3b7d514cc5b1c95373a124e49d287a2924df5ccb7d8d89599e2"
      "de"
    end
    language "dz" do
      sha256 "24de70088aeb3b9c201b5e126f3d45b6e34bbfdea08aff410eb6e6afa5ae2ff5"
      "dz"
    end
    language "el" do
      sha256 "0970bf897fbe2f92a032686e2d5ffc370141093b265b4db6b23a1cc90bd7321b"
      "el"
    end
    language "en-GB", default: true do
      sha256 "77451e91af8bcc53b9fdcd9feea1c4e826a9f69529b23e1dc7c2106084deea46"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "9fdb92371c58a17d97e9053ccc4426ee750d6b8fa39531aca9ee77bed4426655"
      "en-ZA"
    end
    language "eo" do
      sha256 "13b736966f662a5140069694ffadfe0c0d81cfb62444bf7475b901cff96d6593"
      "eo"
    end
    language "es" do
      sha256 "efad1763dd913060384af143e6e42e6968952d859109b5b965078541a36633ae"
      "es"
    end
    language "et" do
      sha256 "001591e253060bf4c0339140204ed804867dc360335c31f675c6d2046f1c45b3"
      "et"
    end
    language "eu" do
      sha256 "6d852b66858866fc6521f2ccc8a4e5df2d3f16f369cead91c4dff0c924b40bf1"
      "eu"
    end
    language "fa" do
      sha256 "95bd67bdf0ee46faef4364529c410e2bab6680b533223522591d239ab8715a27"
      "fa"
    end
    language "fi" do
      sha256 "9986be479841a5eaccaed6d4b5022c145c2bf11f5c4ce33b60174b9a3b0d1422"
      "fi"
    end
    language "fr" do
      sha256 "78f742e6b50c629cf8ae3abf0409b7141cbe56a6f39dc3c9e19f734e7f5cf5f9"
      "fr"
    end
    language "fy" do
      sha256 "2b661d585ff96b2d729b79443ef688091c6db12597174973c172e658d4abc9ec"
      "fy"
    end
    language "ga" do
      sha256 "bf97e45672b4448c35738d5d0e9e76e3905d5214e1c54514fafe1c529a41c52b"
      "ga"
    end
    language "gd" do
      sha256 "11e58bd591e0b6514b141b0110e0461c62e2a71e302d3b8bcb43bc17b9217ab2"
      "gd"
    end
    language "gl" do
      sha256 "333cc73751072e0237750c0281c5acadc609ecf1b07bbd88ffc805ffbf152915"
      "gl"
    end
    language "gu" do
      sha256 "bf5296b202d3882998c34f47d17c6c02fb1ddb32321682a70e9e23a55a533160"
      "gu"
    end
    language "he" do
      sha256 "2c2fed177edd73484f9146cacd86be88b1e8c2d59d3d13f4cb6ae010135cc208"
      "he"
    end
    language "hi" do
      sha256 "5f27d300cf5a644227d204e483ef68b1d65f3febfabeaed742931ca472122de0"
      "hi"
    end
    language "hr" do
      sha256 "fcd981e4ec357f34876561f87e064fc757564e291210520ceb90e007e2467e3c"
      "hr"
    end
    language "hu" do
      sha256 "2a62065a4c5db93d80e80190bbe22929a8644057ae515796aa3e457f248584eb"
      "hu"
    end
    language "id" do
      sha256 "e080e32459b8d9d68a575519a0501331ed327404371cfe790690cfc7f6b44e54"
      "id"
    end
    language "is" do
      sha256 "19cbe84f5c7192239886482bea4deaac822018419b02768925942e25465f5ecd"
      "is"
    end
    language "it" do
      sha256 "c5e03d5f44794126100f151dd5db700cafd16f85187f26f83a7c50658d0a5237"
      "it"
    end
    language "ja" do
      sha256 "e62f9dca026b0e83832224dcd262a73a726cfbdbe22b9b9d56ccc8f3be312c20"
      "ja"
    end
    language "ka" do
      sha256 "dc4c43e2429ac36e8dea85945953a50bd230e356eb275f970efe97ad8b65be74"
      "ka"
    end
    language "kk" do
      sha256 "3df3d1e1932c7c88b540b5391491099ff0b5e0f1bd6def9378ab3e2176d85e91"
      "kk"
    end
    language "km" do
      sha256 "53f942c4b312cdeded126367c65be1d1809bf8256c456d8a928f65449c8f77da"
      "km"
    end
    language "kn" do
      sha256 "e91cf00da10faa7ce6547353101db438d97a26be8d3939e5d03ba1325a0cbc02"
      "kn"
    end
    language "ko" do
      sha256 "84676256718f1d47c1bcf35910b1838f82b19dad226df928532d6aff70c22467"
      "ko"
    end
    language "ks" do
      sha256 "bd6b2c75c0a7d2f1ab2b24675883c36280c1520a83d06e0139c15325566e90f4"
      "ks"
    end
    language "lb" do
      sha256 "346396de1750d943381285221961ea68655387e3379583ddc230b7be91497bb0"
      "lb"
    end
    language "lo" do
      sha256 "a19813dfd4ef3c0a13f5caf945dbd6d2800b9a4a6ec16fa1863315bf87141060"
      "lo"
    end
    language "lt" do
      sha256 "65ac297f68eeeb425c827e045213b53a9c30f73a39a04862f36d594c4301a448"
      "lt"
    end
    language "lv" do
      sha256 "1c57e6e9d062642f103a439dbf6f8bc55e6739388350d7067ea9b6d2489df157"
      "lv"
    end
    language "mk" do
      sha256 "5329b9c6d35cf18d2e7ccae1f46d6a48fdcfbf7805efa00b81315f7c43a3d955"
      "mk"
    end
    language "ml" do
      sha256 "a357d4c747f17c8045109509f57bc42faf2e6f540b8cdf1aeae2b3a9801e8352"
      "ml"
    end
    language "mn" do
      sha256 "75a774a218448159db8f91dc0b26e23f9eddacdfcea8c730c7547dca74b5069d"
      "mn"
    end
    language "mr" do
      sha256 "22432c22037ba6f4f5d2a28cdbaf856139296ffe9bfb16f464cbffaf97e81b3d"
      "mr"
    end
    language "my" do
      sha256 "8d87239b2c0f0dda56ec7ddc1a5168797f0a28d132b164cb6942404b36671f9c"
      "my"
    end
    language "nb" do
      sha256 "2848947d8eff0df92a32a93c767b4115f6d59119aedddac8cfb62752b91036c7"
      "nb"
    end
    language "ne" do
      sha256 "e69656e11538aa516ecf9e95ff3683d99f68b6a422129bea635da20a7ad3982b"
      "ne"
    end
    language "nl" do
      sha256 "3d5a3e5f1b197abdc7d0537325dae5e5fd9aaf5b85d75731d899fd24c6eb64e5"
      "nl"
    end
    language "nn" do
      sha256 "aba587cc489d6dd9c2cb2a60272e057994e49cd595af899b8e5ed8e510ee7974"
      "nn"
    end
    language "nr" do
      sha256 "05cdf23154fb8eb413651297fa73b8f5ec7a479953ec614e2dbc2902fc656773"
      "nr"
    end
    language "oc" do
      sha256 "abaea24200df1c8515f1fa21b7493da34dadf645641a1a3578aa4afcd9686196"
      "oc"
    end
    language "om" do
      sha256 "5899bf21786ce9a0d599df2e3a0e810942bbc3b901a488e94308218803ca4596"
      "om"
    end
    language "or" do
      sha256 "14acd3231be90acc7e8b4f56410d7d7086705667b78a1250992c8180044095ee"
      "or"
    end
    language "pa-IN" do
      sha256 "30ee1711ef01d01eb4f8a57093aeb8416fbe9c5e21644ad101ce514f9b72edaa"
      "pa-IN"
    end
    language "pl" do
      sha256 "4ad9891e2b8bc72651331fcaeecad25fd51d09a1f214bbcf3c2d09f7f63a870d"
      "pl"
    end
    language "pt-BR" do
      sha256 "578a6404f681a8166334aef28bd711672a660c86430eaac76e04efcd4e0ff0b2"
      "pt-BR"
    end
    language "pt" do
      sha256 "322870d702eb1655a63b795df0b6d971682ea697db7c11cf9028d92ea505a582"
      "pt"
    end
    language "ro" do
      sha256 "880650c157a91c56533ed9484608e2d36152a0efa822e17c2a6f14c9317feaf6"
      "ro"
    end
    language "ru" do
      sha256 "ab96b6acc32ec2870e82c49ec215555da47b88c263b525a969dc4e4ba5741f11"
      "ru"
    end
    language "rw" do
      sha256 "9dbda36c0702268fd54964b8b4d1b40cacf4a0f71ae38470421d735419a4bbbe"
      "rw"
    end
    language "sa-IN" do
      sha256 "54571745ec2e5b14163909f6fe4be2b5643a3de25c0c277da0800b1d7c563b69"
      "sa-IN"
    end
    language "sd" do
      sha256 "2ded8911ec1810954949daad802dbbff3173ea9d93a0da4dc8ea183fc675a171"
      "sd"
    end
    language "si" do
      sha256 "c0dc69c77ce61ad9d550ced069a69135e44688133b23aa9a17e0f3a186f654a5"
      "si"
    end
    language "sk" do
      sha256 "c61f23b913b2e75a576f9ebd571f5390ef952863de829f10964676e2a152e3a6"
      "sk"
    end
    language "sl" do
      sha256 "5614a4280adced12d9e6b8f79b8e978e93d6b5c7488d762d6809ec7a6046c7fe"
      "sl"
    end
    language "sq" do
      sha256 "cb174682a04c5e0dd568bdfa8b7ac36e14b8540059988c5f77f3e3e40231371f"
      "sq"
    end
    language "sr" do
      sha256 "259de454d0b1486dfcfaa9777ab2f58c5f61d9245a4e24d516ea53b7c6c2e522"
      "sr"
    end
    language "ss" do
      sha256 "e011d8b64a778e7a39086e667cac564a95194a6fc5108e49de6d547aefa03351"
      "ss"
    end
    language "st" do
      sha256 "a97d843dea64a1e6f62c37145389315727c927217ded8178366b09e429ae62ae"
      "st"
    end
    language "sv" do
      sha256 "0e388271abbd3ba6031a206b8cabc5c2e8faa3852c140c18cce0b989a1318180"
      "sv"
    end
    language "sw-TZ" do
      sha256 "fa441c6d69f4f99c0570ccd9b7841a5426827fe525361273d44c49433bf13e63"
      "sw-TZ"
    end
    language "ta" do
      sha256 "d3e09ac99f6495b72c8a6e73605405ed8b0cd07d7025e359ada034db22d11c62"
      "ta"
    end
    language "te" do
      sha256 "3872d6ba388b014caf91035dcd8cf5b7009396dda35ac2893d7626f511c7be72"
      "te"
    end
    language "tg" do
      sha256 "ab167855e889181e099161cffccbc987d4acd03c3838b94a06f2500383e695f5"
      "tg"
    end
    language "th" do
      sha256 "5f4714304804afda13a47a493a802babc3203b20f41d8d310e2f9d19f2a66b26"
      "th"
    end
    language "tn" do
      sha256 "ce2761168bd6e7bcdcb90fb3b7c09c6b086d2f98ae41d1d88f52226fba91d64a"
      "tn"
    end
    language "tr" do
      sha256 "0e577b24f818e286775213b60990d666a3c5be6c6166ab292d1e51673ba417bb"
      "tr"
    end
    language "ts" do
      sha256 "edfd4870ffa23ff5ea40444a9fde1897ee02aea137478f366c777649ee74605b"
      "ts"
    end
    language "tt" do
      sha256 "e8042b054374d97100e10018003bfc4021932eac2b2a6f9ca3549c3cd10ed1b5"
      "tt"
    end
    language "ug" do
      sha256 "9c1aa6c597c86ebf79ae6b14b235d439aca09748c45165050aaf073f340e3a13"
      "ug"
    end
    language "uk" do
      sha256 "f6295d11223eb1175d162d10ed86caee70799fcb4d1a279a3851e395d1f74950"
      "uk"
    end
    language "uz" do
      sha256 "aaa1ddaef601c1afdb063b74506469a5403baa4930e50441f9bb59cb5ccf0c2e"
      "uz"
    end
    language "ve" do
      sha256 "4c0d043f6c0f9ff865b5a207454692df62315872321d72d409e314c903b4de56"
      "ve"
    end
    language "vi" do
      sha256 "cbc28c785047e2c16b2c57ad642fd0e1a9a19969b630f57c1fce0e5b151bb6d8"
      "vi"
    end
    language "xh" do
      sha256 "8b445d3b322d2fd352bb80b43bf0734546263701608a94c61b82fd7dcef1fda1"
      "xh"
    end
    language "zh-CN" do
      sha256 "53f5f4cc0582c97e2f18f3f9900f09fad406d8c8c8500fbffb0fe4e9c4d00af9"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "73f4e820121666cfc9dc6714eff683e0025765cd1c3dc712c98a54f4f742aa05"
      "zh-TW"
    end
    language "zu" do
      sha256 "ce21a3aaef8544515dc3479fc96b45ce628f37eb1b23bf3d99074120af9cfaf7"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "86ad4bc80742365f52329db81f9c43417b788dabcedcc49bd5fa0bf7c6de1a83"
      "af"
    end
    language "am" do
      sha256 "a52d0c4fbaec9ac1810f8f318f5cdc7262bb3f5b34240da91527b1a17e51eed7"
      "am"
    end
    language "ar" do
      sha256 "268c29dfbbaed60690314395d2c49cef79def9a33a5c6c136ca4a2981797d170"
      "ar"
    end
    language "as" do
      sha256 "36dbf624139da083ccb1b1288c49cfaf3b5668957e32017682ca25dcf04f4403"
      "as"
    end
    language "be" do
      sha256 "0f6d986a64e384672620182b00cd4652e3035c67dbf12388af84ca2bb550aec3"
      "be"
    end
    language "bg" do
      sha256 "6681997dd41b50871cec28094bed56e17f20b9a98e875fce0b7890d3ed2be057"
      "bg"
    end
    language "bn-IN" do
      sha256 "8b607b63ae1e914dba0497820ac2bcb0d7e438b4cd1098837d6e51f6f19ec072"
      "bn-IN"
    end
    language "bn" do
      sha256 "b161ed1829f46968e6b5b1c63e696957f2cc6e74e8000409fb0b7e9e01fb2876"
      "bn"
    end
    language "bo" do
      sha256 "1c43b2608e8f21dc92e1b5fa188f800c1b3d8f5e6c3817227062306909c9c0a4"
      "bo"
    end
    language "br" do
      sha256 "756342b812478d122bfef4ca66b3e63d68d2bd8cf6e5832768f3928e897c5e0e"
      "br"
    end
    language "bs" do
      sha256 "9c03a1de087a51c228a3a6db8af8316c761aebe36d6e24825837c6a362872ecf"
      "bs"
    end
    language "ca" do
      sha256 "9344faf2feefcd8fdaec594cc1d5b2b242f23c09302d6e47d83f7cebb402a369"
      "ca"
    end
    language "cs" do
      sha256 "1db44c7e2807da159d5eb8f4c910a684044beb6f9931dc35282a9d0220bf5122"
      "cs"
    end
    language "cy" do
      sha256 "4e337f63e30f52461d09750dca543becab2259183472b619101ab21d7f704efa"
      "cy"
    end
    language "da" do
      sha256 "de4e96608dd20407b96fc17cf53f3366a99796f94e9edd26af29b862328baa1d"
      "da"
    end
    language "de" do
      sha256 "7b213fca6228b8847b288370097937080a6ebcff750f81422ae8bb08fa7b69ab"
      "de"
    end
    language "dz" do
      sha256 "9883e35431afb04ca64bb8e6b7b85abc637e388c251a658b7ec0f388df96b117"
      "dz"
    end
    language "el" do
      sha256 "31ef53bacaf9f39a63b5f1ba84ab7ef30194550d1fcb506700f666f32700e63c"
      "el"
    end
    language "en-GB", default: true do
      sha256 "c2e03510a2ba27b18cf94eb412324bd0d6798817088c72e3d2ad42c98ee50f38"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "2d2dd3d6c5444b3855875ba854abac704081c3a8ff8ecd90d70c174be8068f29"
      "en-ZA"
    end
    language "eo" do
      sha256 "7047b882169c7791ee04f32138fd3cd4dcc5bf67038ba5bb501a97a45a856359"
      "eo"
    end
    language "es" do
      sha256 "e002207bfb7c341e228084014194d820096a8f74f90b0567dfd33b0d84e1df66"
      "es"
    end
    language "et" do
      sha256 "6c60dd9a2bd84e12b3ac0ff91753f8dfb2bc4d212d1650a8488676c3c2efb994"
      "et"
    end
    language "eu" do
      sha256 "93a633e38ef687c680db4009460faae7673d76d3e77d43ba2736f9fe3a500fdf"
      "eu"
    end
    language "fa" do
      sha256 "ec38834b1d7c303f73876942160813f9c91f2ac0684b177e11b67eee6da14b8d"
      "fa"
    end
    language "fi" do
      sha256 "bfb608d7afdd09d768146302a92abf6e78e3df3c76f086791cc6034684f81007"
      "fi"
    end
    language "fr" do
      sha256 "a71b291b3d3877133d795c412f32ac1349aafaff4c462c6a5828f557eff88ee5"
      "fr"
    end
    language "fy" do
      sha256 "792e9f135ab4d736c399d104f5444866e209faccb28d89aec2128cb4e37de19c"
      "fy"
    end
    language "ga" do
      sha256 "89dab11e7f60914211b4ffc8f5e63a43e338f1a16230a7cff8e1679791bcfac9"
      "ga"
    end
    language "gd" do
      sha256 "1dff8a71ef068ba7ddac1de24b62dfa0317384f2dd8b6e391f0a51a23daeafdb"
      "gd"
    end
    language "gl" do
      sha256 "f6b28e7afe0b8fec62d9ae76c627a0117ebdb8bda5488862c9b9dfcd10a24d7c"
      "gl"
    end
    language "gu" do
      sha256 "10b926018a93112e9f13c2ce32e9c050cb00d7ccd67a7c1ee90ac029bf98c333"
      "gu"
    end
    language "he" do
      sha256 "fca174166bd524bd58c3f6d9fa7d37707c7a6c3450646ee9877516b7e916f2b0"
      "he"
    end
    language "hi" do
      sha256 "5098d339d4ac5d38103130fd5ac042354f28affbce13985e536b4b2b72a014fc"
      "hi"
    end
    language "hr" do
      sha256 "6d956fa844ffee4e6c1f22c7b148b856dc7e11684d760b182f2eb42f0940b312"
      "hr"
    end
    language "hu" do
      sha256 "2ac1830aa789458d8203c366c449fe3688614de6f78bf5526115a767cc60ad1a"
      "hu"
    end
    language "id" do
      sha256 "feea73e11156cf72ec270eaa7a59ffdee9baff4c826bb9e241deb65849e552eb"
      "id"
    end
    language "is" do
      sha256 "c2290641b1ccf67786d08286a8d490ce058291ad619f42175c3b70c05ca34b83"
      "is"
    end
    language "it" do
      sha256 "bbd09f19fc56945dada591e91ef08f9614a737e3f0d9fff7b64f99c2d2745030"
      "it"
    end
    language "ja" do
      sha256 "e2242f64f1c34679083c96207b6765c0a8d1b66e7e96ca2e88deb2fe8fcc2bcd"
      "ja"
    end
    language "ka" do
      sha256 "dc6412951ae3879ad666e3dd1726a32c54f77446ffefde63c3b98f5f2b41b0f3"
      "ka"
    end
    language "kk" do
      sha256 "11a13ebf7b754bd1b9230eb41f3a616cb210952439aeddbb59782befb9295d9f"
      "kk"
    end
    language "km" do
      sha256 "670983a2d28aa5f3ac328fc9e45480f0dada61f1f4caa720c5e46ea011117a87"
      "km"
    end
    language "kn" do
      sha256 "4c494bd889cc803135405c7fc5368ca79b5ad5f12a2e6b3fa999fa68c3387f03"
      "kn"
    end
    language "ko" do
      sha256 "d9505a1d3de8069440de5e86712b66fd17ad25c71fcaff4571b051bd418ecd9b"
      "ko"
    end
    language "ks" do
      sha256 "40b969c5849e0abc76b1344318d9ed5797213baf64b33bca25cc255afd7958d2"
      "ks"
    end
    language "lb" do
      sha256 "8dda360d0bfc976bdafb35fc94c5152d9cd649015eccee70d14a65a97f2797c8"
      "lb"
    end
    language "lo" do
      sha256 "9474978576953a82b621fed1fa16613723ac600e35c36ca0019138357111135e"
      "lo"
    end
    language "lt" do
      sha256 "d52143e344a747d6eb597df4315c444f76e89c2eae9cfc6fae6097f33a935ba8"
      "lt"
    end
    language "lv" do
      sha256 "2d3b71b13093e390b77d73a7e37f6d3078069b514776ba2a47b832f0e076ae19"
      "lv"
    end
    language "mk" do
      sha256 "42eb06b6db801d239d2d81038874b2dae61f021f70af3d775b805e712606201d"
      "mk"
    end
    language "ml" do
      sha256 "2fa4c19d8b0451a50a17cdeb46acba41531b3c6b628d0fac43abd6896c8fc138"
      "ml"
    end
    language "mn" do
      sha256 "0bc581ae19e09deef07a69f8a6319b324bd299c8bce4307fe2c57aff9814772c"
      "mn"
    end
    language "mr" do
      sha256 "858fe9a73d933f80508c899623a415934ac3fa8cb8a3364bdf1fb3ffa8ab35da"
      "mr"
    end
    language "my" do
      sha256 "6d858e8f6b3df21df3a63b8515a5ecc1920cedaef85baf38e7b08b5c337be6da"
      "my"
    end
    language "nb" do
      sha256 "74b7fd79c2c76037645190467667f864d79a24be32c5113bf9d9df593b734465"
      "nb"
    end
    language "ne" do
      sha256 "d2f6d3e2082adbc4fa75dbe3581967d15112796d57242bb67d25b43b1c51d565"
      "ne"
    end
    language "nl" do
      sha256 "9589a32fd46dead3966f315b0c42cd0b67d5e2d69282c1a429ccddd619da603c"
      "nl"
    end
    language "nn" do
      sha256 "f2ca147c483fe7264f5b10433462810611fccab73b7929ce1c9bc5ea532f441e"
      "nn"
    end
    language "nr" do
      sha256 "6aeb823024a875b35313b44d98eb2ed988210d9e7252ff7d87134251f8df3c7e"
      "nr"
    end
    language "oc" do
      sha256 "a1a558db09a327be1e1c7d2bb8a86839790d160532a153b1f93a321a1e9ec29a"
      "oc"
    end
    language "om" do
      sha256 "64bb6ad7878ef0368559098e16465b9a8eb90534d5475ed688cdaabbcde1d9e6"
      "om"
    end
    language "or" do
      sha256 "8c854ccc4ae8caa413710ec328d61340de9203ef24f23caaac78af22abff392f"
      "or"
    end
    language "pa-IN" do
      sha256 "837bc9a84f86a5ab1e34e526348002c58214b83f7d0a2eb9666481c5666da14d"
      "pa-IN"
    end
    language "pl" do
      sha256 "df637192301d7e88845726f358678338ea2bc3fb550cb8c5e5f8d0c25292f43b"
      "pl"
    end
    language "pt-BR" do
      sha256 "d0e1d0cd244b08a182c438144e9f6be3e08e4221ca65e4c06090e9dca3e10210"
      "pt-BR"
    end
    language "pt" do
      sha256 "457e68b6dc04b358937e9c77dcbe3e3486d194e0587d6cc333f310cf677f5eb6"
      "pt"
    end
    language "ro" do
      sha256 "0d957cb828e499e644a0fdcddfc4b4b79149f287195e3c9d44cabd5c8dabca14"
      "ro"
    end
    language "ru" do
      sha256 "7902542140dcd5d6b8f5f0659c36a59747bc7659c35f413a0ff0317703e1a297"
      "ru"
    end
    language "rw" do
      sha256 "90f2f70defcf0e26ca72ca14c5396ead2a07327ba7454b7e1337683d02a0828a"
      "rw"
    end
    language "sa-IN" do
      sha256 "85071ab4529000aadce5ca234a98933bae9e592298f82d268e897c068769cade"
      "sa-IN"
    end
    language "sd" do
      sha256 "1f8c1c872c2ab7934cd653c018a9e31879054167593e3d801b7950e9e240ecbd"
      "sd"
    end
    language "si" do
      sha256 "617fdf930d6345799e0da6eb0e57e09d6e38795fb77acc5339333ae217ad927f"
      "si"
    end
    language "sk" do
      sha256 "990d98aad440f6dcbd8ebb6271abdd54e20d4c29632e324d8e0bca837dcefd22"
      "sk"
    end
    language "sl" do
      sha256 "64262f996e31f133d9c81dbb841ff418ebcd4a02632dc99ef2d43e01ac98991b"
      "sl"
    end
    language "sq" do
      sha256 "1dfa3aa6e3feaac9e90c286e1e3fbe62ec4367308a57cad0c8bec4a0d2093f06"
      "sq"
    end
    language "sr" do
      sha256 "eeb9f97635a62dcd5902a1ec20a829ea0d8dd39f8742f3f65defe4f5590ad340"
      "sr"
    end
    language "ss" do
      sha256 "c4ca4d78b4e7a002bc1b96c46c488a878cfbef6ced8b4145903539b13cc40131"
      "ss"
    end
    language "st" do
      sha256 "84e8c65a587cca81d55cb68e33ea8b644cce99d449b7528ce718c2ce7a3f2771"
      "st"
    end
    language "sv" do
      sha256 "bcaa71b6045296a384b43324e0a3f8d0a5849eeab96082b32d2b27e70fca5047"
      "sv"
    end
    language "sw-TZ" do
      sha256 "1d2adbdc612debf592ef523123bbf58b9f5edc76db63b7cb954dc8e80876b427"
      "sw-TZ"
    end
    language "ta" do
      sha256 "62acbb7e27fa728c8bcbbc096376272b78854e1d9413451b5ed9c8f8c63243e8"
      "ta"
    end
    language "te" do
      sha256 "0d0cf9363ee0b56d733d7d2176e9185728a84814624b6e10af64320c31d69b1c"
      "te"
    end
    language "tg" do
      sha256 "cb4b4f987dcb7c32253bcfe0bcee92bb32f26fa5ce8341070266ce78702d50b3"
      "tg"
    end
    language "th" do
      sha256 "56265af0cce18e66a070bb44a7f9c6be51f8f181a6e530e0a76a6a4575e146a2"
      "th"
    end
    language "tn" do
      sha256 "69277191a7b825327bea94be492170f73598238235cf5fca646c148583612ff6"
      "tn"
    end
    language "tr" do
      sha256 "c55ab29df613b16bdfa4987b2400cca478ac031167fde34a3d3b2fcbef8fa86d"
      "tr"
    end
    language "ts" do
      sha256 "56c9c7b378709ec780c90d34257e5beaaccc86e5a49000d17c9e9732d0cddae0"
      "ts"
    end
    language "tt" do
      sha256 "404bf99fa0a867f730d50ff07956eafe7c4ce145d59ceffbcc1401209a0020c7"
      "tt"
    end
    language "ug" do
      sha256 "e186cb8ead2f1ec7c25b54b49234c3004594a3f8eec933565e24afc6c9ca6f4e"
      "ug"
    end
    language "uk" do
      sha256 "866db5348a05a1be611a6ec57b4fda5fa7415c34e4e4d32c29f1f899f76eb491"
      "uk"
    end
    language "uz" do
      sha256 "b2c2841361aa63220cf5cf9d5ae6ed93e0ddcf52a072c3803e32c0fc7d39c25e"
      "uz"
    end
    language "ve" do
      sha256 "dd95c58f767dcaa8554c78e49fc4c24d6b192d4e7c0ac0f9f5ba74af650460e2"
      "ve"
    end
    language "vi" do
      sha256 "9235cbf46a53e4534c5dede4527ffc4c575343480ebdac94c51231b71b6a821a"
      "vi"
    end
    language "xh" do
      sha256 "76efe82155545e899475bc10ba4357ddd9b94b2478504b4b2844b8b6da526137"
      "xh"
    end
    language "zh-CN" do
      sha256 "b3e5d9c2fe081c0bee58dfe5a8938707f828f8703129a9a7e5238dd239146802"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "717a034154b3747fc49f122a4aebb591e6c52a9a2b2d570843b8318fbeda814c"
      "zh-TW"
    end
    language "zu" do
      sha256 "87006cb0bae423bc84d3a993de856dec5fe6b139c64162cd16baea3708ff095b"
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
    #{token} cannot be upgraded, use brew reinstall --cask #{token} instead
  EOS
end
