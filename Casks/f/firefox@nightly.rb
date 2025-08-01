cask "firefox@nightly" do
  version "143.0a1,2025-08-01-04-30-50"

  language "ca" do
    sha256 "480d81f51bcbc26cd28573e07cbbf5df8d3cd7c27b1fc5a278e39f576b44882a"
    "ca"
  end
  language "cs" do
    sha256 "9f2079d6d3b3ccfa8e9e83cdcbec0c8d43fb92c722c4c28e36ae6b5e9d050cbb"
    "cs"
  end
  language "de" do
    sha256 "6aaa2824ba8f3836925432b1557f77ca3ff04796f570696ad73001a109afee40"
    "de"
  end
  language "en-CA" do
    sha256 "802a2cac989636bfb95afe4d057cccb0241cbecacf59268623bffc7a18904ad8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2eb5264a729df1a173e0e665dbd200134a06997ae100cf9377f480c2fc9b795d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9fdaccfc34f90e81034b37843375dae003f9f7e484b70773dffbfce69dffb2f5"
    "en-US"
  end
  language "es" do
    sha256 "0f680ae86113a4ac3ef1c76763a516af179dfe1be8a8a259b719ae45bbf5acd4"
    "es-ES"
  end
  language "fr" do
    sha256 "ccf257109b14b11b2072c600387f63941c439592c14b3c52e7a9635abceb6782"
    "fr"
  end
  language "it" do
    sha256 "75c4aac0bbc61edc8ceff0bdc68767607cceffc0ad1259f7830f2abdea4cdaa4"
    "it"
  end
  language "ja" do
    sha256 "48f80b1a0f3ba705c22f0e5dfc6176586d47bf472b01a7c8d93514067d62bae1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ba10bc4e1f171b7b1380351621785347fd9eea284d30034b60ec674ae597438e"
    "ko"
  end
  language "nl" do
    sha256 "5fab354b3236e34198404a3444e7fed76a4716b138038a883a99c9f65e476133"
    "nl"
  end
  language "pt-BR" do
    sha256 "566f01e6e1404b3459bb3a76a94fafcac813fec5f96cbfdc477ad8d96539acde"
    "pt-BR"
  end
  language "ru" do
    sha256 "4adc729c63d61f31cee1a5660cc84c8fe0b1c32d4ec983f89ca6eee1edb564d7"
    "ru"
  end
  language "uk" do
    sha256 "3bb20709cc7f1be11db88cbc69f7c8677638b6d93e2f1bde2e09be76bcd09a2e"
    "uk"
  end
  language "zh-TW" do
    sha256 "5ce298a63f415a31f425133bc40baf5ac34f5ae9d520952e8ec6b2e083394451"
    "zh-TW"
  end
  language "zh" do
    sha256 "b7e4f30eeafccaac0197c516c33ab0715e39e4f7f4e36134464e369e9ba257e3"
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
