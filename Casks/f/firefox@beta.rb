cask "firefox@beta" do
  version "159.0b4"

  language "cs" do
    sha256 "357f1a0d69d9ddbc568f86220c7f6a88fce147f41db7b3718fed0e0998ccf491"
    "cs"
  end
  language "de" do
    sha256 "249e9b5c9ef171cc18de9e3b112e673078bedd9c143308fe50f955660eb6936d"
    "de"
  end
  language "en-CA" do
    sha256 "38180c4ec924eb3b4c290465a9d833d29a3b71dc3182134dd34efb52d21e652c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ae342af4fada6782719f849283400487a2bb8388c83e2f441530616866580c44"
    "en-GB"
  end
  language "en", default: true do
    sha256 "27fd4a749003d698c3fb1f26a229ec3e2c4d23dccc621df629366b026ee10ac4"
    "en-US"
  end
  language "es-AR" do
    sha256 "6ac8e2515981028a8a4f565db451ad46aa2bea4956aa00fc1f36ca355bce0d5f"
    "es-AR"
  end
  language "es-CL" do
    sha256 "dd884c4881c051bd5e5f14a17d9894b4c8c6fd2e0087e530a12c68a415607d03"
    "es-CL"
  end
  language "es-ES" do
    sha256 "206308ad866a1f1abe8ab69512e6b28884544192b4010d41dc15f63141f15303"
    "es-ES"
  end
  language "fi" do
    sha256 "fc8a84000d5b8f620ac4d40134d4ce65ebb15068cf39f987706df0ae2f6f196c"
    "fi"
  end
  language "fr" do
    sha256 "fd30388b14b124b06884ec063a8f93ecf72e983ef18c0c5e056a6028f447856b"
    "fr"
  end
  language "gl" do
    sha256 "4a04c0e217fbadded076b262e2c4831d0e7dd18c4339b4318edd7cf1792d2724"
    "gl"
  end
  language "in" do
    sha256 "638d29a586c1b81bf7c532b3400b97940b9ec56c49b9af10b410c08c4a7b2732"
    "hi-IN"
  end
  language "it" do
    sha256 "50e24f6b1b94ccf00b162fc9435380a5ef56d5df317b46f04b574fc609bc531d"
    "it"
  end
  language "ja" do
    sha256 "bb8662405d4b278c625837bece6040450f4f53ff9b74c365771253cb65bcdd1a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "eda0dc931a9c21c4cc17e331ef016d3b4ea2dc51973020fe69c1d5148d6a8eac"
    "nl"
  end
  language "pl" do
    sha256 "0db59a21e9d2cb33f3c2d92162e65eade9be93dbdfbe02fe74cd94a88099a5ce"
    "pl"
  end
  language "pt-BR" do
    sha256 "5d5387198497b5a7cecb3f3204305067c4b49ea220ec4d94dae6af4e1c0878d5"
    "pt-BR"
  end
  language "pt" do
    sha256 "bcf08e0b8a5c376f50eb665376d11573fa03a8a42eae663539cefd1d9013608a"
    "pt-PT"
  end
  language "ru" do
    sha256 "016be11d7650d51ebddcef7d3c2639ffcf224f2ce9fbd2783c58ef794b5c4d89"
    "ru"
  end
  language "uk" do
    sha256 "105fdcacc9f901ab26c74ac0813c82c835cc5ec6eeb80cd8ead4a08501c9f64f"
    "uk"
  end
  language "zh-TW" do
    sha256 "f62d8ddecf597e1a6150c1f67396e8440467cb39e394473fe61b541edb7f5c0a"
    "zh-TW"
  end
  language "zh" do
    sha256 "8223ef91fbe25550b34a9a7a0201a9ba693ee20f88abfb5dd2f2b7be47cf66f1"
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
