cask "firefox@beta" do
  version "148.0b15"

  language "cs" do
    sha256 "51ba2b743b2095ed4698aa6866df8906a751d8b02c03b228ec109035e9bc3c9a"
    "cs"
  end
  language "de" do
    sha256 "29b92ffe7ce9b9ffb8bcb0f9953b07f7ab6184cc3c65a48bbd166c94b1823337"
    "de"
  end
  language "en-CA" do
    sha256 "6c5a87450ff62fef74a2c4238bad6773831f802621c2f3cd6d4a6711dd07da2f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "caa8b64f57e08e5cf36d941b8899b80ce7f64ccecdf04e6c27e532f0fa800d4d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0da5fee250eb13165dda25f9e29d238e51f9e0d56b9355b9c8746f6bc8d5c1fe"
    "en-US"
  end
  language "es-AR" do
    sha256 "915c98b71651ebe75091a9ffd19853758a8c6bb01659a8a8b67b72a20f3a7122"
    "es-AR"
  end
  language "es-CL" do
    sha256 "af99476b3a7008b3d0f3e7b0e03a0a6a07a7454104e70d0d5481992b05576d12"
    "es-CL"
  end
  language "es-ES" do
    sha256 "2135cacdb4c3a3b3d2a71429aa102e73bfae94cc9a5179a33a9c18bfd4ddd068"
    "es-ES"
  end
  language "fi" do
    sha256 "9b26c7c51ab7077a88d530ef1e4077eaca2208bc202e64a3d7033674e7243729"
    "fi"
  end
  language "fr" do
    sha256 "f5e7c05c404e960d0ce937b7cbbefe8416d497319a56907ffa50fef99bda2e88"
    "fr"
  end
  language "gl" do
    sha256 "e6ef56693fb870d594cad60201e7a7cfa3d53524a9bd05cdc4858061f1becdae"
    "gl"
  end
  language "in" do
    sha256 "f3c88e6f1eac47c19fd1b56c2c88390a568ce70ecd24da46191adfb5f7f0fb96"
    "hi-IN"
  end
  language "it" do
    sha256 "ac37d49ec460ca73c3b56842ff79089f7ea332dd83003837400fc1dd74bb564b"
    "it"
  end
  language "ja" do
    sha256 "9b12bf105dcf6a1ada84b2d29236f12568c707cf5056feef02dee877548669ac"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "efe9e12d427d5efa24c205cd20a1532126f963e7be5062d75926d81c87b1983a"
    "nl"
  end
  language "pl" do
    sha256 "69b988c70c249a5a1ee8367843a52c6cdf3fe23e70bd90c2b2d6ad39d0dcd76c"
    "pl"
  end
  language "pt-BR" do
    sha256 "a8f8d49c4731dde615c9cc2cdf12778da3f8d8cab9ae99ea6919d8468072ea0c"
    "pt-BR"
  end
  language "pt" do
    sha256 "ef281090ddc7ce459861cadb0b041ae269afcee6f3767c99c76bffed4a319a53"
    "pt-PT"
  end
  language "ru" do
    sha256 "14b5bfd085779193dcf2258b3f05fe5413dc36cae9cbd4965b2ddd80ef0e5bc7"
    "ru"
  end
  language "uk" do
    sha256 "dc77b31849376a751e1cd8e280c72f8e80797d3864ab22d8f1bf02717bb20f71"
    "uk"
  end
  language "zh-TW" do
    sha256 "1d62dc46b71331b3118fec748f73a03a19f7ddf676879f3b231eab4b8b5f63b2"
    "zh-TW"
  end
  language "zh" do
    sha256 "7645b4742b309f6b0fbb1a4aaa2a499eac9c068fe30dc31acebb8b0f87c68249"
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
