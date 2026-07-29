cask "firefox@developer-edition" do
  version "154.0b4"

  language "ca" do
    sha256 "9057286372dce27b070b6b1dea5ce965dc68dbbb05a4fe9e1e5bf3323f2d17cd"
    "ca"
  end
  language "cs" do
    sha256 "09e51f501fecdfb6c7a4366a9048985a873d78e274ed1913f3cd5aa5c1e5a3b6"
    "cs"
  end
  language "de" do
    sha256 "824642399ad2edfa0087151b692bacf595f1868ff2ca542d4b3f44023769bbc4"
    "de"
  end
  language "en-CA" do
    sha256 "22519396cc9f36157272afc0e4dca8755e3f11099274d8f76b4ae835ec77f7c2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "95fd8c162b7a4a1151ae62f4ab31c899dd484c94403c06ced8cb79642c49fe16"
    "en-GB"
  end
  language "en", default: true do
    sha256 "725eedb303b8908575fe66eba6a9ec404c896011052dfab3794ffa88964d5359"
    "en-US"
  end
  language "es" do
    sha256 "11ee63515b4cbd1ca17078e50836da06e9e71dbde0af9c99e15db620d15c3ffb"
    "es-ES"
  end
  language "fr" do
    sha256 "8a3d082a8abe48182916031158e573c1577c33743f8a3ee0afc281538dab9dbd"
    "fr"
  end
  language "it" do
    sha256 "96bd5ade1fec39f27537c560e227fb213fe57fdccca6d4fb533f53eb69f58f23"
    "it"
  end
  language "ja" do
    sha256 "2c835ff19c537fd671cf1063d075886f0ce770689d55c69de9e1cb593838b172"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b29a7a6bbfa6a7db560dd80a8caa0585c2dad3eec7d882786d025932145cd44b"
    "ko"
  end
  language "nl" do
    sha256 "834f2ece1ebf152b2219fadad980c72383118c701835861dc7676cd0f2a04901"
    "nl"
  end
  language "pt-BR" do
    sha256 "ffedbdd78f511cbfa777585e1963e6de1a090c509bd5ee41129042f0cbb2398c"
    "pt-BR"
  end
  language "ru" do
    sha256 "99fdda1a43b74ce29f02febfce99b4e68d932c8f3b04efd667580f5e6b6467ff"
    "ru"
  end
  language "uk" do
    sha256 "a567313ee59d5afa8c0e2a3cbdf5e7ca0a1dc1339ea258d75dacf612bd58d98f"
    "uk"
  end
  language "zh-TW" do
    sha256 "f20799dcbac027b13b588bc14a86d08b2519762353ea068146f853c568d5f1d6"
    "zh-TW"
  end
  language "zh" do
    sha256 "7f83c832af49134f0b230a567499912f8327d3a599db8e82c1d8c440d89f9855"
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
