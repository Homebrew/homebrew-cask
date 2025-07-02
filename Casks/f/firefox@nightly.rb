cask "firefox@nightly" do
  version "142.0a1,2025-07-01-15-54-48"

  language "ca" do
    sha256 "42ca55368c3417737a899399bd3b80b75a608d64b16296b59b18531eb0492552"
    "ca"
  end
  language "cs" do
    sha256 "9976fd1df124a70b16f21c66a25669c8e25e9d38ea062d1482b77550dabf5568"
    "cs"
  end
  language "de" do
    sha256 "4b83f44cea0d5c9d3fd857d569cb5dd4646070e95ac2b224d81ff1da9b9da837"
    "de"
  end
  language "en-CA" do
    sha256 "f4df94179d23f59bd548861e025d14ad868b8c95e8f8f2be65e3c847c2b4dbbe"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5422869b07e78d566706b1adee15dd40cbf40a9ec0e83a3a52838e552cd8b108"
    "en-GB"
  end
  language "en", default: true do
    sha256 "58d2a0f8d8f38ca82d26c2d65c6112f24f173327141835480ce8e13bcb2a6ff9"
    "en-US"
  end
  language "es" do
    sha256 "6e64d490e83d1bf86ff97e7db34285ebf639177788c36953beba2de16c430a53"
    "es-ES"
  end
  language "fr" do
    sha256 "0950ec3ec3beacfc5f01d468a4c129fb1ba57829a755be5b23bb40b2e5ac21af"
    "fr"
  end
  language "it" do
    sha256 "7b1483d0b4fd9090862279aedaddfa120020c037e6565dd9fb59bc546b6c57c4"
    "it"
  end
  language "ja" do
    sha256 "c730f329b34d3c501aa29793830e4adafda0e85d1c6a469302f8693333173398"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6272811f71822e9a134c30578bb86381bd92d3000ba6e94231c6e547c47883c4"
    "ko"
  end
  language "nl" do
    sha256 "b79ddd11a42c67a47d023583400140e558fc37bafdfd8f411102686170e9ede2"
    "nl"
  end
  language "pt-BR" do
    sha256 "0e8eba85ab58c7dae05236829f52164012197c15a4ee601152190f5b0f4c243b"
    "pt-BR"
  end
  language "ru" do
    sha256 "61299fa03c2b69881a8d40ab600878ff1f364c3c0161ceab34b6dd2d8ff8b28a"
    "ru"
  end
  language "uk" do
    sha256 "b49ed048dcb9f6a0ea7898fbaa0a59b6b08f00e47bccc2ae46b9ea2ea8ce9a06"
    "uk"
  end
  language "zh-TW" do
    sha256 "84f484c66422aa05afcbbb14759c704cc3de3210946301ab6d8b9a8ebd59696e"
    "zh-TW"
  end
  language "zh" do
    sha256 "e4242e9cc71a8bc4d6db21a4698a2acfccf249a684f556864e4b3dd0e450296f"
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
