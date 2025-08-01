cask "firefox@nightly" do
  version "143.0a1,2025-07-31-15-37-14"

  language "ca" do
    sha256 "1ac76e1cf99ea5189ccae02d557080a8a7ab2a94d72fc9d41398e4409e05a2b4"
    "ca"
  end
  language "cs" do
    sha256 "188d86c283443bf293a966f8c093768dff79fa46e3e6eec90b3cd4a1c137a4b4"
    "cs"
  end
  language "de" do
    sha256 "1c16d085574b891ba7dfdefd6095fa81231bef11efe891b8e4031527660d1110"
    "de"
  end
  language "en-CA" do
    sha256 "2edf9b37764175527707f52a0008c4ac2268df4d61fdb26edea5a21e811123f6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "43f728bbf34ddf87b6f1e22e2fc49e63806b23d581bc5a40f2d360ddf28169a0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "452d080060b0ec82867dcb2010c9d33ee095ec6ce0ff47c130eb66e0332617d6"
    "en-US"
  end
  language "es" do
    sha256 "54d6e2785ad15be46416ec3087272efe10a6ae16bbb639a4170ce76b6af1751a"
    "es-ES"
  end
  language "fr" do
    sha256 "bacecad1f3dcba2046f693f1d6775384271a32a95a4480bebf635c86d34c95b3"
    "fr"
  end
  language "it" do
    sha256 "a477a13e489348f69c2471c5349a6b42c484b984be891284b05d7012bad5673c"
    "it"
  end
  language "ja" do
    sha256 "6f7b4d327da10be8996b6a1f4e5baf0aa546468460882f00c2eba96aa555eb71"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "542beb837b489687e585f507205cfc4d3b5d5853c43046b8ea76535c5e9d73df"
    "ko"
  end
  language "nl" do
    sha256 "a9e55cc20526f06cf8b841923a77b6702c02ec68f8791cc7c7cb78125bf2ff88"
    "nl"
  end
  language "pt-BR" do
    sha256 "e8dd05173193d30160b68b3507d8431d8be44e3a5a6886f45c549ef7b00c7356"
    "pt-BR"
  end
  language "ru" do
    sha256 "d59fa49ed1c6e9b29737fe97393fb233437b6de083b37a6feb3cb78c5b82fde5"
    "ru"
  end
  language "uk" do
    sha256 "abe9afd21853387f824054f7f579e31fdafe8acc4d5f857869d7daa1790b0fb3"
    "uk"
  end
  language "zh-TW" do
    sha256 "5ed186b5fd2f25de3c85cbae8a44623af593460e8913e1b39602f50d3653a898"
    "zh-TW"
  end
  language "zh" do
    sha256 "811b2f010f2448e3586d76b78e45392862aa3a334adcdefafd15c451940e679c"
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
