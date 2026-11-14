cask "firefox@beta" do
  version "161.0b3"

  language "cs" do
    sha256 "caab2a304790533e98ff4533c99c8dc8954b764a2fb23bc2d220f6672ce3a70e"
    "cs"
  end
  language "de" do
    sha256 "2d82bbe65719d75d3498ae4e5c7bf34860c97c6d640d22697e62d9e8ef591c14"
    "de"
  end
  language "en-CA" do
    sha256 "13eab8d9fc7d4e272b8f8beaf9b026334fe849a3c2eae70bfc114bb4dc82303b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e2eaec42e24ec3fdefb45601199e25f9617d0d9668682aa84cec570a77c9ffde"
    "en-GB"
  end
  language "en", default: true do
    sha256 "619961b28ea131e16a732d0b8aa51405567a10a2caf3a9b24d25688178627a99"
    "en-US"
  end
  language "es-AR" do
    sha256 "f0361396ce98e7ac9d0b79d6d37b452f0d3ceb0933d92c31bb9a5beb7adadafd"
    "es-AR"
  end
  language "es-CL" do
    sha256 "d7651a3ea4e222cdb8ba43ced231ae0681e8e8b21ecbe1037b7948931b4df2b9"
    "es-CL"
  end
  language "es-ES" do
    sha256 "41d5aedef20e812c7f616af26e4f5ce3f91611bd97ab09f7fea1e64bfae1a2c6"
    "es-ES"
  end
  language "fi" do
    sha256 "fe1d3bcd9d175b6cbfa120a2693772c62c87f10c1a3d5aa9b40c09008863daa0"
    "fi"
  end
  language "fr" do
    sha256 "372feb72db1a7af3202f5acc7aebeb20d150b0020c9c0c5ab72f53e710695cad"
    "fr"
  end
  language "gl" do
    sha256 "f06f5a5f03910b5d1cf24041a884962c494c0b7a84eb1ca3a349483b0d6903b9"
    "gl"
  end
  language "in" do
    sha256 "06e1f9036817dcf5a69e0353dfc84ff4454695f32aaf1b4132468798ced2a6fa"
    "hi-IN"
  end
  language "it" do
    sha256 "3a57ea0bd2050b55aa82488e6b09b6665adfe293ee907be1631b818b26f36959"
    "it"
  end
  language "ja" do
    sha256 "195deed05e166946626a262030142bb026a57fa0b33bd46daee2e4fd1f219a5f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1e7fcd512bc8d9588eaf3a2a9e206370622ab32ead37fddb928666a09b19e336"
    "nl"
  end
  language "pl" do
    sha256 "e129bb2dc460d3df919cb62171c87d22d079751a7296f7dd274e86324ad605af"
    "pl"
  end
  language "pt-BR" do
    sha256 "ff4f15733765317f8f5329b5a1434a10ea23a2569dc5c3cbdd645fc403012be0"
    "pt-BR"
  end
  language "pt" do
    sha256 "c119bb516f031654aee4b7411451ec73a988678188d965ef66849cfde6414730"
    "pt-PT"
  end
  language "ru" do
    sha256 "3a4ac058b74e018ae6cd2eacbd6f46e54fab49f98f5769f1bcfe79419de6e130"
    "ru"
  end
  language "uk" do
    sha256 "9b5ebc250250657d2c4e8a6b587c65bb229ff6914c6cd4b08925e6383a640255"
    "uk"
  end
  language "zh-TW" do
    sha256 "3907ea5287f68c2f2aef6112acb404610e75f552ab6f3cc6b071197bfdb75447"
    "zh-TW"
  end
  language "zh" do
    sha256 "d0942f92143a3111dfe397420b7616e9c2f4dd2f725d9d97b53f083aafe9848c"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
  depends_on :macos

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
