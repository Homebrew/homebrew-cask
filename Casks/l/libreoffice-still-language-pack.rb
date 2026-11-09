cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.2.7"

  language "af" do
    sha256 arm:   "5431a0b59a820aaeb41bb67a643c57fd13f4cbd5a0afe4a7cb8f34e087ddf678",
           intel: "8f68cb3622ac6699660d45cfec74b9a5332be1b19e7a7ac203909772bddd3601"
    "af"
  end
  language "am" do
    sha256 arm:   "6f2b4463e8b0c371319ea5c347df24cce8fa5a054c3c2175742ed5139a385b90",
           intel: "4afdb780b166ac7aa349d4ca049f8c6b1b98887237b7ab52fedafb655d56931b"
    "am"
  end
  language "ar" do
    sha256 arm:   "9bb2d1d8affaa0a0ab2d6d89e8443348dc02bdb9521281c1ddfe7a487d5aa251",
           intel: "4518b3fdea7ac8942f28827f29d4d284b2c66fe15d2b9ee87027e62fab8b0705"
    "ar"
  end
  language "as" do
    sha256 arm:   "b17b624ca3e0c72502d692295f7e09671b03a4dc698968e0bb30c91305514da6",
           intel: "7b2403b07cde7fb675eb23c40d037540da2f77bba5951e3badfac4edab1cc536"
    "as"
  end
  language "be" do
    sha256 arm:   "d8282adcca0bdd0f62100babd786370a1350b2905630e73e4b8fab7a375179c5",
           intel: "0a5fecdbc25e5938048f8884fb28d96a82bbe692ed352ce2fa2723df2c9751eb"
    "be"
  end
  language "bg" do
    sha256 arm:   "b8632370dc8a1b20cf070c82a9660603092371422a237f5197a7215a55535279",
           intel: "4aa150f96484c848b9159ae5280c0b4ec04f95e9edfdf0f2f7e5100dbdcc1d54"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "2005fc92d9fed332a7d05ec2ba17f566261827c501e57eee6ee1114215ef32d2",
           intel: "2b75bb62668a9cb33ab23e2b53d17dced9c1190ce8d666bd96e88ba1c132161c"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "3cf1216919da979e025309b7465fb03a0e74b1251e8688e3fe5d435e3881d95c",
           intel: "382d643d7a24b7807fc81228f5fb68b57c44d6623f863dc260fa0314ba44bc17"
    "bn"
  end
  language "bo" do
    sha256 arm:   "10fbda0144d05dacc66ff409b1205ea57c8373e89f08d8f197ee5ceb7a23b00f",
           intel: "d73679b450c034ce82b4622f2c6c8b0a21674d7bbfa61435d07ac78d7cc55eed"
    "bo"
  end
  language "br" do
    sha256 arm:   "b8c59d8ca831c654331111bf1c501f2d0e4ba1fc3a2c22264fd54c1e022c062e",
           intel: "83456155a53ee157cf6d5db69d3668c7c2831900db556622d3a0897ca29691e8"
    "br"
  end
  language "bs" do
    sha256 arm:   "3b932fea0cf5c7c42dd9fe425832796facbb1cec153943ac6db06ccd12fbea4f",
           intel: "ee294ffb836684ab22841fd704b8cca2d23568c610f1d714653468dea0795912"
    "bs"
  end
  language "ca" do
    sha256 arm:   "8186dc1f2d67d56037a115310a93cc9e3363c3777c9b26d4c47a2c0ef30614f2",
           intel: "a3e16f16c3c5999eec316b6af5ebc48cb394723e7a767b0756b64d1f3ecd7983"
    "ca"
  end
  language "cs" do
    sha256 arm:   "fe280437bf343e8185a92085f9de3aaa164f95074dc15039eae25453caa5a02e",
           intel: "967a5ceb77581d99a0b7d2738e4e8319f926a15ecc23fc3e442a2926bfe908f3"
    "cs"
  end
  language "cy" do
    sha256 arm:   "841bd8617522586afa297b31b7886e179db8cc3d755eac6605b3836d03750222",
           intel: "bc541cf2d58f9b626aa5e05d9298e8c1c6e07108e539b5b8d558de4dcaaab31d"
    "cy"
  end
  language "da" do
    sha256 arm:   "75706f063be571f791354c2fb41f836543899ffef4c6a8613d4c95dd39f06207",
           intel: "6b7d1dcfc727a6a2d1d3d5aeea7d9790ad06daf001fba27120ac02312e2836b8"
    "da"
  end
  language "de" do
    sha256 arm:   "a0ee9863c050e8328c583acadb116d1e96485243ba13636eca5a2a79f4f7fabe",
           intel: "c0fc1a31e2af0e079c4c109e03f0a6806142e94115c6ee740e11f574441e93c2"
    "de"
  end
  language "dz" do
    sha256 arm:   "15cfa394d14933e850423ba642fd3ed50eb1d46d5241bff56d37105d4614290f",
           intel: "cbdf7736cebca6afb299ae5054db6e1f102340f0656f8dd1dea86239f186defc"
    "dz"
  end
  language "el" do
    sha256 arm:   "b2a637ddd92c131162cc936e29cb6b0f584fbfdbae1585b96d2438488b96cf0f",
           intel: "b0de124d4a69957ea3975aff4c660437d27228b916c6e4ec149350dc93660f79"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "d5abc959a60acde68fe05a0a2451da3ba7b829950bb74a18f6538f18db9aeea1",
           intel: "cd7489163f7f94e914eb9df235a41928d97cec29297e79b7ee80ef773eb220d5"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "842bbd0a954b22420ff50067c2dba44659b777319da2fdc922ec4b7efb6a25d2",
           intel: "6de4f81143cb51b20f92538fdf0cee32bb5b274b4a967d2da612bdf40321504c"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "64285630f8c3c5e6676e19904036fa97e348e4f2f3da21bba0f24c7515cb6059",
           intel: "502a5f5924dc5941aefd548889305c3c4946953279a9dbf51fb7561c5fc4581b"
    "eo"
  end
  language "es" do
    sha256 arm:   "3b250de65fe41697a6dd0927036cad280748813e48d036cda8181ef5e8342ee7",
           intel: "d232fcba286e91a55c90ab93cf6759a0f3024e3ce7b3cba05b0ada75f014e3e1"
    "es"
  end
  language "et" do
    sha256 arm:   "e4d49d57a7f380308a43662cefb772be71d52fb6051e46be0bac26b27fe9b654",
           intel: "11ca8e0f3ff1d43fbb4600998940bc19acf104a2a26423feb37f4e6c9b5ad39a"
    "et"
  end
  language "eu" do
    sha256 arm:   "808f5ffa6529a5bacdca84a4e938a8c0f0cb0e947e71444e34cf8fca42209714",
           intel: "e8dbbb87353957390b2fe46d3919fb250ff25568da628845c2a6649352c0bf66"
    "eu"
  end
  language "fa" do
    sha256 arm:   "ccf580c307e4863eece9d90ab48210076adc452cd1bd51cc3a3419199646c278",
           intel: "6a5f5dce2e73c57e79d9d8a004f11a38a555eee3fea967d71cb71e7af723f12f"
    "fa"
  end
  language "fi" do
    sha256 arm:   "4008ab4b1538a12c5e65ced59cbea8011b32a3dd91b1c911b88fe88f3c6a1fe1",
           intel: "e7ed8b808daa43a2d1f4e3675fae34e99b09228bda3e42fa56700b1fb7590bab"
    "fi"
  end
  language "fr" do
    sha256 arm:   "8233cfd8bfb8ed99b2e6f5e2795f9f1a270c51b039d10c4ade6e47f603cc73ed",
           intel: "38dd713e98b72f371d7a089072548a8a3e4bf8361b5b42794437748464af0931"
    "fr"
  end
  language "fy" do
    sha256 arm:   "094335b713785f39baedf1896b991ea48959689dc321ee1f2923811b9b5d04d0",
           intel: "6d5f3abb78093de48cc9539fc07646904b19cb603aff372f3d40af7d0bb52872"
    "fy"
  end
  language "ga" do
    sha256 arm:   "0d9df90bb33524d57afc8e4fff7c0bfaba911f10e8e8e920bb96c01fa82251fe",
           intel: "a5a745b487d4e353e988889994ead686aea96e6a936f92eacac4c9d66bf483a4"
    "ga"
  end
  language "gd" do
    sha256 arm:   "221fb5436574d10008232fa5df4e995493dd269ad235025d16208810d606280f",
           intel: "454bb837cfaf188876dc5f34437af9f4f0a15b23e21eb5295f34553c4673409c"
    "gd"
  end
  language "gl" do
    sha256 arm:   "e002fe49f4be0d06488acba78900d0878cb7c31bf2f71c2dbfb315c11aedc787",
           intel: "b06359538ab861c127aafbeeb6b48c0de59a5bd782552783bc93682478887eb4"
    "gl"
  end
  language "gu" do
    sha256 arm:   "51affeca759277f7956ff6169f9f4e190a9549ea90aef15e8eb85d13b791f3d3",
           intel: "0121872db8685ff76b2cfac41749745e7c413fe0bd9cfdbc73621d1dfbee9c96"
    "gu"
  end
  language "he" do
    sha256 arm:   "15dcf725071523e9c58087451296458816f2bb4afc7ea4ef6d2b67a5d3e5bbc0",
           intel: "6f058e0bc13f1f0f9c970934b86c2d6959e10fc3ff99ce0a90c51c3068293ea1"
    "he"
  end
  language "hi" do
    sha256 arm:   "ec2f0f8ba70385900d0613d0d995a2d44a9985fa459bef781d536fac088bdbf6",
           intel: "651bcaa5921fe8f0d05135758e421f9427dc21903f00a9d7e6af18a61fe53c33"
    "hi"
  end
  language "hr" do
    sha256 arm:   "cbf36a6e34bba4f14d365773750ff986aeb16f1d1d9ea85a4b30c8e0d0806e14",
           intel: "93d1c098a8a9c9f12f420bb891580d9c5ea82ce1020f33c1f7ea8c6a9184ed2e"
    "hr"
  end
  language "hu" do
    sha256 arm:   "62798a95bf6867939ba06af04e7a7c359f2a7af2580b581ba17c1a6efdfca30a",
           intel: "17fd922b408def3d78ebe9855671a60153c87ad070ac405cd0b90632a605a172"
    "hu"
  end
  language "id" do
    sha256 arm:   "7a6586a98965f40e96e684b2dc107cfc2df1c2b1b420f4cb000cf7b767a1a6b7",
           intel: "070a6bffc4cd85c6ba4e9da6c14308ae8f569a9df1555bb291dfe4c798eb47a9"
    "id"
  end
  language "is" do
    sha256 arm:   "07dff6a4687d162e82dd5051773d39876efee1cc95539f255e09b003be882cc9",
           intel: "6bb7adbe4f1a12e85695c6640b62ffa931e5c9056b2f3fbc7af4870e1623d2f9"
    "is"
  end
  language "it" do
    sha256 arm:   "d9379f4c9e71bc7f89df9b560e6d2409f9c0afdffa288bd9780b437ccf07f260",
           intel: "da0ee3cfcb063fe7c71e9671d0ed510aff974761c6b734c8a1d31a81d61e3c13"
    "it"
  end
  language "ja" do
    sha256 arm:   "26ab874ce1dc8ac3a59f7bbd58420df9afb328e98b888daf5033632fa888812b",
           intel: "80e091b7c9c8ffb6e001aafd3c2d129564aa7ec5d7fcf3790272d8b3b624559f"
    "ja"
  end
  language "ka" do
    sha256 arm:   "9a321d8de6d144586d376f912b8f77a3a6634309a2ce2f8f98ca022d152c11dd",
           intel: "e898bfe1e6cf31acae0861f8f9ba9de0da4165e44788572b2c08d816a9d84ae4"
    "ka"
  end
  language "kk" do
    sha256 arm:   "060648ba8c49360b0da33e6da509a7c3f990ed21b674d609bbe85976af3a96d2",
           intel: "65331b39f429f42b97fbf4493101351ace5dbe44778d5d22f87e6aa7110e2cce"
    "kk"
  end
  language "km" do
    sha256 arm:   "079c191d8609052ec45ae6dd480b314041856114811f4407d749b2565bb78154",
           intel: "c2e8beb9cdbb6b75b4d4da42cea6be729e3df9d4b0fa7c25be1289413549c9c0"
    "km"
  end
  language "kn" do
    sha256 arm:   "d2c0eb0fae67bcc4b9c8f38d0f4f0b6132c4e6ccc58868b426d42125eed37339",
           intel: "e10aa42d6af647ce9dcf2bbb08168862121aa03569ddd16df036e7c8bdeb3e69"
    "kn"
  end
  language "ko" do
    sha256 arm:   "cbc9479d07787e00dbf2644f2293182fea3a789568c8600a7775c64f8cd8a044",
           intel: "ef9589efd3d21832576d0ecf1406181cfc1fc1e6afd5d0b0dd839083c53654bf"
    "ko"
  end
  language "ks" do
    sha256 arm:   "efd70ed84b89aeb3a138fbfb94586732867cf3b3ee3084ab6dde095dc5e73f89",
           intel: "24938780cf0a398a5aa0d31b72ee623d6169b54d3f69c3feca29582649369180"
    "ks"
  end
  language "lb" do
    sha256 arm:   "eadf97b80d14bb6714cf3cbbe70338e3dd37fc2088490a2b1a2adb6fb7ecd32a",
           intel: "03212c75c12912959667cb3d4298cbb06ce41fbefb2ff98c5e1f91b8ff6861db"
    "lb"
  end
  language "lo" do
    sha256 arm:   "f84ff9c17115d71a8511af14d3a91a40b0cb0db642c8a2f5bda23f9491eb6436",
           intel: "39bfae227de1902d927bdf4ebd2b9de2cb7611a6b6d1b0bb1991267b8749e009"
    "lo"
  end
  language "lt" do
    sha256 arm:   "afd7e68637ec1a452ba8b0d55e3af462cb7cff2479a3acf5af3429f25487cd04",
           intel: "7b5bce58dd35f17325cd714a6810895d557cdd158aa8b3d9e01b27d38360144c"
    "lt"
  end
  language "lv" do
    sha256 arm:   "82731b5d69cc48cba514d5b6a2ce8cea0ddf66ba256e41717066416a579f9220",
           intel: "5df207446d6bcc5b8374691ed1aea6d43bb7dc2d041dc7b8376f086fe84f4929"
    "lv"
  end
  language "mk" do
    sha256 arm:   "e82efa007849fe3406f29a0cd17858454496be102a9d809ae208119f08be3c3f",
           intel: "84151613c963b7aa85e5ad2e20ca58c2c4aeeaa6ba9734225bdeccfe0f0e98c6"
    "mk"
  end
  language "ml" do
    sha256 arm:   "f828cd3decdf838ace7aa5a0b7fa9907c1a3bbb1fd7b5f9c7ef58a571004bbec",
           intel: "d6d8b80647e6f7cb9f2da6aaaca6160b0e9e8c7e74331fadd2da06ffd11da164"
    "ml"
  end
  language "mn" do
    sha256 arm:   "f272b3459d4834870807df0e328bf0d59f47fc831d1fecd737fb1927894f8912",
           intel: "5d20c5c7bbe1088f8edaa4f348d829bd56dc593a8c0e0f10f0ce67ae8ecf3b47"
    "mn"
  end
  language "mr" do
    sha256 arm:   "b2f8d2b7a37678cba682dc9b1e4e9c0db326436ddddbfd02e535cb4fc927696b",
           intel: "57cd76c1ec73dc07d5026f5cb56160ef1d267ad58289b97130b3c34861ab66d2"
    "mr"
  end
  language "my" do
    sha256 arm:   "f469e4f3ecf1890312f36c9a9dd2616672c898e94da0aab277df073cbdf9a82b",
           intel: "7030f2bed276348d85b7249bc752d3a0b2a032ca6c7ee5aa0a800f5daf503832"
    "my"
  end
  language "nb" do
    sha256 arm:   "60f4c524f7a052f126dd135092f164c58984e2e66e1bf9778dd3cb3a013afd71",
           intel: "a3935d471549742bd558d54757d650b03cfef2c5ab1ba8f58cc94f2e32844eab"
    "nb"
  end
  language "ne" do
    sha256 arm:   "d6155e5f03159f5cd5862638476ed67392e8e307d690edb1304146aed7686cc6",
           intel: "4e13f7f5ab814a4d176596e7b545ae81d38436425da49acd073c839991213c85"
    "ne"
  end
  language "nl" do
    sha256 arm:   "b82824c89831648bef1d64b050b2ad24220558a28da9dc2f5563de0c979546cb",
           intel: "0a65cae1a5b707a79eecd39926a922436bec5bbf51abc1faefd77471474588b7"
    "nl"
  end
  language "nn" do
    sha256 arm:   "d4a56cb92bb3e91854dd473e41892b8c82e057aa68287cd4ba98f7cb8ad11514",
           intel: "650a94b08e8f948813c76d5d5734702c771e4b9fab3d84d1d527cc79b6d45caf"
    "nn"
  end
  language "nr" do
    sha256 arm:   "1c76fbf639bf38ae614f131fac2b555ea1fea6aad7cb82ba94452fd22f1a3f53",
           intel: "b4624fb2979585525adb1a43954c4627a2c8be028085aed5d0642332712d3b3d"
    "nr"
  end
  language "oc" do
    sha256 arm:   "bf71d1cb0fb35d08d31987acf756fd191e91bb1747c84eb2f5e20dc97599715c",
           intel: "a3226e6007fd3b47c2f12e1ad3d8538980414310f7b2a25e6f40f58d1f34e3ab"
    "oc"
  end
  language "om" do
    sha256 arm:   "5ded6ffb8d2949b72d48d0fd9f456dd571944cfed4f7d65c2275deeaaa59434a",
           intel: "cda682adc82407ff1f605310e4b40bc3290659157524fc23b9779e783f6b49cf"
    "om"
  end
  language "or" do
    sha256 arm:   "0c8b84d5e960d50e37f962cfa11e0203ed583443968eed6a9d9d30b8c9b754c3",
           intel: "6e6104ebe3b009ed13cad49b29fad304a4c6dc15aa07502aac7fa7f35f056e5a"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "4d644b71ec6c083a81b3e05edf6d1c50e8a9eb2366c986caf2247384269a27c2",
           intel: "c2c606869a7a78271b7139593b59206614163620fedd4257c85a4fcadacd2681"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "bc25c79a3da131260af0b2d90ab955db85311ffe0f624bfc22a40392060a850f",
           intel: "7d14cbc9f1b2338e4c720a2ee11cc09ec9a3d4f65baa5ab74c33b690019ee90a"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "3cd7b72e6402b83cd1ac50a3ac5444ed41ec47188c06421c7b9fb28d55547a07",
           intel: "566212afb0076ff88298fdb51979bc8458351f76fb6642d5fd4956990ba6c8db"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "794c079fac81d68248c33149fb39f9c77df3df0d9b431580b17a3c704e89fa35",
           intel: "9d6b1a8263b5bd90a5218e6a9c1e7fdf241105a871b2a2e558e6f29f7df9adfb"
    "pt"
  end
  language "ro" do
    sha256 arm:   "5671212e759cce5907e4784f38d3b1e93119a73645321ff950fdb9a90f033cdf",
           intel: "267fff3fe861910df7e876bee04ae89d291866c3a6658d5266922ff7577f2018"
    "ro"
  end
  language "ru" do
    sha256 arm:   "fdadc1a055ff797924881c0f967db02027b40ea4c4fa238d10825da0444d7aec",
           intel: "b149ccf0d266c819fda8293d0915833257e6de47c5004a2c027881b37bac9df9"
    "ru"
  end
  language "rw" do
    sha256 arm:   "57123c1abcd2a659232b140c97a72253e3bea173cfdf75519c609c59d1ec362a",
           intel: "bbf2512ec164b2d0c48ac2d8be6254130ed034dd635d8572328c6478c965b1ff"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "06e7d5495b53d3b03b71b35e512741bd641f21e106d99b3ec3ac414229d348f7",
           intel: "bbbfbc01fa05638178a172112c049026efe3dba0012f98d08b0c63593efb048d"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "39cd14dcda44ce44b65c535613d688c714379d9b61797246f451088aeb77dced",
           intel: "bfcd637df11e45341c52385320b4ac725a7f123b3de309de59bfd3b2ec2af087"
    "sd"
  end
  language "si" do
    sha256 arm:   "e4d0ed70e043d42c6c447e603124f3d30175a280a3b85db9d2819cb656452068",
           intel: "fef953c97b5fe397fbea72c17386696d4fe3045fe71f11a91584bc9c1c2af64a"
    "si"
  end
  language "sk" do
    sha256 arm:   "cb3a7f32bd8b6980b3eb0479394eb4d7c913ed7856e6add2f4d63104a345e74b",
           intel: "b5573546a8c5ac9deabef8aca10cf86c5c1f42644d57abf2fdff3f6a668b0fab"
    "sk"
  end
  language "sl" do
    sha256 arm:   "be28ee63c00d5c8b6aea7cda36a6e702b2ac344b5a458eb9982c8cdbf911d256",
           intel: "ac2abeed904c89c0ff1f70e455fea47f00651a82bf1d48dbd109d5197c77195f"
    "sl"
  end
  language "sq" do
    sha256 arm:   "2f29dc44454f6805d3772090911a6ab312ccea952d08660b497125aebffd03ff",
           intel: "85ebc1a1cebb4aea778b2883a1d1c79b19fa63860e75d90414ce78a88446e2de"
    "sq"
  end
  language "sr" do
    sha256 arm:   "129afe99470aaf2f9922cb07dff59a715e6d2bbec152f24b28a9d8451d61cf56",
           intel: "6d2f367bdb117446e757053deb9be5645247ba52bb2872367ca9869fcd90991d"
    "sr"
  end
  language "ss" do
    sha256 arm:   "164643f85d60fc3e31de8f672202ac987123fa60fb3d1abb1b4c644112dea4b2",
           intel: "4b0ab4297a95a0a2c45b99a3fec3dcbefb5f87781672f482669f12cd6275b235"
    "ss"
  end
  language "st" do
    sha256 arm:   "53ad1c92ca51b33721be96f1d94f8b9835a9b04290664c3f5110faaabc6c70da",
           intel: "6f8f36e4fb17ce683a08b118552aa87f6a92d997a89f413135dbac30b0d5fa69"
    "st"
  end
  language "sv" do
    sha256 arm:   "904f22b7488a87db261beb5d6e96e057bc6c0e9e1bbeff1fd60a82c565f0de1e",
           intel: "ef3eebc10514cf3dc33983af31f3b96e5116f9374f43a21cf878e4f9522341ea"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "30d303535db6ad4bd304ec0491d7e54c6478d779301f5de4e387d09c5f042202",
           intel: "38dc5594ad4f9462b9b11ea4f6ce242d454da202d29a1c4a7432a671cdeed635"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "ab8c01c62cc5ccaa1f9426f52d91ef69762a7cd38bb3f2fabdfbda9ec35674a3",
           intel: "0e99390d802e85e5458518357794d94545cd850782ae9abf2e3312bf2e34cd06"
    "ta"
  end
  language "te" do
    sha256 arm:   "d247f548446f6fe75483915d75e6f7baedd58a96b787b22a4f1dd7d7728d7662",
           intel: "951c84b88519238909a1e2807b6fd5cb936b9ca42e4fc3d38407a85edc665ca2"
    "te"
  end
  language "tg" do
    sha256 arm:   "0732d67f36a9d4c169475a580cce57315eeb92237e90440d709988088cec9542",
           intel: "7791c531a9412a3bcdcbce9848baedac6f02619d37fc197c88c69c0f12a2c215"
    "tg"
  end
  language "th" do
    sha256 arm:   "5f5e6a2ca85530a677517212a493161359d10e06cc40196eb06ef30730220d6c",
           intel: "d33d93484077b207cd94835af408a03b29f17e30bc85a8f4e54fb1b65cc19522"
    "th"
  end
  language "tn" do
    sha256 arm:   "487244f138e8ce03f232db490a320b75775c863bd6da062707931f354ba6450b",
           intel: "6f8918c43d6abb78586e47b73b8073acc2f211a7ce587a261199c14c58b24a4d"
    "tn"
  end
  language "tr" do
    sha256 arm:   "1307601b0ad5030133be9c1ce1a152a9ff6b89ed0e0e4da8aaf9326af3f0800a",
           intel: "92f66a4a9f9ddc8cd471aec3a49b3ffb80eaa1e6f9635dcd4e7fb05a65e53f11"
    "tr"
  end
  language "ts" do
    sha256 arm:   "0b602e7d21e8def69c3442f9ed69e5ce2619878a49b6d69a1395d81a31fd76c9",
           intel: "e9e4e63a5b47e22a18f6f1ec03f3d80db54e6066a7ec15df66928b7cc9932dad"
    "ts"
  end
  language "tt" do
    sha256 arm:   "93b3366270dc72f3b1aea9045299bfa9712207d381985f6954442600f7e44da4",
           intel: "d4ad027a66a49e5dea0848ae341530009ace3e1f6ada3e8646675b6c1b158660"
    "tt"
  end
  language "ug" do
    sha256 arm:   "71560a937e531f4ed610d845f7dcf32261d3a25750c722d980e6ac61733f6de3",
           intel: "82cea2d468f8fb414c8364a5e93f8ee74da2614d095fd8f7d494e72712277fae"
    "ug"
  end
  language "uk" do
    sha256 arm:   "3f9b0867e446e9cd38bb45111178e66f35061f3117befe5d4dd05cf5a053c9ca",
           intel: "0dc5ef15bec11022ced18c064dc858c3f1f451838dd63f52d25cdc57b64bc093"
    "uk"
  end
  language "uz" do
    sha256 arm:   "d4add1bfa16c56a6a0d46d670a6dbcaf523e0fc221909f1c33fedc1fae9ea674",
           intel: "ba27a7f53b97bc774779ca35701a78a076da22e8a935ce33e8afda23c52fe356"
    "uz"
  end
  language "ve" do
    sha256 arm:   "de12e312d9b86645c0ebb233ada0f3392288aa51dcf54e10b9bfcbe8c0e9dc23",
           intel: "9939ccc7e8243df5397944bca746d77aaa11f0a017acb5f1dd7712c376867623"
    "ve"
  end
  language "vi" do
    sha256 arm:   "cb247ba3103df789278ecc2f1680d318db5d34add3a21b76e753074c8b6ad259",
           intel: "6d3e389e142c38bfdbbc309ac7bf9a72c35181a018c32993d8bb701a792ece5d"
    "vi"
  end
  language "xh" do
    sha256 arm:   "5cd71718ad865e567da58529d768163672bd5aae73eefa9b5bb73014dc4d1b5d",
           intel: "c9eff8ee34923a1554c96c6291f14b0b3b0249dd45c6742e8b68cd9bd91f2895"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "2a1e2df912c228291056c096b3f91864f15a8458b2092a020e147b644e1fd516",
           intel: "72d72d0e1d396bb5fdb94a402b3a1c72ba79547e881e9de8ef92f8b968297a25"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "fa7e2ca0317e428b7b39c217b713e3d2f299386cb4a17c2c8772c99c60f82996",
           intel: "e017a6fa8647c45b7abd942148ed39319b0df65b80174be63d8c51a3abf6e40c"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "28c0e10e8ee68a43f54549e8550c9b13ef3a635a48d5c954b82ac25bf9cea9c0",
           intel: "653bd705b15e32dc187dd1f1f6adc51769e408e82fcefbbb30e850129e3de746"
    "zu"
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_#{language}.dmg"
  name "LibreOffice Language Pack"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    cask "libreoffice-still"
  end

  depends_on cask: "libreoffice-still"
  depends_on :macos

  generated_script "SilentInstall.sh", content: <<~EOS
    #!/bin/bash
    pathOfApp=$(mdfind "kMDItemContentType == 'com.apple.application-bundle' && kMDItemFSName == 'LibreOffice.app'")
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
