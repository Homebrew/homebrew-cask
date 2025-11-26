cask "firefox@beta" do
  version "146.0b8"

  language "cs" do
    sha256 "ed74a596f1a49f9d5617360a7b9846894ce9896e57a00b733bee83de07e9ebe1"
    "cs"
  end
  language "de" do
    sha256 "98a80c4e20619bb6a90aa778b16b478fb879527544a674d12b01184c5d1f97c6"
    "de"
  end
  language "en-CA" do
    sha256 "9feccd67d4fee2a969d1244688b93f6edf52846786adf6b5a063f5bec7642a9a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bf0931c3c7baaabafca32c6e086ef131b63a50eeb5cf42b76a0588a8ebc45606"
    "en-GB"
  end
  language "en", default: true do
    sha256 "27e5293fb36fcbe52a83f8962e7b3f52d9a3ef30a5d4a8b8d5e891b81c02ef4b"
    "en-US"
  end
  language "es-AR" do
    sha256 "bebd69d93bddc56b532dd434509bd040734b93e9ba7f7cc2557a57b5e461871b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e29dde3d945275ac2fb7be4f0fbdabc62871bfcdb205f054ee1db31ef528ed11"
    "es-CL"
  end
  language "es-ES" do
    sha256 "68c0d6610ad900969d01b72e74e27632f46cdc19d38702543bb891c72ae9ff32"
    "es-ES"
  end
  language "fi" do
    sha256 "d2b3f395e68ef1f372a481fb22200bea6e6f8e2f3789bf092a67799ab9b8fd0c"
    "fi"
  end
  language "fr" do
    sha256 "d0e5212d44d7ca3232c779f47daef0ef9c5f46eeeb3c30f5eaea17072868e210"
    "fr"
  end
  language "gl" do
    sha256 "12c3404c96ad512e1ae30c44ee6a27936ecb2bbeea543072e1bbd81fb097bde3"
    "gl"
  end
  language "in" do
    sha256 "3f19ee4f946228688ed8e49d2931fc112029c8f863512f6047a9e80b9f70f96e"
    "hi-IN"
  end
  language "it" do
    sha256 "3e2ec11f3fc48083dbc44c6d17494d84cb9af444fafea6778f3b4421acc94804"
    "it"
  end
  language "ja" do
    sha256 "e188db600eeb8403c787546b115c4cbec35720ba43a8442842c94349773cc13b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7b8e024d4a298d37986798d14132fade1702a4afb5e6ec120576527e22cfb87f"
    "nl"
  end
  language "pl" do
    sha256 "334af29dd840020caab8cf2cea28acaaf8f85e624b5f11f80c7c3f5b25ccc83d"
    "pl"
  end
  language "pt-BR" do
    sha256 "54f78204eeac03f5443457d230709c5732ff4a0a86ffe3d8e81aee8382b4a94b"
    "pt-BR"
  end
  language "pt" do
    sha256 "75d03f55bad284b7d7d7bb778bf408417f4ce590d5b9a2080e7296f75f16c359"
    "pt-PT"
  end
  language "ru" do
    sha256 "44ce7f83c96375539ff51e228f7e00bbe91b4fdd6a14035dd7d9eccf9f9ef81d"
    "ru"
  end
  language "uk" do
    sha256 "1db9fec953356855f5ba6971858ab50650b3b1f83b77f37a1d27419f2bd94cfd"
    "uk"
  end
  language "zh-TW" do
    sha256 "554504ecfab93f063c950dce864acd4a24af05cc34ad83dffaec8233166ab31a"
    "zh-TW"
  end
  language "zh" do
    sha256 "9e39cbf3f7693044595203de70820d33b52211414ca9807f27e97828c1745279"
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
