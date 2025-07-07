cask "firefox@beta" do
  version "141.0b7"

  language "cs" do
    sha256 "9282caa216911ed381ebe0c194f14914a9342163e8a88fdcff4c8860979232e0"
    "cs"
  end
  language "de" do
    sha256 "4fe12a0d2804baee6dfcb9fdb1f5acd7ea709f639da7184e25b9d13e0d0881a9"
    "de"
  end
  language "en-CA" do
    sha256 "e51b8d0bf5e1d746822c53633afd53ea8ec71b5a09b09cafd6f189c7ed81bb79"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8c21705204b65fd9e873aef683b82ced115ebb739cd79f6d8243da8af9c4fda5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "aaacbfb926c742a5e19eaefd6218ea226e450ede10929ea7c6f793f417bdc5f3"
    "en-US"
  end
  language "es-AR" do
    sha256 "34cd83464864d720148646f906bdaf6be3fa3ea55a47dafa0ee4bb892e1b5bab"
    "es-AR"
  end
  language "es-CL" do
    sha256 "f3367e3fb858fb7ac8be2fa412c0ec557bfb149c18898f9b04e22f60ad62275e"
    "es-CL"
  end
  language "es-ES" do
    sha256 "089af6a9b86c623fdc73cd3862e9808f917c90ee7dd14d545f9035ee5015b577"
    "es-ES"
  end
  language "fi" do
    sha256 "bc6e13fd63a8805460bed4cd889ee313fa5830905f381273e979dd3eba8ef64c"
    "fi"
  end
  language "fr" do
    sha256 "f7098cf305a2d04592f90bf1f943ffb53e84ea467f98e4352da4fc66eb37b2d0"
    "fr"
  end
  language "gl" do
    sha256 "42ec13c1ab0f412e0ab29a994ef2c8084b9a31510209e3e0abc335d6049d3b86"
    "gl"
  end
  language "in" do
    sha256 "480e0c992a6ee860585bf68dc01b105ea918252ec086e1036cf581761b582ecc"
    "hi-IN"
  end
  language "it" do
    sha256 "45180f0e80ff9c82720e1a12c9ed6a660c897c3ad94cb66d206cd876f80b9ee5"
    "it"
  end
  language "ja" do
    sha256 "6ef9293c28b7bafbfcbb3e5a54880085d163789708dd05d95e83796b840ad642"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "82db11e6a99ab56398a52df8a0a4c9668346ca6d8568a03f9b539032b25826cb"
    "nl"
  end
  language "pl" do
    sha256 "19c03ba9511ca3e015ff33e7f5b6a598d72e1c0f90473c50f5215086cff8339c"
    "pl"
  end
  language "pt-BR" do
    sha256 "c3b6bc9320ac710fcb853a00ee1fbb47e4b30b86803a0f5162d0a60dd2084519"
    "pt-BR"
  end
  language "pt" do
    sha256 "8930432b431336bd16a94e183efae92fa11e7778a18bd680bf01b12a1106ece4"
    "pt-PT"
  end
  language "ru" do
    sha256 "50909bdfd9484e4bafc74b1f19e075ca7f89633d9e6468d7513eaba1f442c58f"
    "ru"
  end
  language "uk" do
    sha256 "ab53f4ad0dc4c3a2bfece2973b4cb7f01962a8b145e368c6b6a4ef828a11002a"
    "uk"
  end
  language "zh-TW" do
    sha256 "4b7e38995d395f2c3d57a7d23c1b193946b926cac044152be2c9a3481b90bd77"
    "zh-TW"
  end
  language "zh" do
    sha256 "3ca08219ca88c067fbc6a5a765c0cc86ca810ad8454dd103c4d7574d3f573044"
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
