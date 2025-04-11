cask "firefox@beta" do
  version "138.0b6"

  language "cs" do
    sha256 "d2053f71f10ff97eb094de0455e43e062d516b66fd695f9380c622cd078e48db"
    "cs"
  end
  language "de" do
    sha256 "f18adee65bfeebdb35b051812ecca7f1b49e86d8d1ace9213e7560e0fdb2704e"
    "de"
  end
  language "en-CA" do
    sha256 "62c08ec1dce2a79f8295109b81413a466b7b338a6066c39b4a38a1ec5f9a2b22"
    "en-CA"
  end
  language "en-GB" do
    sha256 "124dfbadf860481a1256db04158bd3fa5ac532751dde21e0fdf91f0b26b28686"
    "en-GB"
  end
  language "en", default: true do
    sha256 "613fa59b335c9fc65a0d990df8907d2760ea096c319c753b6745ce96678cd24f"
    "en-US"
  end
  language "es-AR" do
    sha256 "c1418b5e76d9fd85e9edd653b5396e126d1b9d9555427332bed82806d68db6f7"
    "es-AR"
  end
  language "es-CL" do
    sha256 "ed1bf72cabea017b0ccec0b7751575af03aff0c9d95f21798cf7ac9a4e6afb32"
    "es-CL"
  end
  language "es-ES" do
    sha256 "7281b2bbd947a339106bc6aa3270de9a3dfd7a6512f795f6dcf830cb7843bc19"
    "es-ES"
  end
  language "fi" do
    sha256 "b741ce93bda108b5df43f4f460cb5b0eaab7bb332885596ba5b4db61f4d49db6"
    "fi"
  end
  language "fr" do
    sha256 "e03cd836278cbae910350fb9e889dbc4fbe0a14d16c3a63c4abbb05c585999ee"
    "fr"
  end
  language "gl" do
    sha256 "cf7f58619584d02bc59eebffc68e1eb6aac4725914a60881ba1d541d86b3fc9a"
    "gl"
  end
  language "in" do
    sha256 "72697023aa16ff93536b9b6e69e570bd45629e65ebc72c8eaedc598bb238f8e8"
    "hi-IN"
  end
  language "it" do
    sha256 "a4125802849c2a3139974b060fab66fc0a1edd9602cebd14e0eee526023731dd"
    "it"
  end
  language "ja" do
    sha256 "fbe60bb9d7e275174ccb86e14db46e4735268797b03d23d48ce0351de28c07fb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8432787dbb9978e99ce8174faa5a828fbf0e3fba6de8c772fdbb128354e89e1e"
    "nl"
  end
  language "pl" do
    sha256 "17f6c4a8a4ace9329b3a84fbd9060f369621f1aa5c15fcfd7ebc8f3f384ba1af"
    "pl"
  end
  language "pt-BR" do
    sha256 "1405764db49cacdf29b18049feae8b9b56a460c33663f4ff52c1249bf701c1b0"
    "pt-BR"
  end
  language "pt" do
    sha256 "7aac54003c86dc55994563520ed93298c6c7e230b782ae4000fb21505f1fcc87"
    "pt-PT"
  end
  language "ru" do
    sha256 "abd5c20b26d7da8323fcd97a501fe187a7a462a6bc79f4b4a774c51438e2f510"
    "ru"
  end
  language "uk" do
    sha256 "7105beb141f5b0d880c570b95baebfced18a26b6239dacfbbae9f7b9e8b6bbea"
    "uk"
  end
  language "zh-TW" do
    sha256 "e44b062462e2b606a2eb567a48cda40f92317450a7c9336152ea840797f5cc57"
    "zh-TW"
  end
  language "zh" do
    sha256 "8e8dd123da445cf84ee27bba1dda1237a9c27ce78aa35c94284123dadd08f732"
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
  depends_on macos: ">= :catalina"

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
