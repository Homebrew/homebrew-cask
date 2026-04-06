cask "firefox@beta" do
  version "150.0b6"

  language "cs" do
    sha256 "db17aee4de58e359ea96b1ac812cdd48eee8e89dafced5da092c5f7e3578db35"
    "cs"
  end
  language "de" do
    sha256 "6647566fa85404b5430af48c5e44266f16c4543fd4294ae962dc3caa4b34d8ed"
    "de"
  end
  language "en-CA" do
    sha256 "525532e633f8566f4ca0c8f7b73cb5ddfc6c09140e9cbe13446a951c321c4f61"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7ce32e6c8316d3a3d7ca3063687ced9114a5e43ee5096f36beb18c977ae0f127"
    "en-GB"
  end
  language "en", default: true do
    sha256 "aaef39ecaaf639d8549519370425f7fe68cc41781e4f9998f353777d217f1cb2"
    "en-US"
  end
  language "es-AR" do
    sha256 "1f04ea2fd05c90456a001397a142e2ade94adfc3c9f69f2a756d697e787db0f2"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a3ea85cd856b0249a2aa114b9e73dfa6aeba29de2f372490060091cc6a636157"
    "es-CL"
  end
  language "es-ES" do
    sha256 "69e16137e46ae8dd407406c7382c898449aa2bbc7c9d082cb0342df7d4882cf8"
    "es-ES"
  end
  language "fi" do
    sha256 "439e7e3097474ef85513e911131183443c3dc988ff404c693921ae8d2dbc5400"
    "fi"
  end
  language "fr" do
    sha256 "d8b9f92af34d06b9f0df5433536fec698120b7565613d5fd213ac46c808e1fbd"
    "fr"
  end
  language "gl" do
    sha256 "172c8b869ed7e432ee256a4944c9fd0568436809ccb256b1ba7bd1a5b7fe3616"
    "gl"
  end
  language "in" do
    sha256 "41b4fee15782155e556d9cac13c3f83901f8e8b1a141e9f3df6b60d78a9b3f6e"
    "hi-IN"
  end
  language "it" do
    sha256 "b2d879f5c786a3b3389c1b6ccc47761a7546e1a44afe19af395d0218880a88f4"
    "it"
  end
  language "ja" do
    sha256 "5fdb39cbde9387023eb9f1a018c7b986fdd6e31b162192237929a25c973adf4f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1c0407e6915e86f07b5a95f673a9e3cbebbc2f84bece6de39ab7386da6459cab"
    "nl"
  end
  language "pl" do
    sha256 "28a4e634cb2c3b773e270c95e481ce931ccacadce99fadc3dee3908c130a8c8d"
    "pl"
  end
  language "pt-BR" do
    sha256 "4900902ef7a09288760ba05848c17abb4fad3f28de8f0703a7ae3f6617a416ea"
    "pt-BR"
  end
  language "pt" do
    sha256 "9af2e8e1b3abc99cebea906963d57d63cc4314737b4689908781766b51cb95e8"
    "pt-PT"
  end
  language "ru" do
    sha256 "bf6a5c668b5f373d18dad0219e3855a32d2218a8ab5a1f01052cf2e7ea3108f9"
    "ru"
  end
  language "uk" do
    sha256 "95fb83118458e49956f04ad1f23a861ca6e19818ff5cdbd98d016dbd79b31370"
    "uk"
  end
  language "zh-TW" do
    sha256 "23536e8181d7eabeaed97cc36b0ae9c31dcaee047fbebd58a6bda5df464589be"
    "zh-TW"
  end
  language "zh" do
    sha256 "f693efc2155fe463ea43e150f585eed4594f2d08fe7994ff608dac3cac0e9b08"
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
