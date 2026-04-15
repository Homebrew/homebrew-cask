cask "firefox@developer-edition" do
  version "150.0b10"

  language "ca" do
    sha256 "917385288b82edb071edab59a5a0b8ca6b7e0d14052408ec2a19ee79975b7936"
    "ca"
  end
  language "cs" do
    sha256 "7fb05b1115f2332f0b9b61bdd743f02b741101cfe2d1d562e0d6cbaaf3cf82ee"
    "cs"
  end
  language "de" do
    sha256 "d2fbdefad1b89f55c4e40df58d184abe07738380c5b17da3a65853de82179471"
    "de"
  end
  language "en-CA" do
    sha256 "1d42f3e1983348282d10347c2d6aa2c1f18291914896b5d138db4d3a621b7d0e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c525f97d293dbf1df04d3048c5b21971f82a3aaadb4d18902d5f79d569e33ec2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8d47a8e96bc79ebd7b38d421a8c86c028e7996af7633993b9afd5f687016a33d"
    "en-US"
  end
  language "es" do
    sha256 "f42f455786dbc95a264a77b06c4d41d96419d543e6be94d99200b5f3b9e2d2ce"
    "es-ES"
  end
  language "fr" do
    sha256 "75785404eba1628390f2296cc32556a0c94df5da709f9589facc2031b676321e"
    "fr"
  end
  language "it" do
    sha256 "8f1372b38b45e599fdc68d39ac399dee076447834a233cfb6e5217cebeb3530a"
    "it"
  end
  language "ja" do
    sha256 "03fc152234a8da59a739cb41b6e0f849f3401cf78ef57b3d509728768cf82084"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "20ffba7b03447e9133200cbf0a1bdfd34cc02d4e522af36789bccc8b1f503450"
    "ko"
  end
  language "nl" do
    sha256 "0a2b0062479c921fe6b0c431e60a82b09e33b230d8a1669ac1e2e5d54752e6e6"
    "nl"
  end
  language "pt-BR" do
    sha256 "2d22510e654eb300ac41bc657db05aa9a1beda86e66593068eeb55a92d4e089e"
    "pt-BR"
  end
  language "ru" do
    sha256 "7fa6966d62ed1de0193ea28779e10df768b5626e877e8d5dfcbbac8b12cf95db"
    "ru"
  end
  language "uk" do
    sha256 "8aa2dd1ac82b73b906d6958311c51c0847b9bc2600904b73e353b16b51dfe89e"
    "uk"
  end
  language "zh-TW" do
    sha256 "e8592a8d1b5bc3f4558f3bcc62bbfc1977f7ab3f860b964ed88f6f075eed85fa"
    "zh-TW"
  end
  language "zh" do
    sha256 "ec17f9b0da74e0ba78343891024cefed00ae4cc76b25f95c977be3c33dd8a60a"
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
