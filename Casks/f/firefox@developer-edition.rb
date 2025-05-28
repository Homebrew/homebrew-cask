cask "firefox@developer-edition" do
  version "140.0b2"

  language "ca" do
    sha256 "367bfe9dc9f53f783eb59a2e345a3cf8e65dc4b15f535d8f25be9f2c0ab3ca68"
    "ca"
  end
  language "cs" do
    sha256 "c424df549e13c0a6041b212d9e7e49d09bedd634ad0a35daf5ff8b7f08b705fe"
    "cs"
  end
  language "de" do
    sha256 "9284ff990ecbc6260d82aed6e0ffb3608348c5c084c0ca50d59cd75c84e5f4da"
    "de"
  end
  language "en-CA" do
    sha256 "3f6db147fc75e6d2c3efe2dee4e889ead1b3d46909bfa555da8012d48fc7f418"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8328b5267b092e75a646da81563461b6d660cfd1000a2da26ca404acb516badf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "880d44a98e9232eabf61ed9949047c235d4fc68145a97cf3f3569c8557ac848b"
    "en-US"
  end
  language "es" do
    sha256 "639b027643f251dc168d3b93530d8bd3fcd394f3ff62a3eab964b00f9904a175"
    "es-ES"
  end
  language "fr" do
    sha256 "4b8b893500b27eaa571b87f5a02fb2259cc8e0be6dfa11bbbc43635b9656233b"
    "fr"
  end
  language "it" do
    sha256 "d7469d7f3117ea3ea013df5dec0003a9890504d2f3d70550217dc80b290bf93d"
    "it"
  end
  language "ja" do
    sha256 "2991001790e31d97bd5e7378dc3fd6f78bf496db091dcb7e5e8929980a3ca8c0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f81b961491a67e97ed738a49f1a09dbf42654df0921ee0a7b8b711b72ac906c7"
    "ko"
  end
  language "nl" do
    sha256 "68c88cac72f77231dd4e26a6e1790f13facb0bc37cfc04eb5e17020ad1c6521d"
    "nl"
  end
  language "pt-BR" do
    sha256 "edf314c2893d2a07ae3c0e98fd4faa01a8c70afa1c42bf96f4b908e987d65d30"
    "pt-BR"
  end
  language "ru" do
    sha256 "0d94677e22915b79deddfbfdb80c8be4699fbb47fda59b5e54ea26ab80064210"
    "ru"
  end
  language "uk" do
    sha256 "792e2b27880a62f5eef7b93c36a35d89404b964cd17b879bd14e567e846d55c0"
    "uk"
  end
  language "zh-TW" do
    sha256 "0f0dc4ebad9ff5c09a4c015cff5e76a7ca271dbadf185a23034806976a6dd1e5"
    "zh-TW"
  end
  language "zh" do
    sha256 "721f621b057bcfea7397b16f8e5da98e0059a742809c8b0d3fd54d3b459ac1bc"
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
