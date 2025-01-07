cask "seamonkey" do
  version "2.53.20"

  language "cs" do
    sha256 "cddd2d04fa108dc5d79a225153138125ff6ce551c6cae41d09df4f2e0b16c7ee"
    "cs"
  end
  language "de" do
    sha256 "55894e770b9699224833f3d1e23fa66aa5afea4f808cfcf9dbfc385a74bb075d"
    "de"
  end
  language "el" do
    sha256 "1d7c2fa89d508d968e4a63e49b71f86254b41349a20ffa59124e8f03f7f48780"
    "el"
  end
  language "en-GB" do
    sha256 "7322d51a0d49c34784ff3bd68d754450939a3671ce21329bdafde5b3de6c728a"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "3cf6b05d7628b10ad3b9050aadb877f1336e69b2b55dd699830154c52c20ba34"
    "en-US"
  end
  language "es-AR" do
    sha256 "2af7cbea680fd9e66d6cc974067d418a1ca80b138f131d8d8b9c8c87c74f0ab7"
    "es-AR"
  end
  language "es-ES" do
    sha256 "b5ac283631bd87d114290df9a9f2faab55a180c22e73c9f134833c2dda45ce51"
    "es-ES"
  end
  language "fi" do
    sha256 "124f21f63af889f4b6621bf371472ecd45a5fe05ed88f156d170261d77ce7071"
    "fi"
  end
  language "fr" do
    sha256 "2c98e4e13dddfa41f6856fc3ee890688f58dca285d72735dd73074f5c97f669f"
    "fr"
  end
  language "hu" do
    sha256 "c08cffcdaeae7026614bdda848824e1c8db5c2f9d16a87d57d4b52907f717b66"
    "hu"
  end
  language "it" do
    sha256 "3799605f0cc02d87d0bbe48f7ab483aa3d962ee52f10aeb26a40cd68195ffeeb"
    "it"
  end
  language "ja" do
    sha256 "85694f6c89fb6a8466e14819279ba29ae9bf7ab43b4c596513580f21435adb9b"
    "ja-JP-mac"
  end
  language "ka" do
    sha256 "26f1bfcd097024dbfaa2526f48aff289a2f10631387a63a0dac99a90ef90e461"
    "ka"
  end
  language "nl" do
    sha256 "9aa045b51e9a186ca8b9605c9910928bf54a94b143f064d843e8c6f6627a35cf"
    "nl"
  end
  language "no" do
    sha256 "4079d65ac8cd1e15e0f3170952d5dd23cca932360d94297e4a83e1d9f661c0bc"
    "nb-NO"
  end
  language "pl" do
    sha256 "4992bb20da19ac39b323896258c653c3a01f3f1ae55851a8cda48f5226004177"
    "pl"
  end
  language "pt-BR" do
    sha256 "14f1a1ef9d83d69b858eb3acc7c4ba67533ed0e51329b4c8abde9ba5530bfd0e"
    "pt-BR"
  end
  language "pt" do
    sha256 "150d607a20dd42ef357913139856d356e71a41e298f9cfa04684d67c8721d5ff"
    "pt-PT"
  end
  language "ru" do
    sha256 "1703335dbde352250f460a34014e8643f4ea2acad42b9a4041173e5221d0a0ce"
    "ru"
  end
  language "sk" do
    sha256 "caa1448e9f6dcb55773fe26b366c95cf9cf18e894e82e88cb8398d19a5211092"
    "sk"
  end
  language "sv" do
    sha256 "91489c8f2d1729d24b6edb24fce837448dc74a963260471a0031d7f506408813"
    "sv-SE"
  end
  language "zh-TW" do
    sha256 "a07698c4c26f4b54846bd4932f2727598eb979f70c82ea0879009118759afea6"
    "zh-TW"
  end
  language "zh" do
    sha256 "d8e72336cc0848b4bdaa2d1d7358e668522ef31c62c783f49c125b3106edd081"
    "zh-CN"
  end

  url "https://archive.seamonkey-project.org/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg"
  name "SeaMonkey"
  desc "Development of SeaMonkey Internet Application Suite"
  homepage "https://www.seamonkey-project.org/"

  livecheck do
    url "https://www.seamonkey-project.org/releases/"
    regex(%r{href=.*?/seamonkey-(\d+(?:\.\d+)+)\.en-US\.mac\.dmg}i)
  end

  auto_updates true

  app "SeaMonkey.app"

  zap trash: [
    "~/Library/Application Support/SeaMonkey",
    "~/Library/Caches/SeaMonkey",
    "~/Library/Preferences/org.mozilla.seamonkey.plist",
    "~/Library/Saved Application State/org.mozilla.seamonkey.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
