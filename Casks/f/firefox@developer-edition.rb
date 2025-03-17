cask "firefox@developer-edition" do
  version "137.0b7"

  language "ca" do
    sha256 "ef8846e077411f5deedea228d06bba80e69a137ba087690ed9efa93a42b1e817"
    "ca"
  end
  language "cs" do
    sha256 "00603224a8436e05faddb9633cd2f724271c1ad5bab639cd397148a2015c6da2"
    "cs"
  end
  language "de" do
    sha256 "e9f3387bc0f20545f0b41aa4f8241a0f87bead5829cd183b6024628fbe4942c4"
    "de"
  end
  language "en-CA" do
    sha256 "42fd772056692cd50447a7135bbd3b903ce17b61cf562dc0b02a61bcf54c5a64"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1a22afd25812ce9c2a05f393db517cf7c5c2448b0bb1c49d1e7159b0e83bc3ea"
    "en-GB"
  end
  language "en", default: true do
    sha256 "923d3410fbda605bcc45da83fba4c8bc1f01b927091c056525f1601cc2c79b22"
    "en-US"
  end
  language "es" do
    sha256 "f82126490bc172f975e9b79ae60783edeee4600fae70818aa3cb9490afaf924f"
    "es-ES"
  end
  language "fr" do
    sha256 "ab7f9a3c28d55481ef87ac2034c1ecb45fb7d676ad6067962a69156757275fa0"
    "fr"
  end
  language "it" do
    sha256 "f3c2a429a171f6bc2a441caf0b429f92f96aeb3cf022a96761421b2e4c8ddd37"
    "it"
  end
  language "nl" do
    sha256 "cb11d7db6151040f94d9a764b9463269b122e08b4d368e4d56abf7636e1a6ade"
    "nl"
  end
  language "ja" do
    sha256 "b698aa63651ac185b8814069790ee179e9cca84f654582aa78723d5287a6dd6d"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "1a63f21df4a075b4106bafd619271ff2f0ef92765af75e3c7f7d247482441b81"
    "pt-BR"
  end
  language "ko" do
    sha256 "4a9f98d61f0a0727003f4a8a461393503fae4b13753ad7f70dc5d1b55aecc2a2"
    "ko"
  end
  language "ru" do
    sha256 "774e8334c7d3ec63bd318fedbcefac6365da00343c21a98644d4f35b85cb2464"
    "ru"
  end
  language "uk" do
    sha256 "66765ab76342a55247a8e901f702e656e1b7cc45e1b9f385e4118bca0185a173"
    "uk"
  end
  language "zh-TW" do
    sha256 "97a7ced0235395db44f02dc063416978a311f6e2cefbf206c75f3f068a9e2d74"
    "zh-TW"
  end
  language "zh" do
    sha256 "5f5d78e9afff96127d74491dcd0a6f48dcd97a7b8a9d1c9ff96edeb99d9f63de"
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
