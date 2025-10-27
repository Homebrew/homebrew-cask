cask "firefox@beta" do
  version "145.0b7"

  language "cs" do
    sha256 "17aa9a554a77b008ea5b08b188900d644f381420ffde0606683ddb487c259829"
    "cs"
  end
  language "de" do
    sha256 "b96fcaeb0b0552ecda4de1091a7a727b6b4eb8b0e32e4eb13362df6967deaad0"
    "de"
  end
  language "en-CA" do
    sha256 "bad0f8d3f6ef6d3fd00f8fcd22420297a3f43ec90e80d25f58b5847094a82d6d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "82b76dc4d8ea390dc5a1ad185cbfe72463d94ec90a2c7f5b3de6588536eb41da"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d0e665953c0fcbb858dc3742f8f5aba2ad75eee3b38d7b9403e3a33fe7233fb1"
    "en-US"
  end
  language "es-AR" do
    sha256 "721f5ab69a3f8f5b3303b5cfed5a6e49f17ab5f3613c01ec340760e56a41e627"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a7f711744dbb39e119ae056207819236a5b1233344d615b9bb221de153ac556c"
    "es-CL"
  end
  language "es-ES" do
    sha256 "0070ef90a94b6c44b4deb9c3f7d20258e0da82e425cc85239dbf5a80a616e9df"
    "es-ES"
  end
  language "fi" do
    sha256 "689927cb5a6a9084d1f8c988f7c851fc3299ae88383c8fa7c6ee1d6503f1c57e"
    "fi"
  end
  language "fr" do
    sha256 "4d7bc0e43d414a2e7d927651575636d8234d361a63a9efe3a1a162bf34e40051"
    "fr"
  end
  language "gl" do
    sha256 "5a8532b1ed9d135c227aef85e5d7dea4a94898f7e6b319266f697cdacbb7cba6"
    "gl"
  end
  language "in" do
    sha256 "5ee9e3ea5fb5f9894ac0136963af86b99d154bc08172d96bd5ebf40761c4a23e"
    "hi-IN"
  end
  language "it" do
    sha256 "b12c2e3107d159666472c67070c87ab0936be7ec5d13f35865a8ad87c743d1cb"
    "it"
  end
  language "ja" do
    sha256 "3d2eb979a730bf42a62a56d9e6dcd48c63e6a480b0a76eb8b649b2fc753625cc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "594f340342dd86b6c3421ca787b2d3a698061736032f63aa5f9696aa2a81f9b4"
    "nl"
  end
  language "pl" do
    sha256 "5cc9a6547a89d3b3b48ec0eaf7a32b320df390f05c0e4d003ec119cab1508b1e"
    "pl"
  end
  language "pt-BR" do
    sha256 "c950f6ee81624672803bc027b92389df4394297bcc5783525a58cb20c3e2802a"
    "pt-BR"
  end
  language "pt" do
    sha256 "d471dff84e7ab696b3c78e977cfa7d8fd7f1d6e7201d6fe633771e463400ab48"
    "pt-PT"
  end
  language "ru" do
    sha256 "c7c1486a14d21910935bd7dafee6b5567f044fcf61fa196bd8662ba189f35108"
    "ru"
  end
  language "uk" do
    sha256 "d65130438471b559a39a5ce4b3f6953e20ae37e712d73fcb78f6e577cda49107"
    "uk"
  end
  language "zh-TW" do
    sha256 "df4e7644cb4ff52a8b595ac901b9d1be430dd645123d4b78a843e319b0f09807"
    "zh-TW"
  end
  language "zh" do
    sha256 "2589782476f511d05eea338ad278139d90fb39d2de067606cf0cf41bf19e948d"
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
