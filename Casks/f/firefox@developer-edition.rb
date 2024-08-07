cask "firefox@developer-edition" do
  version "130.0b2"

  language "ca" do
    sha256 "7a8b4a2d5406d18adf438d94154683b148e77b4f7c119e7f14116b12a190e424"
    "ca"
  end
  language "cs" do
    sha256 "63994f37cd7a8ca6cbd9920dab649b7dbaaabdcce1d623293103c1dd4a26c7e0"
    "cs"
  end
  language "de" do
    sha256 "8a60a76f6771a48adde15f679de9b8fca680f7285dd0dd563ab73cbdb6eeacff"
    "de"
  end
  language "en-CA" do
    sha256 "0fe35366bce41ae286349fdeeb3d97ae482a0e51ed0084cd9f57b523dc79155e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2bec6c3ad06fccfaaf9b6cc87773cc56717abb54092996942a70cae5ef954384"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fcd919fc9194818edb21022fa3a5fa2acce55e2816ca2e0b31f38d51405c0165"
    "en-US"
  end
  language "es" do
    sha256 "0ce6091ab57016e32f1902a5ab2270db315b5b6d755cb43a337eae89a6cb9a27"
    "es-ES"
  end
  language "fr" do
    sha256 "94cfdfecf611e0fcbf4b4be3462b1d82cf1d35560f002e36d5bf468fbb8e721d"
    "fr"
  end
  language "it" do
    sha256 "61029aec6aac4d47fce7ef69058e648ad9c438f6d4988db2cfcbb8774a8c3d93"
    "it"
  end
  language "nl" do
    sha256 "1cd749e3427facdab5f8bbdcc8f326e2d1b712153fbe1541b9e9b2e14742032e"
    "nl"
  end
  language "ja" do
    sha256 "ef37b69764e06ad3e67e123e196457c4bb91ba431948396ce5590fc7fe229078"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "da7bc79d66c3bae827bf24e3eda336dbae67bb9a5a9e45d9603726af9eafedfa"
    "pt-BR"
  end
  language "ko" do
    sha256 "8993db9d0b3c6519f77e1fffb9250fc9b9fa831494df006d256726e70da6484e"
    "ko"
  end
  language "ru" do
    sha256 "4383429eaab3393c20913e816bbe5a4b54320cc3a70f2a7a85b2c3c10424e35d"
    "ru"
  end
  language "uk" do
    sha256 "0a744c064978c5eebfe1a5db836cbdc14fe0fb2c8f95ae84bf3133200fe52bc3"
    "uk"
  end
  language "zh-TW" do
    sha256 "3eb94e0d8cbf6958d333ebd52cd697fa7f59d0220ec7fd3331cffb9cd00ba77d"
    "zh-TW"
  end
  language "zh" do
    sha256 "aa3a59e8b116b604d407b9b97c9ccf09868b345a53a582abd4b4ee0ce985a722"
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
