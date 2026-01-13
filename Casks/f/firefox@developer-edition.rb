cask "firefox@developer-edition" do
  version "148.0b1"

  language "ca" do
    sha256 "217fd9070ad01f6c0d18327d08102bbfe4dcd1bfd30a542f871834d5e51d522f"
    "ca"
  end
  language "cs" do
    sha256 "f9d81221af92be2a273c43978b69161b94495db3bb0b2272cc4b83112cdf2395"
    "cs"
  end
  language "de" do
    sha256 "53c759c5efb778448a7c6d5e395701cfca02e29e38ef644d6f88a4d1fd095ac6"
    "de"
  end
  language "en-CA" do
    sha256 "125eb0319e223eebea94dbad387bd3f07fa369d51b53cc067fca3d89245a2ff0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e52cb0c3299b57f961fb1b212f89fa2224f139af73a71423b40ca57fc8b52f1c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bc7b7c6c93ac390fe2a2d7f53390d053f7c974a8b1f38f735c4dbe53e7046fc8"
    "en-US"
  end
  language "es" do
    sha256 "0571bd6922bcd56b38057becec682289c672eb3028178d62d3d3996aa436e9dc"
    "es-ES"
  end
  language "fr" do
    sha256 "8d668ddfe6347d5008eb83d8fe6cf8271b3029bad4cb32ec38a9630392711d75"
    "fr"
  end
  language "it" do
    sha256 "4c9a1cf1ec545d456e9975969e14b1bcc08d11254a9101c500d6c6758ba456a4"
    "it"
  end
  language "ja" do
    sha256 "f0e39bd52b9fc7c30f7c4f7404fa83eed35469c4257df40f657b6f82981b871b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fadc28bdbae76953d93cd59b4fc4f1fe5db9384a9b98149f34141c69f3724bb8"
    "ko"
  end
  language "nl" do
    sha256 "4a314de344c4af29e7048d5b6f944aa49915c4edf63bc049e26146a9b24610ca"
    "nl"
  end
  language "pt-BR" do
    sha256 "4f59ad9000f8e146102a41f2f27d7bcaaf88092609257d1b9bcf61f9447b7af1"
    "pt-BR"
  end
  language "ru" do
    sha256 "8875282d7de08fd900af572b0767f5be7ee45aa79f423ad172b1923f6bc7fdd4"
    "ru"
  end
  language "uk" do
    sha256 "47b1464b746a79e2dde40e993dc004fafecccdcf69545f33004d3140e5f4c480"
    "uk"
  end
  language "zh-TW" do
    sha256 "03205625c634dc399aa572c824fb08cd75f0d44023c87049ab753d08a76114ed"
    "zh-TW"
  end
  language "zh" do
    sha256 "c2ee3332e164f09f0b242137bda0ae6ec159d65bc4496371470552886fded9ec"
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
