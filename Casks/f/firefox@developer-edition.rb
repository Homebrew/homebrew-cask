cask "firefox@developer-edition" do
  version "139.0b7"

  language "ca" do
    sha256 "83c2d41d26277490346b6ffb5de4d57fc3e0c47ede7405a58b00ed8a82494c18"
    "ca"
  end
  language "cs" do
    sha256 "be46e608b21d584264e5ebdae859f1a1f2f2d0c962db71acbaa9b912f5cbd2c2"
    "cs"
  end
  language "de" do
    sha256 "c4bcd478a447fdfcee3c5d67817a5627db2714410695584778ac4b8a7b05aa00"
    "de"
  end
  language "en-CA" do
    sha256 "14469ed69461869af907c522e52d869a959ca55d77223518e1509be61af78704"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f2f5737fac411c2347a6ccd4457b3046692d3b404ae724ff7361f5ca3f94aea8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f079ee63a6ac3eb23b5ecb7cdb0dbacb9a6d701be7715cb8b5a5f0a824429758"
    "en-US"
  end
  language "es" do
    sha256 "7f99046b0f9926ed13c59ce962f54fea911e9a94dd5d70237214920fee01077b"
    "es-ES"
  end
  language "fr" do
    sha256 "09183156b0f47946b50a4275eb30c4f9ec59b7b618411d035239ef475f781168"
    "fr"
  end
  language "it" do
    sha256 "3c90514b6341497670b47f2df9318392a6bfbba78019e0c0920588513a50c1e8"
    "it"
  end
  language "ja" do
    sha256 "b066f285f752b45d3f787b75e8646dead40a9573a12d7114fc68ebfeebc81774"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6d548d71a071c0d3da6a70920c5871b8bcc5c500168ec24f5cb57f258c41ce2b"
    "ko"
  end
  language "nl" do
    sha256 "69ff0cc9412dfe372cb3014780df7217ec748859e36e4537dd9faa829bbfeffa"
    "nl"
  end
  language "pt-BR" do
    sha256 "e69ce6b0bc2a8d9c8081f60c0809bb486d30bfc43db9e363173fa8af91293e57"
    "pt-BR"
  end
  language "ru" do
    sha256 "ee8bac8ee15b0fd2364637412e598b04b3ec731cd7f8acd8ae6ccd98c7724eea"
    "ru"
  end
  language "uk" do
    sha256 "f6657568c40b4f5d47dda6788ea36c08b7c97564e3b2fc3d845f82fa5051e445"
    "uk"
  end
  language "zh-TW" do
    sha256 "bda7056d9ae9b90eedb4c080a46cb2312090b575ae91e91f9dd2b4e79a8a13cb"
    "zh-TW"
  end
  language "zh" do
    sha256 "9f750f18d679ace8ca3081cb000eb63f2fa76281aa933d1bef3b0b7ac81204bf"
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
