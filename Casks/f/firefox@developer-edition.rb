cask "firefox@developer-edition" do
  version "143.0b6"

  language "ca" do
    sha256 "ffe8339299b7820f98fe413690214b91d958c0ea661194f00bc9b61a74821d79"
    "ca"
  end
  language "cs" do
    sha256 "eb9ee3c7f81e4437971b6abd2594f73c60276d4ac4b7ce97cb0a18b91be0a08c"
    "cs"
  end
  language "de" do
    sha256 "dc9422bcd2eefb43fce889f68a7009dad7b408eedce0e4838bf33d84f7ca5a7d"
    "de"
  end
  language "en-CA" do
    sha256 "f54ba5861ddc314f4f3164b597645d09a8fc57501da77f55db8d2747945061bb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b159b815e7446652ca4aa689c8ad70d6ef62cfce377fa47246ddf55d33c61277"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ef9adb3b8b210249102e15b03154e8638cb0bf796fc143c17de90794b8cb49dd"
    "en-US"
  end
  language "es" do
    sha256 "39bb2fb45fb597cb9d8a97e01963ab5a2ae3ae3c0621db7ec9ef3cebc3cc0ca6"
    "es-ES"
  end
  language "fr" do
    sha256 "2a38d3db19be08839f055e8d263e73f38e6742c15c0572b06c4c99e40394d0cf"
    "fr"
  end
  language "it" do
    sha256 "68e466c65b3f38f193688c6cb2d7e16cc9e764a6634f8b98b1105e35a81b1e07"
    "it"
  end
  language "ja" do
    sha256 "c8bf29696a53c34bd72258cc62720f26091de1f51e7486f0f333f949d7042ed9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f493d5c413f99eb0a08aee7c743672b9e905fc800867f98b7789a2203348c264"
    "ko"
  end
  language "nl" do
    sha256 "3196e4f661ca299751ba5001e25d9d8f2da522afcf727d3279dc9aba0e8bc0b7"
    "nl"
  end
  language "pt-BR" do
    sha256 "69a58fc67c697cd37927c5fad833d3f522e7fa5ca82b8c528add58def14734d5"
    "pt-BR"
  end
  language "ru" do
    sha256 "d10cfe06de6500a7717898d3534932a9795384cda9396031db2260c3e7cb5c53"
    "ru"
  end
  language "uk" do
    sha256 "b69d78d21f263df820b42154be24ed1753bff509cd7ddf66c32e99d2618d9d16"
    "uk"
  end
  language "zh-TW" do
    sha256 "4e265a9886ed416f48d9f465ffd1034ef2009cbc52b4d164439fee8f967530a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "fefdc36f928e610564af5344e6196de555615d616a354f8506272da124171df5"
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
  depends_on macos: ">= :catalina"

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
