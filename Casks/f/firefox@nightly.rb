cask "firefox@nightly" do
  version "154.0a1,2026-06-20-09-54-07"

  language "ca" do
    sha256 "e321c0ae6614679e89dd395fbdde9122dd8868b84b9832dc80245070bf89a7cb"
    "ca"
  end
  language "cs" do
    sha256 "8d04619bd4a28df4cefb3db438144df3e0948b3dcc0928eaed7be3b2b0aea4a9"
    "cs"
  end
  language "de" do
    sha256 "947e80d9e8c4f0f781dd7391fab554d8ba0a2f9b4326f3e7908b75cc57cdb21e"
    "de"
  end
  language "en-CA" do
    sha256 "79a62dcee3a4276e2f50883fb799b6b745b543cbc40514c33a22d8c3b993c23f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4ee75b50c0a64b6638cc20481c1d179a06a5ba82cd4bba87acc956eaeb398c0c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5b0cb4290d63dfbccf36f34caf268ff8789b5f3ca97ba7c7ed4ba5f050951e9d"
    "en-US"
  end
  language "es" do
    sha256 "e90ad2672ef0e11c0eb95bd23fd834b210b29382243eebd4b9e98c2446d8c2d4"
    "es-ES"
  end
  language "fr" do
    sha256 "3135ccc7a2edb33dbd80c9c55537606c12bae13d38982195f18a9add6a0cc539"
    "fr"
  end
  language "it" do
    sha256 "75cb843fbbdd6797bc885d4da1c82fbfbb44051ccc957994e46f6830955f0c78"
    "it"
  end
  language "ja" do
    sha256 "4d012bb2325c2b91df0254a106abee8cd9e293ec4935cf381c8bfbeeee56f38d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9af315f58ae69fa46cb04ca9df709b478ac001709d2f418bd245939444d6a730"
    "ko"
  end
  language "nl" do
    sha256 "adc41a626fbece4b50008b0f161d3c838622e31fa79d402a70d6cd6d2fa55a37"
    "nl"
  end
  language "pt-BR" do
    sha256 "052e5d80921ad19c9d0f8b846f2862418f6949db425b6e3f7d3aca0ffe1ad4ed"
    "pt-BR"
  end
  language "ru" do
    sha256 "cc51a6048e3860915e6fb5eeaab5f94cfcf6e4aa8dea80ba7dc7201bf92b6911"
    "ru"
  end
  language "uk" do
    sha256 "ae5414a67bc0506add57079866950bbab44396cfa605337f396b7f8ba7364949"
    "uk"
  end
  language "zh-TW" do
    sha256 "57bdcca72e72949d44059df67e05bc9291c106c328105c5092aa3141b5f0d160"
    "zh-TW"
  end
  language "zh" do
    sha256 "df8cf5cbb2f83759a3487adf2e3f394c9ac22780b08090ff4bc25b29b8022af4"
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
  depends_on :macos

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
