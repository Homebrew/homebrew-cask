cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.8.3"

  language "af" do
    sha256 arm:   "950dbf32e98afac6758c788cfa51601dcec084d146b06fa8762efb6b5960b4e9",
           intel: "6c7fe72080b6095a6cb0036f44bb4608822f57c5cc8003a9d8944df244b5d3d4"
    "af"
  end
  language "am" do
    sha256 arm:   "6bafae05702587ba4a603744441bea3f69a23f362f348acf655445cd10e1b187",
           intel: "d8984531c823354a4d4cbbfef0414b8086885ca3ab19e3048572b20def884bf0"
    "am"
  end
  language "ar" do
    sha256 arm:   "3e49b236a0897eb372efbbeaf43e29a8f84b4c9c59947ac7b7af2fc535d71096",
           intel: "c8ec61d90bd92569ea74d0e3901f84ec1972180f48092b0b98e5e2243a168aab"
    "ar"
  end
  language "as" do
    sha256 arm:   "6efae8dafbb1b6960db33cd1446f0c6af980811287f07153c72abbe91d044163",
           intel: "3a17f2b12299ebf711514200c4e73ba6d4619c657bbd724a6ddd6c649ae09c48"
    "as"
  end
  language "be" do
    sha256 arm:   "d381ddbf6397bc03b98472d34018e08f09611c5380be2f275a2dacd2a5dc59b8",
           intel: "a3433fd9b1a788dd278a45177185ea4ace75d0f177fb755600e02f5fde92998f"
    "be"
  end
  language "bg" do
    sha256 arm:   "e466029005d79dd61cb5306cc23af8da13bf2bb3777b5185429bde2126545400",
           intel: "d5a4b966c46bb64469add3fcde1a73ed0c574411973c392a36ee14e45576c817"
    "bg"
  end
  language "bn-IN" do
    sha256 arm:   "637fa8c4ad79b4532ed752122f6256e4d2d92e6f6d578289a1281a92e8d23637",
           intel: "6a56699a2a361862bdd6b028e607b72888cb5189af1369b697fc3e8a8cc7ea5e"
    "bn-IN"
  end
  language "bn" do
    sha256 arm:   "5877034de7763f1e365ef59658f073b4f76466d2a3755fd920b35ff5641fa3ce",
           intel: "a7716457b4098bcd2818dbc464a26ca457fdb4b774252076dee08cf52415385f"
    "bn"
  end
  language "bo" do
    sha256 arm:   "fb3e0ee118c966d41aa2327119cf84a22add46a599b412c1c44c6adb0c731d62",
           intel: "c4e04c32488e1771061caf97286ef225e04654ff5bedfda2b9f6b6a93f7def7f"
    "bo"
  end
  language "br" do
    sha256 arm:   "ee6b34e71aba5f81683118606778d55063dc103b80f9e85890738a2e6774999b",
           intel: "b46aa1543b3a15d121e357c4ed35fb0937fa8ea949b168ba83599c11a1e80523"
    "br"
  end
  language "bs" do
    sha256 arm:   "e0de330f739749bb68ff6df1e32aeedcce0fdd4f0ef3a6430ee31e0ad3897adf",
           intel: "72bcc0d0d7f57493285b84e9657ab556bd979be80035a0fa83e542ffbc9ae448"
    "bs"
  end
  language "ca" do
    sha256 arm:   "52c035bd87bf489fe58dbbdd4cc0ddc82cc323f8b9d31a731f1d29b17eb5874a",
           intel: "413ee798988ba0ed4f67e7021fa5c258c9104b91056b7adc7be0bb6151d78ac3"
    "ca"
  end
  language "cs" do
    sha256 arm:   "2ed12a968cbec374f3eb8a95b0669e604aee5c4efe672c5ecb30f79ea814f049",
           intel: "900105c0a8a47b3a5422a81bf16c1ecc10b667c9c1e4c5d4868bcb93bb4856c2"
    "cs"
  end
  language "cy" do
    sha256 arm:   "961296942dc70601431d486fa9d4d42eb03ba246d2f3ed6abdd19be74185a408",
           intel: "61078bfe7264ba5151eccf4331cb64eebc3bebc7743145c1f04d88a49a7a5448"
    "cy"
  end
  language "da" do
    sha256 arm:   "c2f6db41c6a2aff028f8d88b060d93c6d9abad99b3c3b6b6c79b3aee6164ac8f",
           intel: "ba4ccbbf123e72f32580c5be8351ae54663494e6e06fb664c6377f207b8635e9"
    "da"
  end
  language "de" do
    sha256 arm:   "9365507e1bfab1018bffc4790148875e0399bb3b35fba7627067bb612d63e1f2",
           intel: "7cacb09ff41b33168bb59b549bcbe73a079a8801a78a6ce2d4787320e76c84c8"
    "de"
  end
  language "dz" do
    sha256 arm:   "2846ef59228d11c325ede653bb326acdc050496cae7284316eb52b8d84aa0dfa",
           intel: "0e317f3cfce7f56fb2e517b34932524051d55896baa7b7c89fc8483a33419109"
    "dz"
  end
  language "el" do
    sha256 arm:   "be1c5180739e84aac2a48938011cfddcb7b6852d2dbabf27b6878b2e41c11af1",
           intel: "d95ccf11a4ef1239395e1e81c13588f74835cf1ac5f85ab9446dd7579541d485"
    "el"
  end
  language "en-GB", default: true do
    sha256 arm:   "29ccd8bbde808eea853c4a34ce7c389b055a014a6e5d27a19a063ceba8f06297",
           intel: "50a94d1648e659713fcc6e2eee00a7beaccb2fa56a9f6f177e02f306364bafad"
    "en-GB"
  end
  language "en-ZA" do
    sha256 arm:   "0fc2daa5bf2fb2108403be5f8abfa190368f73bb33db1ba28f527bb619d05dbd",
           intel: "721ede2267ff63673540b0a93a5c5bd21b52625b056c8a35032eba7f88a68a8e"
    "en-ZA"
  end
  language "eo" do
    sha256 arm:   "a8bb9ce6dd439f58919c5c8c9c4d9b9e4a75cc27d7bedfa19becc3f5993864f3",
           intel: "214bc3b48e46b1d3e820245d9fec567a6538cac32173c55975300504b25109ab"
    "eo"
  end
  language "es" do
    sha256 arm:   "8fea1f0af6ce64f40b597c3e3bf0c5193d3286e7a5a384bca343604c6b1263a8",
           intel: "c3b2e1e71b94d66d18751c98c59c81c8e0e54b263189c03ce30b65923c70cd86"
    "es"
  end
  language "et" do
    sha256 arm:   "cd86df4f9e04e23e998655d9b6d134c061f3cf5d4fd778e4516abbdd8bc30401",
           intel: "18fca161ec16302e6e522fd7121d06a7ecde188e4aa326a363b2a64d1cb70853"
    "et"
  end
  language "eu" do
    sha256 arm:   "8e4bd4ae7cd40ea3525153d340900064fb8938e3ffd2161c6cea252377815922",
           intel: "4ba792a47aa615d12d625caabbd98ebca410ccb4c5fcb7a5995215dd92fc14b5"
    "eu"
  end
  language "fa" do
    sha256 arm:   "22097e5ab7e76b00df881cdfe213ed27f759ba0c59a2734d998b94f6d893de06",
           intel: "0426eb48199b3be34c0911f71a941123f4eebee20bbaffe1deae584c843665c5"
    "fa"
  end
  language "fi" do
    sha256 arm:   "aaf3cf101659428e957614699b62163965a50bce04ed7615944f2fd00db89bb3",
           intel: "189d9fcf4b050d2c4f79f8cd10186d297f87ab70fe2c76f437de295d78a27a43"
    "fi"
  end
  language "fr" do
    sha256 arm:   "9fe99ebc0aebe97e30b2bbe670db5c7bd1dc52f32d1aacb485763c9c0c1960f0",
           intel: "1ea9591070a68ec15594b2983a80f5f4ce6a07879cd3f0c189240d0463550e8b"
    "fr"
  end
  language "fy" do
    sha256 arm:   "fc3566574f26959e9b96bf249c5dd6a53376a9664ce59f5decf1682d3180b4f3",
           intel: "bab13a481ab338fe0fef8b65ec7005898baf546de93c5e4b1995358923c11b51"
    "fy"
  end
  language "ga" do
    sha256 arm:   "c350b17d78eb2155dcdfef3458be2201da6882b2f63ab6979c807ae2fab06501",
           intel: "5d2fbe1379ddc4bc6efd058b5e7c9015809104f1ee18a301d13f592998fdfa8d"
    "ga"
  end
  language "gd" do
    sha256 arm:   "c0d89394a4d6ed4eacafa72c2c230d8d88f464f5afd51eb1e06270adbb85f6ec",
           intel: "b6aff56853c6c4513c036c1b61bf13d27b967775515612cba84cb5992b066fb6"
    "gd"
  end
  language "gl" do
    sha256 arm:   "1e464695a55cc89ea6a105db4b7d24eadc56e21951de0198c5b0a02c992cf12a",
           intel: "891c1f7d23981106d9780891445b6be9a996e25f0989ec284bb1e3a7b6f7caaf"
    "gl"
  end
  language "gu" do
    sha256 arm:   "3d6aac4a953022bc401b958d7e88f517d1f8b229761b66f8d9046d1593a4fabc",
           intel: "588518c95adf82397ee2edea3e091a3a796c50d52dfce382e69bf89b39936033"
    "gu"
  end
  language "he" do
    sha256 arm:   "e0f6ea16c2c3b549864580025fb818f5f213696eb30d42a03eeba56b0523a558",
           intel: "27ec5868ca805b9b957cd0498561249ece2661e185923abbcaeb72ccab5a8a2b"
    "he"
  end
  language "hi" do
    sha256 arm:   "70a727d3651a583d2ed967addca45721f0e7b66ce3a7d48438c564f9ff1d6716",
           intel: "00e09032748c9b0381023b8b95b59ee60bcffb6ddef8ebf1181467e426a7b916"
    "hi"
  end
  language "hr" do
    sha256 arm:   "0da63dccc1e2c3491a2c1f251f77f33fc640b92bfeb0dbfd49d3c328af2789af",
           intel: "335faa3f85090f7f7d9dda2fa4ef93ff4abb06dc20c562e8143ea00982f09313"
    "hr"
  end
  language "hu" do
    sha256 arm:   "9575bdb94e928fc0a3c7645d12539ed9e218e494915c9c7b6dd7d0ee5fa89537",
           intel: "dfa5dfd89f0962e9feb9dd6b616a320182f71721aaf8708d3c828db2af0a2f31"
    "hu"
  end
  language "id" do
    sha256 arm:   "4a3f49e5e5ffbfc353650a65938bde4892f9f5d0382153380d2757a4930af20a",
           intel: "bd3fce8211105e05427437d5bbc919ec25e067d9f3e148de26f9123e10694031"
    "id"
  end
  language "is" do
    sha256 arm:   "08f7fc4f93983e5979e89bfe2695242aca21eb1727004ba915581121c90a9976",
           intel: "50ada5f12bce4ae72d5241d46e232f21f9ffee2885fcc24427ff122451ee96af"
    "is"
  end
  language "it" do
    sha256 arm:   "c20895974cc138f5fce1020c8066788c59acf6969629916290017f4676e58b64",
           intel: "c5a17aae949aa28823926a269911592a85f67761677c83b228d363b68050ea2f"
    "it"
  end
  language "ja" do
    sha256 arm:   "27098d530048d1cd22be7f84eb6c2321562e8825b728aa61c4c7922776ffcdc4",
           intel: "3bec0a3c01f3e0f582786fb821555c2dc50a04a9579e9bab815c8287c353bf9b"
    "ja"
  end
  language "ka" do
    sha256 arm:   "708e0bfefebfae2aa34312f165bdd9fd44c33bc660b507a42dd905008c323eb6",
           intel: "fd776ac8bdd354e7cf7266d0741cbf17045bbb6c6404ecccb5a7c37886bd2601"
    "ka"
  end
  language "kk" do
    sha256 arm:   "d1d92d9dc67377672d4b94504e599c151c65f16a0e881e8a6aa14bd6b911b739",
           intel: "9e5e0d5e0fc2ea510aa5b4ee0ffe110edad97bf708d1a4d05eeccb30f4d240f9"
    "kk"
  end
  language "km" do
    sha256 arm:   "4e81c187858fd4d3a4909af2f96f4fb2b1203286634f76a62184ee56c08d4f2e",
           intel: "98de421cbf15bed4ee42c46ee70f099dd30b054aa3577a7092320d5834f63a5b"
    "km"
  end
  language "kn" do
    sha256 arm:   "76192c0dc5496185466ff941d1957bc55ffefb5922ae74b4b1416b6f92b19f35",
           intel: "e725ee245d1c316ac7428bd2aefe78d7722db7665c3c2a1f7fa8b7bc6a64474d"
    "kn"
  end
  language "ko" do
    sha256 arm:   "25017ffd98e23b4cf12cf111387a4f9f284bbc325fee8c666abdfc7019a7fedd",
           intel: "28653bf4e7e9d8ac092d35fc58d18d76e0c56dd7b2b00ba3d4d2fb5c148e982d"
    "ko"
  end
  language "ks" do
    sha256 arm:   "a2d1fdf27918c3ed47a1943d0e60ff61f9b3575fb9ecf5cd609f2b9c556cc0ff",
           intel: "ecb8067ab2cd61a5386b334e69b688198d93832841d91988239884adb3881ce1"
    "ks"
  end
  language "lb" do
    sha256 arm:   "5d640cca33018b05882fa1d4214c2d7d643c82848edebc5f4dceb0fc0a6a03f2",
           intel: "437bf8420f114f706e66792c3d1c91f80f10c3eace970c10eba5c98c6cf5ed21"
    "lb"
  end
  language "lo" do
    sha256 arm:   "199e610e1517450de5f9df08048e9a15953a4a63f7da1cdd12b858c448b02e96",
           intel: "6dba41bb7ab1937bb0629aa505f79e27836357697bff8773bd2bf73316308fc9"
    "lo"
  end
  language "lt" do
    sha256 arm:   "eade96c76b7b0350bb9013a748284a07ce14fdf9c15a1333ac18d9e65bc362af",
           intel: "5bb3d6c41e98c53c3767bc2fa8d167bf27ec95670ee7da63af5eb639cff163fb"
    "lt"
  end
  language "lv" do
    sha256 arm:   "4af77120f1e3876b121c08ca9493483456dab2420039ad687d614b7b38d83ad2",
           intel: "718f9c28772aaeb7861759b34caf78476bad596efaadc39a63def36008872db6"
    "lv"
  end
  language "mk" do
    sha256 arm:   "87f294e5435bda9ef414e3b50c280c867f438db71b5eb5a432fa311ec9d725a2",
           intel: "3306e7cde031120ebf657dc8a3ca515215d4c25b5a868d66d5585fd9e34fd198"
    "mk"
  end
  language "ml" do
    sha256 arm:   "b89cb292f79a605f87e1a27225da147ace7b7e578a0372b36eb752e50b16125b",
           intel: "aaa0712b20e1765f8d7546bd1c4c4c6e42bd684f390ffcddf473bac510d3791c"
    "ml"
  end
  language "mn" do
    sha256 arm:   "8d1d06486e159dc1a8ebe54250c6c768ae9aee0b4bc585c9b9a1120331ad97a8",
           intel: "acbd11ae0db2e48fcb1c384c3218ed26d5e238d35bf9824ad7e7c8b4903bd63f"
    "mn"
  end
  language "mr" do
    sha256 arm:   "52cc19c99b0b7edfb98d91c8edc0f6bf09dbb4e6b6be2688b225a6ab2bee51bb",
           intel: "e288e7eb50f009c730b74c0f69254a434e7e6c1b76b4905ccf4d6733d9c5b8f5"
    "mr"
  end
  language "my" do
    sha256 arm:   "2083afa90869ecd2dd43f7073d7e4feb4c8b0e3f0d0ec4fa71374df30d66417f",
           intel: "31e09b4260886c791f48781d4b2879890af05f05501727924f13e1ed494261bd"
    "my"
  end
  language "nb" do
    sha256 arm:   "77f40389e011e599d7440dc01658ce1cabe70e5ea417f42bdfffd194df383dd6",
           intel: "5c93e8cacd5023f2bec998702ef0b2a19f57f22f755db42bc730368cca0762e4"
    "nb"
  end
  language "ne" do
    sha256 arm:   "d3e4761e0891e7ed167c13fb593e2e16062f3d90d80890d98327c9da913e95ed",
           intel: "599a2f4450c06ba2c655957f3b328e763372431fd5330ffd81feea43fb24c6d2"
    "ne"
  end
  language "nl" do
    sha256 arm:   "9fa99645929c163018b96202b27efcd125325bd87b96437015eb168e32fab968",
           intel: "ce15034a44ad417cb5c80d8df43a704591937e6e660ffcd1488058c11ea56e23"
    "nl"
  end
  language "nn" do
    sha256 arm:   "f16344c307e30b2a5b6ab59f2de2bb974ab7595070f3fb071f5617c4471b9831",
           intel: "7734362abf7aedb9ae7ca1c769da43b521c0a5c353434fc8fa8437360fabd020"
    "nn"
  end
  language "nr" do
    sha256 arm:   "d38f314edbebd9109689c3f9a054c6c1268f8b08414f0811112f4a636c77a734",
           intel: "b975be6edb7be931addd8ff02a79e1d110b1eca5047f0878588120de3c537cbf"
    "nr"
  end
  language "oc" do
    sha256 arm:   "dacaa3a4c0279db3c41e38a0dd22561378a3cede4d529c225c475c79ff69fd1d",
           intel: "63b009128838119400904bb4796a42561a989ef4f1f4d1fe860393fd9065fd27"
    "oc"
  end
  language "om" do
    sha256 arm:   "9b13e9967b7ad042e16f88fe48feffa83d1a23961876017b1f16160501a30377",
           intel: "651158b956aa23dcf56de537041a7a3113c602e3672d063a7e50bccce288e3b4"
    "om"
  end
  language "or" do
    sha256 arm:   "d0eebceead1059616e9692faff6c5d2df74563c1f8c41162e315bc113a37daa0",
           intel: "929c4b75a418788f63b8d7283262cf25ced3dd43cdef9b3a3b4dceaedc7f86cf"
    "or"
  end
  language "pa-IN" do
    sha256 arm:   "1f02cc11980c291e9a4bd66d28bb4ba747e4ac392cf7c5e32ab7b49ab6fc2ec2",
           intel: "50a948e458478cf569d020aad3d65b4d4f3dd3f4c21485a0e6fa9bbcfb3c58fb"
    "pa-IN"
  end
  language "pl" do
    sha256 arm:   "3d24421c9833db07329889bc89179c2842666c7bb2ba6635832c00ad9d7a2b54",
           intel: "8e3b37b2cab5e489054c24a1bb7c95f8e59cac43a2e07f92a6d185a189c6d2a6"
    "pl"
  end
  language "pt-BR" do
    sha256 arm:   "9de752a8a4525f814894a7ba40b6e1f63346ee792b738f3e58e1543df31044e3",
           intel: "ac5282197439c0335b220eb8643b36a91db07541b4449f88e9006b65843325f1"
    "pt-BR"
  end
  language "pt" do
    sha256 arm:   "5b14b1ca4090e82f12d11265735ddd6b6f9a39af29c9e8057f079bca24a00b57",
           intel: "2eb6b7da207c4c0e5cff51fe6dea366704d8a1051836859d61d0f156fbbc172e"
    "pt"
  end
  language "ro" do
    sha256 arm:   "619c30ba909ae9fa717a7817c9d0047f0a2d52f45497d6626f5b69e0e7bbf3de",
           intel: "cadfa09c0159ef0e263818724235e51140891be24bab770ddf37f876fe03c9e7"
    "ro"
  end
  language "ru" do
    sha256 arm:   "a32dbb9c11fd294ae81a7f226f6eb74bfc311cfef48166b0598c4b52dbf190f4",
           intel: "10a821d3000aa39e7374ce9cfd5d96e959abba23cb25f9f354cf968e787b8682"
    "ru"
  end
  language "rw" do
    sha256 arm:   "09d7a7f0a7577cb36de3227bbd3c00fcc768629e9e454396190c4456a691ef63",
           intel: "455119770d1f4f4f4df60925ddfc34fd41f5c61074aa024b594b281b42dda29b"
    "rw"
  end
  language "sa-IN" do
    sha256 arm:   "1456e1a9c672862c3176fadbf1ba1b76b99b4b76caf9217b8009ac6e15e9be9b",
           intel: "9c18d37bf9750e7aaaa2fb268376eb7595d1daa2f3a3572c6349db2dedfc443d"
    "sa-IN"
  end
  language "sd" do
    sha256 arm:   "c7798bf27deee6f636610bd48e716332ef7965a08d7542c4e42b10e543070cb3",
           intel: "6c54d522f0c3d9fc816514d530a62eae27d7a7aa66cf4603b588901ee0bd8cf6"
    "sd"
  end
  language "si" do
    sha256 arm:   "101afe9d0c50b39ca430486a152d88d57dbfe38a44d967e533ecb04eaeac989e",
           intel: "088ec734156f4ec30801457447fe066c77cac1b7fab3a7a71ea2d99852df23fa"
    "si"
  end
  language "sk" do
    sha256 arm:   "4765cc699c720ab132ccf7cd46875d9aa6c954165e6b9dab6ebb1ea0aa018dd4",
           intel: "f58a1a924977d0520257be573664f87a01213ad5a1f40a5c1fde09bd298d4d9a"
    "sk"
  end
  language "sl" do
    sha256 arm:   "9be3cb521ceeab2d118fe691b14dfcb239219543e33d000de17ebd64607354fa",
           intel: "b16aebcb80b53ed589f275861c39673f84181a289454b9c1d817decbeb6793fc"
    "sl"
  end
  language "sq" do
    sha256 arm:   "cc092313950279ca104c1185dcc279d6a5ec3c0965508165d9fabe9cef57e935",
           intel: "89907d93533159db1e8492a70d40f9a11de73d9ea2422685d42d92f7555b058c"
    "sq"
  end
  language "sr" do
    sha256 arm:   "d2722bcd6b465d0e39957d56dbba7d440f74184a0495618eb899f87272e9d7e8",
           intel: "91a76d51b13e8272878a885ca9278ceb43ad58826245a5151be746f884d0c5d5"
    "sr"
  end
  language "ss" do
    sha256 arm:   "bc87e7fed1b972597ca7d41d7fae07298ed21251119847358d13052261ca4a35",
           intel: "75820fddb9af303daf8b18f54eb48c89237e1ee13e9461cf28d47fd772d50fca"
    "ss"
  end
  language "st" do
    sha256 arm:   "6770f02dd9ad1008e7602c1b897318079dd01127bc32330dab908587dab8c3cc",
           intel: "f231c811b5a794d5612cedd968d9cc65558840c402f6577a9e18d754b5a7a700"
    "st"
  end
  language "sv" do
    sha256 arm:   "95cd67be3936cd40411fe4727f1d553d9d46b430c2bb0c59fa3a7e7689231857",
           intel: "3c31d5c933aa21d5a1edef4af58d70ac5d751dfe78a6c66a03e53d320fdd438c"
    "sv"
  end
  language "sw-TZ" do
    sha256 arm:   "97ab3bf3c6c3f5959c5cdc3f92a270658af1041f4c96918374302ddd984426b6",
           intel: "eaff2c9b0542c7adebbe1145c406c6567589dcabfbae5926359cd5cb7e6407ef"
    "sw-TZ"
  end
  language "ta" do
    sha256 arm:   "50db0c088bc4cac089cb7f2730062d6d985a230d75091cff6eb11694b0b4e9a5",
           intel: "14295e29ee9168c245394e5904ffee32a45404841dfe64dadb8cf6b54cc247d9"
    "ta"
  end
  language "te" do
    sha256 arm:   "272d40ef9eda9dfdad85e1fdb19f1c3e899b7216ae6c830da0775f497c4be113",
           intel: "370e4f24766d367038fb52e7646d70805df0026881385b28fef90592ff901c0b"
    "te"
  end
  language "tg" do
    sha256 arm:   "002a9b33a5880a3a1c8d5abddf59fc75f66a14d240bfd82e2490334980afbdf6",
           intel: "829ef8705580a3852d3209830c49411bc3dc90a20d06935fc9a00fd97febd7a2"
    "tg"
  end
  language "th" do
    sha256 arm:   "792be6db02dcae2315b5f14be30aa9275dd690489138dab6eea4d9b87924b37d",
           intel: "f74500b0f6bad1d02febb509179de4dcde5bec42025baeffcc2af7b1df13855b"
    "th"
  end
  language "tn" do
    sha256 arm:   "f01dfba56225377c10b0eb6cc549972e2dbad4edc560bc5b40f2e99930ef804a",
           intel: "92cda4aed7435a6d3e7b52b9af68c37e310c16ed9865a0082ce077615757ba19"
    "tn"
  end
  language "tr" do
    sha256 arm:   "6992cfdc5c2535e754e9fb8fe147593c9528272d5a5b38db07df6727eb215cd2",
           intel: "3641f1b8ca1e57bbf7b881220e93e66054c261ba05ff76b2f27fea55a574456e"
    "tr"
  end
  language "ts" do
    sha256 arm:   "34c32cad8ab1e30ce433a8c320923395dcdc4a7910059e2a2ee8d68306216c3e",
           intel: "560e9661b2b9a849840e3d3825b64f743c5b9d308853dd2aa47e1d1b0c3dd770"
    "ts"
  end
  language "tt" do
    sha256 arm:   "9163675efe6d932592b89c8dc6dc732bf85cbbe51553f0f6b6771b213591de20",
           intel: "eb8e2ee280ae855cb31a1d9744848106196e198602b2929a1f5bd02abb852917"
    "tt"
  end
  language "ug" do
    sha256 arm:   "b01eb24761de17616c4787ede15761e2f7e7a779888c54fd085e9fd22e340d87",
           intel: "ca8c48bd6d13416f19cfec3745b1f261838d4f6698eabb9640b8e36fe59208a0"
    "ug"
  end
  language "uk" do
    sha256 arm:   "dab0acaecf07c8889b53c0ed9d5719601885f240fb4fb66a760df3147bc70639",
           intel: "47a260ad9e3b003da48573d7d5e27653397fe8913ff306efe01120ce08aea371"
    "uk"
  end
  language "uz" do
    sha256 arm:   "eef47648989a99c8f97d73c3221d08088b5356c24c29a35a073c67d71e40c8f9",
           intel: "0afd0b8542932bd8c5c4a3f1402e02eac6685a9b23fa6827ce2f61c29d9234e7"
    "uz"
  end
  language "ve" do
    sha256 arm:   "20b17d7b3af73eafa484ac332fa59f4e50de6f738f79ff16896e71a5d7f19f3e",
           intel: "0ab2d5f11d45e06999849b940ce5b3675e10d2e375ed1ae388f59e7bae37de66"
    "ve"
  end
  language "vi" do
    sha256 arm:   "0d8b0e23f31fce809397de458ad8f0ab27cf692b6dd03e3909a788130c59e6cc",
           intel: "6feb86bc8e1dedeebd630fb508042c78bb50f17d354efeab6a3e31c9131fdcf9"
    "vi"
  end
  language "xh" do
    sha256 arm:   "b53841f81b74655758e276c69714601e88d41f7623ee21a53017b549aa03745b",
           intel: "e148508475f853c8dd6087d71f8f5ca047e2adfef668862beefc3acbb72756bf"
    "xh"
  end
  language "zh-CN" do
    sha256 arm:   "a5071bb397ba131c4a497c2fd1cb3db1b1b04d588bea7f1a9b21b908fe0c6157",
           intel: "9eeb72fb4196ec98ad54b48653c69cd0922c3a519227e3cf946220618706e9cb"
    "zh-CN"
  end
  language "zh-TW" do
    sha256 arm:   "dd8fcb3b2339b1ca009edb7783e7171c6856446fadc4f9e3180c8cefb3ff6e81",
           intel: "6e8f409be25512dae617811c9eb7634a229e709f2114df9a1f963064f6de8021"
    "zh-TW"
  end
  language "zu" do
    sha256 arm:   "f1611b550ca725e65c37eba12c8a7b52efbb968e085e97560162c1f0b76c5d96",
           intel: "ec61e3c8bb13d566f74b1c6a50d63b829a6a15acbe360fa5101144b708c48bfe"
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
