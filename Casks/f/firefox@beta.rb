cask "firefox@beta" do
  version "150.0b1"

  language "cs" do
    sha256 "30d2b3f874539ffa31d1aa4ac69d2d376d38b767dcf58f11ef4878dc65f9f202"
    "cs"
  end
  language "de" do
    sha256 "f526fa1489a1566f2cf75477b7360bb5d5ce0ec5150414ec72783eeeffbcd2bb"
    "de"
  end
  language "en-CA" do
    sha256 "dc31b2e742a4e41cbd8c91bcac497180bee81305bc7e84227e4f90858f6c65e5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f876623a431cc8cda9f03ccad031ef475c4ca77712e116bb2e1de78acb3e2e8a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "385a400ad629b87c49e22fdeb152446ea8e676a68c6492bfd470c86a9dc87df9"
    "en-US"
  end
  language "es-AR" do
    sha256 "1b4d125760f66b1b0ca734089a9da9b13231f5c36379ac7444d3c052078f3708"
    "es-AR"
  end
  language "es-CL" do
    sha256 "fa178d644e6c11fe6ae06689abc1d54c003d714aadd993060d43c6958b266d94"
    "es-CL"
  end
  language "es-ES" do
    sha256 "5db7407b91f003303c13b10ee5d26e4b12c2c57ba30ad216cfd78c6419cdd579"
    "es-ES"
  end
  language "fi" do
    sha256 "dc1949f7112017ad0e99705351e2e39cc2907c51fb862d442f2eab4535bf51fe"
    "fi"
  end
  language "fr" do
    sha256 "93d9b181edf4b13e6609adc7926e79ef331e9e030874a65c5f32f48383f5e539"
    "fr"
  end
  language "gl" do
    sha256 "1b4dcde9ac0ab2a1a8ef28868646e1893feddc2a5ef0b017be13a18d85f9e6c7"
    "gl"
  end
  language "in" do
    sha256 "a9cde2eb367cd51dcc33dfbbaf2c49b5a2da77ec125f49c98308c533db7bac11"
    "hi-IN"
  end
  language "it" do
    sha256 "ffeeadf91c12af516ce3f0d23fd4858c3da3491cf071adf2bfd4efbc968312c7"
    "it"
  end
  language "ja" do
    sha256 "e613c9e0c672ba5163c1c356c167fe8ee1204c62df23617a7ecdee659316b656"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "233ecb44d111d7e47eb41bf3a2f91db5b4b41ed1c9f53d7e6d86106d4067deae"
    "nl"
  end
  language "pl" do
    sha256 "e421a54230eac0c33439b4f0be8cec98c48bee2f042a77eddd12808126db50f8"
    "pl"
  end
  language "pt-BR" do
    sha256 "8cc3e6d009ef52bdfecbf85b539c463b28a929867cf78d58c9e0089adf3cb32c"
    "pt-BR"
  end
  language "pt" do
    sha256 "e422844e9e47cf0cd3723876d7e5f5b4fe7a6d02366b98ecae3cc881fd5d8444"
    "pt-PT"
  end
  language "ru" do
    sha256 "f256d846c659fc77130b6364a48a33828562930044fafdfeac742c769d507e52"
    "ru"
  end
  language "uk" do
    sha256 "d1e0e36500bd03a0a8c618d9b01b73d5ace3e1d5496fa58128cc25e33e627b72"
    "uk"
  end
  language "zh-TW" do
    sha256 "e244ade3824b6217d8b67d50c39573013ef13b1ced413b538610deb45ef335dc"
    "zh-TW"
  end
  language "zh" do
    sha256 "d36e679b92fd0b120a468e0e165e0d934f87719986f95659c895a789366f11a1"
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
