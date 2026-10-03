cask "firefox@nightly" do
  version "159.0a1,2026-10-02-21-18-53"

  language "ca" do
    sha256 "c33468c4af1f0b0e81e9fe3e382fddd5c9b80b8e080627679ef13da7c2af2657"
    "ca"
  end
  language "cs" do
    sha256 "efbdaab375ebd95542def5a1484caffd56b683747ff8f02a22c3bee61ac4992d"
    "cs"
  end
  language "de" do
    sha256 "aa09d63d620a9db27779eb16b1b5250aac33da6e2280563694f2d9d2ab30eab0"
    "de"
  end
  language "en-CA" do
    sha256 "b12f3f8d853b6400a318137bb9d8c23e2b24573bbef36ad135f0653c1ad0b3c8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f3d6cd8a72ffa95163dba37e204e8531f2cc5ef6d55013678368d3c73fee8d45"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0fa7b477d3b913ac634271b6dbee53939864a55902969f604cd78a729bedbbba"
    "en-US"
  end
  language "es" do
    sha256 "9e07c4f165a31f848282ec11d10378b7a35aabaf2b08b91406899502cc34ce4f"
    "es-ES"
  end
  language "fr" do
    sha256 "154cc18e990f64ae92aa33fead89e8769699e78e17ef3d1c40ec11f67dfe2c1c"
    "fr"
  end
  language "it" do
    sha256 "51c8d29de87f17dc758bf2eaae5e960d1c972fd1ce5112d00eb186cead937224"
    "it"
  end
  language "ja" do
    sha256 "5bdfa04112de40afad61c89380d6a2a1db7402d072b4bafcc902997edb9437f1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c73922ad1f8b109895ce571ff416aff0188632dff4783f54b434e1c4f9f629b0"
    "ko"
  end
  language "nl" do
    sha256 "a791b5687c5bd5ac278ef01a0968e92c17ea0005b4fa1aa19765c8514843a003"
    "nl"
  end
  language "pt-BR" do
    sha256 "463fb3d04621047eaf7a5d15586269795dade0c60a25dab1688fc5bd30b14bff"
    "pt-BR"
  end
  language "ru" do
    sha256 "f390f6afd62e321a0e0ba56b7d6c20f91d2799b8630f95cf3095aa40ac8bf711"
    "ru"
  end
  language "uk" do
    sha256 "53a739f7dbd40601ad15c3d4fccbbfd417d28b9a703957ef1d49148c490e2dd6"
    "uk"
  end
  language "zh-TW" do
    sha256 "e8f0b14f4f644c4030ec33c3ca2f9f1a8393e81ac6ac65c3006cbc979e6dd48c"
    "zh-TW"
  end
  language "zh" do
    sha256 "dc03cfe263fa4355582f60c9d7189d825c8ecf387530339fa690fa66fcbc65d6"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
