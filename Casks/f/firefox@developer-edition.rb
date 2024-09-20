cask "firefox@developer-edition" do
  version "131.0b9"

  language "ca" do
    sha256 "31bd0af6730c97f94335929028c2b8d63b529864206747cea96a013edcc61798"
    "ca"
  end
  language "cs" do
    sha256 "1c42c902593d7b9f55808ea97105d9e71a7df4a8f6e956fd4b94b5f66adc8a6b"
    "cs"
  end
  language "de" do
    sha256 "e5b61747a30afbd7732f7e1f565d7877416c06f9fc80eaf8facb4ef410622634"
    "de"
  end
  language "en-CA" do
    sha256 "f46c66c8cf13d1e3738d26384d299870a0d0a3907b0195678d5dd8f5f7a27ce9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0c2a390b1bf4f327bb9c167fdae54ec9324179846e42c258415116f219a5508d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "912c8a2225933478ac16f28f0ee9b72723fef287347ecb10db1cee72930e835f"
    "en-US"
  end
  language "es" do
    sha256 "48771ecf546edbd21c1a4feb001357bbe0155ac8ac00497ee4fe225ef3eaf314"
    "es-ES"
  end
  language "fr" do
    sha256 "87df0c15d0505a37eed90f207d7dae445446b6794c148a71317f272fee0f864b"
    "fr"
  end
  language "it" do
    sha256 "260de3533ddf6aa6deceb2e4ad479c76f726dcd5f0989b9070616a8b000d7f94"
    "it"
  end
  language "nl" do
    sha256 "8b9e47d6b99485edb259f2215f9f1f0b62783cdf838709a1f088080bbef542e7"
    "nl"
  end
  language "ja" do
    sha256 "7188b0e7fb028d018830575ec24e12fcfa97d6614ab547bafde854d91e6ff5ff"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "43d48dba2e1284da3b3ff86642307150ff5d232939d8b78968aa5ed24e1ba5b5"
    "pt-BR"
  end
  language "ko" do
    sha256 "49178d33813ff1097a23e8b473fa6c726ce5558a7be45c3d2b336c098c1d726f"
    "ko"
  end
  language "ru" do
    sha256 "5eb92f91246e570b8811552924c17957841cd0f9cce7fc02921e3a5d34076c11"
    "ru"
  end
  language "uk" do
    sha256 "321e55f5eaa95bfe60642e376589b0ce151de0c98e03428c8bcb29d62eaafb70"
    "uk"
  end
  language "zh-TW" do
    sha256 "a5671e26b48abaf972a7e905210d1134377060ff776e5f79e645f99a7dc57ac5"
    "zh-TW"
  end
  language "zh" do
    sha256 "e2bc96e0014a4bfe2ebe0c563e424239842cf99ec3231eea2998fe6bde63e729"
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
