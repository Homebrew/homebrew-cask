cask "firefox@nightly" do
  version "151.0a1,2026-04-15-04-07-20"

  language "ca" do
    sha256 "f79d1805490cf7930451e6b6c39fc60bf3cfcba8dc0e8863a5c4f6573211b27e"
    "ca"
  end
  language "cs" do
    sha256 "e07c76772c42e9d3c89b868e911292e777f8abdf7675fb16b39415fd8d3f3eda"
    "cs"
  end
  language "de" do
    sha256 "d4b7904eaccd77406467d9ad7b4eaed647dde1d74c8e228fdbb73bdfe1972dd1"
    "de"
  end
  language "en-CA" do
    sha256 "47076d5b8c9d8ccf203d098605dc4bec1c892a1081ce8c85e87b0d242a6e1112"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7457000fa3c60061ff4095d490a372a6677b48a58d99d661799efc1270d3f711"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1465a98b1be66b6b0587c5a60fedc60a957c36c60ee2c74ffc54d4b3b6695e37"
    "en-US"
  end
  language "es" do
    sha256 "903c85ec792d4dcff8bf74aaaae83ee65d95d56b6fadb23e56664cce5113e9f1"
    "es-ES"
  end
  language "fr" do
    sha256 "8bd2941f9f74740d5de531ac48e577d844856d2a5b9811ee9f4b8230e21b8c7b"
    "fr"
  end
  language "it" do
    sha256 "87b1f12e33795d813a3cfdec9c0781750bc77cf37edd5fdceecc512f7a474b5e"
    "it"
  end
  language "ja" do
    sha256 "40a047b2cac1abbab8269f6c3c53c4933b3e7daac5ff05efcc145f1daecf99e4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5fdb8d91f430b974dec20c10c8f3fa09dabbc652bbc556f6b0e8683568ffd699"
    "ko"
  end
  language "nl" do
    sha256 "2abb708ec0a17371bf116cd5329938350082503f4f6643f4aeb21ff7e4907722"
    "nl"
  end
  language "pt-BR" do
    sha256 "fba580316dbce8c65c2b9a1827653100b6358ffbf03ed2135bc58befa037db2a"
    "pt-BR"
  end
  language "ru" do
    sha256 "055a87f6c65d40421906c90e5b8b9c1a1eec81c883d92224e4d0df7090aa9386"
    "ru"
  end
  language "uk" do
    sha256 "a7dd397243b7bfeb42a5a120ba9fcd2254ebeafa99fd8462a0c2f59bc688831a"
    "uk"
  end
  language "zh-TW" do
    sha256 "018bcdfa8c4c3e19ad08358462dca1551d6381ae48ca45e9aced122cc24576f2"
    "zh-TW"
  end
  language "zh" do
    sha256 "895ecfc2b5cc017ccb06faedd0a7d560f2719f5181564bcd5f25d643c7224b03"
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
