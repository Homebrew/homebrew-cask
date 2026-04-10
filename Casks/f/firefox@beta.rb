cask "firefox@beta" do
  version "150.0b8"

  language "cs" do
    sha256 "1e948a17398bc6a0c9c61e88339c25df5bc72d28aba131cdc294a8a205ba3e46"
    "cs"
  end
  language "de" do
    sha256 "c07ac2d2843f2877deec0e2377b675cf249e2406a312b956908e94f506b75d89"
    "de"
  end
  language "en-CA" do
    sha256 "0de798a7cab3fc43b147cb52bc8f1d8f3e49d1aec392ba2617d151793ded9c15"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8f3c43e2116cda8e3aa4e447f592df896606de80a7efb261ef3667c61be36702"
    "en-GB"
  end
  language "en", default: true do
    sha256 "35d067f7ddc1a67a1377d7a41981b670fb4b83990d15c8f824f92ea274262332"
    "en-US"
  end
  language "es-AR" do
    sha256 "7cc09520bd3bbdb7b7a34d3d77248589f77e4c30b019a6b7c07f9cc95e6e893e"
    "es-AR"
  end
  language "es-CL" do
    sha256 "5eaa7452e212fa9c9855e227c94f269514e77c60e98cecdac099c6d9bdfd73e0"
    "es-CL"
  end
  language "es-ES" do
    sha256 "1aabec144ab89b53a91af3addd4610b76b527d26c2653f21b9c9dab3490dd3cc"
    "es-ES"
  end
  language "fi" do
    sha256 "4f98feee365d5f5df5f70fb9feacc335b20b2d325d87cd1a5506424e9593cff5"
    "fi"
  end
  language "fr" do
    sha256 "75780d6b87ea286ca57fd7a60f2c87198c41d985e452010504fc0ed6d7c20f55"
    "fr"
  end
  language "gl" do
    sha256 "74c46d03f9c514dbc3ba7c0102b07da741d9d2fdcc0728c853532a25519298dd"
    "gl"
  end
  language "in" do
    sha256 "6d47e663df53aeb9c3b8872a97211fa57b8042ac91f7bb6c6582279181e019cb"
    "hi-IN"
  end
  language "it" do
    sha256 "41937c3feb2e65f48c1ee5c6f5896cd1c5ec38ccb4b0408976c7ebc41a180890"
    "it"
  end
  language "ja" do
    sha256 "67c467f7ae76ab57967f9fffcd9498d9762d33fe9c9d9b0b9cf4b20b72c042ff"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9b124a6314d32e505150e098d4af0a49407859005d3f3ad7cb267da72d029d8d"
    "nl"
  end
  language "pl" do
    sha256 "e3d58eb29e0adf83abad2f57db05326d4ce40f72cc6423f53d1743e1465fd2ce"
    "pl"
  end
  language "pt-BR" do
    sha256 "971e00481ee12f5305a0efbdc189f1492d04856a06447d1e9cd037dac989509c"
    "pt-BR"
  end
  language "pt" do
    sha256 "eeb4a22e368af1ae00e3f995eda2654462bdf05ef5004bea6d739300d9b0bc34"
    "pt-PT"
  end
  language "ru" do
    sha256 "c774825673945a0e14623d23b13d3b5255b134a778f5cdb4e26955328553826e"
    "ru"
  end
  language "uk" do
    sha256 "9124c938dce8451ef51bc069ca37455786d376872a4b802934b0298239a22ea8"
    "uk"
  end
  language "zh-TW" do
    sha256 "d6ab9a7d84e56f9791076554230b77aec4f1a68519bf56b039064b237ed6c325"
    "zh-TW"
  end
  language "zh" do
    sha256 "335636b44c300017e967b5f1a86b313ab217ed0bc7ccf3b5b5a038218ac4223f"
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
