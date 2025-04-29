cask "firefox@developer-edition" do
  version "139.0b1"

  language "ca" do
    sha256 "6eb456656e1e5aa0c28a6dedc6e98b085b542c65f4e0e3503b9d695170712020"
    "ca"
  end
  language "cs" do
    sha256 "d2bf6c6d537cfea447465ff9cb471ab1094fb2c214680a5c82da565664e5db3f"
    "cs"
  end
  language "de" do
    sha256 "d23a85723f2e9c462d5ba1883a5ff32d17cd92c3d13996c0065b4e6283314559"
    "de"
  end
  language "en-CA" do
    sha256 "063b4b091b649e1b5532de57dd398fff7d31df560c06f3bed6dc19e326ebd669"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1e1eee1a2b78bffa393609094e834b3f490e072ef25411117043fd90e647b614"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f6e6744edcde647e9e14bd69d5ea2431581b8dabe905202f81a29ffde710d0bc"
    "en-US"
  end
  language "es" do
    sha256 "5effcc99b9bc093a13c350dedf0a64cffcbca2b846db14a8441b5e6d704e3636"
    "es-ES"
  end
  language "fr" do
    sha256 "5b9126920346b86fe6b02f1d9c7ff877bf520fe60e9fc335be4e30298e067127"
    "fr"
  end
  language "it" do
    sha256 "ec8ddc38f18a382e9c6f2993066ea6eb992f41801f91a05042e2a8d41b1d3d21"
    "it"
  end
  language "ja" do
    sha256 "4cac5ab5d3a3ea913838b8931321b36dc6953dc663c1c3652e00b201bac6358d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e6c736ad9042860c557afe3ccd591787e2d7de38755a2c9fa4f5dbd87051bb01"
    "ko"
  end
  language "nl" do
    sha256 "d688bd5bdfdadb0166778bd25c0518e0eeb2b4d303f813cc2c638e7bfa378aae"
    "nl"
  end
  language "pt-BR" do
    sha256 "779d3b794bbea35e3522f1c0c784057f0db4fe4ef7f4c62a269dfa217a0ff338"
    "pt-BR"
  end
  language "ru" do
    sha256 "656aac788160859424c73c11ec484e04b6c21ac264c13f0507e2f192570edad9"
    "ru"
  end
  language "uk" do
    sha256 "aec193b5ce899caac7996cdce5bf55cb2e6402c0748e8bee4eeacf4c91deed7e"
    "uk"
  end
  language "zh-TW" do
    sha256 "696bcdc85d95ae7fd4c088b48708736cbe9dc4659b11c2aff9c418dc33809a81"
    "zh-TW"
  end
  language "zh" do
    sha256 "bccc8d1f4d358784fbcf83a279c7f662f13d2223e7f3e02d788feae872138d4e"
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
