cask "firefox@developer-edition" do
  version "133.0b5"

  language "ca" do
    sha256 "3860e098c6d33a996136518af600ece063834d5e29a0307e2f553e8a285d321b"
    "ca"
  end
  language "cs" do
    sha256 "a4d49163c3b57196c0285c9d676bcd02b7108faad26f61857f98b142a49b03bc"
    "cs"
  end
  language "de" do
    sha256 "0777bd6376f87ade2fdc32b70aa7c9e01226dc328f97fe6013988582fafd8e50"
    "de"
  end
  language "en-CA" do
    sha256 "703edd756ed816dcb40fc86cd8da93889b05ea4dfa433a4dcd22cbbe0a5f2ca5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4d316a7076639d1c84ba1802a6505ebd652267aa0e9257b7db4f712927b8d6c3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "04df7c165a9233a256ceccc390375e355f67c758d1ace27cfeefd87bbb7ecf77"
    "en-US"
  end
  language "es" do
    sha256 "2cd51fbc33fdf0dc91654166e928fb2158998441ed04f1b92dab2236d4f6b7e8"
    "es-ES"
  end
  language "fr" do
    sha256 "c4b64b5ad5348084449337f1eb5dab0e5f53bc23bd7303d4bcad34cbeb5a20a2"
    "fr"
  end
  language "it" do
    sha256 "675551f44ab5fe77c986f77621fb89105af94ec7a56d28eeb522a85b8dd9ef22"
    "it"
  end
  language "nl" do
    sha256 "e2fdc3b17934a53b5db1dd04eab8f34053d84f2884600085fa0927828b4fe4a1"
    "nl"
  end
  language "ja" do
    sha256 "5d8bebc3d26c1d7973cf78d5587b008e4ae8855b3469ec81ee1bb1514adb6600"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "2f0432aa74c697f72b330df861af52d6958c3e0204fa093c4b32446e98136e3b"
    "pt-BR"
  end
  language "ko" do
    sha256 "d7a8f6a54d22d369894f1480fc668535865c9fffbe6d7a08b0ca97e21489987a"
    "ko"
  end
  language "ru" do
    sha256 "4f5de62c745f81dd085973da5ceaccd39776b52b3587a072ee0b291757a4b83c"
    "ru"
  end
  language "uk" do
    sha256 "6d62574224023df6881b68e0095617881ea6ded6104c2a6e1b19f7da41e3b993"
    "uk"
  end
  language "zh-TW" do
    sha256 "93f2909392ed4a281bd4a29a41081ce4ba0275b6e00cf29dfd4dfc470633033f"
    "zh-TW"
  end
  language "zh" do
    sha256 "b39fbca2a1881e3e169d6a7e9a422cf802f9faa60f97019e10930d44585ceb22"
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
