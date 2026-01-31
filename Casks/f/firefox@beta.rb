cask "firefox@beta" do
  version "148.0b9"

  language "cs" do
    sha256 "7b932250de2e117ca368bae1c285c8cc568e816986497662338c5615c6d97175"
    "cs"
  end
  language "de" do
    sha256 "3d5af68586923bfc4375d83d25784c59ffc1a71f03ce51b78ce66d9754590e02"
    "de"
  end
  language "en-CA" do
    sha256 "bc8ad39e0887b285b0b108139e2ca1fe73b3649e1f7f3fe7dd13e7d9d30bf3c2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "89db6683137f80be0df9a82500050410a9b7e4f03136c3c043733566af91bba8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8f59c46281ed1bad8f696ffe813c2a57199e61608f48a676cd53bf724454e630"
    "en-US"
  end
  language "es-AR" do
    sha256 "d59bf1f4f4a7ebb2c3da2796a55a6fa1c924cd35cfba46368269834da41a034b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e39c11f775dd75a9350fd3ac5cd0d4241c67d1155469e43dd74c3d4d987aa97c"
    "es-CL"
  end
  language "es-ES" do
    sha256 "8abdbf08c8de7e49b44901d881483f6b70c52fec8364e250f5b3f33b716b06c7"
    "es-ES"
  end
  language "fi" do
    sha256 "4534ca088faba3331c767ec3c54a3eb879a71d92b765695510da886bc2c374a0"
    "fi"
  end
  language "fr" do
    sha256 "b7056a644f3df0aeccec446f2c0eb55233db4843eea801be39c753eaf9fe3893"
    "fr"
  end
  language "gl" do
    sha256 "c126c4ba1acac5a4c00a4487b32ac34afcbcba4d00d9e9bc1af53dcb6adc6f3a"
    "gl"
  end
  language "in" do
    sha256 "05cd47e486e2e971f18ae01fe43bf9c3559d63b677b179c08108608ee9962ffc"
    "hi-IN"
  end
  language "it" do
    sha256 "f9d32f665c7070a2a6f98701425fc9b71b18319ee99762167a2b582a03c21f1e"
    "it"
  end
  language "ja" do
    sha256 "2b6d81acd0a75120f9764762368d5fcba045269320a91f0f167f4ab413de197c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "705f09dc7adeb6ad78133d44bcb6d7fabec62fbb1a32385a8d453e1d28ef942a"
    "nl"
  end
  language "pl" do
    sha256 "3dbc1f43d6cc356870e7fdd90f4cd313cdb84f1dc065d7ea156cb311ba9e4613"
    "pl"
  end
  language "pt-BR" do
    sha256 "0291c49d5b78e859b0b54e82733a766206d13884ca809dc256bb7d065d154b9c"
    "pt-BR"
  end
  language "pt" do
    sha256 "ffa7c5d3bf77ef4a98557c45f0043df30efade18b3723cf805cb772836c6a909"
    "pt-PT"
  end
  language "ru" do
    sha256 "a5312e6be843b634258636c19c2ed2fde34fee9cfde522afdc76563e4c6beef0"
    "ru"
  end
  language "uk" do
    sha256 "cfe7e76d97c10db2d8b6f12d2ab60eee2c1114ddc32b3ef1befb2bca5482d2a6"
    "uk"
  end
  language "zh-TW" do
    sha256 "1866c591fbdca5a6ca64c3696b24f1002afc03355bebccfea3dd9a0bdc1c0230"
    "zh-TW"
  end
  language "zh" do
    sha256 "03b4ff0e9d369bd4be3a99011f6db93e3d6350e87032f0305cac0d1a49062b77"
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
