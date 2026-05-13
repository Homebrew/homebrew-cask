cask "firefox@developer-edition" do
  version "151.0b10"

  language "ca" do
    sha256 "6602000f14bf03de438ea29caf009c30d9bdd38ecd850b835b95930ecd2b0db7"
    "ca"
  end
  language "cs" do
    sha256 "fc5cddcf6679cccf3d951ab9ad2fcb7af8b2d580ccc307945dcce1296717d4c9"
    "cs"
  end
  language "de" do
    sha256 "20b5782ce64868a62b83aed6f467e4b2140776ab48f1a6942918f2013480e061"
    "de"
  end
  language "en-CA" do
    sha256 "bb4e89e85da81a10556b3abac13b87b7d5d278070896ce814d4889af4fc59c19"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b07c7e1fafec68c878a8b9f8a44b97b897d33e63219110a1e7c7e33cbfa6758d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3632de04591fb5699575374f4c9c71e7249675be9c8d43624dd5cd4f41da8485"
    "en-US"
  end
  language "es" do
    sha256 "e8950520ebb506a1ee3c1efcf5092efbdf6aedea4c80284fe2480bfeafdfa839"
    "es-ES"
  end
  language "fr" do
    sha256 "8637c20d5bef125d7a77d6536c1f27062ab163f08703f03462b45f112914ca1a"
    "fr"
  end
  language "it" do
    sha256 "bac18dc0af27e8594cf7bec3df61ee9145607a5840bb4d66d0af8959ac55b2a0"
    "it"
  end
  language "ja" do
    sha256 "5567513572867f9325c97008a26f99b0f77cc08f47df5838964094d95e920bce"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "51061dc4f2d8e9b2164184dcd5bd4b8348fd3a43071e9d795e8554619794479b"
    "ko"
  end
  language "nl" do
    sha256 "51f0768d5ceb972294a2073886a0c399b95a3de91998201aa77396d7525019db"
    "nl"
  end
  language "pt-BR" do
    sha256 "426b79e207f06949398ef8757fb9f25a976577e62a6179d109db1b9805b4aa02"
    "pt-BR"
  end
  language "ru" do
    sha256 "86c3d3975c16f0b3baeed0e0cab21b23b23112f581b057d99fc362cbf69b1ed7"
    "ru"
  end
  language "uk" do
    sha256 "e94b87fc6036b901315106133a166404f932dce4a94f577429c69ce3c1101265"
    "uk"
  end
  language "zh-TW" do
    sha256 "166983d33dfc9e4298f1f9bbf4374b6173d875296e9514795a7f04c987836d47"
    "zh-TW"
  end
  language "zh" do
    sha256 "5fc4bdfae982d9fd6508bc5e4a369fe7f92b9cf3e1b770dbc0ad8e3ea1b9add5"
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
