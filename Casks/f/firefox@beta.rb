cask "firefox@beta" do
  version "151.0b1"

  language "cs" do
    sha256 "9e883896a694355f9d09dc579d1a307df39583d1b50fc6a92b10311069248987"
    "cs"
  end
  language "de" do
    sha256 "b3ccca6d15f906150782dc81f25d48d25f88a0434b7c09dcc526d4921c126670"
    "de"
  end
  language "en-CA" do
    sha256 "2f28693b8e2f45182b67e0724252bfd34a46cf75409fb2b9f9123d8885602793"
    "en-CA"
  end
  language "en-GB" do
    sha256 "842ccc78b4d1fd65500b71b86e1d2721152bb4f175f3d2cc42f501d1eb827bf0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "63043bd5d9bc9fb9756b66b37bf9ea44e5139ebebaf330339342d6ac0def193c"
    "en-US"
  end
  language "es-AR" do
    sha256 "cd0dae3c2ec9ccf29db8d645b77a1dc4779a212f4a67fa6489f65b4c2abcacd2"
    "es-AR"
  end
  language "es-CL" do
    sha256 "41887baefe7f387089d96848d404c3f00f45c282ce0ad97b6ba9299cff642e41"
    "es-CL"
  end
  language "es-ES" do
    sha256 "ce7913cef600230ada8e36c1c1d964d57cb626c97db2a138f28c94950a9981cc"
    "es-ES"
  end
  language "fi" do
    sha256 "00545870ad41a1db48e11cc94668179ba0e5b5064ccd6edc4f2a04ca8e61ddf7"
    "fi"
  end
  language "fr" do
    sha256 "a9d6abc78ce59a1aa0ccfab933c6c893b97ede9044505d6c6e14fc269b0f8ef0"
    "fr"
  end
  language "gl" do
    sha256 "93886c808fa2d33307eb8e0b978c5e54ec1992984d8ed8de1fa3655bf7cafa79"
    "gl"
  end
  language "in" do
    sha256 "74d778323da6eedaed428eed959e5bc9c628b618256d1c44e896ae86ae52511d"
    "hi-IN"
  end
  language "it" do
    sha256 "767ad173168a457ec16bf9b4d403eb721f604070c6fd649c8989149a04112289"
    "it"
  end
  language "ja" do
    sha256 "994193cf12461b8860e8ed5e0ed9ed59b023f27f78271de9c07d4c3512da19e4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "05907cea3c809de3df4ca6bdcfe70661522af04528c8cb53331c6fb672333136"
    "nl"
  end
  language "pl" do
    sha256 "e39c666fd1cdb69ea43bce24ac49c2829b47ca6802141b60d2fb899e2bc0fec1"
    "pl"
  end
  language "pt-BR" do
    sha256 "ddedfe071a3aef94c51f8ef66b108b3eca93cca24cb7c26e296e40a80e008f20"
    "pt-BR"
  end
  language "pt" do
    sha256 "0f9838306d5ced8db1027483c29c4f8cac6f13380ee22ab22e76d8b278f9a02f"
    "pt-PT"
  end
  language "ru" do
    sha256 "e0a408b4775ac10ec711bad1ca39e05b66db52b4f7a38704b6e06e16220e6a51"
    "ru"
  end
  language "uk" do
    sha256 "533a2283bbf4e395df03adf13a5a9b03c2c0618443db76085ef572c45798daaf"
    "uk"
  end
  language "zh-TW" do
    sha256 "b63bad02ea642167815e626a73c176da78f3e30fc28fbfd8dedfd753e502f483"
    "zh-TW"
  end
  language "zh" do
    sha256 "5b77731bacca5026a1c4134dbc1545bc50081d928e0ac6ad311b7fca29222b0e"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on :macos

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
