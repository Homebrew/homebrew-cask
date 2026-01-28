cask "firefox@nightly" do
  version "149.0a1,2026-01-28-09-48-16"

  language "ca" do
    sha256 "581191b0d41c21f97601e002ecec8a271d2adc43eb4471fd79114062dce050b5"
    "ca"
  end
  language "cs" do
    sha256 "2008e2feee993cf56968e4dffef8ba4acea2acb696b5749caf464833e0a855ab"
    "cs"
  end
  language "de" do
    sha256 "adbd0d19d156da56222305355e744a0015a698b622670c20684bc88dc9576862"
    "de"
  end
  language "en-CA" do
    sha256 "7156953a438b890d02a22a2e05fc1c8b28fbb1a6d929a2aee1b534c20f3110bf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f437a6345b4c0d1cf5306e582c3772e455a12c3db8f92e84ce8e70ec459b4eca"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8abdf79b474bc08a8941f7e77e727a741be7438fe97458aebc6a78237583019b"
    "en-US"
  end
  language "es" do
    sha256 "691915c9e1fbc0e585ee644bfcdbf2294ae5ee02b7c44fe1f3dfd05a7f023414"
    "es-ES"
  end
  language "fr" do
    sha256 "76fa2ffe6622e5e8267592dda170c8bdbdbf42718452c2b837f87aab387ef4ba"
    "fr"
  end
  language "it" do
    sha256 "60cb5066220692503423a14f5a273a77d98101529598de9d84ea8eeaac2d0d72"
    "it"
  end
  language "ja" do
    sha256 "63cdf1c6a13f972f59a5bc81bb05076317f24406beb8219d1ba8308e847ae60a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ed5c2c58576750e8880fc1440f70fa42a0995a23d2697021f429dc6c0f9cc3fb"
    "ko"
  end
  language "nl" do
    sha256 "764c50e6f1859e941523e252a723c7ceeb1fbf6544e2f5254d5c8d85a290ae9f"
    "nl"
  end
  language "pt-BR" do
    sha256 "0310ab4c36164097de4eb3a02c5cfe84cf3ae2e71df9c524e903fcc44b12dd82"
    "pt-BR"
  end
  language "ru" do
    sha256 "345302d6d559e8b386633664746110fe17cba9051426bb63a4b19da1526c609e"
    "ru"
  end
  language "uk" do
    sha256 "f4ad1a38b786542a1e543b82ea0b046a13a62b7fa920d89eca4f420e9db2025d"
    "uk"
  end
  language "zh-TW" do
    sha256 "9203b8516527c34d3b7922276fbce0503ca8fe382f14e24ac70f5096c59ab554"
    "zh-TW"
  end
  language "zh" do
    sha256 "e55031938d39f53cf06c83d97d32740e093d5544286c78ba85e89dba0fa1365d"
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
