cask "thunderbird@beta" do
  version "132.0b5"

  language "cs" do
    sha256 "e1f8755a0c162f985caa5d8ff08b4b790b19faf5752bb66a46f83905d7b76c8d"
    "cs"
  end
  language "de" do
    sha256 "91695895f71b8a56123310e82855965e90a3741edd4089b0218d7d28c990b02e"
    "de"
  end
  language "en-GB" do
    sha256 "e5af0a45cb2ac4969eb60381600c178cab84bfc2bec90dda1a636582546a3b73"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a637b1029b3d73c0f317555c866d23a8175f886bf09553d48bab1072aa9b7b32"
    "en-US"
  end
  language "fr" do
    sha256 "9ecee6baff6873f2b2b283eab2bcaa669c3ab42a1e6fd50c5f1677d42b91826d"
    "fr"
  end
  language "gl" do
    sha256 "0a46aaabcdac4cf4379c4a78b640d75cefc33a6e34348a5a10e0d2c3f9033ee9"
    "gl"
  end
  language "it" do
    sha256 "d8519d95cd1bb14de9ca64f7e0adff754f4b5c10e8b59bcdfb8fe086fa693818"
    "it"
  end
  language "ja" do
    sha256 "ddc76277f1d64442286607d7897b63ebdcfcbe934b26b1a7aa464cfe181a04e8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "902712f9c1797126941ed5dd7a71bb8eee0f657281497643b06a34c3cda6129c"
    "nl"
  end
  language "pl" do
    sha256 "2c7dbef755d459137b15a8586eb3f6728e0f98b0622cc1b0919083deea7ada9b"
    "pl"
  end
  language "pt" do
    sha256 "6fe1d07c86f9436c32f1aeb8099c35b724e6104e453fc5b0f7920ffb0549316a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3c26230ab3dbf57db974d066fcdb6e3f1eb22f3d5a217626e9120070f44d97d3"
    "pt-BR"
  end
  language "ru" do
    sha256 "cfc150ce6beee7279dbda46877231e3896c7782fd6c02598b57f0eae2d1d320b"
    "ru"
  end
  language "uk" do
    sha256 "7010d2ab20b3a32387fc13391e3d61338c5af30ad607b00bffd0d9f586397a28"
    "uk"
  end
  language "zh-TW" do
    sha256 "11c72b30322cccf7168a2a4315accd110e3b66d9cf0e7e3d28e07bb6cb86a117"
    "zh-TW"
  end
  language "zh" do
    sha256 "f0a18b2106a8221cafc1e0797fcfeca3b7731f621cfbad099f6e36db0e4a4c5b"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird Beta"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    strategy :json do |json|
      json["LATEST_THUNDERBIRD_DEVEL_VERSION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Thunderbird Beta.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird*.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
    "~/Library/Thunderbird",
  ]
end
