cask "firefox@nightly" do
  version "143.0a1,2025-07-30-09-25-27"

  language "ca" do
    sha256 "d60abb7f1ec9a1b1d22246e1e9788559d115be389e5c5cbb7aa9b521a3b47c4a"
    "ca"
  end
  language "cs" do
    sha256 "8ece440d6a5098f30a041b43d69dbc790d0320e96b1f28f5218479100330453c"
    "cs"
  end
  language "de" do
    sha256 "f688adbb76d1cc3f07385c8f376601b71fa369152e7a55033eb21d3933fc2d1e"
    "de"
  end
  language "en-CA" do
    sha256 "9095be94b8fd4cd922e29853340498b891afff58ddd0e5a2eb587e2fb90ac32e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cd19862e12ff8603542b0882bb79ab2c17a7b550c3499dec984c297b8dbe7ccf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ed0b940bfc74099aac0d4de3adb583f59f6f4cf9e4945021d9142a1bc6de03b2"
    "en-US"
  end
  language "es" do
    sha256 "9100a7749e2813dd9350b5be95520617a3a8830f92712dd4323344051e4412a8"
    "es-ES"
  end
  language "fr" do
    sha256 "7c39b86082071599410a2e14c7a81955f9a0c7a0059b6af51204d7c9ac09e1d5"
    "fr"
  end
  language "it" do
    sha256 "fa154b052ee3641eedd68d0f9afa8afbfd26144d899945c2641488000fa34a0a"
    "it"
  end
  language "ja" do
    sha256 "dbcd85a5a0bdb3b532fedd24aa6c99177cdf3b75e3b406d10e82732830b745a4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0c0907059af34fb840b5ae2965373f80f856b0917fba4ae611a513e21defe1e5"
    "ko"
  end
  language "nl" do
    sha256 "dfabb05ae28fc403ec72faf4903138cf706767b805d27186f959a376a8cc4fc9"
    "nl"
  end
  language "pt-BR" do
    sha256 "6d92d8699005e243987eb3439a3ba6926a506d894febf063b54edc8c54711550"
    "pt-BR"
  end
  language "ru" do
    sha256 "8457068ec2c9d01f68a59f54d28606d40aaf71615004c90478a142246eeeb3a3"
    "ru"
  end
  language "uk" do
    sha256 "5592b33009dc782d5d408d1f132d7ee33ff725cf15237202642c2675ebf42e49"
    "uk"
  end
  language "zh-TW" do
    sha256 "0c164ce19325eb054401dbbf1eb96ce0a3118325066240246bba0996da43d4d8"
    "zh-TW"
  end
  language "zh" do
    sha256 "54631ca2ca750cee596310d248afc3e76fba35499a84fd13262cd5c128c8449c"
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
