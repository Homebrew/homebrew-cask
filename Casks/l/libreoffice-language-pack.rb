cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.8.1"

  on_arm do
    language "af" do
      sha256 "d09ff4bd5338997fc0a2dc6aa06e6912246a297df9f82f93b9c6b31584419a21"
      "af"
    end
    language "am" do
      sha256 "1e96cbda5574172512967ad26a4621b30493ae4604ecae6c7fc2b2095daede79"
      "am"
    end
    language "ar" do
      sha256 "5f294c93abc23c08b0a19c7329c3df9de95d50b974c880d92f3772224990656b"
      "ar"
    end
    language "as" do
      sha256 "7407491324e1eb59d6ca97203a5d2a42722c18b411e9bb1110008112f8f6220c"
      "as"
    end
    language "be" do
      sha256 "744941ca7b726fbf78adddd6be6e9328e1b00897f4240931eb6bb19a1735ae5f"
      "be"
    end
    language "bg" do
      sha256 "6cf2aad2bfc885f268fff4c7ee749cec517a6fce579f8de091937763518837ba"
      "bg"
    end
    language "bn-IN" do
      sha256 "e1c1669cd144d47fa8cd8242756eb71f0334a41c5e81072822052b395ccaa1d6"
      "bn-IN"
    end
    language "bn" do
      sha256 "3cc37f9b3d608361fbc27bb18f0f528120c23745419efe8912fad5d77a202fe7"
      "bn"
    end
    language "bo" do
      sha256 "14e8c22f1fafc2f0a53c481646281826fe5c2e9635d4b3dee497f672660536a6"
      "bo"
    end
    language "br" do
      sha256 "2526ba1b208896865616d5b36d1fa84460c1ce5368622fd57ca4da731a3b75de"
      "br"
    end
    language "bs" do
      sha256 "443344d655a383fdbe9b2f952d32547c5f832aa54dc7a323aeaa7fc9be2ddc4c"
      "bs"
    end
    language "ca" do
      sha256 "c5bf0342b914a17a10623b7de4d19c252b49b9791b2b2173d57f11184ca24692"
      "ca"
    end
    language "cs" do
      sha256 "0e7c1d0632568878ab68b717d9f10002e0a5e67e92dfffc408e25e05ebcf9f27"
      "cs"
    end
    language "cy" do
      sha256 "7c58d57d0472efcc93f23b73deb89760828916990653567d7ead1f3456842ed8"
      "cy"
    end
    language "da" do
      sha256 "f594d114c5a7b0586ff3dd6e90754b32745a68f7b30c7292be6db1bb1083dbdb"
      "da"
    end
    language "de" do
      sha256 "b3be448c1dfd002f07341556387e936b795b3074532e83c385235230a26bf496"
      "de"
    end
    language "dz" do
      sha256 "283f68f3d3c21a068d40b7f330811f76c15ee0284441a47591e5638962336ff0"
      "dz"
    end
    language "el" do
      sha256 "0b27517f482f6a90a74dadb0c13eee3382d73cb20e7c30d270aa14a85a8f4b1a"
      "el"
    end
    language "en-GB", default: true do
      sha256 "424ee3cbe427ea3d40f12201ccad25f1a1b6b2e36bf5f378e573a92419bd127f"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "79ce76242c8f8bd189cc5899428125b2b1e2a0f78b7465d6f324178de4d902e7"
      "en-ZA"
    end
    language "eo" do
      sha256 "56758db1eca8a0413546bbf7f4e3658147a87fffd57456eda1ec6ec679fdf30e"
      "eo"
    end
    language "es" do
      sha256 "3cdf447b5c32515dba9b3958e81a032bc88014100fbdc4ad44b1d81f4f832a5f"
      "es"
    end
    language "et" do
      sha256 "7a687e9d944ca058e184b44da6569fee3413c1e8c764fa73464a7a0f03f21cc6"
      "et"
    end
    language "eu" do
      sha256 "7131cc8fe29049e1102a2335ffe44bee27d2a00a879242ec799fa43dcd0686fd"
      "eu"
    end
    language "fa" do
      sha256 "8e29790fceda4b8962913a78591071ddcc387a816fe84944b48253d26668fd9e"
      "fa"
    end
    language "fi" do
      sha256 "c05f9e6ab528104411169cbc7247b21fa37cd068d4d538f31766ec88aaeeb28c"
      "fi"
    end
    language "fr" do
      sha256 "d6ec659360d95b914b06441bb0ecd40938ea302c34691950251703674df5efa2"
      "fr"
    end
    language "fy" do
      sha256 "fdafa64425f14cbc0e8a2fd205b34aac8f369e099e17aa8631f602001ef513f3"
      "fy"
    end
    language "ga" do
      sha256 "52b1ad6d900d0c40563fff35076c695883ecf40739947e4adc5c70c57a917ef4"
      "ga"
    end
    language "gd" do
      sha256 "2bf9be4bc87f9c63a08dca0208b7d38894a6c6d68b2d372e41f174dd065ba3d5"
      "gd"
    end
    language "gl" do
      sha256 "f7a119b771a99afb811e91fb2fab6eda274649c92e80a13c6b54125d4b3b8802"
      "gl"
    end
    language "gu" do
      sha256 "74084385f0454d6ca10b408834d014283fdeb81261bd37c7d9dd5539b870cdcf"
      "gu"
    end
    language "he" do
      sha256 "86839ce5ea6bebaefdef16ed476bc7b6036afd0d69a54fe17ffc2018ce6d97c5"
      "he"
    end
    language "hi" do
      sha256 "479d23ec7a0397b179651b215449d546e77ae41b7ad17e3c89a71765add2adef"
      "hi"
    end
    language "hr" do
      sha256 "eca0ba5d83c01a355c65899e391c4d146c9ab866715ca5b77c96b194a109c643"
      "hr"
    end
    language "hu" do
      sha256 "6fa395493e09e17408ec820e17a602002f6ef39b8ca4fd5b25fa9f50a7f56758"
      "hu"
    end
    language "id" do
      sha256 "4b7eea305991510aad30438d73a4d31843a4ef9a76a114fca3e3379f91fbac7b"
      "id"
    end
    language "is" do
      sha256 "59a67db35863d4d90e255e28da39e829108a1855d913cd8192436a04f09abb26"
      "is"
    end
    language "it" do
      sha256 "bf553b41351353d5359bad15daa0fcd051481ca9034b05d6d464aae1ef3a0ffa"
      "it"
    end
    language "ja" do
      sha256 "250bd23999660bb772fc224db31b7d9a7e056a3db8c4a6f83d29b303e92fa3bf"
      "ja"
    end
    language "ka" do
      sha256 "34f88f1822e82f404344b5f1116c4f2bc75d204564220e8d511bd7c1c424cef6"
      "ka"
    end
    language "kk" do
      sha256 "dbe2d409db58dbafd0a3658c99673a8fc717c525202db8c423d03e746df35056"
      "kk"
    end
    language "km" do
      sha256 "9890311497376390724a56ea6b2dbe838572f4e3db74351652fd653e46b1d617"
      "km"
    end
    language "kn" do
      sha256 "dc702a088d6b48530d430ac560809dcd81e3b20fbde1db301578093dbc9ed608"
      "kn"
    end
    language "ko" do
      sha256 "49e3a065b9f44ffd68b354bbba008ecfe5eb42ae1f1750a81b37a2ea337096fc"
      "ko"
    end
    language "ks" do
      sha256 "a3e459e70d905cafb744fc7e1cafd203e66ae669ee900a22aa7facebca2f09b1"
      "ks"
    end
    language "lb" do
      sha256 "1ba8da432210663245daf8235ef305bda0d18d8897eec9a3716c474f7ff0f3a5"
      "lb"
    end
    language "lo" do
      sha256 "30663148f8121c4070d6d216f4f3457f67e80e796aa145b1951539cfdbfb1c16"
      "lo"
    end
    language "lt" do
      sha256 "ece4bd5cf6445ae482a4b14c6ac4c7e4f4ce2fd9fade499815604d09fb5efefe"
      "lt"
    end
    language "lv" do
      sha256 "cbaeb678c82ed1ecc74dd014371e71168fa06eff3de4e799ebd1c927de99debb"
      "lv"
    end
    language "mk" do
      sha256 "bfa98d6f91465199b89e5cb366625120653de8d3bfc0cf57f80881862b0a6f66"
      "mk"
    end
    language "ml" do
      sha256 "9ce3de13d7308b80cbc9620553f63e19004c7a26d99f6816028fa5d5f12836c5"
      "ml"
    end
    language "mn" do
      sha256 "7003f1c2eedb6ef06769bd2794ac312b6c56dfb05e487881757c2b1a4c3fe259"
      "mn"
    end
    language "mr" do
      sha256 "75c9293b051db51ca7622c58fbc8e5933e3e09d775d9990007272b8e28b74168"
      "mr"
    end
    language "my" do
      sha256 "331697513fe250df7e791adb762f20d16514b0e3b009d88cd1d4d371a215c3fc"
      "my"
    end
    language "nb" do
      sha256 "b49bafb7b74d5800ea62236c182d21c5a936cc674bdea45a957e3204a6dc1146"
      "nb"
    end
    language "ne" do
      sha256 "82201ef30093442be58d27ba0881163be53e4532a6a186fa77e68a5ce4c253f3"
      "ne"
    end
    language "nl" do
      sha256 "b31b9524284b9db65ba9b30533e0dbf52ea7f59da4fac3ee4516e4c5688bbd50"
      "nl"
    end
    language "nn" do
      sha256 "aa37f73a43bb6380ddb283ec6a557c926f2510ffaca50b104a9642372334e604"
      "nn"
    end
    language "nr" do
      sha256 "bf2977db719823ef729f64feedf058baf31708ad9fe6ba495a1a5bbe86605f36"
      "nr"
    end
    language "oc" do
      sha256 "86f4f4a4b727da3fa35274a09298bc3bd2e6289e546f3d2d4ccc0d9bf8c7d2de"
      "oc"
    end
    language "om" do
      sha256 "ed5399f75c4c233a91ce3ca8b8d12cc7b214b91c7370c253a8891ca576690d4b"
      "om"
    end
    language "or" do
      sha256 "722c9ac1bd1436494520ad02f179ef1b1bda234dd8d000503c1ef2d182e88b46"
      "or"
    end
    language "pa-IN" do
      sha256 "e325cb044cfd5575aaa320633828cd1d4ef1079e012caf1069f3ab0ce4885849"
      "pa-IN"
    end
    language "pl" do
      sha256 "a3467da130707cae4c29656b3d098b57ec2c8dcd3b5a1ff6559b740472c4100e"
      "pl"
    end
    language "pt-BR" do
      sha256 "628a71b3201437645dd0f09580356173d736f2ebac243665ffdb057e1c4a766f"
      "pt-BR"
    end
    language "pt" do
      sha256 "f391aef97962d6868e7b3268fc51b551ab4110cb00196fbb6903b2df327b4b75"
      "pt"
    end
    language "ro" do
      sha256 "bef582c20deca122880b5865a6ef889f3484c171786ffa44a190b11571cf266e"
      "ro"
    end
    language "ru" do
      sha256 "2f76329c8c7e29fda87ef0a3ace20d485e198ae2cedbb94861df401e5fdad97f"
      "ru"
    end
    language "rw" do
      sha256 "d36d90a323c723b7c2f8ed70dc248d2d5e3d43b977b5434a3c2a43da4481a9b5"
      "rw"
    end
    language "sa-IN" do
      sha256 "6010ec1f6da88f3085f97278fd2c955bc93d908ac1432bdd267db0a4a36cb114"
      "sa-IN"
    end
    language "sd" do
      sha256 "76eb9e2a48414bca7d5c22fbf113b278a23b8a6f5d75118b8e87e16d4da48ad8"
      "sd"
    end
    language "si" do
      sha256 "0020fb945198c31504cb1d86beb2a0bcfd6ea4203005158ec0458e62e6f565ff"
      "si"
    end
    language "sk" do
      sha256 "4cda323981c832bea02baa11de99640bc1b9926365bd7897e7728310e6ca2d7f"
      "sk"
    end
    language "sl" do
      sha256 "05d1572bf12442b9596128f9bb34291f71cce1553b6af45d362d8d4c41d6f47a"
      "sl"
    end
    language "sq" do
      sha256 "05f63f81422656f20600004e0623e00948c71d4e84215015509f8e86d89974fd"
      "sq"
    end
    language "sr" do
      sha256 "c525c153002d6850934fed9094a737913b3252f6086f1ef8c50495ee418cd80e"
      "sr"
    end
    language "ss" do
      sha256 "5132108acbe387fb052d2ca385f19d03e06845262a31390ae77db4782e18593f"
      "ss"
    end
    language "st" do
      sha256 "95650912a91ed63eb1e0eb8f8b9dbc40eab3b39fddf770fcc324cbfbd3e623a9"
      "st"
    end
    language "sv" do
      sha256 "d85febe1711cbaee7f395af4469b056c00a5b721366919eac447f351ae1c95f5"
      "sv"
    end
    language "sw-TZ" do
      sha256 "686788e6ce919c6ebdc7a38358cf0070bdc667920f04491605b8aebfc586c33a"
      "sw-TZ"
    end
    language "ta" do
      sha256 "657ac536953c978d4ec776ecb7ba7ba957703c90634d06f8847cb3caa084e300"
      "ta"
    end
    language "te" do
      sha256 "9a4fa3057745ee3175dafc96c8c9a43bc17d4ec30341bf5c5eccce34b9cf8269"
      "te"
    end
    language "tg" do
      sha256 "896ec4ab8216c7132ab79b2110d438a8bb4debacdebc32125364e3b38ee0e634"
      "tg"
    end
    language "th" do
      sha256 "c6bfa3ba1e63e2a251d76252b3cd78b1a18224dfc52fb5a15dab6900785a46c6"
      "th"
    end
    language "tn" do
      sha256 "d8f952fbc82b12f618a29f44055b2941d451aed664efc71444355e11f6242157"
      "tn"
    end
    language "tr" do
      sha256 "90298309d72bd5ae8ca3dd61bf4e0fd5efe9c0a7498c4664a3b67a1e9671bc48"
      "tr"
    end
    language "ts" do
      sha256 "8fbbe14555cbc632d11f32672506206efce026699939fa5610330a3deaa28303"
      "ts"
    end
    language "tt" do
      sha256 "52b5d6d8ce8935faaaa65b0930e70d03b13f9388a798b77d4208f9a6be2ff800"
      "tt"
    end
    language "ug" do
      sha256 "41dae134dbf2006e2741df0f071ae046c2cb2e4b781e84b21af88c858853d331"
      "ug"
    end
    language "uk" do
      sha256 "f1a42923210e2d5a93177731f4a7aac740cef667fa643ac1b57bbcaef5ecc239"
      "uk"
    end
    language "uz" do
      sha256 "75faf7d9d614979a62d3850d8e1d359ef606f1e735a2cfde8be15fba971bbfc0"
      "uz"
    end
    language "ve" do
      sha256 "4a44e158c9d04c671f656e4da051782ab10be311b7553c7f04e80e7c714f567f"
      "ve"
    end
    language "vi" do
      sha256 "94ab7d572a1b9a8e123f1ee256ca9005c947ca870488095835e69c9aa7314193"
      "vi"
    end
    language "xh" do
      sha256 "4b11244df52f180d0bc4691540c0edab7187728c5658b131d961d8134063f713"
      "xh"
    end
    language "zh-CN" do
      sha256 "b9fc6bd61cb67bea20e219fd1f055521a4bebb13230e08d18d522771fc88e417"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "c54a60a68a28520506d55430884965ff69f58be0c7daf9d9e315bcf04b3907b6"
      "zh-TW"
    end
    language "zu" do
      sha256 "99749c0a31e54316e8ba32e4c0009788da4981f6f22900e8a667e29620522e81"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "0dbc74134d35a6e1f1e42dffa076cc740985312598fbccb937edb1491835df3e"
      "af"
    end
    language "am" do
      sha256 "c8ba99764d08404e4c258e289ad91a0e9f83b83d927795242cf796b6ca7278f0"
      "am"
    end
    language "ar" do
      sha256 "1dceb11853f408aa26aed16436c72579ff9ac7c8c1c8dc4ffc3b971e2f423842"
      "ar"
    end
    language "as" do
      sha256 "873a69944b8c80677a114add705d01b85ec1615fcef78b6595b980569ad9e699"
      "as"
    end
    language "be" do
      sha256 "062b355a1699a39d49bce9c5bece1aff5c3c59649911352c36f30a421ccae4ce"
      "be"
    end
    language "bg" do
      sha256 "1d395f637d92f5d1d4e30a0fcaffe264bbb56b144ac53bc563fe63a26adea30f"
      "bg"
    end
    language "bn-IN" do
      sha256 "fbfc76331314b6502ba6b11b8893b72a0957c3fc2a33c9455e66f632918d8fe6"
      "bn-IN"
    end
    language "bn" do
      sha256 "79de2674d0e87dedf9682cfe1566f240fbdc1f6aff212ccee3f58a9c896ca026"
      "bn"
    end
    language "bo" do
      sha256 "2a887cc4bd38f11dddd54c759be6b046b594eef144615371f39ba03360af98b8"
      "bo"
    end
    language "br" do
      sha256 "56ad5ff7f67134267f2abe25bd162ac026743d59004fa36536cc360c73f672f4"
      "br"
    end
    language "bs" do
      sha256 "d5676b180abbf71d5e4c70635cddf018be1b62770d34e29b4b9279ee7e9bb411"
      "bs"
    end
    language "ca" do
      sha256 "9d6eb4d1ebbb11d6a978593d0a62358b9cb1496d119cc1e8b9883369e0f2e7b2"
      "ca"
    end
    language "cs" do
      sha256 "dfd3f58aa109f8485ad12d04f9ff2c13254c369a9819c456b12cb9243673ca84"
      "cs"
    end
    language "cy" do
      sha256 "e10950b17f93221c315edd6970479690942c79ab4d85beb6370ecebd2fa22465"
      "cy"
    end
    language "da" do
      sha256 "447e8e6e61cc8eedf9590b3433832a2ffdc85fedaa80cb0ad0bff09a8fd4fde5"
      "da"
    end
    language "de" do
      sha256 "e7b5e7cfd7e8b07fe09006df33c1d14ba339deb0400d92f10ec94b9e6e4dfffb"
      "de"
    end
    language "dz" do
      sha256 "07363cd9c33d58703bbf70240d9f1a75fcd3d6f26ef2302b9ff8e540ca23b2a2"
      "dz"
    end
    language "el" do
      sha256 "5d74ba1333245cc205d6c8e5398893f834b74a8f959e214b8d4f2210fe11514b"
      "el"
    end
    language "en-GB", default: true do
      sha256 "2645b2346817f75b33b836947025050e3a8921f1fde7b947249d1bd5f0c93eeb"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "9872d1a578c5455cc6d681dfffa3322e6e36672c68b0fe72e8595d6778c68f8b"
      "en-ZA"
    end
    language "eo" do
      sha256 "681340441c2e8c9a00689e7924b9e8bdddd261d14923252b138e0bee9258f0ca"
      "eo"
    end
    language "es" do
      sha256 "bff8cab8d6a00ac357a4fd42cfb499d074272414942ddb4d51392d74c5de095b"
      "es"
    end
    language "et" do
      sha256 "170b468b1858aece461eff2e5c108136cd7f3933c79a144012cbf413cd108fdb"
      "et"
    end
    language "eu" do
      sha256 "155180566fc0409672635a48b1b09bbe0eed2cae31449b243839a3aa057f971b"
      "eu"
    end
    language "fa" do
      sha256 "00364add35aa50ad73e2e37199a95bcf1945e5268257e4ef9ab850d657cb21a5"
      "fa"
    end
    language "fi" do
      sha256 "67312608a992ce2127d168c11a8ae3f53e784e7965cd34de4acc6ff566378b77"
      "fi"
    end
    language "fr" do
      sha256 "238f9e2b30d3f34f283cf6de9359c7387e928ee67c9b2ae544fcafee71d87b89"
      "fr"
    end
    language "fy" do
      sha256 "71d5c3da7254f572894d96dddfe1ca7bb1d23bec629fe57cae151562097babcb"
      "fy"
    end
    language "ga" do
      sha256 "117a09de87480285afaeba7ca86338718e9efccc5af5bd0fac968f72cb67eb9f"
      "ga"
    end
    language "gd" do
      sha256 "b80643091c472f4d886cbfc24bd5ecb285143264202bb9753bcb22a42edacb7a"
      "gd"
    end
    language "gl" do
      sha256 "105616b5d6ce230fc0fa6744beab4abdd4b1d38362b8884fefeff94343fab5b1"
      "gl"
    end
    language "gu" do
      sha256 "d1c6a27b3912fe8690c7171563384682f4d9861585b0aa978e80581cae17b75a"
      "gu"
    end
    language "he" do
      sha256 "92da9f60947f1757e7989696dcc2c81033404f1b6fc71bae390b206b8effb8c4"
      "he"
    end
    language "hi" do
      sha256 "6af8f113ed777af554e9e0d5fadd292df4c141b23149cf3d4c1f19dc5aa4752c"
      "hi"
    end
    language "hr" do
      sha256 "1efda41e7de64449e8a697d5f105d2e9966a1e1947230640863567f0022acb9e"
      "hr"
    end
    language "hu" do
      sha256 "ce1a479c7f7fb16cb71225865661ba5fa5c30a78785f614be6a4263c19db01dd"
      "hu"
    end
    language "id" do
      sha256 "0e7d4928b998cdce890f85c3736003f23f21d84b8ca95586ddbff4aa78c95bfd"
      "id"
    end
    language "is" do
      sha256 "962bf6e90bf6423d7dc24d41a69c09df62d34375a7b6e68d630a98cf63cb42ee"
      "is"
    end
    language "it" do
      sha256 "3e3c28d738671d0171f5b90395c174ebabd4cec2e8d25e871164a8779bc4e879"
      "it"
    end
    language "ja" do
      sha256 "a7bc3adb0db21692af1d503d99f9347fc73458529a47e2f50a9a17b949a1a08e"
      "ja"
    end
    language "ka" do
      sha256 "0d93043492e76f34a448dfbceaff78fd9e4556c5934edaec22ddccae45e1bfec"
      "ka"
    end
    language "kk" do
      sha256 "5b78e787aed5d48709908182924d56ed26b0b346203e68331f07d012db05991a"
      "kk"
    end
    language "km" do
      sha256 "b6b59ed8e77c657c4af7239f76a858aac0d9333358ce1de1a00157cbaacedfa3"
      "km"
    end
    language "kn" do
      sha256 "5efc8ee65f001cc9863126dac9b109e0979afb0e18fefcc90a1371d8b1757f04"
      "kn"
    end
    language "ko" do
      sha256 "d629c80f173dab7e69b6b4d869f6c6c9fb4c632be078c318490bdb72056c277c"
      "ko"
    end
    language "ks" do
      sha256 "09db3aa69c1d4075115c4053372490f5dff88b539be1f24090aff6f686fb6eac"
      "ks"
    end
    language "lb" do
      sha256 "55b7e97330ff7ee0463660fb08b93e15bb0df04b0d95202460397c6c6296a45c"
      "lb"
    end
    language "lo" do
      sha256 "201bf4aeb6c5dab7700a6236643356b7ca369d91cb6ba6d19d74514ed23115af"
      "lo"
    end
    language "lt" do
      sha256 "5483e6215f3ae2db6683eff214403a3005a27670be18af55053462f7ad5355da"
      "lt"
    end
    language "lv" do
      sha256 "4e5f2f20e006e2c9d60a045a803d81ff2101fc993aac73db8e990e90ff5c4363"
      "lv"
    end
    language "mk" do
      sha256 "8fd33f0ad8d5854928ab22083e3e48b3d4d7c4ba5382286e966f0cc81edd2ea7"
      "mk"
    end
    language "ml" do
      sha256 "c3763b991e33cb030c704fe14c602b1079727dc335b1b37f0c15a048e814121e"
      "ml"
    end
    language "mn" do
      sha256 "94299af5c6807134fdddadf800c14c1fc7feb292fe654a37f4979e12859bf7fa"
      "mn"
    end
    language "mr" do
      sha256 "fff31fcd2be628019684eaa564e3002b7b57f61b1a8d9f126dada0868a9748ff"
      "mr"
    end
    language "my" do
      sha256 "d033689eb7cce1f18e8d1192cc468c06bea60273f6ca39d0ef87abf2bce9941f"
      "my"
    end
    language "nb" do
      sha256 "baa8cedb4d78bfa6959cbe095a5cac66fc7607e07c3c61a29dcc73f7c9c95726"
      "nb"
    end
    language "ne" do
      sha256 "347422edbbab2b2ee74da5ffe9f7bac9e04e95e26c99f80d1f7595fa46804467"
      "ne"
    end
    language "nl" do
      sha256 "8665b040c414750b72dd603baf8e1e7c7ac1438419aa7f2fc9982207be7bd5a9"
      "nl"
    end
    language "nn" do
      sha256 "5966620bf9ac3132d0df428eaae1550e1da60366db8d9ac210e84ad2ce60eb47"
      "nn"
    end
    language "nr" do
      sha256 "61f5edc8bc6ac0f92b1973b136fa0216b1dcf3ee974d87862c2a69b62d8dd981"
      "nr"
    end
    language "oc" do
      sha256 "19512fa0906abe23f676e4ead6f604e17e0d1b123180334ef0f26d960e0ac33d"
      "oc"
    end
    language "om" do
      sha256 "fa087762512ccd6acc2919c49dd8c6c9f44f51bf8a34da02d5f793121ccf6ba7"
      "om"
    end
    language "or" do
      sha256 "4f2942fe3b1850fd22b5e1c28cefc6acb34d030b0abcc9f24925ece93df9f3ed"
      "or"
    end
    language "pa-IN" do
      sha256 "b9c24b54198dad7b571b64e6fd5638b4665aba9f14760fa5c57978e7458f05b9"
      "pa-IN"
    end
    language "pl" do
      sha256 "5c744c190241cd71e0aefe8214ef0afbb078e23d0ce8823b1f14e7f73706e8ad"
      "pl"
    end
    language "pt-BR" do
      sha256 "66cbf041b65994c74e6e3090e09d5a8c19306f889ef5dc6d0fded1fae2c12388"
      "pt-BR"
    end
    language "pt" do
      sha256 "ed2746f2b37b49ad46eb3b3795c9ad3f9b6edd0a678ea0d0a2923cbae3f98e10"
      "pt"
    end
    language "ro" do
      sha256 "346d8943ec4984824b789d597ff15a48ea566437f7025c62514c4d2093d89504"
      "ro"
    end
    language "ru" do
      sha256 "908725ec5bee188672eb0efdc4dd2b5f8f411110bbadd726151ecd5d03b58ae8"
      "ru"
    end
    language "rw" do
      sha256 "7620b6b7e5cbe0bae1f18733acaca06aa8cf33fbe0877661cc8ab58805646519"
      "rw"
    end
    language "sa-IN" do
      sha256 "58aed52e6eaa922ed123724e30d83769241ab1248da0e7466b26262814796568"
      "sa-IN"
    end
    language "sd" do
      sha256 "db1f51f7ccc8cec348f954ae52fe8ab5fafcb8a787145edd59519691b218c358"
      "sd"
    end
    language "si" do
      sha256 "28dd1cb2e101c03d85f23f6437c23a77d6ecbc42126e5ee7dd0b46f6fe00cd7e"
      "si"
    end
    language "sk" do
      sha256 "b697eb4a72889b094ee8131b1248229ab4ad424e635b88bbb4d1412879acdb47"
      "sk"
    end
    language "sl" do
      sha256 "1e9bd9eb003080b7002f6cb36dca6c83856480c70068b0967e5dad9ae57fc3d8"
      "sl"
    end
    language "sq" do
      sha256 "8e29a854448f9a2324727bc6144be3f5a4476449196264bb4a2493bcf92989f5"
      "sq"
    end
    language "sr" do
      sha256 "109c223076bb72d82f565dc83850f4a1896db3c3658b51b75e92d958bc2721c4"
      "sr"
    end
    language "ss" do
      sha256 "ba6757f6e576aba76859e87f9aa70201650fcd381fc4d3cabf9c9335fd593b88"
      "ss"
    end
    language "st" do
      sha256 "3bb997f14c020544aed81c5998960ba46e1f955abfe20b9747adcd568b7a694b"
      "st"
    end
    language "sv" do
      sha256 "f72a63809ce2a88498d60a7170f0f3ab27e07622eb1d712a90a03e0aa2f678b1"
      "sv"
    end
    language "sw-TZ" do
      sha256 "ee61295bd5ec4183f3efc7652305dfcf225d5076fddf2b5906d4c39c6d68c762"
      "sw-TZ"
    end
    language "ta" do
      sha256 "09f73f11b2433575f8411a70ede47772d95d19183071b5b61ac71ce7f70a8bfd"
      "ta"
    end
    language "te" do
      sha256 "7d8da0884ce87302427072c1eef2d17e864054d0ae79b43b9aa72fe4163582a8"
      "te"
    end
    language "tg" do
      sha256 "80f9ee986f11d02d1027e7ab4c28d439e5c1dc00a6453b681f700eae48b23db2"
      "tg"
    end
    language "th" do
      sha256 "22366dc72a7bd8842d24dcf515fcf06198a1fce806e6cb1de56289c20277045f"
      "th"
    end
    language "tn" do
      sha256 "6c3a7d2e37f1b9474e8bc2568f1627547cde930807db3b2fdd464efe4b6621b8"
      "tn"
    end
    language "tr" do
      sha256 "682b3abaea773d225ce7be21a5e839d0e42444ce52976f8c881a6878f37cd87b"
      "tr"
    end
    language "ts" do
      sha256 "17a75f0f1c15eed12832932e383129396ae5d3657f46d3f42e6c406ca16110ba"
      "ts"
    end
    language "tt" do
      sha256 "1a47b2487975f173419b9cbc4939138a475b9a2e741869c8fea8a583a6dbae79"
      "tt"
    end
    language "ug" do
      sha256 "b8a65a6119104e30e536c4cb392c5919e70f761fc938120a9627b3eef4112720"
      "ug"
    end
    language "uk" do
      sha256 "1042dd095bc7d0e97a0ceaacb4444c7d8b2270bc10159ce5e890a71cfe9a8564"
      "uk"
    end
    language "uz" do
      sha256 "faa377aca7c09bfd3bfeb6000e4d6b817906947a6760c2cb17fb6f609ed7ff8d"
      "uz"
    end
    language "ve" do
      sha256 "adfbb4d97def637860ba0c401c26012339617ccc294f25d9c76ed050fc65a85a"
      "ve"
    end
    language "vi" do
      sha256 "c3b725c1ff049b54752a6256c24fb8212b9ccbc58a690362e0961d2db7d4a867"
      "vi"
    end
    language "xh" do
      sha256 "09ac69809760a4ddbc0fb27f5659b908657201fafe6aae2d176bb5edfe46c91a"
      "xh"
    end
    language "zh-CN" do
      sha256 "c39142e512e4899753dc275af39db58b6492b8f2787a1678f2ddf20e431cd1bb"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "83db9990334e322be78ae25945e950963c29b137be16f6a7359c15e767bc6ee2"
      "zh-TW"
    end
    language "zu" do
      sha256 "caa484c36fba85feb700650ec23df7ef83810820cde91f414c02ca1f85c51722"
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
