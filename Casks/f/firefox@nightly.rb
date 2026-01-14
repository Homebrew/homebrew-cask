cask "firefox@nightly" do
  version "149.0a1,2026-01-14-09-26-33"

  language "ca" do
    sha256 "b85566b2d48bd3513a8061d9aff00fa498c8e4ed71d6f59bc7e603f8a853d903"
    "ca"
  end
  language "cs" do
    sha256 "fe133c503344e68fb33f857261e6c1505635ce902890ce437e362897da333f05"
    "cs"
  end
  language "de" do
    sha256 "b307b2e56795fb94b597c149d45c2aa3cdd8cb2ccff4c49a7338a563d400bc45"
    "de"
  end
  language "en-CA" do
    sha256 "7f1bf2b55b6addc1b708ba4d7c543dd6fac2d265303d0c991b12f2e09fed8a12"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e2f97d870508fc5ddec92fff8e203e84979bae517cdc9d96bbcdf21f6d904802"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4fe4b5428ddfc6cdc1dc4a244ae88c16753db5a48383420f826b0bfea04665f7"
    "en-US"
  end
  language "es" do
    sha256 "ad1391270f158cdf1de9c686e116991d912af51ddac20f1e4a1d41bec7bac9da"
    "es-ES"
  end
  language "fr" do
    sha256 "6421716a6e5541f3ffac4980657409f73b352bc9dde02475f0be454dd214e65e"
    "fr"
  end
  language "it" do
    sha256 "8b8729a8b6181bebe2c429a099e55b4127d5249d6998a3f63ebb21b5e98c72da"
    "it"
  end
  language "ja" do
    sha256 "62ecd8aa7e7f5b7202877996dfd0d149a6d9cb9dd7b11a1f3edf30340a59ec70"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b70d06b0e1410e22626f337bdf0267124cc638dcd9f99bbd2014d4deaebcda7f"
    "ko"
  end
  language "nl" do
    sha256 "1a2561e874ee4f40892ddd2e55fefac52d55347a52bd806fb124f06491e1596f"
    "nl"
  end
  language "pt-BR" do
    sha256 "1292e475794b8a14287a80832ffd6f13fbcdf102c8d0e16bd20c1ad8ed1263cc"
    "pt-BR"
  end
  language "ru" do
    sha256 "706e0a449b5d2ebf6b12c33bcd3ef2b711e7149bb9f3c867e5ef7089c3b6acdc"
    "ru"
  end
  language "uk" do
    sha256 "ce22564de2ca579bcdc12b0dcfd6ffa54e4bb83922cd69a6ca9eec50bebee890"
    "uk"
  end
  language "zh-TW" do
    sha256 "d734603c9cb944e515d82edce008206f531a2ad50a13abd4ad64650e52f654c0"
    "zh-TW"
  end
  language "zh" do
    sha256 "d1550dbfcfa521f6eab12e5f76ac74f074d6b77366812bf54f4a2c4335332d99"
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
