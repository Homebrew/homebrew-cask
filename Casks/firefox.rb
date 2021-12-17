cask "firefox" do
  version "95.0.1"

  language "cs" do
    sha256 "a4f04e5299f8d1a63f6c8df04c195685c275c68fb5b3d384c78c1ec3fd1fb128"
    "cs"
  end
  language "de" do
    sha256 "22b3b8ac4a423e2a208ca9e928c4525f1b97592e57605136ac03efbe5076cbea"
    "de"
  end
  language "en-CA" do
    sha256 "e67dba5b976911e61508a2b21fbb7f9674eb33d68aa33974138f02c942f746e6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8a132280470218bd20e5f39b83d71b8e791920f2851d7dc17b8fa855f8d06ae5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c439ebf7a75f295dbb1daa8a7488cf87e356fc3dacfa0ce13d6425119fdb621f"
    "en-US"
  end
  language "eo" do
    sha256 "8ed794670553dc55175f93f902a6cf4c3cb3778cd9964b4212a7eafbe57b097f"
    "eo"
  end
  language "es-AR" do
    sha256 "112021e020669f0b5812fbb6c74fb569d2547e8b7c7e60633a829d738c8bb5d0"
    "es-AR"
  end
  language "es-CL" do
    sha256 "221aa8fe0c2ea8dc986ce665f476b5b29fdc8cf1c884e9e782325ee9d27d95b9"
    "es-CL"
  end
  language "es-ES" do
    sha256 "1d2877d5b013e80931f22a19b4ae8f3c93454e7200136a50bb404846251f6ce1"
    "es-ES"
  end
  language "fi" do
    sha256 "cb47ce4a83a99b5e8d62cd36f6485994463a057320fca11ed217aa812608496f"
    "fi"
  end
  language "fr" do
    sha256 "02ea6820253e7cdf6eceb77289437ae13561a068faf530775aa1f481dea18749"
    "fr"
  end
  language "gl" do
    sha256 "a8a8d902ddb168784a2484e6bc786bfe52bec8571442b17085ed526c014cfd33"
    "gl"
  end
  language "in" do
    sha256 "035e00e20b0d3cdb3b578062a50a6cb80ea4d30f8d1358cda48b4a607d052db8"
    "hi-IN"
  end
  language "it" do
    sha256 "de10ad2ea976e552458e0bf227c5633548a6c6f84a15de92ebd391ae41393106"
    "it"
  end
  language "ja" do
    sha256 "3fcc6e32c98cb02076cd0b13bff807ddf2ba7ab6e3d6ce4bf3a8dbfeeba2529e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "38f5e8b621e0b08e4b88616ac8c017cb4e6c6a059e07bf9d7b2065b54f958938"
    "ko"
  end
  language "nl" do
    sha256 "beb666cd1d553c04de24faecc75648164771b1afd3ed065c3a4c5a26c8096e83"
    "nl"
  end
  language "pl" do
    sha256 "193a841990eaf2eab5181c8e1c282d608b76fb103b2b3917075641a3283d9665"
    "pl"
  end
  language "pt-BR" do
    sha256 "c805a33139a813cce54b41f4f4e41fb97fa057258c90405691c4398c40cd7b8b"
    "pt-BR"
  end
  language "pt" do
    sha256 "82acd3111cc53867fdc0cc41dcafd3e1b5ebda16f02562cec08eec148c34b353"
    "pt-PT"
  end
  language "ru" do
    sha256 "7e002ef648a69fd35700e4ac6558db2bf37cc70d1927bd12289511c09250ed71"
    "ru"
  end
  language "sv" do
    sha256 "f8b2cccdeac17a013ca7b25a11840ded65fca9c5c8bb2857c214f131dd8627bb"
    "sv-SE"
  end
  language "tr" do
    sha256 "8a350575606f057dd2d54108dd330f4d0d6c1864d9310c427d91b9330ef4f1d6"
    "tr"
  end
  language "uk" do
    sha256 "058c8563125018dd44366fae69a3a6f52b1c5d7d6376ad4108de0e4ed4c8734c"
    "uk"
  end
  language "zh-TW" do
    sha256 "0e56d59149952193f5173db960a86c9964abc0effed85539d19734239b228833"
    "zh-TW"
  end
  language "zh" do
    sha256 "8a3500f1d733eaea35511fa935f753938fddb26ccf34dac4b2a095c838e5415a"
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

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
