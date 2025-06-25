cask "firefox@developer-edition" do
  version "141.0b2"

  language "ca" do
    sha256 "3b5fad6df37ae1a19b6491ca477e8e4a72fc7bde617d4f0b4afc12226411cd60"
    "ca"
  end
  language "cs" do
    sha256 "38093708eb0e5a0872bf3ab0dbe1b1eef1c53bbf7cade22b67a73a9c2348a6dd"
    "cs"
  end
  language "de" do
    sha256 "21f45820bd3a5c9bc926d8c00ff4ecdd0bb2a9cb5a581c7fc1049fbd31e456ca"
    "de"
  end
  language "en-CA" do
    sha256 "f87c43922211e603325778332496649129ef9057ef78f7f12097e5c38fbc772e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "433653749255594be5f7d64cfab1345b4eb47953afaea85ae6168e2037d8dc51"
    "en-GB"
  end
  language "en", default: true do
    sha256 "31052d9531a0bcdc6016bdd9dbd50409ec092a423f3cb5804fa12bc35c035bf0"
    "en-US"
  end
  language "es" do
    sha256 "ac5d4b84e1e877c4672f02f9117165c19dbb4e5267282f680e6a5846f9b40fdb"
    "es-ES"
  end
  language "fr" do
    sha256 "37adf93102efb0d8cdd3200fcc4d3d19f3348f3a422f42f880b373a651de4db0"
    "fr"
  end
  language "it" do
    sha256 "9798c0fe95749869378fc63f0d0b42496df66fa8f4e729dd97ff62d3788e43af"
    "it"
  end
  language "ja" do
    sha256 "e658dad5caeb067517bdd7fd02c503407c01dd2198ad255f5c4bb732b6268e6f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f6deb4195d8e57f02bb9fe52ef72594efd9a9699368cf0afca8018d54281d156"
    "ko"
  end
  language "nl" do
    sha256 "fbbe963e304f3ca06facc27f8b0a8b0ec44c031b90b8ff57a2e33cc9feab53da"
    "nl"
  end
  language "pt-BR" do
    sha256 "63f973e5ec5073dcf73d349dab7110901b09074df9c1ab9aaf9ff975b1934cc7"
    "pt-BR"
  end
  language "ru" do
    sha256 "822a060feb25120221f68b342e4033279a57932bfae0369cf524c2df06586ff2"
    "ru"
  end
  language "uk" do
    sha256 "e24512aea02e6f675d0cf963b67b00897a1e759398c9e98fe62c3616e03ace7a"
    "uk"
  end
  language "zh-TW" do
    sha256 "1284816bb02898a9be88d3ccd7976d6b0dbb520a6f7571d3b2aaf0addbda4f6b"
    "zh-TW"
  end
  language "zh" do
    sha256 "d22421f9e0f06518adb4ee1765c4a9e04e203c653b65a37edd969f133f2ce521"
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
