cask "firefox@developer-edition" do
  version "152.0b4"

  language "ca" do
    sha256 "30af4bb3de13f09a3db1f418b0b29b21fd463b4c5fe51999fefa67cfd9062552"
    "ca"
  end
  language "cs" do
    sha256 "d8a0cf0313b60f904f752a19f1c9f838cd8538beb40bf6a0798657fe75901aab"
    "cs"
  end
  language "de" do
    sha256 "5276c13c7fbd5a8dccec959b0bfd2d84981834eb1aefb27e016aae886d0a6eda"
    "de"
  end
  language "en-CA" do
    sha256 "e18979aba73e4000e00ca410ff8c5f00e5c6cf8b08ba22d883f215f7d0b322ff"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2a98ac525bef391afacbfcc8c9a56ad56b332ba7cc17e6fcfacaad5edc10a66e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bb9ea543e9773fa1d396c5b2a1e4b9ecf3779fea8b0cbfce7b7cde1d0c23e6fb"
    "en-US"
  end
  language "es" do
    sha256 "8fc1e86799ee4becfbfe89b1abc305b1ff5869e8c6d1f3eb7f5b1352d19032fc"
    "es-ES"
  end
  language "fr" do
    sha256 "9ea815d4e983b85db49d56b2bcb9f319649da5f3d897cf923b985099c2d3fd57"
    "fr"
  end
  language "it" do
    sha256 "b13d50caed1b34c6bfb93b353ebc262d12138e75842efa44bc419ba249932667"
    "it"
  end
  language "ja" do
    sha256 "349aa61c8615deb05fd6e90b930bf71322a4a70ad5e239477c82a24ae28f3332"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b2f56115a8aeccaf410bd97dad48370ebbe0424d1e82fa8f37b03f8141e73eb1"
    "ko"
  end
  language "nl" do
    sha256 "245c1d9d3e223fe3c9aad68f08914b174fd805e00a7a393a6c96549eeb6ccdbc"
    "nl"
  end
  language "pt-BR" do
    sha256 "54388f15f9b10d75e223e72f2c4ff87ad19728b7d4f1e74434580be896048f3a"
    "pt-BR"
  end
  language "ru" do
    sha256 "a9ef08c88e5ca0018e36dde607d97075c361f50e97ad079f286eecdb2090e2fd"
    "ru"
  end
  language "uk" do
    sha256 "d59dbc8de6d53b73661498c7260b32ebc8ad3f56c00335d9dfbae14e5d2c3fbe"
    "uk"
  end
  language "zh-TW" do
    sha256 "dfd2f42f4350909420909289ce8adf051713545d75124dd766553e4a24781b0b"
    "zh-TW"
  end
  language "zh" do
    sha256 "0df6ed2fc59cc7e4dcb120e624f97c36dbffa1861252e0a4e3bbfeae1d51b41d"
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
  depends_on :macos

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
