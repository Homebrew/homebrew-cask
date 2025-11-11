cask "firefox@beta" do
  version "146.0b1"

  language "cs" do
    sha256 "bc0f9ed18883073e674b2e12bafaa685157b8fa8ee2ed2f4360b16f0b193fd24"
    "cs"
  end
  language "de" do
    sha256 "69f4e1e6a50f7aaeb2e087add365e5d94887d5ddeed705643f3ef62613b66358"
    "de"
  end
  language "en-CA" do
    sha256 "ad874f978df75029a5c0a211af72486c9adc792be5c3e9ea0ba1f2fd1cc52211"
    "en-CA"
  end
  language "en-GB" do
    sha256 "01c57e8915bef6e99f6533b2f0412b244c55a0eb05c6c07f0264b7bc71e490e2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "99b04c5152a33e65af51a83949c02e761a8e34d8ffbddd5e41df56077ef3e406"
    "en-US"
  end
  language "es-AR" do
    sha256 "1420fb1eaca3ed32516874fd83d55bf48450c3c15637abf92d177f0d1e5046e1"
    "es-AR"
  end
  language "es-CL" do
    sha256 "2ac330f08cbe05514bb63792576301f2fd0b855785a17ad7e52567abff1d1efe"
    "es-CL"
  end
  language "es-ES" do
    sha256 "f230271506cbfbf0f953e4f930ca3b82bfdd8f923a01ff1abff9de5617244ce1"
    "es-ES"
  end
  language "fi" do
    sha256 "e4175e1f7c4645bf1cfe52e1c6b9545b39f77c2e7d81e06d412eb2da209744a6"
    "fi"
  end
  language "fr" do
    sha256 "0fe6dc4be0c618cf317d1982da460e34f919a14981788cb4d1b8ce3bb856fb84"
    "fr"
  end
  language "gl" do
    sha256 "c5f7767f5aa46448caece1b8ce9a1163198156af18bfba8cd40d75d0704b7c00"
    "gl"
  end
  language "in" do
    sha256 "f4092015b78a912836305016dccb9bff5ff8afd9ef6cd720d0e5b8d8c1f70b84"
    "hi-IN"
  end
  language "it" do
    sha256 "33a131984a758b2c38ce9cc74c47237f0b25c6171f1afab0a2f698ef37e39835"
    "it"
  end
  language "ja" do
    sha256 "8458728ab820aa480eed2d18e1d6dee61d9b05f62072aa3be44b960d0986a120"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5b58a89816b9ea13ba95a192f2cc0735a17567a2d6ad3cfa6eb7639cc6744f3f"
    "nl"
  end
  language "pl" do
    sha256 "3a98c26ee20d9b5067ef673d37be0f5134788f65f1a50668fa8d48883c68de6b"
    "pl"
  end
  language "pt-BR" do
    sha256 "0c031e0725656bd37c110f89157432918246beadb17cb6dac574a755a8601936"
    "pt-BR"
  end
  language "pt" do
    sha256 "9c61fa2d85f8e859e8db78145f5c571f49cec5e74f6f1a4f8b723e127ab502d8"
    "pt-PT"
  end
  language "ru" do
    sha256 "c99db5a5871c7c59dd69949583c24b8c01c5bfd654c365d937dd907ca618f48f"
    "ru"
  end
  language "uk" do
    sha256 "dd835cbf8d2e2fd537f06f4beee7b60d88579a364f97e1bb5e73268285fc44d4"
    "uk"
  end
  language "zh-TW" do
    sha256 "e8a4f77f2a1b45de5940b39a107265b5f8005990d2973d7d8fa04997824b246e"
    "zh-TW"
  end
  language "zh" do
    sha256 "0d2b3be654ed8ab4cb7a223186f49d68b16755c5b35ac66acfa53852fd75040b"
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
