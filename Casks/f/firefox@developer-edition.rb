cask "firefox@developer-edition" do
  version "133.0b6"

  language "ca" do
    sha256 "6dcd4258ab082bd1e44936a18c042a5166f3370f5671956a33f4628609dcd5f2"
    "ca"
  end
  language "cs" do
    sha256 "14894425b8f9d938a17d8d4849739916616debc4307d49644609652b280d8973"
    "cs"
  end
  language "de" do
    sha256 "e23d579ddd6719affe5ce941723fd25f08cb077456ff19a9aa402020fc885893"
    "de"
  end
  language "en-CA" do
    sha256 "c1eaccb0a568d75d91041ae348a3cb6f732e3e0bf90f9d5226d5aa526be1cf71"
    "en-CA"
  end
  language "en-GB" do
    sha256 "adf1f7e5d74f3eb0df14ede951f80dc826f297bbfb78a7f83ddc9fa22fa53432"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6c56b415b83f861227f01a504fbe82c378884c4ac3cd378a0009ffdccf84da64"
    "en-US"
  end
  language "es" do
    sha256 "92bb25ad7d4f86f2c180b72f6db89c506d1a28d93137dac11ed947a0deebb6bb"
    "es-ES"
  end
  language "fr" do
    sha256 "21f18c01ece3f3befb6c829972aa1ba9dd8adbb718aa6ecec20f8103c246571e"
    "fr"
  end
  language "it" do
    sha256 "6fd459c5b3a3118dbdaa0cb1cc85a7bc7863141ce525ca9413596a99f7c610f2"
    "it"
  end
  language "nl" do
    sha256 "b81457b65ec9d26eb21c726fc484ca809f2706b4d1bd5cc8840c54bc2e47ea39"
    "nl"
  end
  language "ja" do
    sha256 "48afb8533ccaedc2930f3601ada9e068741702cee492ed5e0b12d767e037df5c"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "14e23f93b2eaafda449322b2af91a24a39972472cf5e71a529103a792c419941"
    "pt-BR"
  end
  language "ko" do
    sha256 "607b0f067fe79e09116b252b236245849d924d552afce16845dd52b509d59377"
    "ko"
  end
  language "ru" do
    sha256 "598a233e9fc6877957ff0d569de3015ca48509f60e58e05cefc3131566ec8045"
    "ru"
  end
  language "uk" do
    sha256 "1f74068aadbf8c1934dac7c1a767b2ba9f7464cf2e1d5716681d6609fd14a73c"
    "uk"
  end
  language "zh-TW" do
    sha256 "63c4ca3e84115ca1b7bb5dead9858228762357a6032a484ca0e31a32d72d8feb"
    "zh-TW"
  end
  language "zh" do
    sha256 "5b0fa2c376c7d676dedb98aed2e10f1f92c30593342eaf042c55aaefe92841de"
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
