cask "firefox@developer-edition" do
  version "155.0b1"

  language "ca" do
    sha256 "fdc5dbca1f29fe82b37ed389f892c218aceb68284dc52135c28a7b64f5431e0f"
    "ca"
  end
  language "cs" do
    sha256 "81074487cd72c119fa3f3ed0e892b2810c2f8f3fa06bc3b75ebfb7f8eafb059a"
    "cs"
  end
  language "de" do
    sha256 "a67f7a40af2ddc1022e39649cda93c6a680614e782d95abb4d1a121739ac81c1"
    "de"
  end
  language "en-CA" do
    sha256 "49fd5d1464f9af7b3677f6f48c605616125fe5faa30b82345a3f7196de6f876d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "41445d5fd1ded13c6f84de9e068fea0d529c0b19531446495748373606adb288"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9de637ce72e4d1a274981a4f3156ac2d3c8eb18d097b1151608c8b6ab19cca83"
    "en-US"
  end
  language "es" do
    sha256 "d26d6ed6a875e60339eaef234a4aacb4cc1720a8c57b745c64c7736ced205c28"
    "es-ES"
  end
  language "fr" do
    sha256 "aa366f8cd020aa5a3fd0b5fb555ec4f7f79d9444ab4ea99c7f2714d8238d4f8f"
    "fr"
  end
  language "it" do
    sha256 "3a49b80ca398cd565caf0ec5f651557e15f02a91b2d763b40f451dbe83215b7f"
    "it"
  end
  language "ja" do
    sha256 "da58a82ca437434a1bf5a6b5c9fda687a3adbb498742015bc8bb1d7114f32a4e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b05e7f6ff4c7a64d64dcf19c8e784b1676c8d7e35858ac4a1e4d43ce676eaec1"
    "ko"
  end
  language "nl" do
    sha256 "32617d74072652ce97ee88446031d3bd235a869efad5d7be9ed6d5f417dc1eb0"
    "nl"
  end
  language "pt-BR" do
    sha256 "c3fd10f39305aef9c50020d5854ceb91d06d9a8d893d01904effa7cd68fd0800"
    "pt-BR"
  end
  language "ru" do
    sha256 "189617715a0c5eca3fd8456e5f2de9eb8f3048a589a0605fef14a56ffd8686d4"
    "ru"
  end
  language "uk" do
    sha256 "22fe2162c0be58e66752d7bc2dc77869153b407e6e04f1e14ffed7822ba1c59b"
    "uk"
  end
  language "zh-TW" do
    sha256 "6914ce973a2b4933dfb1458f8cba3499c7cd0d4f37bcf13b0e94a4a378e42adc"
    "zh-TW"
  end
  language "zh" do
    sha256 "7706f5e1f18ca8f73df4b2a4f1cc866b7e3e4be9ec768bbdfdf4241454943dfa"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
