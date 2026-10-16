cask "firefox@developer-edition" do
  version "159.0b3"

  language "ca" do
    sha256 "31ed3f641605baeabb36e448a4d34354d335923dd9b925834e86f85c1a3aeb19"
    "ca"
  end
  language "cs" do
    sha256 "659d21b861f691344a0a8ac7e1807b1e951e0abd8b3bbdd81123027c7c87d43c"
    "cs"
  end
  language "de" do
    sha256 "330a7ace20c57904506c95fafce1ff14d689cf10f000fe69502e2ef338f0e1f6"
    "de"
  end
  language "en-CA" do
    sha256 "1651a0e51eef86625ce992dada3681f345123fae87ca36b9d631c9239ba0f665"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bfc338d573787d764a4d4a00f5818bf1934fcc2e6a114508077680dee10a8387"
    "en-GB"
  end
  language "en", default: true do
    sha256 "283435c993388f0424d9ceb3001cc37db697429d92fcfb8f9c6c0b596cfd9541"
    "en-US"
  end
  language "es" do
    sha256 "2585adc3fc0d5476c42e25db909d1cecb8a6137eb87f000b3a6bf9fdb8033c8f"
    "es-ES"
  end
  language "fr" do
    sha256 "6843c8545edcf033bb94abd4870551260c75d27d8b99ce77f074ecfe7eac0717"
    "fr"
  end
  language "it" do
    sha256 "1b46d5e0c3f10e8e284243db0e8ac9b3d5694bef2f4e427a3f104b83c3128f6b"
    "it"
  end
  language "ja" do
    sha256 "5a960e6dc6d452b547458762f5181752cc169d8f224e3eedd646ee21533cc22b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "34e6563dfa208c652c4c0d0d8656b12b7fc831d11af6f174242a91f5c8b7aa65"
    "ko"
  end
  language "nl" do
    sha256 "da412ea710403cdce1e1dd82943d5f39ea99335db584ce0761c95c7986e35aa3"
    "nl"
  end
  language "pt-BR" do
    sha256 "a28a6cae15dfa376614218b973ca9f8a835771c9e5090ba61256f72f54343372"
    "pt-BR"
  end
  language "ru" do
    sha256 "d17f6d0068aeb57890ccaacb3c1f9448212c725fdd703d84315d77ed91d2a27b"
    "ru"
  end
  language "uk" do
    sha256 "0e667c910a750c77c9feb1146592bc832ffbe21f9d790e62dd190a4fdd784f81"
    "uk"
  end
  language "zh-TW" do
    sha256 "1d7488a1e6edab1a5332b51d846fef7ce768da5f9380f5204ca73b682bef4cb4"
    "zh-TW"
  end
  language "zh" do
    sha256 "dc848ff29e422de9c48b062adfa2fd42b80ccbfabcdcb9e265a06841e02c2e81"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
