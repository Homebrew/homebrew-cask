cask "firefox@nightly" do
  version "143.0a1,2025-08-06-09-56-56"

  language "ca" do
    sha256 "31fca795fd1f64c50807d33ee9e96371b5cf484ad5cbfdb4c6e452f6d7ee9ab8"
    "ca"
  end
  language "cs" do
    sha256 "ed092263f60dceca225d3b20244736fa3f380c8c88717eea718d8c31498e30b3"
    "cs"
  end
  language "de" do
    sha256 "29b909fdc79c7c9d2b249284418e9fe595de0c32ad4c60997875750a59620adf"
    "de"
  end
  language "en-CA" do
    sha256 "09edb974e82fe3ed1b76551ef99b62f00a73045ea0e63a42a9655296b4f12ca1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3977ea528d13597183b87c14305f48e85fa4f8c157899cc1f6a086f62ea8cb65"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6606296db86426d781757d63db928d203c9c279d33c2d84aca7968b7fcc4492a"
    "en-US"
  end
  language "es" do
    sha256 "e71a437bb6b6e6c0bb0bc431221118706d779cba28e3ffc540d013a02740bd74"
    "es-ES"
  end
  language "fr" do
    sha256 "cd8d550596177d1b159af5899c7beea24d525747d3bbfcc3c4407504f95353a7"
    "fr"
  end
  language "it" do
    sha256 "3ddff8dbce4afedec6dbbd5a6ce907937fe23db94c441276bde7feb43f94686f"
    "it"
  end
  language "ja" do
    sha256 "260aff9ef2de1aad7dcb4c1fb49854c678431c08deb75a28e04f5a7641b13fba"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "23ebd499fcae312ded62bfb28eb503c089d768f9cf2d3c1d090f9def8a613179"
    "ko"
  end
  language "nl" do
    sha256 "67e9cc2f65467a48b9f53f45035d1ee816499166a2bcfd7156db5af288fc2cea"
    "nl"
  end
  language "pt-BR" do
    sha256 "5c1422fd254d21700c32dd59b63407799c02f2858b0d038fdc4d91012e9ef4ca"
    "pt-BR"
  end
  language "ru" do
    sha256 "900efed2eddd6a465e7f590affa1381f892a4a87c433944bd1ab1cb6910d1a2b"
    "ru"
  end
  language "uk" do
    sha256 "a907298a9a4896ec8cf1211cae043ad01107f698358a344ac361d9761a8f4a46"
    "uk"
  end
  language "zh-TW" do
    sha256 "b6547e315931b7e57620f9ab10fe307dee67552a84c44e34125a62abb06500d2"
    "zh-TW"
  end
  language "zh" do
    sha256 "ad254218c8747a6dee50843745efcc401be6a213a66baec13ece9ae7930b489c"
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
  depends_on macos: ">= :catalina"

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
