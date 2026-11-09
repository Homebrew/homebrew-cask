cask "firefox@developer-edition" do
  version "161.0b1"

  language "ca" do
    sha256 "14c7b86a5e41b897bcdb64430a92b7f59967183d9f2633b3c7bca5734d3bb74b"
    "ca"
  end
  language "cs" do
    sha256 "81c76d9be6e0987077363f7733bb9ee8e128e1538e8568f8f1bcc06776442825"
    "cs"
  end
  language "de" do
    sha256 "24573e64c60261e36a386d4c7747fc325843580d231008f3c9d9abb5019133c4"
    "de"
  end
  language "en-CA" do
    sha256 "56e79e8e2bf93ce5b243395edfe2d640724d585cb9b8e5c94c4bec5b55c1e85b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "25eee623a52650a5f4ea1d372902ded9899bad0b25b61974e786b2d6f9cce760"
    "en-GB"
  end
  language "en", default: true do
    sha256 "25d0666b90e8d2d78f07060418c8aad680a7b9107f3ca67f1db79985696a8e66"
    "en-US"
  end
  language "es" do
    sha256 "32c6667ead268bdaa10026c84903710ab15094511da1b4d2afea4104532ae6e0"
    "es-ES"
  end
  language "fr" do
    sha256 "bfdc70f9e0af9a924fb2ca9865f1406e539ba291df96ccfc08849cc8d9c351fb"
    "fr"
  end
  language "it" do
    sha256 "b77288fcfcc9d585902f1c7fe00900509d7ee40ef2254b0b478b8b9be975e72d"
    "it"
  end
  language "ja" do
    sha256 "fb3a8ec4978a2baf8cbe4f9c42a13547ffbb10497b25f05d75318696ddd4b626"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "09289a3b7fca8dd7683e5216cd5cb509c34551ff1f5ea54a508fe33f049637b9"
    "ko"
  end
  language "nl" do
    sha256 "0312aa08a744213508b08bbba8ff02436efe98f84203e228e8c453454882c002"
    "nl"
  end
  language "pt-BR" do
    sha256 "e497702bd7658fffe080ccb38306478959d419a10e81f81ecdf9c4436fb83259"
    "pt-BR"
  end
  language "ru" do
    sha256 "f52dcd537fe1277cc592bbc4e70aae3acc64c4128d79cc358d777da9293fa882"
    "ru"
  end
  language "uk" do
    sha256 "6630f225f314f751573251e189abb8382eb5652337e311038918b099a8c5c95f"
    "uk"
  end
  language "zh-TW" do
    sha256 "af16581785ad734b0d1f61ad8d47b146b408af3f3a8ad6841dafbc241979d9cb"
    "zh-TW"
  end
  language "zh" do
    sha256 "5e562fca2b1f68897ed974047da25c5de972dd7ef25daed599eedcb711074ae1"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
