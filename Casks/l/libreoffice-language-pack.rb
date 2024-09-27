cask "libreoffice-language-pack" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.8.2"

  on_arm do
    language "af" do
      sha256 "7fe711827dde429a466d0bdd917820501dc8d2134af020104a51e1b2a9c221d7"
      "af"
    end
    language "am" do
      sha256 "7f7f0c797f025723c9bb3bd50e15225cba2d7282448005a57735dd3b95ada0b8"
      "am"
    end
    language "ar" do
      sha256 "fb78dc92efab9361be4545e61a59cc34f0b136af63530e2409c3e62eea59c394"
      "ar"
    end
    language "as" do
      sha256 "e35bfa5b88676337777052ca056eade03854657848ba13c5f38f49fbb08582e5"
      "as"
    end
    language "be" do
      sha256 "03b8a45c88f71a1158e19f51bb94d9ab761a02ca6ba0821087ceaca0fd21e131"
      "be"
    end
    language "bg" do
      sha256 "5a878fba61e3b469167675cf5f2add24e0b473bb7c12578eba21cfde415bf670"
      "bg"
    end
    language "bn-IN" do
      sha256 "4ef99e71fc11c08168528f04066d2ca903df62eb2870e9769379ea718b235c3e"
      "bn-IN"
    end
    language "bn" do
      sha256 "c7387f0f27a00436fe595d136b14241552024c8bf2c31ece429396b53ff89bc0"
      "bn"
    end
    language "bo" do
      sha256 "72be27324a053446b6654a5f5b6bc7e033404973eb9d1ed25a4f677ab26db55c"
      "bo"
    end
    language "br" do
      sha256 "52069e89b1fe7784d6fe6fa83ceeecbea30f2cb4c9cebe04dc91d1c96a8db32e"
      "br"
    end
    language "bs" do
      sha256 "bdd378ac954edad9615c1dde58e64d562a35097c34ee7812b9a61cfc39cd3c41"
      "bs"
    end
    language "ca" do
      sha256 "d72a01f9f02fa327c1ccf30d52e4f59446b6f2476aa41564086008515124f07b"
      "ca"
    end
    language "cs" do
      sha256 "f74cfd50620ae512df9d742f0bd27241e4a76789c3d135aba80aee6ae3bccc56"
      "cs"
    end
    language "cy" do
      sha256 "0b2ce8d9d9cc1a978bf2cc64d9111faa3a8dff91f52997e3b02623b40cf97d10"
      "cy"
    end
    language "da" do
      sha256 "bc41ee622e343613cc8d0f6a8d31fd5a25b0aba3c8f299e03ee74ede97b12a29"
      "da"
    end
    language "de" do
      sha256 "ddc1a85bfb27f044ac41573b0a8b4a2fe5dd2eb9dd9fda3fb941a7099baaeca9"
      "de"
    end
    language "dz" do
      sha256 "d2747d14bb4f5e34259b68d2fc609f05442847990c6138d192185b7023e93232"
      "dz"
    end
    language "el" do
      sha256 "c368567cbae7f5a6d5976ab24db4c766036b008a6ad86995b70e831129456742"
      "el"
    end
    language "en-GB", default: true do
      sha256 "e9965a53459ad5902c1c47526dda2a4d0600f0ad9e354b98d359e15ea4e11a43"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "0790de665eccc5797b1d485e728b1d3840bd5bd081c87a05d8d5b7526f08c930"
      "en-ZA"
    end
    language "eo" do
      sha256 "79cc0c91fa0e3e41977e15ef0ec5e1a1925c4d59d37e8104f54848e282257278"
      "eo"
    end
    language "es" do
      sha256 "4102dc5caa13f2073d51f9c24853419693800a35a0f703b9099f4a67bf9a756d"
      "es"
    end
    language "et" do
      sha256 "1124a7b69132fe9f6a11efeb57de996d1285cc2886699bfa31d9cc26443f4935"
      "et"
    end
    language "eu" do
      sha256 "6534770d1dcb06c512ea6a0bc64d54229e01f466c3597859856a907d1a39e39d"
      "eu"
    end
    language "fa" do
      sha256 "4395feb1bcd296f44408dad3ca11252218db6289260f07b691471eeb49960967"
      "fa"
    end
    language "fi" do
      sha256 "06d5c1a7fdaaad2d694ca6fe3cbee205d711b24c01fd784879f626c807afccd3"
      "fi"
    end
    language "fr" do
      sha256 "d6695f4baa360cb619b65e403d39332bb2156178328688cde1f3383ebbca778c"
      "fr"
    end
    language "fy" do
      sha256 "baeed1324a9cb16bdcd086483a410e5e8d780c84eb35267bca43e11a091f95fc"
      "fy"
    end
    language "ga" do
      sha256 "7a303c0d8fb680006aa2084c4585fef8b7ec7d6fae2ad69d35b4d2c1a97e195b"
      "ga"
    end
    language "gd" do
      sha256 "a243b45a7f635c22fffc9260a6d2c593ed442549bd91e921b1cb8bf174635d65"
      "gd"
    end
    language "gl" do
      sha256 "58f52e871881b00b77c6c670b6f6db1d01f671f08b556f0ea8c6676a849189a1"
      "gl"
    end
    language "gu" do
      sha256 "4bd003f702715e734d4ab015e5e2cce471d36859ca27159fd1b1e892d2001a63"
      "gu"
    end
    language "he" do
      sha256 "544eacf627fedb8ba20e7cb90f51a4303bcd6d6f11eabeb6194860f9d466e19a"
      "he"
    end
    language "hi" do
      sha256 "8cb20700bbc95b706ba609d2b72c48ad8812340e88451140607b972379ca0196"
      "hi"
    end
    language "hr" do
      sha256 "88a9e049a93d67d07055808b19f208ebe997be12aef685a987387c47aa96836c"
      "hr"
    end
    language "hu" do
      sha256 "e6b3bbdcc013536ccc28664b3d2db9d3bc5eb05b0a33daa1835a591657b06344"
      "hu"
    end
    language "id" do
      sha256 "7620d4c951025cfe112cf4b72c2da7589d60d05d6c258ac03c94f666a3abdb65"
      "id"
    end
    language "is" do
      sha256 "58d6c362ec3937062175ffcc60b9782e139da335654c807d909f6b385a0f57de"
      "is"
    end
    language "it" do
      sha256 "3656648c03409a8df43196e12f462b111a19cdf86ca56d6357fc099094d1055a"
      "it"
    end
    language "ja" do
      sha256 "a297872ddfa026b7fcb96f07012087d56c501a53d3b2b103d8a9d5dceeaaa31f"
      "ja"
    end
    language "ka" do
      sha256 "045b7f58fe16ad7df08becc460f3e718c6932e43e3c35b383ef55e9a187e42df"
      "ka"
    end
    language "kk" do
      sha256 "9ca7009e3cdc7a0666dd950bd3e70723b956e8293b53194324563a92dadf18b6"
      "kk"
    end
    language "km" do
      sha256 "a17073729ffc0b8071763878723d8e3a05fc326286b08769cae23798af286efa"
      "km"
    end
    language "kn" do
      sha256 "bb3f5874f484613fdb4adfe818c419094e82e274f56b90b9e6538f0b44560164"
      "kn"
    end
    language "ko" do
      sha256 "784d2dc2d083b76820e8845943dee46f89738a2346cd1d5d9192c45b08ea136c"
      "ko"
    end
    language "ks" do
      sha256 "ff1a73ee4c682cf655423261340873b326f0341c7ef3f0ffb02a82c95370bf32"
      "ks"
    end
    language "lb" do
      sha256 "0520504d1b41f883f0d5fb778bbe4633735396535224025a6bedc55c0ac283f9"
      "lb"
    end
    language "lo" do
      sha256 "6abaa59a7bf9f6a49999d6778a1dccb0710b973967f71b2bf4fe7434f5fa52ab"
      "lo"
    end
    language "lt" do
      sha256 "1ff49879eadac69495ae04e942925db35b25c004d1af3b47ec576f1daf18e363"
      "lt"
    end
    language "lv" do
      sha256 "5f34b6c2cc502bd4c04b797c9e61dd253dc21600944627a3870e3b45c1adc0ee"
      "lv"
    end
    language "mk" do
      sha256 "ec07def22394ef09e1470569d5f5ade69ccac6e3c7e53ef0d16b43a43d5139d6"
      "mk"
    end
    language "ml" do
      sha256 "d0f00029f87e8c05548324ea42be5893361fd5e7f6d280849a81f6e02c98fed4"
      "ml"
    end
    language "mn" do
      sha256 "b911a7a7964d6000ff4ed1f96f0060cc0e9032bf0f096cd7885095cc1e7da38a"
      "mn"
    end
    language "mr" do
      sha256 "248b16b07637e32f163dfbac64de81be401f4d0f45716d7a457427f7e77627a1"
      "mr"
    end
    language "my" do
      sha256 "7618496ec87db168374662f3acf4dc670004860ad46266bdcbdfe158f9937a40"
      "my"
    end
    language "nb" do
      sha256 "f0f9a28691bbe8e1940438b42596a98fb172da320c28177accadfe7764d41299"
      "nb"
    end
    language "ne" do
      sha256 "4ca0dc4fd4137d39d1071502253c36c51823e09f6ba80e2afb06e0fa7fffb82a"
      "ne"
    end
    language "nl" do
      sha256 "9c9bc9fb4351838ba89b2402a27d64ffb17b696f9739dd25d3541a5600740b4e"
      "nl"
    end
    language "nn" do
      sha256 "eb40ec50f87e5942507eb1052a0bb1d5333f2d5566dcb5f5261c9c1b12d371b4"
      "nn"
    end
    language "nr" do
      sha256 "6f2ec2fed3c9a6c9fc354fc1d06b4b29f6c895e5417aaf580b62f190fa290472"
      "nr"
    end
    language "oc" do
      sha256 "b39df139c60d61adb188d99c1b9bb5d8e46abb3e824229963931cbe46c06e31f"
      "oc"
    end
    language "om" do
      sha256 "ec2f270e3c1b45409f35636f9b21cfac5faa344cddfa2cac1e867434520ced83"
      "om"
    end
    language "or" do
      sha256 "867a3e686a84295d8604a6d26d9daf1fd183737443f5462ec23ffea6e9f3771e"
      "or"
    end
    language "pa-IN" do
      sha256 "1bc14c7f84107f206302fa28a2a5ad3aaa99dbf14d2e6b17e8f10e6c830e8114"
      "pa-IN"
    end
    language "pl" do
      sha256 "07f507401468d8400d0719ee6628d1cb14a431ed43f043914bc573e4e654d271"
      "pl"
    end
    language "pt-BR" do
      sha256 "c37697f33f1c62b789d89df3b185157216d2cb551003634d8299f3d3df5c3445"
      "pt-BR"
    end
    language "pt" do
      sha256 "7d0816006dc9f28ada2b625a20cfdbb872218d661eb49fa36c3600baa1855fb1"
      "pt"
    end
    language "ro" do
      sha256 "3d1807959fadfeee6cf4a2a7f9d0e71c9bbdaa962de29b3afe84f465c0e05b3c"
      "ro"
    end
    language "ru" do
      sha256 "f2e33682da7a483ad126e141830b69a7e07e045cc4f9767b6debb432b5511a61"
      "ru"
    end
    language "rw" do
      sha256 "fce2d97622da1dc8c06d0884e0d14935921f9237d23ce8fe495f75df04e64aed"
      "rw"
    end
    language "sa-IN" do
      sha256 "fab239f49f39d09a3a2e1ad9a0994eabd0d33c50af0c0ab8f484c1b63d0ef751"
      "sa-IN"
    end
    language "sd" do
      sha256 "d236900a1d51ddbfb5d9e4650cbe9a078ad54f2a6e647baa60c9a96e0d6dcfcd"
      "sd"
    end
    language "si" do
      sha256 "b0526392cc55f0c94d3f0b7d26593e4977c8149486c2ed2b30dc138387787c3d"
      "si"
    end
    language "sk" do
      sha256 "aee5753bb155e9840d67e3ca61e55599e1f4525e7ab7d8a415222bd9b8ac470b"
      "sk"
    end
    language "sl" do
      sha256 "cc93b5e465a9459927c50732dd87ba0b69ab645eb1b0f0967ec484bebbcd004d"
      "sl"
    end
    language "sq" do
      sha256 "92a90ed1cd44237fc9380517add088e3484199ffd1832efb6ae7df747130dd77"
      "sq"
    end
    language "sr" do
      sha256 "2dd9ad19cd97513ca54f24c075f0f8fd61ab3b64482f605bd93ccd305af95c07"
      "sr"
    end
    language "ss" do
      sha256 "84a285465f1314616fc88898de8c48d80c58101ae0bc20c1d228ab5d8b93ca26"
      "ss"
    end
    language "st" do
      sha256 "2a4bfe62754348170071c7804e276894c60b541cfeb2509331fc089822b75e2f"
      "st"
    end
    language "sv" do
      sha256 "aeca924f350144f5492689153a26c928b31d201f7b6ba4a7bf06c14119ba943e"
      "sv"
    end
    language "sw-TZ" do
      sha256 "707af5012124fb826667034b2ffc9468a8d28b909109ccd5c9edf1ec8b615676"
      "sw-TZ"
    end
    language "ta" do
      sha256 "df0af22c7545607b134d8f8ec8223bc887c9d4090a42de082c893c2f2464b0ef"
      "ta"
    end
    language "te" do
      sha256 "b7cb75ceb932b30ba90eb1fadb846d8d3a2179ddb68cb55927fac6089f44645e"
      "te"
    end
    language "tg" do
      sha256 "38f6b85b457f968636ce27b844a0f37a857fb9abf04e2054f03ad84a0c0f06c0"
      "tg"
    end
    language "th" do
      sha256 "af26cbbfa9fbeed99c6ac4fe607cfa2c03d00206bd92928376bb49bba70bc461"
      "th"
    end
    language "tn" do
      sha256 "302721e93c0b5a314e763975239e15a6d238b2902518591e253fdd55d3a85166"
      "tn"
    end
    language "tr" do
      sha256 "c945575c0606f0be28c92dc797d7e8b9ac5c11385385139fb61e4e0d7e50e75f"
      "tr"
    end
    language "ts" do
      sha256 "3984354334bb5852a99e0817dcf857aafc95b4ab565c46800b4d67e65cb3c7ba"
      "ts"
    end
    language "tt" do
      sha256 "c46ca7fff11794bd2ecdfd30ca9047af6b4fc714f208ff87ac28810269224e83"
      "tt"
    end
    language "ug" do
      sha256 "e7c4ee3b1d965976c594159e7e39c512b58913626fe8d033e19542d10959e8da"
      "ug"
    end
    language "uk" do
      sha256 "25ab334b7d7ebdc0186bdc4759a28e19540dd24be29afec68e71ae2ee771389a"
      "uk"
    end
    language "uz" do
      sha256 "6f54b1ae89736d32a95e612803239bf1ad4cb0744ffc0f9c24cc897dcc706147"
      "uz"
    end
    language "ve" do
      sha256 "96dfd3a8972b48bbe73ad35945ea61824bc439bc17ac76610cb5e3b9e240a699"
      "ve"
    end
    language "vi" do
      sha256 "f2f98638b91bd02b9df6aaf04ce3d994b40eaef8e870d48146c9b2e02a606afe"
      "vi"
    end
    language "xh" do
      sha256 "09efc79a4ec5e19f6e5b8e2e87fac1de49fdc39105462bc09e6247bb3d84c892"
      "xh"
    end
    language "zh-CN" do
      sha256 "1880215638bbb879a49cd6ce3693902523bc3f4d39b483ace8ae4d6fd5a0bbe3"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "0687fab80966b453323354f49503ae6232d633e6ef1e5010e8d12f82f09b5401"
      "zh-TW"
    end
    language "zu" do
      sha256 "9e740c787a6dd10e0ee711bdc681264e70276a09cfb7709dce22daab46b4488d"
      "zu"
    end
  end
  on_intel do
    language "af" do
      sha256 "786abe50f2ec99cd9d7c9bb7e790aba0044876f07727b70a9c90925f6089e8e9"
      "af"
    end
    language "am" do
      sha256 "6c76079deb524537539d5791950474a2abb2d741fe12c86309e0fb12e52a75e2"
      "am"
    end
    language "ar" do
      sha256 "b49ac21017b4bf3e51212458dd2069b9650570a52e0bc3ec6b338cc8cb78f499"
      "ar"
    end
    language "as" do
      sha256 "3221c4f58a779820ab1b2a93ac60278af8d1ef8b36fa386e42ae9208a788b668"
      "as"
    end
    language "be" do
      sha256 "7b14afa59d0e5a72136db5cd292af418ec1aaa28b798c7c7e66f1dfd79b0633f"
      "be"
    end
    language "bg" do
      sha256 "571e88192473f10a5a5b278756079f831f34baf4cd7e1dc6e208dc9911ca1718"
      "bg"
    end
    language "bn-IN" do
      sha256 "75de378a4e5f813ec1689f04a0a881f75f620d978e7ecb589e3e8d99ebd5022e"
      "bn-IN"
    end
    language "bn" do
      sha256 "d907ae5066305fa461b4718f2689eed8a5c34e16e2023dd332aeded461258de7"
      "bn"
    end
    language "bo" do
      sha256 "730d4e6d2e7f0e21cb33d6c0150688ea8cf5fa14c03b0f6634b4e2ce3f687eae"
      "bo"
    end
    language "br" do
      sha256 "6adb636c9695acb5804354b541b79bfc1df87c6f8f8115a5e23eea0be5b45da0"
      "br"
    end
    language "bs" do
      sha256 "6a707ee2be0864576b0c4782be6628a2aa07c521f72fe7f2ab9abc8ff144435c"
      "bs"
    end
    language "ca" do
      sha256 "485dd12583e15bc93ee9d21dc8c33de787717a64da6c01f634f03216e4dba3c7"
      "ca"
    end
    language "cs" do
      sha256 "c0f64e3f30768a7eae08229080a646915516fabfe7957394f5929956dc1a6317"
      "cs"
    end
    language "cy" do
      sha256 "58c3b2886fa52303efcecbedd2983bf1719322375895a159bfa5b53facf1818c"
      "cy"
    end
    language "da" do
      sha256 "3256c047706992338733410f6cc9c71585e8ff1ae1b9b1a6710a04bd19cc531d"
      "da"
    end
    language "de" do
      sha256 "d93ce91488295cf27ec42af0b7d0834f2bd67c0ef3b653e376a01bb0671b9f6b"
      "de"
    end
    language "dz" do
      sha256 "daa95907c3312204523804eeff6338b1ba63608008d19606fe349efb48e14990"
      "dz"
    end
    language "el" do
      sha256 "ca953f38268bd667a9f84a230cc3fd9870d71f0e8242a28a3016f14a00bd35ef"
      "el"
    end
    language "en-GB", default: true do
      sha256 "ea3da91b9b80a250dea7af971fcead10f63ff84f1e2ef3ce4d0950ddb1302af1"
      "en-GB"
    end
    language "en-ZA" do
      sha256 "b5d9776539d12da641d246df947ec8ac5dc8c97845bc601a229e338747b4f4dc"
      "en-ZA"
    end
    language "eo" do
      sha256 "d7baa74513886c251621c49b2dc1a98ea194da7c6077735424a6eee099b86283"
      "eo"
    end
    language "es" do
      sha256 "a1d7fbddf74191d354964e916fd1a23d106aa872cb2a3a9c25608bf8b2371f7b"
      "es"
    end
    language "et" do
      sha256 "e7f57e19ac31e8877cff9acf41a12da617c3e083002d5822a96cf71010e1b3c2"
      "et"
    end
    language "eu" do
      sha256 "c44164332bd6bf84ba17abb3aeecdfd056795f023a0ae8a8c0b9b1ce11547236"
      "eu"
    end
    language "fa" do
      sha256 "b6d8cf79a1c85cf602150efc2b728ca669356df8edd2108481e872a24975b681"
      "fa"
    end
    language "fi" do
      sha256 "69374071d2080200b2986f0da9ac36415dc1ddf92a78e5474e60d6b0010aef95"
      "fi"
    end
    language "fr" do
      sha256 "dedbd436b98fb125e1ea68a06f0a97ce332acb0d50c08416774aeb3ee741e247"
      "fr"
    end
    language "fy" do
      sha256 "f6bf7792cd126e7d825fc50528b10cb3b847cf7d6517988755a073562d2d0278"
      "fy"
    end
    language "ga" do
      sha256 "ba5c021447ff28c4288760ce3c8c39c08e09e024333a4f7ef59759a883918fd7"
      "ga"
    end
    language "gd" do
      sha256 "40bb75a0065b32187a2d7b0aad48d76abbb4ac3871c7a98c88090d5ce93f2362"
      "gd"
    end
    language "gl" do
      sha256 "7b7a9920e3cb865053933c6642f92892f50aa1aab5e0d948b8f09d466565adaf"
      "gl"
    end
    language "gu" do
      sha256 "fd02f5a9bd887536201e730d34f97eadadc582e5766439d22d0c2e5c7e5adf50"
      "gu"
    end
    language "he" do
      sha256 "d519ae867511f77f7a2a9309cdc7b782d01065118279e08f4d296d3cf8aab206"
      "he"
    end
    language "hi" do
      sha256 "50c91b1f656a6cc07781e64b6aaee165b4c58cc0ba7793eeb0f0eeece0786c36"
      "hi"
    end
    language "hr" do
      sha256 "54bd47c2003bf3d5cc6a95ade267bfe44fd541d28f531dc01b2e342aaa0abc0a"
      "hr"
    end
    language "hu" do
      sha256 "8a3b360db05813227e478873d4148da5d6f7d4633e5f27a80c04ab67ada1a574"
      "hu"
    end
    language "id" do
      sha256 "d9853ab2580f4a9e4b78f31ead2df6003df58c4dfebde768174a893b87e9fbfd"
      "id"
    end
    language "is" do
      sha256 "4f53cc84fc470ac651f22b12ca909a1839a14c9d6c309c770020fac0d78f89d0"
      "is"
    end
    language "it" do
      sha256 "f41dc4d27c42d39d35b69b69a712c0752883bf2a9588b0999058a0dd48621b0a"
      "it"
    end
    language "ja" do
      sha256 "1cddf2449dd1f4d52028f423a82c23ac8ba64602eba751f34878f9b80aec5c27"
      "ja"
    end
    language "ka" do
      sha256 "03c5d94edc63f7a015bd9b87133c11920a65f0b1c77d8d8faef1d0d343e6e1ae"
      "ka"
    end
    language "kk" do
      sha256 "30e70f282c3bc2cffcca48a60c0bfeddf5ef96d0753bd0dff7123857b13a8055"
      "kk"
    end
    language "km" do
      sha256 "af3a68c02dc05ffe041ab289c658e200d2c59b1213e5cdc9985ca672923814cd"
      "km"
    end
    language "kn" do
      sha256 "3301dc173f45f4a2ac71e91f3e28c7cfd5fb4d1bcdfab47edb720c53a1679fa1"
      "kn"
    end
    language "ko" do
      sha256 "3a3a645b96b0457600d73b9f4b7ac02e4f1f52cdae30246ea4bb5cf8801b0e88"
      "ko"
    end
    language "ks" do
      sha256 "cebeb049d9445bf3bc7563c24dacf4303227117cb4997d098d049a5a1c5905b4"
      "ks"
    end
    language "lb" do
      sha256 "482b235d695dccab7442a02cf664719f50b365e503ea07163638ca394ace9d00"
      "lb"
    end
    language "lo" do
      sha256 "733fb6693a78d59d7ff56e402f745bdbf96e02173bfb626a74507dfdb97403f5"
      "lo"
    end
    language "lt" do
      sha256 "5b03f3744140a5bc61163c3fc06ad752ee91984a6f5e84bbd62fab1395720dcc"
      "lt"
    end
    language "lv" do
      sha256 "fafc79f959d7e90a25ea3c7f8a3cd3a09bdeb6b7f442596e1d20599d505d1483"
      "lv"
    end
    language "mk" do
      sha256 "5f89f3824f9b63b9528c88758f28df9b990d1df5d4ba1a77aeb227db54e73eff"
      "mk"
    end
    language "ml" do
      sha256 "d8ce668d91d57e1bf5bd5955760a4330fa1b83c9805a84a76137015ab37601ba"
      "ml"
    end
    language "mn" do
      sha256 "af163be337cb82c8702f13bb0537d153cce2084e1805bb8b30bfb3c4c3814174"
      "mn"
    end
    language "mr" do
      sha256 "6429652368c67fe17a0644a7a5be698affcb236c97890ec4ef182bf566425724"
      "mr"
    end
    language "my" do
      sha256 "3c3ed27d4c7baab8a4e20020582a23e407bbf3172c664c5639c49132ba0e667d"
      "my"
    end
    language "nb" do
      sha256 "06927b2a2c83ebc0729fd4ddd3f38d71fb76b9f218493c0386c10cb6c09da4d1"
      "nb"
    end
    language "ne" do
      sha256 "49629cbc16463ef2976d5e7524a2f80a39a0a371b9daaa3eb9b563eb60cee5c5"
      "ne"
    end
    language "nl" do
      sha256 "ceabb8415b2a8b2fd586671f0bfee7b2b5de19092fd02cf18bdc6238d3a9c95f"
      "nl"
    end
    language "nn" do
      sha256 "cbf1e475844de150539cae1482e0e0eef3db1fb82b7ac064781648bd87a538e5"
      "nn"
    end
    language "nr" do
      sha256 "adae3d825bd1cfce358c88982e7b8b7842d9a84296e4d469904cc67cfd2f0ac2"
      "nr"
    end
    language "oc" do
      sha256 "8d84a12fc47c82abd7b64f0c1ae4e71c5c79594cf0b18ee505950f56484bfb91"
      "oc"
    end
    language "om" do
      sha256 "024861c48c33d70d0d70e0f756fd5949ad1ab9015e1dfee3a989f96911b510e0"
      "om"
    end
    language "or" do
      sha256 "8412f3d2121924a8dcea1206d273bc607ae3d786dc71b41acb017de11474be9c"
      "or"
    end
    language "pa-IN" do
      sha256 "ce22f716493c4b2bae5283ba9ea8226b5d5bf58917f61a71312db46c6af5f82c"
      "pa-IN"
    end
    language "pl" do
      sha256 "1a3fa6fa28c2ed821d63a0b9d6c6cc1b050ec10af61d5265f02c2ae9b58b74f6"
      "pl"
    end
    language "pt-BR" do
      sha256 "f167f27b7e59d3b2924735a8b8e9b0149c45f2296aa0e564244151517888d2bc"
      "pt-BR"
    end
    language "pt" do
      sha256 "69cda1907b6df9afbb9e17ea819fcfe24c568c43288ea3de32f2a15170a208c5"
      "pt"
    end
    language "ro" do
      sha256 "54dfda94f07a1093255766413a244495decfbe06021a3b652d33b775f5033e51"
      "ro"
    end
    language "ru" do
      sha256 "c02ff5101249b622b26a93af86a8a6e1cc770a364c16a78960e267f43c0f46a2"
      "ru"
    end
    language "rw" do
      sha256 "c55c4ffd6f3a297fb55e8a7a1efe914fa2b8673f04549dc33abc347edc3f0113"
      "rw"
    end
    language "sa-IN" do
      sha256 "58d7cd3d0a0f11e8b1b4c8cff7dee0aa16db243fabd4574ac7f23e1f4e2ab56c"
      "sa-IN"
    end
    language "sd" do
      sha256 "09b6a295d9526d5464a37fa75bb86613aee85f75916f1a726ede8a806c8894ce"
      "sd"
    end
    language "si" do
      sha256 "635d141404ea37a1c62107b23aeafd227bf3c372734a48fd9100e30d6f064985"
      "si"
    end
    language "sk" do
      sha256 "683c56740a32fd6f4f29ae5cc2f4b0cc740f66fa9cd2a442bc384bce302899b8"
      "sk"
    end
    language "sl" do
      sha256 "27a9d2f1bb34da44d2a718c582efb7b374b9d8f3ced666154e97a8d0a14853fe"
      "sl"
    end
    language "sq" do
      sha256 "2770d68e5a2b7690dfd154cadc48b4aff0b37ad46793efe0586e887a7c648d5a"
      "sq"
    end
    language "sr" do
      sha256 "65c855f328732f73855e24aa4695febab1a83f570b23ea9982652953321166cf"
      "sr"
    end
    language "ss" do
      sha256 "0cc8058d751ae1bf601b17d1221f1fe92348eb085bbc64916e7d7255162b5f98"
      "ss"
    end
    language "st" do
      sha256 "8833dc17a09a89f2fe756f01754360d8fcf1cc085eb5f71faaf2fdcd4e65f3ab"
      "st"
    end
    language "sv" do
      sha256 "e79528e52cfe25cee1e9085cd72da80e31626a6befcc2bd3a2fad56a03f5b64c"
      "sv"
    end
    language "sw-TZ" do
      sha256 "bd3617a7aa338b9a8562e1092d7ddb9690fc245c6c40e48d120b3ce0f74010df"
      "sw-TZ"
    end
    language "ta" do
      sha256 "ba05c6ae4ce8ecabfb250ab553acf017df349d0dbe9aafddbb7d58e23ff02e0a"
      "ta"
    end
    language "te" do
      sha256 "948b8eb9a94322dc083baee27f60664d10e49c420a1420d3c3cf61f816347b08"
      "te"
    end
    language "tg" do
      sha256 "f668a32ffdcb670043a03ab71f57198594b391bc0fc2ef0267d74a18286d0084"
      "tg"
    end
    language "th" do
      sha256 "6c8057c73f04e851e3cdaea2d561b2f997d050ab46d87916234c8e990a6bbf80"
      "th"
    end
    language "tn" do
      sha256 "aac304d371aaaf40bb7e7ee8bf8f0538c86e429e3b186f509bfb17518e694fd9"
      "tn"
    end
    language "tr" do
      sha256 "ebc7e27b778478db8588cd296a42092361352e2022fae1302ced04f8cf9f6b3b"
      "tr"
    end
    language "ts" do
      sha256 "25e40c54f95db25795cbbc739db7d5d411fa04b37880d0c88ad81a6a6bb0a2f5"
      "ts"
    end
    language "tt" do
      sha256 "c2a49db7d10e1330149055e4f5442792cdd5e8f5f53e147c64b91776595ee78f"
      "tt"
    end
    language "ug" do
      sha256 "ca892eed94cdfff90a2572b0a56e8d6cdf5d093da019003dd803d6b7584d434f"
      "ug"
    end
    language "uk" do
      sha256 "ac6670a21f3ff11bcd79edc9cd03002015cba1ff104938f3714924121c74c539"
      "uk"
    end
    language "uz" do
      sha256 "94927b8364eb307dac3f7fcd55f0185b67e26d59327e4890e48d2f024fc1c4e0"
      "uz"
    end
    language "ve" do
      sha256 "01d025a74b943bded997af638f4a4529529843f7bc347126181a307a933defa4"
      "ve"
    end
    language "vi" do
      sha256 "b119d4dcc1d740dc35e8080b1a7d8c502e94ce7a88c37c545d3e934d9caab243"
      "vi"
    end
    language "xh" do
      sha256 "a334d0b5eb0496e7eb83f2598fa281f61a61e0e3edaef703719d6e8d266c4cba"
      "xh"
    end
    language "zh-CN" do
      sha256 "dd3165ccb4479212a26d000e952299c46edacf3ba211a5b446d9c1ef85f84efa"
      "zh-CN"
    end
    language "zh-TW" do
      sha256 "04bb2965b449af91ddba980f48f0aa59281996f0fc41a9096930f3d37729bc19"
      "zh-TW"
    end
    language "zu" do
      sha256 "216bc989b63a71b4777a37d9c96fd80d90daf6357db94495ce357803a737a3a6"
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
