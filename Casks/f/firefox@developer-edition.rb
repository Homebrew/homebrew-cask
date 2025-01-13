cask "firefox@developer-edition" do
  version "135.0b4"

  language "ca" do
    sha256 "7e1d139ae9c1cccf8a86ea2125dddb6e5e7b890501980c78e49c4ac0f0dc7fcc"
    "ca"
  end
  language "cs" do
    sha256 "080c8b33cd411adb735bf296c93ef476edd3620ea5731e4f32f7a48dfd8404fb"
    "cs"
  end
  language "de" do
    sha256 "122f8f96f5a4c0c26697290122ce0eb85025844ca9f732c24774090e34d7c105"
    "de"
  end
  language "en-CA" do
    sha256 "03e3eb935546aac73c75009fc085bb468c4409d92a15866971cfb15ce19f0336"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6d4d15238f9ce5b8ad2e44ce4fee57ac04287425a009dc4873e9f2af3b5d8aa0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "82130f7fbc142ddfdda2315c282d1cef43cce155fb920e113d9ec21a744e3a9c"
    "en-US"
  end
  language "es" do
    sha256 "fa8b2c69d084d103d255dc79a61358bb01cfa23312a44e2a28ce3dceb02a989c"
    "es-ES"
  end
  language "fr" do
    sha256 "eee0e8a53fdcec98888b00d56229c70b30861bd7bc8b0c8f873df181a47072ba"
    "fr"
  end
  language "it" do
    sha256 "589664509a4f5fe363a3e346ae1e86ef61c84eb0738d169810b51e39e6883b74"
    "it"
  end
  language "nl" do
    sha256 "68f3f073b39b943fdc4747ddf7d760434dc7628c72f522bef64a279fec3ccdd9"
    "nl"
  end
  language "ja" do
    sha256 "51d3f4655796b7438e1bbfbead64cf22fcd680da36dddbd54828ba17c0832e82"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "6e8ea2e375e95dc9953f134779b4b303925602efd2439b9b7b39eaed2c5e0e33"
    "pt-BR"
  end
  language "ko" do
    sha256 "5e7b2053c65d6ed9b0dcafe7ede03af8daec2283d78fcabd443765dcb7132d43"
    "ko"
  end
  language "ru" do
    sha256 "0f32ccac1e2a1fa8b9d2dd084584812a070b0dcf1d30766f217a76491324ee74"
    "ru"
  end
  language "uk" do
    sha256 "0ebcca2d37040edfacaa0cfef00bdd7628ce9e659689ed69ffe740f3163bf11e"
    "uk"
  end
  language "zh-TW" do
    sha256 "90d6690ccbc707184af6108cc7d54765fdb77e04b1eaf4a52af6bdcddde1ddbc"
    "zh-TW"
  end
  language "zh" do
    sha256 "6ead9a0889d8d6b456d715cdec540e24aefee2de3b62085aa022dd65ff530652"
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
