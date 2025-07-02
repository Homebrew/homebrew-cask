cask "firefox@nightly" do
  version "142.0a1,2025-07-02-09-15-46"

  language "ca" do
    sha256 "23b4d1fb53ba9529664e9e55e1d1ff8540fcf5b22714751fc78a33271a79f59a"
    "ca"
  end
  language "cs" do
    sha256 "818bfe63d752d5c5ce244941169a1f2802d59937ee2c8518cfe4a29f33e141ec"
    "cs"
  end
  language "de" do
    sha256 "7b3647dba41e3e821d7c1af2a87ce41ee34b7a9ee7c0a2178be04b910607d3f1"
    "de"
  end
  language "en-CA" do
    sha256 "9510c01e7394bf0f66561ca16cc612ff7d77a42ae6a08f3fc23b306ee4d4b029"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f8a030e812864d8151cf1fee29f1abb158d5664dc2158fe1d14978fda08ad7db"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5e041d2f03726993b0df79b9897abd96f705344ba3c715aef7665bda07c7164e"
    "en-US"
  end
  language "es" do
    sha256 "cf0b84575052f521dad706b4c6ee7e7ee29532d3fbe2e0b614ad2bb9b601e287"
    "es-ES"
  end
  language "fr" do
    sha256 "de8306956b975d8cc910d79d6e9adc204555c5bd527edb2e50b94b3856dbe22e"
    "fr"
  end
  language "it" do
    sha256 "255fb019cf7def99bc909ea8f3707c01deda65dc9b4caf79f74ce0c15f8268d5"
    "it"
  end
  language "ja" do
    sha256 "283bbb14cf40278d5c04b9aca04a036f52ae6bb876379c179bdcab3c55ca11df"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0e686b05acb6a057329ed86ea2e0b97fdc910a31ee6b56e5d9c9347f344c5fd2"
    "ko"
  end
  language "nl" do
    sha256 "b7de00f2a6ec12f78b33357d2fb9f005ffe5ae042371cfa9bdce53c6f4dd65f3"
    "nl"
  end
  language "pt-BR" do
    sha256 "4aa633fc0cdb46fcc488bcc619522b33eff0dbbfca51bd3b3e20974af84bbe3f"
    "pt-BR"
  end
  language "ru" do
    sha256 "edcbb5e5e38210def82e56def0365b3ae6b41c744201f962e538d3b593492570"
    "ru"
  end
  language "uk" do
    sha256 "f3c43589a790ac27fd31737159349816a33e090e2e57e8de3484a5af926820a3"
    "uk"
  end
  language "zh-TW" do
    sha256 "2de62515b94ea6975d09c5e926a97d1a4135eed01eba168bae282f3106422f7f"
    "zh-TW"
  end
  language "zh" do
    sha256 "52441d4f5a49692affae1cf24047891717016bfa6c2b0a767e21c9fd317c01d8"
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
