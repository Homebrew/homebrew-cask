cask "firefox@beta" do
  version "145.0b5"

  language "cs" do
    sha256 "b3c5fb92da74424ab941b62e46ac96d13d964a9c0fa05db3fbb44db20eb96394"
    "cs"
  end
  language "de" do
    sha256 "fce634a8ff4b5ce3274362aab467a39f2423b3c7bc6082d6a5238fc7adb8d4ed"
    "de"
  end
  language "en-CA" do
    sha256 "84bad27528c30910d8b7764ebc8957c8e43d67e21c9ed48d069a286dc81f277b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "61e8cb52b0b3a66ac7d59ce4bb8797b77b7bcb91a33f56e9df0041e9901d2fb5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f1cc4967d8e58f1ea746420a6a3946af3f2585843573539ff285c521597a465f"
    "en-US"
  end
  language "es-AR" do
    sha256 "d22b3559014f40dec5989cbc943933df4772febe08d1c91c956c889574bd8210"
    "es-AR"
  end
  language "es-CL" do
    sha256 "3a94add4978eeaf06e3531223055759431f3bfa9433e4a25ed40faa1955c90f1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "209a387a239663592dbb3edd4f21de58a46d68eace6a299850b96b106324d1f7"
    "es-ES"
  end
  language "fi" do
    sha256 "d89cdd939182188720336aa9b83c185686517196bfcf3c99a7d51cb9a5bf63b1"
    "fi"
  end
  language "fr" do
    sha256 "1e9fd262ecee4aa9b1862bab96086fd260384a07765b88c93a0422e33b56fecb"
    "fr"
  end
  language "gl" do
    sha256 "d1d8a288541d24f726989999da90ac98605fa5fb6f84b51252f8e7e10feb0231"
    "gl"
  end
  language "in" do
    sha256 "358e0d4eafa1fb2f75d3a154226ef8e52eb4d4f4c4a769083ea1ed83ffd83920"
    "hi-IN"
  end
  language "it" do
    sha256 "df26ddbddc400ac65303ae5c6ff32d6a50aa63acead4031771ce7fea00c14dea"
    "it"
  end
  language "ja" do
    sha256 "1d9623173f5f3a06b3054cdd4ff023a76b99ceffc84349cd943f7eaf0f18f725"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5a13e3ed8941050841be8e4b7692a4e3a13c0b0712e35a4fef07d467d4386e85"
    "nl"
  end
  language "pl" do
    sha256 "1f2faa0ab6d498c1e8010c6cd02cc38292dcce01cc28e350fcb74a26c0929c8f"
    "pl"
  end
  language "pt-BR" do
    sha256 "1083011a04acc36dcef31a37b1a3fdf597b82bbe83d57efcbb456a77e656fa54"
    "pt-BR"
  end
  language "pt" do
    sha256 "7d8cf3d259da25941a2dd98b830cc874e76d83b8733fd3438dd4d938e6a36231"
    "pt-PT"
  end
  language "ru" do
    sha256 "c5ee5ae1f3d399cdbdcde63d5d0c3a2c46b50f555179d4c228991f2bc03610ed"
    "ru"
  end
  language "uk" do
    sha256 "6dc74120361e4ce2454a9e39a86ad2116b0aabf519a712e731f1d461423425f8"
    "uk"
  end
  language "zh-TW" do
    sha256 "b545d2fae01378f0aaa006c079cd8ae4df9846ac659d88db83a04b9227db190b"
    "zh-TW"
  end
  language "zh" do
    sha256 "542a02bdf59a69692748311aa8088c1720aaf34d01fc44e714390e1b2dc0d5e8"
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
