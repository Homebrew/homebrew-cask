cask "firefox@developer-edition" do
  version "144.0b2"

  language "ca" do
    sha256 "a2aa19c17df37517e2ffbbf51f38ec72024b452b47446bf3d2afa3088873b7ba"
    "ca"
  end
  language "cs" do
    sha256 "8f33f29bb1c03c53626bd45dcd1444b8102fbf35ed95e2d60d948792015d1f17"
    "cs"
  end
  language "de" do
    sha256 "8636d1b2d657f6feb4f2104e74a63e29745062fbe20cc51ecbf7f87b7eac11c5"
    "de"
  end
  language "en-CA" do
    sha256 "fcf6a7812575277e054dda16cb2d7e0bd868076e964cb7ed281bd606c4228749"
    "en-CA"
  end
  language "en-GB" do
    sha256 "90d84d06906744cedb69e0f808dec3584244e998873cba08bc9af8812463a082"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5a257d9bfe54c29c71bcd5b21eaa6e321beb909a9945405c794adf0e98eb3fb7"
    "en-US"
  end
  language "es" do
    sha256 "f94d43dee25a24f9f86a7037708e121faaa5d8b59457fecf74ed3163b37fa50d"
    "es-ES"
  end
  language "fr" do
    sha256 "cfea98319e41ff0d0a5d98e88e341e63a181a96e413e7d08b32d2298828991be"
    "fr"
  end
  language "it" do
    sha256 "6ce005c034ecfde1b464697e5b0cb50cc602a369b1c2ee347fd2ef4408af72b2"
    "it"
  end
  language "ja" do
    sha256 "1f19037beb9121e814f7712e0615d1e8f4c5d0e56560dedd2005ddf3327f7e63"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c11ba16a9df81c4a605561f56d3010df5a1efccf3396ee0fd2f25923e9d33a3a"
    "ko"
  end
  language "nl" do
    sha256 "0b1f5c5acc5cd0b017c5d17f96b36af2b3917389ef37cbfc8bd3c42f97eaf8fb"
    "nl"
  end
  language "pt-BR" do
    sha256 "22331482040edfdeed06ebd5ada5ac0a134e9e8ca52573620589adbec2dfa20c"
    "pt-BR"
  end
  language "ru" do
    sha256 "8d1345a62dffe6217a75584e2bcaebcacaaa66cca1a144077377e8702156efcf"
    "ru"
  end
  language "uk" do
    sha256 "2510561b0f0b133289d5a90865bbb67d994ccbbe444baa44d083108ce1cfc68f"
    "uk"
  end
  language "zh-TW" do
    sha256 "e77543cdff889ad524b5306228174bd63552ff67dd01fcb9639fad1f900fec74"
    "zh-TW"
  end
  language "zh" do
    sha256 "3d1190180e0afae850fe46cb7edbbd60c4d0fc598ae06928a800f11b47630097"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
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
