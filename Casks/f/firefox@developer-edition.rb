cask "firefox@developer-edition" do
  version "141.0b7"

  language "ca" do
    sha256 "e25a4e0d1a348e7182f2bbecd15957c67b717766420a5a94cdedb2209b62061b"
    "ca"
  end
  language "cs" do
    sha256 "490c9a6cc0e1dbd66f4f04e012fb437a101cbec380dfe290419613852e9b4f49"
    "cs"
  end
  language "de" do
    sha256 "ee55bf5dbd352dc41e1b9c7d0267ebd4ee5d2e8fc3d51b5320356f954676379a"
    "de"
  end
  language "en-CA" do
    sha256 "f2b134e93b77af46335d25ebfac5d178132707bbce80e46b98ed5fa007fede08"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ccdbbb30919f93e6cfefd7b6faf2e99ee446656a0bdd0e4bd8e2b0628427f38d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3a846d1595836aa2dc68d1629f9bf5d932000cb1b1de2071282eeeb85b1b56e9"
    "en-US"
  end
  language "es" do
    sha256 "268f590a1b95c3cd54aa4700193fc4d3cc44756775b552e5fef10345ec4ff252"
    "es-ES"
  end
  language "fr" do
    sha256 "a30d928a3146ebaf67ebe3d70c0747041b1f62cf4bd5ba84afdec0d7e469b011"
    "fr"
  end
  language "it" do
    sha256 "607ce441090a45387a2c958530d9be8553fb2045fb5f35fb60bd7b5aaac322e2"
    "it"
  end
  language "ja" do
    sha256 "024ef2313b1d881f18185429ccf7cdbeea25cdea0e6fc3369cedd7ac1749148b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3459a60efd2fb524f97e420f14d34190bae709034efc36783a79d0a7423f746f"
    "ko"
  end
  language "nl" do
    sha256 "d31b1ab688ba5238f31559183f932ffc11eafc79c65953ade36931025bd02d81"
    "nl"
  end
  language "pt-BR" do
    sha256 "72e67102415f0b089f8f34d54e19ad954b092380afb9f7aa87ef5c773bdbcf8d"
    "pt-BR"
  end
  language "ru" do
    sha256 "db4210924104deac118134db280e222944a21d4a6a5528ae048c05b288d4dade"
    "ru"
  end
  language "uk" do
    sha256 "380b1118a25b019d561cce9f0c4cd95646fb7e14d3bf4ae5ae201ce584ec09d7"
    "uk"
  end
  language "zh-TW" do
    sha256 "48ed36e02bda9a463cad1502e60ad2eb9b7a6e27b6ceb77b2e8ae09b2ffa41e1"
    "zh-TW"
  end
  language "zh" do
    sha256 "feff3dafacaf471a35af7658c22a55d7caaa8859e42c75172bf2e38113df0afd"
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
