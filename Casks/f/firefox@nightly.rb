cask "firefox@nightly" do
  version "161.0a1,2026-10-31-20-29-18"

  language "ca" do
    sha256 "d6d594a52f5ea941bd064b17018305d342ef5292e2d2abdf46a41533ce98d373"
    "ca"
  end
  language "cs" do
    sha256 "7bc3a06d566890467c5a4e805da9c3a4ef2fb1580e19a4e81f153e6de235e997"
    "cs"
  end
  language "de" do
    sha256 "c1e373bb7564e4821d7d3389c3086d7f5d6a43b17e002cb4dc64ed9ec787a1bb"
    "de"
  end
  language "en-CA" do
    sha256 "5c1ef61b199da0505b5a9abeddd1ca6d2c645099bc63b8c19a1df4f25a21ea39"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e931ace1d6d362d48611c8df9eb655aa7d9d27d3f54b86d313b45bdf111c801a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "be38d1bcc3b18fc5db8a804c82d5c367babc019dd2879578e6455481aac44c43"
    "en-US"
  end
  language "es" do
    sha256 "0d6f858a77464365681b04657a3b79ccb5c1851808d9243f3bd201a79712e51b"
    "es-ES"
  end
  language "fr" do
    sha256 "0db63a9ec631e71abbb3cf40ef8546d6a3188af9001186671e2356e879e80b4f"
    "fr"
  end
  language "it" do
    sha256 "5f465db4d3a78018e6efdd3879e4c374c901038cc53569d1047035db3c0d1d41"
    "it"
  end
  language "ja" do
    sha256 "677ce8af389d45ff329390725ff9aa71a840cdcb62c38e94827e8215c3d86429"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "41e1114b2c00df6b12cbbad7bd850b1bb860b2a59bedc6e91eeb2738dda0a25c"
    "ko"
  end
  language "nl" do
    sha256 "b0cce67bd5a3baa24ba34ed72ee46d42c712dc748cf240da676fb27186f0b86c"
    "nl"
  end
  language "pt-BR" do
    sha256 "8fa0970d302bd1f5b66e7b7f2e9978e08a4226dcd51d56c7f09c6adc68ee55c4"
    "pt-BR"
  end
  language "ru" do
    sha256 "3e5169846cbb2aae4effa7d6e0f9e2a0864e763a034948bccf0359fea60f1a8c"
    "ru"
  end
  language "uk" do
    sha256 "f8ae49ed2199d8b4de5cc66286b96487bdeb8dbfa255a7cac617b227cead7f7c"
    "uk"
  end
  language "zh-TW" do
    sha256 "1fe11c85dde072b2155cd9bbb2ed49baec6b8a9e9fd8d889c1d73c48863fb6ec"
    "zh-TW"
  end
  language "zh" do
    sha256 "30bbc3d1d1c128370b6c476314aad681c97e04d3fd907f7bf3797edb0085ad1e"
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
