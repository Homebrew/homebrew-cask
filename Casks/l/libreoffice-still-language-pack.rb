cask "libreoffice-still-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.2.6"

  on_arm do
    language "af" do
      sha256 "c851dbb8a012d44632b7d13ce6ea35eaab8059b501a7b0e2dbae3cb91d0874f3"
      "af"
    end
    language "am" do
      sha256 "365908f418ac979c27a30c9fcc428e4088691d152181149ea01bf3e4c8d65128"
      "am"
    end
    language "ar" do
      sha256 "16794de8d4dab552671240c726d619df6a91dfc71194e4a67dfb946ba49e4937"
      "ar"
    end
    language "as" do
      sha256 "526e490f23f4982de4f5c138b349b9f1228603ba9745e97657624870aaa19455"
      "as"
    end
    language "be" do
      sha256 "ea2341152e887162d93a7f760cd31ea4a5d3db8f27832a6344831214e4c567b2"
      "be"
    end
    language "bg" do
      sha256 "67a2c91bf758b5421715e4d94c5a93d96f31a2957d1c426b45bebe1b436aa4f2"
      "bg"
    end
    language "bn-IN" do
      sha256 "9bf84ec684c0826835d65a1992daf745913753d0496f85cddb664141f89cb28a"
      "bn-IN"
    end
    language "bn" do
      sha256 "9047030dfa2d9dd45e73caeabcec60ad111264f08fbfb4fe897b125dae76afac"
      "bn"
    end
    language "bo" do
      sha256 "9426e6dd8c78d266f1d3f869e312f9def47f09a60bd0e7dc33c5683e9bede9ed"
      "bo"
    end
    language "br" do
      sha256 "85d2cce85d7cf9394095813af24755986114f0b17ebb6fe16ec36bee2ea438c0"
      "br"
    end
    language "bs" do
      sha256 "f51635e7cf17f3b7ae0527560a26a5b401f8263fc520c69d4898c12ad4cf48b3"
      "bs"
    end
    language "ca" do
      sha256 "4132cbe6d491e2e3ccc459abd1ca48c3834c8cf694878e4bf7219047185068e3"
      "ca"
    end
    language "cs" do
      sha256 "59c01d2cc4def74e6ede8453ee29936ff06d951756d102547ba18c60c0b82d43"
      "cs"
    end
    language "cy" do
      sha256 "98750e79a2a48e17f5f8853bea7b42444811c9b6655295b47d38d27272503d44"
      "cy"
    end
    language "da" do
      sha256 "2a3411cd856ce6176628babc54b180f76bb2e6bab1a44a71e8d93061286a9e90"
      "da"
    end
    language "de" do
      sha256 "389baa6d276a1ecb3fa8d462cdf4b816e0ef04c80ef677160b209e023a697d9a"
      "de"
    end
    language "dz" do
      sha256 "9edfe466c135d9ba6fba2e0ea281d2dc56a7287e8a5336d1934780cb8c34d6d4"
      "dz"
    end
    language "el" do
      sha256 "429418bb1fab256ddfa0898b3e83248cd21bc3b1457396e0029eb71a20dfd9e2"
      "el"
    end
    language "en-GB", default: true do
      sha256 "75a2572507c4bb5bed7d36af87fffd70843298114a60e703b6fc29d37a75382a"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "8466485a92933f577a2e7720af389b7dc212a480e3474847497cc51441fb3496"
      "en-ZA"
    end
    language "eo" do
      sha256 "fe6bd74a1d7ac2d90bd5a9ce71e8b98c18370d12f549976be5a0fabefadad390"
      "eo"
    end
    language "es" do
      sha256 "161225c1bc995a84a31bfc363bcb851d8bed1a5772499b1e99aa883855475f99"
      "es"
    end
    language "et" do
      sha256 "5f626540fee62d68c9a9bbb3190949a692d40d48946e6e32579c1b48f1f23acf"
      "et"
    end
    language "eu" do
      sha256 "f21d85e9791a984e2844e90b7d76618ae93cf71ee8570282861fa2f3510d31da"
      "eu"
    end
    language "fa" do
      sha256 "6e752cfaf9b69660b3683392690d56aa9a2d990a854c9b9f6543bcf3112c42c2"
      "fa"
    end
    language "fi" do
      sha256 "c7055527b465372d26f8cd019ec9802d63d3393157845c95785a3d6e7cbf66ef"
      "fi"
    end
    language "fr" do
      sha256 "ea09e7b5a78637207549f163f3f5d19f5199c7bf0e9717df5c2d4a033d74afd9"
      "fr"
    end
    language "fy" do
      sha256 "95b2217d7450e1d1e27726661007a5f265d1e413315553e2d6b9af26cdfff8ff"
      "fy"
    end
    language "ga" do
      sha256 "dc7ae44210b8d29649aae6d117e81ab1ff0edbf49ba005830ad674acf717e8b9"
      "ga"
    end
    language "gd" do
      sha256 "54a4590fa094bea0ec0a05345b3997368533c35639439b611a109809dfb577b4"
      "gd"
    end
    language "gl" do
      sha256 "265061052432b264254119b59ef1224638d79c2dbb4a0e9876cb79a44ad5ec36"
      "gl"
    end
    language "gu" do
      sha256 "c3e4507dfffe9c27b272541778ef68cb3b37e5df3b1cc45b9912d9216d8907a1"
      "gu"
    end
    language "he" do
      sha256 "2baccd97ade11af3b08c9e04c332c8f865a52e8d86a4ff200dde8fc7ecf29f61"
      "he"
    end
    language "hi" do
      sha256 "67ee6efd70f69d039fe72d0e8ab7d5d45790d08bfddb07d650d9e2892ef70871"
      "hi"
    end
    language "hr" do
      sha256 "e85cdb05ff3efedf0b74fb010fc498d66e09604a191782770ebb59e83a2e05ef"
      "hr"
    end
    language "hu" do
      sha256 "339a42b341a49adfeec67d62c7314d635afb117dbc6557afaed9372679cab298"
      "hu"
    end
    language "id" do
      sha256 "23b8b0f23f59c86e965e79aa5d0615f24f8e7c9bd8121537afdc7ffd21753e20"
      "id"
    end
    language "is" do
      sha256 "1386ce29220e31cc942ce8eb3781229b2629c194ebf6907c8bf8565cf2d4f9fd"
      "is"
    end
    language "it" do
      sha256 "0f207e11909f4831b5169fe1e1a9a8cadee6711b02f7925f9ce41cd23c2bfc96"
      "it"
    end
    language "ja" do
      sha256 "37959e3c0e1b68132297c9344b906df66fb40e1eab68c13bad26ba9163137511"
      "ja"
    end
    language "ka" do
      sha256 "bf031f94a1b403ee6b93d31c94d638c8fb37b36f9edb327decdb2e8f6cbcfb74"
      "ka"
    end
    language "kk" do
      sha256 "8b117b048e5119a951d13f03bb1e4a4bcdf93b97387b3b0a3e55815e96dce764"
      "kk"
    end
    language "km" do
      sha256 "f703af23556c296328754d355df5e14e8ce82bb1dd2d7e57a3a13db74c74baea"
      "km"
    end
    language "kn" do
      sha256 "3cdc835f07a5309ceec4c23babb06df3fbfc52c1327a080d591cf97e0b55561b"
      "kn"
    end
    language "ko" do
      sha256 "5201bd8e4272d846cd31544e98636e5b63f927d7c6d51f3f819aaf3fd347f1f4"
      "ko"
    end
    language "ks" do
      sha256 "8dd8f63be1bbc7b2c8401048fb24a1ea82db0dc195ce502dde5d7d6272d97155"
      "ks"
    end
    language "lb" do
      sha256 "07cbcce2ac1d8bad7af9ebd0271442b658b72dd0ef7efa4381a747aca29ed5af"
      "lb"
    end
    language "lo" do
      sha256 "e12c94c4294ab6eb532dfe5a39c8e7305b67c0277ad178669ec3b3f3f8a00b9c"
      "lo"
    end
    language "lt" do
      sha256 "bda061c61655251ed317a114978e72f7c36ded3789fbb9cd8807884d5b57e738"
      "lt"
    end
    language "lv" do
      sha256 "4d641c4ac20222bd6f18d9c6fa1dfa9c65c0b402c547101d9c5021e1a3e46ae8"
      "lv"
    end
    language "mk" do
      sha256 "bddafccfc7018dc6e11655700f5cae66a1bc3e5ed13452cdb36c1d5ce5cca425"
      "mk"
    end
    language "ml" do
      sha256 "cee1e13a4231f4132184cd7432179ce3ddf861817923a970c9c50e1dea9395a9"
      "ml"
    end
    language "mn" do
      sha256 "12c39d958b3b47139938bca499aabc2601834eb7104debe2b503c54fdc49e530"
      "mn"
    end
    language "mr" do
      sha256 "675136a0a9c771695815b077b3ea92b21e2d9480efda9a0072a3b286e8d78764"
      "mr"
    end
    language "my" do
      sha256 "8536f1ecb6e8ea257435d2c46e5d28d3f39684decd461cecc49305379fbf69ee"
      "my"
    end
    language "nb" do
      sha256 "2c3357e07007ec89e3abc9d26ce24d20a961fe01b9ba5904f8818d731b05bdaf"
      "nb"
    end
    language "ne" do
      sha256 "62f0e7046d6dd38d461e4853cfd9ee268913e0f1a4f8084509b1b7e1ea9650f6"
      "ne"
    end
    language "nl" do
      sha256 "2e426f379e76ff03d147586a1b686ff54e4f9423b8ad6f81a5a765b0272d1c19"
      "nl"
    end
    language "nn" do
      sha256 "2bef1888c22ddd6d6dd3703fe870456e3c62b73eb73a8d2c0240f5c192ac6144"
      "nn"
    end
    language "nr" do
      sha256 "ac42eb81b0173b2b4305e21674437a39a612606376b3d48bb120ad289341dd1c"
      "nr"
    end
    language "oc" do
      sha256 "918d3e647a573a8b233d1287055a491c1f84ff68f68f52ec54b6daaa27813c78"
      "oc"
    end
    language "om" do
      sha256 "532d44d4e45199fafe7eeef1547a2ec56cda18a4691de7a5db6305c76aa6e7b0"
      "om"
    end
    language "or" do
      sha256 "b6ab2651de7321b3006a916bc3368c7858d6874b4d9dfed2e48964ebea6c71c6"
      "or"
    end
    language "pa-IN" do
      sha256 "e1937f82b81a69323b91203bd805baf20dbeeac725e5e75eb5c4f4d29c4deba6"
      "pa-IN"
    end
    language "pl" do
      sha256 "3d8ca7da0c5a3e1b48b8636435d4a851f0e1f8e13d9a4c8f07437f01d4adb5d0"
      "pl"
    end
    language "pt-BR" do
      sha256 "ca27ab1951569e6c43794f7664e03ef8e710e6c83ccd2bd083af35690eb19e8d"
      "pt-BR"
    end
    language "pt" do
      sha256 "07f8a985455d9531df01eafae6535297e75a2782cf5aa34da255eabf4706f877"
      "pt"
    end
    language "ro" do
      sha256 "3e189dfba45935edd64ab6464b8253007534c1f64ff06797f46f7a58d45a39c7"
      "ro"
    end
    language "ru" do
      sha256 "9f2232dc068db25737b2b651b3f88ef64f4e5d119c0d4e471b5377cce3e79126"
      "ru"
    end
    language "rw" do
      sha256 "b4773a7189c4ee86db50c36110d5ceaea4dba60ccffead29116d784a8373a763"
      "rw"
    end
    language "sa-IN" do
      sha256 "f0c470890b8139774fbc0f523bba41846ee93f144cfea5e08e434d08a2d5a738"
      "sa-IN"
    end
    language "sd" do
      sha256 "bcf90cbde77e85de49c51011f1a5ab73dfe1daae7024b9fcb797ac90bf62243b"
      "sd"
    end
    language "si" do
      sha256 "9a1f753b8f55dbe1c2fbb3ff49f748399dccfee34f3ce3783fee329bdd6c0c15"
      "si"
    end
    language "sk" do
      sha256 "d6a2a2c1bff6897c36517286c825f26b4ef299a4641969249c1c7e90e4373b4f"
      "sk"
    end
    language "sl" do
      sha256 "18b439c296e0014c48b63a8361e242efd18ae3b2ef576e1ca33014423966eb50"
      "sl"
    end
    language "sq" do
      sha256 "589b740046ffe19abf915ceb2433becf9a770a529f3a513480ef2a61343fab7b"
      "sq"
    end
    language "sr" do
      sha256 "5afef01a56fb7738a2dbbf630bf5ee9a7591638e21583d76284ba1232ad1181a"
      "sr"
    end
    language "ss" do
      sha256 "12ff07206a1a8af4cf84a4766d05118a755510ef75a66891f3f9d8439611419f"
      "ss"
    end
    language "st" do
      sha256 "99e4b9ba04c6363c38de943fcb86a9c60852cae04d36f2b63700ab86526484e1"
      "st"
    end
    language "sv" do
      sha256 "3dc6707f431b2ac78f5c0ab7ad9959b9d13b30bae71aca7f21c50d11d86b4379"
      "sv"
    end
    language "sw-TZ" do
      sha256 "be780b20e565fe4477e9e723022d0fe5f11b7104fb9dbc4fa9fa14d0dd2ac167"
      "sw-TZ"
    end
    language "ta" do
      sha256 "fce374acba5d2dc8658f51734f98da397c196aa40c596fd0863bbb8fa46cfda7"
      "ta"
    end
    language "te" do
      sha256 "021459d54994d70d74d1d1c8d92a68ddf7384f6534f780af0bcad517a45c50a6"
      "te"
    end
    language "tg" do
      sha256 "30202abf81e592a07f151f4d56f856c33e037e8f3b4d7038e7750861448a5869"
      "tg"
    end
    language "th" do
      sha256 "89033ec5c10ec9458282320d4ed3834d0fddfb95f52970cc4bbe4657673aeaf8"
      "th"
    end
    language "tn" do
      sha256 "7ca6ce99f8391d1d4c5bd38c83bef47f2f3d118ed85e9ffde4be07931193e038"
      "tn"
    end
    language "tr" do
      sha256 "567946294fd491517fc5fb840d0806015ae83c563574f3db979c2ba94eeff71c"
      "tr"
    end
    language "ts" do
      sha256 "0cb8ff09aacb9d359cd2e1735cf753a1b2c92944921e4b7b8fea23ff4c772be3"
      "ts"
    end
    language "tt" do
      sha256 "a7887958088336d15dea980b1964db02ad63658810857052bbf21f41fd96f15c"
      "tt"
    end
    language "ug" do
      sha256 "d1fff01861e5778d0af668c6986481bd759852350bac16cbf8a91453bbc4032f"
      "ug"
    end
    language "uk" do
      sha256 "38de9c957d4df81fc409e28ac0c9ea2d066dc1d63b895892adb8825a574ee145"
      "uk"
    end
    language "uz" do
      sha256 "c0f336fdcefd1e2f53c27b370ef39d6429cd81b03f708d5aed59210e89be8783"
      "uz"
    end
    language "ve" do
      sha256 "c5a8732b58ade5e5ab06dde8526f842cd7af92bd64133743144721675e6024ae"
      "ve"
    end
    language "vi" do
      sha256 "a9b4fd7132d644d4129fc98ac7a7e4d0b9fd5cb41e76ef1eefe6031eb9e77838"
      "vi"
    end
    language "xh" do
      sha256 "1ea59d9e53ccb8be21f755b64a9fde01a8c9da70537387c82f6516b692927cdb"
      "xh"
    end
    language "zh-CN" do
      sha256 "3650dc3e6cbbe18ce695325fd1fffabc287a6e9105fc7359ee2e55237baa2fb3"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "03a547739d4b0f8e30957495cef371614dec04245d6fb6bae926d6d4b828a4e1"
      "zh-TW"
    end
    language "zu" do
      sha256 "d48857712ec9839daebd30d48183902f56df71a4dfc61b4beb74c170d17aaaff"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "61aa2710c726cc053713590b7d80f0216ccb13ce08f59420a3307df5fd2713c4"
      "af"
    end
    language "am" do
      sha256 "b2eb2d1b20dd6de52c3028ba59d49ecd97af72114310af70e27cc53e09093fd3"
      "am"
    end
    language "ar" do
      sha256 "f09821d04edc9c1c75344fd686644fdcdeac5059b8e1c6f7fe36b95267e67a04"
      "ar"
    end
    language "as" do
      sha256 "240db81b0f028c7462b2e47492a4fc826bfce3f507cc492556c680b1982c1304"
      "as"
    end
    language "be" do
      sha256 "e4983dc0d3d5ff5e669bbd5c1dd0d09dec1f1524de3c96c4511dbfdc056447f1"
      "be"
    end
    language "bg" do
      sha256 "e45bd9a9f1bf22ca9a5bc7a6b16297a97b9f15551f9aef6995ee3057ac4ec7f5"
      "bg"
    end
    language "bn-IN" do
      sha256 "8364ddfb210b8eb6af21299e4697d309e4f109c252faa0251636a0a022e57454"
      "bn-IN"
    end
    language "bn" do
      sha256 "b48055ff234fdbc1ca0f9486143893e2ec85048ce0940dbc9dd2fde55f022c7c"
      "bn"
    end
    language "bo" do
      sha256 "755d499cdd84453070a0ac12ac68b7bf3652bd59dd428810ba0c8cb024e13677"
      "bo"
    end
    language "br" do
      sha256 "e875f10de0dd3a0d802786d183f44867f90b954763a0d5484a4fa62cbe841686"
      "br"
    end
    language "bs" do
      sha256 "b65064e633d0f288e29b06cba788654cd9b6f5373fa681de96f2af115e3a8278"
      "bs"
    end
    language "ca" do
      sha256 "57ef87b3becfb879d1496dcb9ccf38336c24d2a2571ff8f258d8d49a24d763f2"
      "ca"
    end
    language "cs" do
      sha256 "390513603ca725312d5f0181b219cc78b93136a30c2dbd0f57c1192024525d7d"
      "cs"
    end
    language "cy" do
      sha256 "d43a4e6b3a1688fffe14b84145e72532380bda4ee0b1aec4690e440fd1c50ae4"
      "cy"
    end
    language "da" do
      sha256 "da72d648ef6682820186d5014cbc98b9e589da3b9ec9a9f30e5caaa23eb38a97"
      "da"
    end
    language "de" do
      sha256 "3fcdff0f574c3f833bfc99ab1ba7bb9b3c98e16501033c8113b6bdfd2bc0ddae"
      "de"
    end
    language "dz" do
      sha256 "b4ff05c309d215a643d52b866270fb391c6f87fa7939fa593984cd104bff526d"
      "dz"
    end
    language "el" do
      sha256 "b98257df2067d166fa7a1c0fc9328aabc8d5f83316f6818e2cb9cf67b3312401"
      "el"
    end
    language "en-GB", default: true do
      sha256 "a8b97d79d5ab7709a91838551b090158c674b941467e15f317e5ede6d3318ea2"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "681eacdf2788a5cc326d997a47b3e5920483a9024a153ad0178b224540170fb9"
      "en-ZA"
    end
    language "eo" do
      sha256 "7c8205108f2eba7a2508e03c2800decafda3004e1e50ee92d56b1caf72004cd4"
      "eo"
    end
    language "es" do
      sha256 "40e8dbc4ff58fc208536186672a23b0b74cbe6939817e12aaca0c23b522b70b0"
      "es"
    end
    language "et" do
      sha256 "26bdb9a022da0988f85cf1952155ae85f09e567109a42f81ff764e71353217db"
      "et"
    end
    language "eu" do
      sha256 "16707b2ee954c5c2c84d77d01c0766df140126cc934d32651059e9d845e6720d"
      "eu"
    end
    language "fa" do
      sha256 "b6e5ab2c77953c2e38c90a40ab1e47bc5d46e1113952f7ee5d4a9bedcadfee2b"
      "fa"
    end
    language "fi" do
      sha256 "52cee67c3b994b52d3bafd495d21793e5f386022dcd41dd2e98524b55eebb7c6"
      "fi"
    end
    language "fr" do
      sha256 "5a7892a701ba2d7f824883b9848bdaf4856ddd9740544ec6e6f096c12a417b17"
      "fr"
    end
    language "fy" do
      sha256 "34e5f481a29991df83bbdce7fe0744540cbccb38b6f8b9dc885ebd92268a959c"
      "fy"
    end
    language "ga" do
      sha256 "47a97994b0df6cf9294e293cef54cb520bd89dce5cd268eb8d7f150f7e6053fb"
      "ga"
    end
    language "gd" do
      sha256 "814b8cf269c0c054a1ddd2c32af53a94a7e9342fe9f9ca22f12f9d43163d69f4"
      "gd"
    end
    language "gl" do
      sha256 "11584228cde06e9d4967657ff2d7dcd2092ceca9537055c50611d27a501d6c94"
      "gl"
    end
    language "gu" do
      sha256 "3aa0cc398335d41095ac43f18361da4f33c6dbffa806255e7a278a59661a9586"
      "gu"
    end
    language "he" do
      sha256 "7ac15f20508c536f08f1c925ed3f61219f40f2622cd3972c963e2312c4a195c2"
      "he"
    end
    language "hi" do
      sha256 "b0f3665f41ed4cd4ae875d8d825321ec78173d2c91af953818cc96d8530c8e6c"
      "hi"
    end
    language "hr" do
      sha256 "c0be6f0499129e6b1592ce35f89ac26abc97e0c2355f69a46899b6d124fc9df4"
      "hr"
    end
    language "hu" do
      sha256 "4682b01c9581b502a710f567d2a510dc352d6d875be52dce75fe18adf6182644"
      "hu"
    end
    language "id" do
      sha256 "2a045e9de5dec072cea2578a00d674dd31307a0c0bde1acfd2d472f97183fa72"
      "id"
    end
    language "is" do
      sha256 "2200182d6e997e161961dc189bfde6779c0f7d758f8747d654c85ad1effb4e71"
      "is"
    end
    language "it" do
      sha256 "a6a7bb951dceba31b9eaa8989049f61df9348c750c811301b6d4ca950a05f4d6"
      "it"
    end
    language "ja" do
      sha256 "1ff2a949be37052d0e50def7cae9f7104f161e65ff51922bb31159eaca27971c"
      "ja"
    end
    language "ka" do
      sha256 "e945ce4a4f7ced72a97d4c7c07ed2a14873497e6b9b629e418b6e968dc0d7e67"
      "ka"
    end
    language "kk" do
      sha256 "d3acbfcd0b2b04d841cc70195aaa4b71490d2f33593015c206cd37130c1272a0"
      "kk"
    end
    language "km" do
      sha256 "d3e70f8fe76fd9e0d8254f65afbea2d5e8005134406c7e9dad76ff67acda72b9"
      "km"
    end
    language "kn" do
      sha256 "bf358c20da47dface5418da38d769dc2e2e7754a45b68166786818a6c097a358"
      "kn"
    end
    language "ko" do
      sha256 "9b7bb48dc27533cafb544b0db41a05f88977c7e176f7fcf96a5f961fc8bf3584"
      "ko"
    end
    language "ks" do
      sha256 "2e2c8fba2e0c3e0d5415e89110c9a1f3a34fec30732603d9d45e430be32838f3"
      "ks"
    end
    language "lb" do
      sha256 "b918ca7dbedfef57a94add153f62ed901565c0755c3c70dd3a37e00457eff938"
      "lb"
    end
    language "lo" do
      sha256 "b41d1889018af5f409b12594ac863bbc7e30537571cfe284bf0b64d81071d266"
      "lo"
    end
    language "lt" do
      sha256 "57ba726ce2fe03dc20c601af28dd7d00e7807a90f280cf105c180039026fb47e"
      "lt"
    end
    language "lv" do
      sha256 "ef23b15255c254e465750d15cf1e4fc13e51e06f1a7f65ee75211405d4420066"
      "lv"
    end
    language "mk" do
      sha256 "9aecfe62245214fff0fe7a2102d24a6554d531aee42f9f842e73835eeaabde1e"
      "mk"
    end
    language "ml" do
      sha256 "e75945265aa3ece07210bce554299bf2853a16ad8b4220816e163d09f4330aa7"
      "ml"
    end
    language "mn" do
      sha256 "b4836c7f2f2e98e7cb034db1edfc5ae67b70831b67b3f401234bba08fc2a40e2"
      "mn"
    end
    language "mr" do
      sha256 "635af9df7529e0d9b9d2a8523b7b15f7d59619c0fd0703a19a8a8255b8b5af76"
      "mr"
    end
    language "my" do
      sha256 "7b5a68b2dbe7b10ef76b94cd6aceac9e53690cd18fc463c1e8cdae3a2123c32c"
      "my"
    end
    language "nb" do
      sha256 "30ebbf89afecf26540580429761ed98502f72eefd4243a04de22305be12ef3f1"
      "nb"
    end
    language "ne" do
      sha256 "024819914a3517593ca572cf27543eec163217aa372af67a42fa656d0a6ec9bb"
      "ne"
    end
    language "nl" do
      sha256 "1365b63311e70cd5fa49faa155a430afc77498454977ee5974aa5788cd9c6da0"
      "nl"
    end
    language "nn" do
      sha256 "0ce5b2d0331e047ca34e24122ea68304e5f4ad426dc1c434673d2aff724d4e5d"
      "nn"
    end
    language "nr" do
      sha256 "d0c7f0a890618c6cf2e1e8c34aa72f549037671c7a7fbb0399737f75080a0d15"
      "nr"
    end
    language "oc" do
      sha256 "cb3fbd52290e521d0e59d6a3e64317be1edef9e0e3ceeb048314e1207dca17de"
      "oc"
    end
    language "om" do
      sha256 "54da7621ec2aedd8b5fb1a0d1c685ae1f230b021eadb8fd010d365e71427b289"
      "om"
    end
    language "or" do
      sha256 "c6bd8a6011ff993ec558c4debbf53be5a46c869f1c6f3c89b8057a34c7751f2e"
      "or"
    end
    language "pa-IN" do
      sha256 "48429241e77e2d37df56e7dd171d05a905a085c10a95372359995e81296c9cd1"
      "pa-IN"
    end
    language "pl" do
      sha256 "4ee54d576e8c2af341e76c53673e40c2e30a4a88718c8ae46d9e1a8bb230f4b9"
      "pl"
    end
    language "pt-BR" do
      sha256 "a162588fdd9c200b8be37611113147348865fd45b047322c4830b323c1bb1442"
      "pt-BR"
    end
    language "pt" do
      sha256 "6044379b8a1483fab3b81a9869edead45e78a9723fbe7f75f6f24fffd6107105"
      "pt"
    end
    language "ro" do
      sha256 "c84fa99026cd6798e24f4fee5f061785c65bc82f2a46f58765a7ae0946462f26"
      "ro"
    end
    language "ru" do
      sha256 "1cc399a70337af0b42006ad991e2ac23d758dc78e9357476e627064783dde28c"
      "ru"
    end
    language "rw" do
      sha256 "93118dfbf1cfa3b3a46bbd03b4f7245920258dbba1bb2f03ac6b50b29ee10fcb"
      "rw"
    end
    language "sa-IN" do
      sha256 "2c72a384f8f17be9ca8534d315058e0bb5cbe402d3141c1206992821f8ddd359"
      "sa-IN"
    end
    language "sd" do
      sha256 "135637e5e3e6085e32292c3111c5243d9ab191d21430a91ffe45acf4f509131f"
      "sd"
    end
    language "si" do
      sha256 "adc49b4ddd1399815204a79f8b7a5b970bda8d110d10abd3e48fda1e8922886c"
      "si"
    end
    language "sk" do
      sha256 "07b9dbc5851d34a9c9d4c0e1d446c2f9c41577e2227b6813eda7c40e117626dc"
      "sk"
    end
    language "sl" do
      sha256 "6b26d46355f81f6ad75175b5df4d14fdc107e189acb40f6887c0ab9dc15677dc"
      "sl"
    end
    language "sq" do
      sha256 "c35e2a958af75c0d79f2381663f81ef876a3524f55deebc09f81b04418818e8a"
      "sq"
    end
    language "sr" do
      sha256 "2a84b0f911b969fedd81b54ff0c7790cadeb642ead687d9a027073cb077ef46c"
      "sr"
    end
    language "ss" do
      sha256 "135e058f0398f92eb4f05846b86ac6ee30834896a501a39f6459ac52128a04c2"
      "ss"
    end
    language "st" do
      sha256 "448a2ba36b3ec2c3965e9cc9fbb949ffbaa0d92263a21c70da71e47b0c9762bc"
      "st"
    end
    language "sv" do
      sha256 "c8cadefcff63d785ba2aef09b166f1772958b6342a8037d8d767c7581f29e261"
      "sv"
    end
    language "sw-TZ" do
      sha256 "cca3766b804446d05932049f1e9daef1197e1b6260f4dcc2c1c457f9f98d321f"
      "sw-TZ"
    end
    language "ta" do
      sha256 "5007dc7ea723f41e8ef3b4b9c7120c45f94916853d998878bbf28d1e8e11a284"
      "ta"
    end
    language "te" do
      sha256 "175decc08cc96393f7c5203d680dd2c0630ae2a78dc51f8a7543c1ddf7cd5170"
      "te"
    end
    language "tg" do
      sha256 "379b8bd15fabe92d0236334d44509800c4aeb495ac248b818b4a2948499d7ddf"
      "tg"
    end
    language "th" do
      sha256 "944011c53bd3ef099c3071692e3e347ed15201066c9e058505a99f1e49c410ad"
      "th"
    end
    language "tn" do
      sha256 "1895b36d4136437b5f604fb6ab31a4abd04e0942421632affea7f084156ec493"
      "tn"
    end
    language "tr" do
      sha256 "3db6e1513657a53974b5870eafa002707b0654cafdc8610af932402bb415fcfe"
      "tr"
    end
    language "ts" do
      sha256 "2f8085583b7b642808835faea3611001a2e81ff695d66994b825255d268ea854"
      "ts"
    end
    language "tt" do
      sha256 "33ecf4bdf75be4c14b8c305a58e3726c5137e6a6d17b0cfd371662b981459ecd"
      "tt"
    end
    language "ug" do
      sha256 "53cd03bace37a1ffb158d4dbffc249a2f0a2633d356a17e8622b213b50e5ac93"
      "ug"
    end
    language "uk" do
      sha256 "77893f8d0cffebc6fb8b7a2ddf0b571daaf60ee9ae7bc8bb0b4c1979a600ee5d"
      "uk"
    end
    language "uz" do
      sha256 "4774027bbe9a8bc8a0411495819f2039af906d042b067e7b4ba89e49e7ca0714"
      "uz"
    end
    language "ve" do
      sha256 "947948888dd865f18571887d011a006aff853bd7fc535dcf5ee0bcc0aebe116d"
      "ve"
    end
    language "vi" do
      sha256 "8bbbc32a950a8cd0124a9ea8d46b6dc422d8ef0f8c2b93ade154f13038c52535"
      "vi"
    end
    language "xh" do
      sha256 "82fe4867397cdd1e06ae1538ca61a2827d084a13fdff4a25731f799d3503ef6f"
      "xh"
    end
    language "zh-CN" do
      sha256 "965337d48d74150ce7698b9f110a84c52799297f209a246df1dd363ec8fcce14"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "3f9cbd29930f4f515d987e7d7cc4b31110b16497791367f8ca44d01101926fb2"
      "zh-TW"
    end
    language "zu" do
      sha256 "c35739dfd6d15aa78e0e2d0221d4b2a2fa9f7e6059f130ee8387bda33b0373bf"
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
