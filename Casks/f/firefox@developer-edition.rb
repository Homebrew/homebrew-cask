cask "firefox@developer-edition" do
  version "155.0b3"

  language "ca" do
    sha256 "2fc92f8759edcf769d4cdf07964a9e777585a02616a98eb43306753af39f0495"
    "ca"
  end
  language "cs" do
    sha256 "6437b665881d68c51fe489d14a4455b8328297f8243d9925b3258ab1c162a64d"
    "cs"
  end
  language "de" do
    sha256 "ed40880c86cf708150f3c981936508aa9baff98b7de719f58638eb384d4d271a"
    "de"
  end
  language "en-CA" do
    sha256 "e42b1bbe44673ade0a89592ec3619644fe28b77f7e610d88c68b59461c9e59d0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7f089421839e9cc63b0d59935fac7d2e0dfe26b1021836f05f1a81081794074f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4aaf57b8e160f8801ec870d9317635f44e4d82e21dbfcfafb0a7b520ee2b4018"
    "en-US"
  end
  language "es" do
    sha256 "490d6656d2114ccb2152d802e4f290678a35079dc06f5771a28fd3350d899b3c"
    "es-ES"
  end
  language "fr" do
    sha256 "9c1c50a370e5a456d9617a8a0c423a2aeb81c19da6ef5ab7a97c4d688807193d"
    "fr"
  end
  language "it" do
    sha256 "eedced7f25e5169d7beba0a879f64b688b22d300f882d39320e9fe1010bd8d12"
    "it"
  end
  language "ja" do
    sha256 "7d02a1a13a46e4216cbeac4b1dbfb2c7d36a44d748fd16e7f7f7958e5c84fd88"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b6706775db4ef2049463cec5d54349e45cc91a3a4b3e293310ce26687e467d34"
    "ko"
  end
  language "nl" do
    sha256 "29131a4be1526a89660a524276f063bf1371f68955c584cd802230af5a3a14fe"
    "nl"
  end
  language "pt-BR" do
    sha256 "9d2778268a07434d33eb96a591ddfd602d3b1ccb475f58f2ce7c20f439260445"
    "pt-BR"
  end
  language "ru" do
    sha256 "7b3f0ba8f65476fd77139654af6a3dd105daf66acbbcbaa07c48666bd46afd8f"
    "ru"
  end
  language "uk" do
    sha256 "1beafafe81b5b11e7aaa8fff05d92d331622f5091b505fe26f350ede2c8750a8"
    "uk"
  end
  language "zh-TW" do
    sha256 "61dfdb51811a3bf5d94a68dbad1b642617c94f92581552af7414c935fb46f8ef"
    "zh-TW"
  end
  language "zh" do
    sha256 "9e892cbaf87fc2167e49cdbacaca7b205cdba7c5ad0065d35fecf0860e5243bc"
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
