cask "firefox@developer-edition" do
  version "154.0b5"

  language "ca" do
    sha256 "9c756f3332571bea6cdea596342330eee43cb3c03281e09dda0d1c7408d2b273"
    "ca"
  end
  language "cs" do
    sha256 "be93c2c2fa456dc5bc1ea7db98b713dc8c536628dce120a6b12305dc05140205"
    "cs"
  end
  language "de" do
    sha256 "eda98031798f0872895c33c934d3df6493c5abba5b6288f22f006772aca374ac"
    "de"
  end
  language "en-CA" do
    sha256 "24c350bee3e5853ca143a4b93a8dd224777eab3a5f60291425eca4c43b038a6e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7032ff614d6b79f9a8ef41382881c4cb376fe1e9918d3784978bc0c72f5d4d56"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7fdaf6e951982776d6a1bc129334ea5990ce1d2580f24702b3d23807c4d365fa"
    "en-US"
  end
  language "es" do
    sha256 "c2be845fbe6e97a16389a16ab09b9dd92d34890b791600b15c336523bf423ec9"
    "es-ES"
  end
  language "fr" do
    sha256 "1c332632db46bcd9c602911f623752be4c8778f71991fa3db37557c755427650"
    "fr"
  end
  language "it" do
    sha256 "6e8d6e2498d6b39f03d75131a1d4c0491f667227d324c22da48ea543ece3718d"
    "it"
  end
  language "ja" do
    sha256 "724486e54c6d7b032f4692f10177db46308033b53676174f78bb6955731edd2b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cc5f136f12041b8a30dd753cea90892e394ba260b40ddecc84b4e16f1ab555d8"
    "ko"
  end
  language "nl" do
    sha256 "8d11dff1526066ab8951c9c99163b1c3f2245f2e8536060d7a0388a89cd9a46e"
    "nl"
  end
  language "pt-BR" do
    sha256 "92e6120f721d23a880878dd7e68e0c1114ee3d30930d35e3da665204a66bdacd"
    "pt-BR"
  end
  language "ru" do
    sha256 "4c4110bc465fa58fad2f9f7fee5f0bb700044f6d96dc598686510cd47ba6ade9"
    "ru"
  end
  language "uk" do
    sha256 "a397f6beec9cf71e4f21df45219eb4c92bfffb29fd7e4a4ff2bcdb574bd59e89"
    "uk"
  end
  language "zh-TW" do
    sha256 "64d3a3104791cc6ecf337814db515c78bb8ee58c76b27bac77aab9afab433100"
    "zh-TW"
  end
  language "zh" do
    sha256 "3d8b16ecb22f87c53692ac14fcaeed74f5088edf503ed3980273551e353899b7"
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
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
