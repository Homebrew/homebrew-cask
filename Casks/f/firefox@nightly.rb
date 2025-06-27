cask "firefox@nightly" do
  version "142.0a1,2025-06-27-09-25-34"

  language "ca" do
    sha256 "14d2d44f232362fef5f9347b61e88e24fbf98c1c0407c5467f13ca8ec0d64f86"
    "ca"
  end
  language "cs" do
    sha256 "a388f926e179bbb6dad7c485abf27cca85954fb6fec14467ef5a820500e4859b"
    "cs"
  end
  language "de" do
    sha256 "33aa614f9aa564beae231e5b770c47b59d35f81d15f7c46114b65f38d3abee0d"
    "de"
  end
  language "en-CA" do
    sha256 "77357e2be24e97f2b9d66ca1cf55b8de988bed847e75303be6a678a08c482a43"
    "en-CA"
  end
  language "en-GB" do
    sha256 "84fd0aef99c30d8ef40036b6c7cd39c213e3c82eed3684011978618693e6dce1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ee591d82d073027da4048ac7cb48ef7359abfc12551a2cec455f27f40cd0fb3c"
    "en-US"
  end
  language "es" do
    sha256 "2ec629e22793d513610a7057ba83d1d6812de308fd5d91bd822fb3a78ce575d9"
    "es-ES"
  end
  language "fr" do
    sha256 "fe32b536a5daa7e752de530be602dcb2b56599fa2426685f55c8e2e458c6716f"
    "fr"
  end
  language "it" do
    sha256 "fed1e42069e20c81434347e23f4d17c61423905cf6a602ad5da2223ae00073cc"
    "it"
  end
  language "ja" do
    sha256 "28c74f344b003714ae91edba219e7871a4a127fdc21d326dc610f71548dd0af4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e677015b2c685e13225d3b2bb7b53b76df94e965b7dbf873e615f7ca00133f41"
    "ko"
  end
  language "nl" do
    sha256 "156c5d838d7a1dfaf2e213ea54ef25bb4f3c97535eb8ff4f8e6519a2e82a3442"
    "nl"
  end
  language "pt-BR" do
    sha256 "5149a77eef19b726a1d0848ef7fb8b6e752d516c0b47129f5450461fccef9563"
    "pt-BR"
  end
  language "ru" do
    sha256 "aaedd3f7f0df98493cc35aabccde81328a630aa919d2c1c2cb065b00a759dc0f"
    "ru"
  end
  language "uk" do
    sha256 "0537c29ad232781882a1db067fce3a62c59721604db3a962903effa0d25a6cba"
    "uk"
  end
  language "zh-TW" do
    sha256 "dfcc90b2bc3ed73f0c43d8606914ff7a3dc643484d748951f4fc72f1cca3f1a1"
    "zh-TW"
  end
  language "zh" do
    sha256 "e9bc8c3558a69a0ceb896b7eac7a12e012d1d8ddac2b1450887cfa920f3865a1"
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
