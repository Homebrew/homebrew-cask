cask "firefox@developer-edition" do
  version "137.0b6"

  language "ca" do
    sha256 "93da4696bfd9356418dff473f46b1ba813023d37b2db8fd0ad69022a93ba1ee8"
    "ca"
  end
  language "cs" do
    sha256 "ce9b36942226999a7017bec0c7ae133d5c4c0fe1cbdb8595cab84afbd03ec8a9"
    "cs"
  end
  language "de" do
    sha256 "65296f69baf5847fb6e0576e692bc2f8cadc6d114742a51ae542c9920277c862"
    "de"
  end
  language "en-CA" do
    sha256 "6375fa260fd64f984bc749047404175089e0ffa92a68ca174962b90872a32341"
    "en-CA"
  end
  language "en-GB" do
    sha256 "31418a215a9785fdfa38db52e95047f5a8f32827232c2d4f24668e8633859393"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5a333bc2f2cafa70066443cf730b1835c6e714366827eeceabd534ddaf3984c7"
    "en-US"
  end
  language "es" do
    sha256 "830b780759457698d82dc4486aab7bbbefb39a08988c1094fb65094bb97e7a1c"
    "es-ES"
  end
  language "fr" do
    sha256 "57f392d51ad4e9358753363639437834e42be6b52bd1aa70af5137ab774f0074"
    "fr"
  end
  language "it" do
    sha256 "e1510de3fedb71de16dd674111c43cd8e1ef5c11df6ce71d480f4cbaaa5f9295"
    "it"
  end
  language "nl" do
    sha256 "07e5cc0eaae44f0144700da7e9e73b2b10c5852daebc14099813d37abd78266d"
    "nl"
  end
  language "ja" do
    sha256 "2bca7185e5c63c0bd6ef61baa33d0df21ff55daa2f9238e42eee881ac51a62eb"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "e88f83821c0683fa3db2f15e020c03f83bd6095bd6ee8b8de944424438676a07"
    "pt-BR"
  end
  language "ko" do
    sha256 "ffb6a631b44a79971c9f8557cdf3a07342c2f4c0591b40afcc87a2fa08f3b471"
    "ko"
  end
  language "ru" do
    sha256 "327345a0ea0b3f7926e85fa50612ca37300288f6d1253ce8e163b42dacd38215"
    "ru"
  end
  language "uk" do
    sha256 "f886a68e7662309cb2a9f3a3973af99a27c0d56fd4f3fb9921a5984e66f9fe8a"
    "uk"
  end
  language "zh-TW" do
    sha256 "f067085b4f01254050c2258b9835ecd0e61269d35476bf30365d4f5d5549b1c6"
    "zh-TW"
  end
  language "zh" do
    sha256 "57cbb2b9bf0dadaab7c3af542b891e2e26bc5c06c1b69b5f95bd83b0777a229c"
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
