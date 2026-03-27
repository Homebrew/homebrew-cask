cask "firefox@developer-edition" do
  version "150.0b2"

  language "ca" do
    sha256 "8e337d3bdb32a5f7fe1343cbba96039a6a6e52c0d461ffaa614951569593cd86"
    "ca"
  end
  language "cs" do
    sha256 "8161c2f3fdbe01c96e9f1bcb1689b15fc545eeec1327f8abfb73a0235494bce3"
    "cs"
  end
  language "de" do
    sha256 "cd5e858f36533cbc574d3e576706728c3b5fd6a6011ca7a23be202681bf40223"
    "de"
  end
  language "en-CA" do
    sha256 "5bbb1dba17d5852b809a04942fdceb2fe058989fd9d980c20c23e90aa7428a77"
    "en-CA"
  end
  language "en-GB" do
    sha256 "55be6b3ba0b7337019535e03f0af15b80c490af195a8602b95f9d7fedb9413a7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8dad51abf58768b5e96bea14f9ede7533eb507c8fcff4b1bad329e35aecbbac3"
    "en-US"
  end
  language "es" do
    sha256 "532207649f1b309b89d52b35ae8ca95feceaf04cac6f6f11e46141f4efbb9c0b"
    "es-ES"
  end
  language "fr" do
    sha256 "58c770106d130b7d69740dd3308b4dd4c8b9bc5f0428b220375d6e6a8c838519"
    "fr"
  end
  language "it" do
    sha256 "f51c68a299f65f153e7ad7699b3914186214b415b33209539bfdd64c2d637cba"
    "it"
  end
  language "ja" do
    sha256 "f701a7448a990b1e4f4b4883ba791eb03034e8b2e6c4d7d344f3f7288e7bc29a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "add8456293c6edb580a5438dc7806d0f0a40092f62c591e01b735aaa5e03d1a5"
    "ko"
  end
  language "nl" do
    sha256 "edbd4ea7f02dff83e36233591b2f1532d20e9e60ba8a24e19297b1b5403dc834"
    "nl"
  end
  language "pt-BR" do
    sha256 "2b910f10624fa57e2b19158c2c252dacd87aa4d3229a1ca848e393e59e6b06b7"
    "pt-BR"
  end
  language "ru" do
    sha256 "55b7ee99d5efe3dd0c6b650f5e2d2e7694fdaaf3918bc9ba275017575cd463bd"
    "ru"
  end
  language "uk" do
    sha256 "59e9f68fa7c15484cc91ecd7dcb4055f6fcffd5eb12027e7b7e7f085369961fd"
    "uk"
  end
  language "zh-TW" do
    sha256 "22e6785ff3637b3ab93c26fa22ebb4b922cfecd2256b123669a0963fcea5488f"
    "zh-TW"
  end
  language "zh" do
    sha256 "751ff6b599bfbeaee51aece20ae17da268470b11f855f33a5c5a437bd8fb28a5"
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
