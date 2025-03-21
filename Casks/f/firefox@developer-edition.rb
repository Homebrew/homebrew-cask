cask "firefox@developer-edition" do
  version "137.0b9"

  language "ca" do
    sha256 "3478ffbf53db8e2636a159987b73c43d432dda29fa1ba1455ac8c8f2d3a6fae4"
    "ca"
  end
  language "cs" do
    sha256 "a1b458a98abf9814eade24a0899cb74bd118a466a477089c0ce6326df84f6cd1"
    "cs"
  end
  language "de" do
    sha256 "ce15eddaab4a22f8420fe2fcf88822e81f755a1481340aec8070ffd3842a7659"
    "de"
  end
  language "en-CA" do
    sha256 "49506342520bda45596887a976e775ec9560e8de0b73f59e083ca822d3ac9ea7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a91643a74421ab5cf6a3ff28337a3effa0c207e260a720c49b619975dd7fe379"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4a11ecf416db424d8566ff531da24c32892ed6c1a9d4d29e63df21ea6a197deb"
    "en-US"
  end
  language "es" do
    sha256 "bd32e3c20ef7c497b5c71e61cd61db417f688bd3b9a437e37a38941baa7f2b82"
    "es-ES"
  end
  language "fr" do
    sha256 "2f5bc500f5decfed4fd9249392fede36e1f508b6144d6268c66d021e71db7a3d"
    "fr"
  end
  language "it" do
    sha256 "14f47aebd0d6d2b231ee51e62f6b0f4791e6d00d9327dce183e5a11f00ffc1a7"
    "it"
  end
  language "nl" do
    sha256 "d6ac1ce763ffa4ccac0cc026e4e4f70889786cdaff3fed30d908bb2c219dca5b"
    "nl"
  end
  language "ja" do
    sha256 "d442a86b13e4cb4343993f77fbf18fa6ba4f1484a1bfcbe5670a98aa02011fce"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "7bf4eb2835f2b9113ef967073d02b75d336c58e0b01edb165c9744f9bb5df210"
    "pt-BR"
  end
  language "ko" do
    sha256 "4e6a9f7e83dce78f076bcd7789718c863bb42e17af8aa9e3b39135cf1e59e0cb"
    "ko"
  end
  language "ru" do
    sha256 "9ad7fd00b7a6f2fb8e6b95a453200f91a601092005fbf89336213393c29cbd01"
    "ru"
  end
  language "uk" do
    sha256 "f6994112cbf44221c416e6abc39244ecc3b7f8a05209849da4ce885355717e85"
    "uk"
  end
  language "zh-TW" do
    sha256 "66d9e693f7ec574c3043d7dcc30df0b3962cb78908966fccdb8d0c419462f36f"
    "zh-TW"
  end
  language "zh" do
    sha256 "e9bcd9c074bb156f9ad1898adebb1b91607a16b8061b47e76e000659fe863aaa"
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
