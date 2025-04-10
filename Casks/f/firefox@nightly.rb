cask "firefox@nightly" do
  version "139.0a1,2025-04-10-09-29-04"

  language "ca" do
    sha256 "fc0ce98009902271b335644e09cc69f947e27bc4b82e6a1de88910588ba38d4d"
    "ca"
  end
  language "cs" do
    sha256 "5f66a93d551a8442465ef3bf3943c4330e1ea55602b95654a808e79d3de4bf69"
    "cs"
  end
  language "de" do
    sha256 "7d0612e1ad952626b2135412e2a5acc9256b0f0835c4e5342281febfca69c544"
    "de"
  end
  language "en-CA" do
    sha256 "67378e97ed23659d958deaf7d6c9c5e076ff63f38187952fb9adc4c35418017b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ba344a680a4e6a554d48ff00f1b700a3adc628bf208eb71a17df586d91182bce"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8e4a2f0ed35c0943ecb7984936d23ececec1f57508df5aa34a8395754bb71711"
    "en-US"
  end
  language "es" do
    sha256 "76db64607e395a00f845a8be35ce31053b92e878f9242c1c4b5764501bcac505"
    "es-ES"
  end
  language "fr" do
    sha256 "e33aad8052974814f0b866c608b728151298a2b90a0c25125205876d978859a3"
    "fr"
  end
  language "it" do
    sha256 "80f475496bc1206edcf0798c90e7dd5e3f025d5fe3a920da1f234bcba2a16d84"
    "it"
  end
  language "ja" do
    sha256 "2e4b66ca14194242c2cd97f01bd2d351fc36357e7a4362da80ff74e69e7610d2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e4b072e19a54e512947b53480b85f85020f550d8021e112356963f97990df0d4"
    "ko"
  end
  language "nl" do
    sha256 "88813141fa234f0f91c1731d17cadff5ce97e0e98e74fe154fdf07a4622e7400"
    "nl"
  end
  language "pt-BR" do
    sha256 "f703f79e08d53a5380eb85003080b346b8e6164327b6af548198221e2ca1a7e1"
    "pt-BR"
  end
  language "ru" do
    sha256 "1d16cafc3fdab5e70f2e6257e00072a69f44883d0d0083752dfb4a384a196d75"
    "ru"
  end
  language "uk" do
    sha256 "72b12c7089770b1373e463d43e0afa885cd7a995a9cbc320e697cc0ece46e618"
    "uk"
  end
  language "zh-TW" do
    sha256 "3b4ad99f7a5dc7326988a371568c27ab6b00f6c3521660cbd4a9b0fa5e16add0"
    "zh-TW"
  end
  language "zh" do
    sha256 "ebe501aa844bee816e10eae09455ebb81924024ed22ef5c5f318c0b0eec3fc66"
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
