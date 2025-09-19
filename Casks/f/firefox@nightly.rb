cask "firefox@nightly" do
  version "145.0a1,2025-09-19-08-55-30"

  language "ca" do
    sha256 "bb97621f4f6cfb28cd993dda881e249250ba141f7ad61b4d4d7bf913755c8086"
    "ca"
  end
  language "cs" do
    sha256 "330c5e536300d65c0b524e9eb56ea85a70c1034931d3fa95508e5a3bcfc8cd4a"
    "cs"
  end
  language "de" do
    sha256 "9dadda1dea6e240e12a8f8c8e3a64109ed04b726c0524fc7a6cbc5045db36816"
    "de"
  end
  language "en-CA" do
    sha256 "ea409a1d69517daca1950f88056d05e9821457765893ed9fa2605e7d1eda5150"
    "en-CA"
  end
  language "en-GB" do
    sha256 "911ddd4c2b569b836f41afee700d2dafd9958ee17b46c3d9c663d4223dad7398"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d4d97b24763230d189dfddb241f4d8a736a70c7f6400610a4902c89899217ef1"
    "en-US"
  end
  language "es" do
    sha256 "01b4da385ad83b5fcd5c901d86f2b7ca9bcb6ef7732c99c6126d25efd37a2b7c"
    "es-ES"
  end
  language "fr" do
    sha256 "d735f200c03873d5c5efee0f6dd6a48005e3f0c075707668e5dbc3d0268526d1"
    "fr"
  end
  language "it" do
    sha256 "14d53dbf74bde389ffa7cc235ec8e8dcab37cc5b5e2ed131ea7b79db6aade971"
    "it"
  end
  language "ja" do
    sha256 "1ae8e2aa74e069c31f3f80e1ffd3330ec284b2aa66d818fb5cb84bc909d0bc34"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dd541a653c908470b9661a346d0e0804e7a06468472644285db7058af49572f1"
    "ko"
  end
  language "nl" do
    sha256 "25eb14a5c28bacdb1af19e94eb327f75c4e1582cfc7da9f9c7bbfe98b8bffb39"
    "nl"
  end
  language "pt-BR" do
    sha256 "12a698373b8a78370f04ebbdd3a244add5eecc292a017637f4d54da2064c83f0"
    "pt-BR"
  end
  language "ru" do
    sha256 "64ab05f7702b685549615ca90c8b4b4f43b1ad782714ca326d180ef4026327e9"
    "ru"
  end
  language "uk" do
    sha256 "d4e7267d5b0137b3ceb9c652c51aa3a45a3c77b6ec9e688714c97781ff31013a"
    "uk"
  end
  language "zh-TW" do
    sha256 "56219264e7a2305ecde272e86a8cf7c2315c0ec614c09102b3f93926ef3597c6"
    "zh-TW"
  end
  language "zh" do
    sha256 "7a77b23400bc39f9a872d0816d897f693eba96d1405fb35b630579d3d357041e"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Firefox Nightly.app"

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
