cask "firefox@developer-edition" do
  version "133.0b3"

  language "ca" do
    sha256 "8e95809c86dc432e28d29c2391bdd11ee95a31ff1ef1525425fc35b2bf0f44af"
    "ca"
  end
  language "cs" do
    sha256 "3e0d97a1b33d8a006e24722967021ab039957feabbb92cbdbcc1b32251ee2ee6"
    "cs"
  end
  language "de" do
    sha256 "5a471f6f475380eb94c305d67f2734dacff0277f29a33888d5035eadde43d84b"
    "de"
  end
  language "en-CA" do
    sha256 "6ee04ca865f830b2a46e1ca5a9cb413de33920dc32ea213f72b1d217089d8c3c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5f1118344a68cd141e96c6cc777efe0048364cc7e3786d6c9975768451f1bddc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0b75622ad9187e9cd2aeb93bfed7801303b31d8d0bfe950a649a63712b3a62d0"
    "en-US"
  end
  language "es" do
    sha256 "de307fc71e7d55a9c434a3b67c5d8561dd0676249ef1e108c28b219b5a77ccdb"
    "es-ES"
  end
  language "fr" do
    sha256 "1bc1e05ced505c971f2bd8e9b5df7b630e7e4654b90c56e46d0119bba1706f4c"
    "fr"
  end
  language "it" do
    sha256 "5f18afae29eb46c66f3b027821f7727632e783ac23039309998c3d4679a93c00"
    "it"
  end
  language "nl" do
    sha256 "591e10c6d3067d07064f645eb868f2730ca025c9f102104011af67781b5d6023"
    "nl"
  end
  language "ja" do
    sha256 "98af4722a3afef0dbac14fd727236ac56d35597751e3a9f6a9f1379f50282715"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "dfa5e292c98b0841d262568a7848175d6607318ef4e7d3ee4c3f9037247149d5"
    "pt-BR"
  end
  language "ko" do
    sha256 "527cfc0f61694cbe52c4343dcda1fa8b321d6761c8a022a56bf3b1491f526c53"
    "ko"
  end
  language "ru" do
    sha256 "db5ea8b00ca95ee26cb35ff7c75e95fbf5a2efde0572ae7c9321a8e9fc734d40"
    "ru"
  end
  language "uk" do
    sha256 "567baca9f616af5c60e3e90a46c5cc6343dfe29ed5777187620019977d3a2b2e"
    "uk"
  end
  language "zh-TW" do
    sha256 "4a685d168a89836e62a75a46afc8d60b79a7ff916b2989396f5d880f5368c235"
    "zh-TW"
  end
  language "zh" do
    sha256 "646bc3746e42891f6cb50b5d98efe52ec704b8446e6d2df2a3d2613a30b2afff"
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
  depends_on macos: ">= :catalina"

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
