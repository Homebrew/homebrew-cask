cask "firefox@developer-edition" do
  version "143.0b2"

  language "ca" do
    sha256 "5b1100b9571d25dc94c7cf905ea9a90ca5cd612c456daefac57c3d1e24885b89"
    "ca"
  end
  language "cs" do
    sha256 "06f77bd7b92e37c190a6dd31cdc593dee61eb25bfeb68648d5cea99c00cd44aa"
    "cs"
  end
  language "de" do
    sha256 "2cc6f5015d8857ce317c9bfc37ad86624e82095fc961a8208ebbc231b5fb0e4c"
    "de"
  end
  language "en-CA" do
    sha256 "41f3467a4335eb67925ac2022ab3e98abe94c454539875af126bc5474f4dd4bd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9c1c7d3cd4ca366ccfc911f74cbacfa928492fc98a32bc99f328b07800e53e58"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8938154159f0ba05a5c98e3560b885e5f454b129fb4e9ab90ec4426d0f6c2a90"
    "en-US"
  end
  language "es" do
    sha256 "2ceec9d61c1f8a9cee643c72aa8bc3e7dd324f28a8d12fec7fb6ce3f0d492f81"
    "es-ES"
  end
  language "fr" do
    sha256 "0409feffeb9c241e447f9e0d3c8f8b138c7bb165656c6fc22ee24814c4a368f1"
    "fr"
  end
  language "it" do
    sha256 "769159b8214db1b64b11e8232467787f57d0544045318fc7f265201c1238091f"
    "it"
  end
  language "ja" do
    sha256 "e177889e760b4fa130d9241727fb5ee1ee889edc74238f4e0151eec18dccbfaa"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9faef45a628d584ec7062ab94563739014021c8f5415e75e7ce11c2b5b653e5b"
    "ko"
  end
  language "nl" do
    sha256 "e6138042a32705312acaf5b9fbb2d9edfeda11e3b40f2c313feeccd91fc7e29b"
    "nl"
  end
  language "pt-BR" do
    sha256 "15e9aae5a7edfb2b9cf20d154e5cd743efe4242342a90e3744f37b13f03030bb"
    "pt-BR"
  end
  language "ru" do
    sha256 "38988c0815ded79af2b50229ea64f00c005af819a84ea9c88f03fc73e5dcbd89"
    "ru"
  end
  language "uk" do
    sha256 "f29812cc9d15daad6bd876f4b9e6222d9723e5fa787b04f26fe2bf7030bea9c4"
    "uk"
  end
  language "zh-TW" do
    sha256 "e8ab45c35502cbf82ae96c94a4adf022317a06de316b4cd27f92b8507ff67985"
    "zh-TW"
  end
  language "zh" do
    sha256 "6cbadce173308ec15720fdbf53672afbab3d3dd3bf36c5c94333fa8a46e50fff"
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
