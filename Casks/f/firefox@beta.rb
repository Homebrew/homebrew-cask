cask "firefox@beta" do
  version "146.0b2"

  language "cs" do
    sha256 "65556066f7bd0eb6163ad48db57f54ad8584d774dc8f050f6b4743d9d9cf714d"
    "cs"
  end
  language "de" do
    sha256 "d8437224b67580546e57d7aeffe3df9c2a36c9394d885266d000cce67d0ca5f5"
    "de"
  end
  language "en-CA" do
    sha256 "073f029ef7c5c835d91970514faac4e2b3e703b022b8824dfbd2abc38f2ceadb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "46f3a5fe9a23a7c5869428b00a6ae35bae72f6c065b45c2e51362c2d6743f068"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a065a20bce43cc88a0979268babfee71f89fb30510425716958c8519d0af0bb9"
    "en-US"
  end
  language "es-AR" do
    sha256 "5206d7821deec82b746feb7e516ff9e1ca72a0474cfc11b9013850a001edee2b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "28f1f16003b15c17fe3268a17ed7eec2b5353e6b9850a2b9815069eb2d078f93"
    "es-CL"
  end
  language "es-ES" do
    sha256 "84c285682be2119eaca15c97f2565a21a86ff508c315b6810f8e84416f6b2ce1"
    "es-ES"
  end
  language "fi" do
    sha256 "c0ad51e7023b4c0e495c98a94fffd720b5df6dedef45df3b16522d09bf436d87"
    "fi"
  end
  language "fr" do
    sha256 "da298b196f1ed17f599845c1cd26a5a2bffae882ca5aadab43748886f04fc046"
    "fr"
  end
  language "gl" do
    sha256 "0467108f1e1cd9f1023309f811709986019c5b9e887056195f314d138e220246"
    "gl"
  end
  language "in" do
    sha256 "4cdf8649394b42b4a29b74597de64db71f81bb61e6573b45d05d9de99b357507"
    "hi-IN"
  end
  language "it" do
    sha256 "262e3f983b214dfbe66944f58a3354d032b05d3a982e6b545a7d0985101589d7"
    "it"
  end
  language "ja" do
    sha256 "441cd6c54ae6f763471ccf77bf2cbb49c0fe20e5d5cd9e535db4246b8f10f87f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6c1fc6ec03c5b2e2e519ffdb5319eff354f97f4b60c9d16b6ebe86f882e47cb7"
    "nl"
  end
  language "pl" do
    sha256 "005a09f1a9abfdf658ccd973fb8d256835741f4f0beb182672db7ecdecb674ac"
    "pl"
  end
  language "pt-BR" do
    sha256 "3bbf61d70ee0e96d140e776f6959b34acb3082fa95378b2d7034b473e52b4d29"
    "pt-BR"
  end
  language "pt" do
    sha256 "aa6e17874a61c3caab20b2772ceabfbbb42054beb896e5c6b63eee2a33809698"
    "pt-PT"
  end
  language "ru" do
    sha256 "a3995ef263f6003730bd6783ceff1ee9b5656368301f7293f44f795fa18c5650"
    "ru"
  end
  language "uk" do
    sha256 "54988e2fe449e3de05f9107f326e65a6c488554dc28d527bced94496c6c40b73"
    "uk"
  end
  language "zh-TW" do
    sha256 "90d6744eb40a98d1118a7c86e416b59faa23129d753dbd25d0bd899f4c826979"
    "zh-TW"
  end
  language "zh" do
    sha256 "ed197f0e44b94d280e7d16deccd34326e881b2ca95629f01650b3662381154b6"
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
