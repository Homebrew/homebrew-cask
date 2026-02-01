cask "firefox@nightly" do
  version "149.0a1,2026-01-31-21-14-41"

  language "ca" do
    sha256 "d986db06720abadb0e2c9403195a7435b2e1914aab554c3ae0f2db1ddb96e49d"
    "ca"
  end
  language "cs" do
    sha256 "68d39820ccf196159696cbfb20a7621cb19e166ac838c1f336351f728f96db17"
    "cs"
  end
  language "de" do
    sha256 "a8bbf974a9e03a47a7ca6beebc283dd91eacb5b4a3847678576866a19b8bbc19"
    "de"
  end
  language "en-CA" do
    sha256 "eb44308836180c79a59c7e2e3e847f6d30bf247b6bb4a730dfc258b98cab39a6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "981985a1b1fbb0ad4e6727cae08d15ea3380f8c240002f063ec0f49137f13475"
    "en-GB"
  end
  language "en", default: true do
    sha256 "36b3af5dcc748585533306b58e792416fd536bbb91e9ebc94b680ee3fd33a8b0"
    "en-US"
  end
  language "es" do
    sha256 "a8cc61584732d3eb2c82d4c1d0a7ec748706b3c483cc791e56995572c094a72b"
    "es-ES"
  end
  language "fr" do
    sha256 "f15de0d636b44c2e8e0bbd72ba9bf1d951cf7e02e54354456ff4277f24daf4e7"
    "fr"
  end
  language "it" do
    sha256 "5bc42035b6241546ead6b1674b439bb202b58eb42d72bcdad7ea0ba9f2feb0d4"
    "it"
  end
  language "ja" do
    sha256 "6f7e9d545845d73f4a25198dc424fb71f5f7e557ff8281eff7c42d4b37950f4b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7d1e6828a8efa6d1a8cc24bed0090918e84abb64054e493f507e5d3420b203bc"
    "ko"
  end
  language "nl" do
    sha256 "8de82959011d4219942c35d217b04c270262fbd966d6f904340a6eaa9f083595"
    "nl"
  end
  language "pt-BR" do
    sha256 "f6f9c7aea7bdd24c456cd0646169939a17f454ba4afb6c31f78c5b7727f779bf"
    "pt-BR"
  end
  language "ru" do
    sha256 "38a8a4c7d47ee1feb8d7daa728511fa1081e59e48821bf610a436636227177bc"
    "ru"
  end
  language "uk" do
    sha256 "8613f2f478095bf46f62efbab39d1b882d0e0ae427d683e27ff1d6287eed59d8"
    "uk"
  end
  language "zh-TW" do
    sha256 "09bafc16b5afd734b0ddd5da746afb259282c184a0d301918fe50fb3a0daee6b"
    "zh-TW"
  end
  language "zh" do
    sha256 "33379ddc875aed21d4b543f86fe4bf72440a7891da955c96d877d9fbe44200e5"
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
