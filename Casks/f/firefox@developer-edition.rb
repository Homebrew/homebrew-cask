cask "firefox@developer-edition" do
  version "144.0b5"

  language "ca" do
    sha256 "d3ea799de9763099e232601b779720f8403e5f7120c4557866ec501755e69f44"
    "ca"
  end
  language "cs" do
    sha256 "af674103ea2be451e0ccd6a919225e20e2192d1bbc8810d8cc513a4e7ccf9c12"
    "cs"
  end
  language "de" do
    sha256 "cc68bcfa86edc251d4ec9c2563f6f06cad194269f73ff0680500f5d1f53d2656"
    "de"
  end
  language "en-CA" do
    sha256 "0848c67f367393168b05c020c760f2785fd8a557598182c0eafc8aa6d7d987c7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ed4512079dde7ba01014b427a3f5a43e2c7fb0470839b41f60d86f90942520f7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "79c4d735048868e6585b540fa3e11eff0803614872c37c74bbef0c4dbc2aef1b"
    "en-US"
  end
  language "es" do
    sha256 "2855f162115d8df80d5f02a5efae013410db2a1ce6ca069adb63f84257e9ba3d"
    "es-ES"
  end
  language "fr" do
    sha256 "b57a04d52edef78239d8b21f8bb43ddb09fd2941a7c78460e2c2ae05588c39e9"
    "fr"
  end
  language "it" do
    sha256 "9568c4a009e218562e79160431d37c3d4c9ae687782a6e0449454caa1e911791"
    "it"
  end
  language "ja" do
    sha256 "00132f1425d20057f70eb23deb65b15bb9af98814eabeea48762643b37d309c5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d19c948cdc4f179c5cbd0d770e069b666a92bdf63a168cf43f3a8d4fc13f1a88"
    "ko"
  end
  language "nl" do
    sha256 "1afa2b0ddb67783ed6289f96138b7aa1d51615ac9e4d00f588f0fa1dfb713842"
    "nl"
  end
  language "pt-BR" do
    sha256 "10d5d270a09dc89be126ad07df734b9fef2f57665a924fa0db93be0ecd5c3022"
    "pt-BR"
  end
  language "ru" do
    sha256 "591bcc6a871b2a1c66af7f7f08c26344f504361014c63f7f73b0b1cba96d1cc4"
    "ru"
  end
  language "uk" do
    sha256 "79450d63bae2b0fb467e4662878186ed7eea2f122a9f612b562592344c3580cb"
    "uk"
  end
  language "zh-TW" do
    sha256 "45dc41f227e20fabf520291ebcb6412d5123e8ae6a166d10f62e31b9f50e56b9"
    "zh-TW"
  end
  language "zh" do
    sha256 "8bbb82cf7985830acec6f400ff708802f9f6d4e781122f1c33335fbed010bbef"
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
