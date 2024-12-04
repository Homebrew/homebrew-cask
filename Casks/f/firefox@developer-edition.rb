cask "firefox@developer-edition" do
  version "134.0b5"

  language "ca" do
    sha256 "0fcfa44d9e6180946b620bf4812038feaeeccd7b8b9dd747cc02921e5373c651"
    "ca"
  end
  language "cs" do
    sha256 "4337cef36b4f51877c6de36434de13007ea6c257ced7995ee1b8e030703d893d"
    "cs"
  end
  language "de" do
    sha256 "9e89d2d6a4f19227c54519c2e1156ac958e89d4da33a9aa4f445fd97b2c14b36"
    "de"
  end
  language "en-CA" do
    sha256 "e89805c0acb2322582c56949c9ac21b1a22e8cabbc7dcc14f8156a37f7a1c34e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "89f7fa4811187954fab78b3989343da8135d5abb8fbc91409cd9cf10ba71c099"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6759f0fb941a36c4e8c8c606c4682c61f7d7e301ed0ee1c7dfbdaaf5d74690ee"
    "en-US"
  end
  language "es" do
    sha256 "9361ef105eadc3955721cf0c03bed3ad8982e38032d95d7d7a844981dd39b0dd"
    "es-ES"
  end
  language "fr" do
    sha256 "4cfed747a28ba5db04a4e864088e73db3452ea423c569028b04061cbaa613e52"
    "fr"
  end
  language "it" do
    sha256 "5c869333f74a84eeeddb3dcf504da2bae6f5ff16fc7d2a5da2f49c3f7fa1c700"
    "it"
  end
  language "nl" do
    sha256 "17faca94fef6dd6c81c35070957fafeac72a378032af045ca551cf0353d54ae6"
    "nl"
  end
  language "ja" do
    sha256 "8014c2a25b0824967cfa93e853765962612c306c7e7e521f1e9eb65b6a074494"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "0fb1a70b2d9ad90b155ad647d1e3827ea6211d8b26d783791f46d8b77286a17b"
    "pt-BR"
  end
  language "ko" do
    sha256 "4c07b31f132c170782cfccce7996dacf14a6581a8d86905f2f49747a66310c2d"
    "ko"
  end
  language "ru" do
    sha256 "687a8b8246a166b34332f2921d3c298b2a7f9e4fb6f28efad9d69518d18ed592"
    "ru"
  end
  language "uk" do
    sha256 "4f0e0e307d11a9a4fb682959a7da42fa831760ee5d925c951810148885d2395a"
    "uk"
  end
  language "zh-TW" do
    sha256 "ce533e9cb073a4174299b932882a5b9f725eeb4a489bf613fe6922ab183af90b"
    "zh-TW"
  end
  language "zh" do
    sha256 "bb998d95febbbdbd76c8aed77fa18af48c434315ba6fcd458d49f45d33241787"
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
