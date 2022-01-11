cask "firefox" do
  version "96.0"

  language "cs" do
    sha256 "14acd5e2d7831e4bfe4f0df69d37735a40aae0600bc51426b38c3e48badfddd4"
    "cs"
  end
  language "de" do
    sha256 "b0c55dcfe8f542c43ca7542e813db5633a10a4e8a3a50107e021701956dd00ab"
    "de"
  end
  language "en-CA" do
    sha256 "3378ac02dabd53a3b46cb1212b57bc17d56b6eb82e11a595fc08381c68394f20"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d49b63e68d2967d98b29351d0eca81444afcb30b3ece3679075437e600a000d7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8c1b31765c245f23bbcdb84b8ffe0edb93f3dae7dfc561ec3f44c5378ad13019"
    "en-US"
  end
  language "eo" do
    sha256 "fd2fe40d94ae26d9274124d1eb0eb63e86e787c98224162376d02d49d447ad66"
    "eo"
  end
  language "es-AR" do
    sha256 "3819f323ce03f048f1e62e7f0a168920d9cd542af32d631d6934f13c2c738e79"
    "es-AR"
  end
  language "es-CL" do
    sha256 "dc21261d6d0f89266d89d400e47b654b9b99a50cea5e506fec362f0645b79adb"
    "es-CL"
  end
  language "es-ES" do
    sha256 "7934fb3c55e5357b94ba9c2d20644b1431cf927c9d630a1d699352c2285a6b56"
    "es-ES"
  end
  language "fi" do
    sha256 "a51d10a9cf52565d8c100a157b465dbfbc63400b1b0a0f6914faa372dffa6db0"
    "fi"
  end
  language "fr" do
    sha256 "cda030f5863f1308fa223de3b4186dd0584cf59a0616486bf0e97419f3fde0d8"
    "fr"
  end
  language "gl" do
    sha256 "9613cebbb61bcb81fca457dc7ee701047bfddb5918684eb4e84ef1d266a7aae4"
    "gl"
  end
  language "in" do
    sha256 "71d8cd8bcc7017432b68203845d65486ea82ed060dcd25cf578769f5767dd259"
    "hi-IN"
  end
  language "it" do
    sha256 "482d494abc1444d424a97197a8c310e176d84f61c8503aa66196716af0dbf1a4"
    "it"
  end
  language "ja" do
    sha256 "707d180fad5c4d9b117b8f2fb9c614b7357c23bb37ccb8af85bcd93a134829ca"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "25f58bb7e84752564da30f77840ab80f2fd6e70704c2e9c95242f49ae9896bc5"
    "ko"
  end
  language "nl" do
    sha256 "b3708c0cba2bffe78987ac77b3e68b24bd1a2bc03390f9d874c88285de564bca"
    "nl"
  end
  language "pl" do
    sha256 "5ff71ffa8d162df3bc81887f7a2dc9dcaac5049a42143aee4afa734862cd52b3"
    "pl"
  end
  language "pt-BR" do
    sha256 "4828fb0d05dfb203158f594cf557d3da30ac4586034d8c333a6e16f915f03f64"
    "pt-BR"
  end
  language "pt" do
    sha256 "e2ae16809c5638a9177f4605c9f9fa827e8c06fe847e8a1093b697595f9f9396"
    "pt-PT"
  end
  language "ru" do
    sha256 "63f0e866a3eb27667480f478a2c168b63db8e359c8f356d7f2b55882a0c5126f"
    "ru"
  end
  language "sv" do
    sha256 "669fe886846138470921b361eb74f5d75a8ea256c0d2c48652057843a4b4e222"
    "sv-SE"
  end
  language "tr" do
    sha256 "9548c371ac3dcd00c34bca6406e043357a422f70b055080bad6e32348ea137b4"
    "tr"
  end
  language "uk" do
    sha256 "b93f63bc9ba4293ce6c709f03067d3014c989e14e6c765ad153901d4969a95eb"
    "uk"
  end
  language "zh-TW" do
    sha256 "fa03defa5389c72d50478ba0f1ce564f11283fbdcac8bceef3e50cbcf7d05676"
    "zh-TW"
  end
  language "zh" do
    sha256 "c804369d365fb894f0028e856c33b02d665b9c9e287804a76f54172bf2626ff6"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/firefox-beta",
    "homebrew/cask-versions/firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  uninstall quit:   "org.mozilla.firefox",
            delete: "/Library/Logs/DiagnosticReports/firefox_*"

  zap trash: [
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
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
