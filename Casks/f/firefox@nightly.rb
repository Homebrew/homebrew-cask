cask "firefox@nightly" do
  version "157.0a1,2026-09-09-21-10-52"

  language "ca" do
    sha256 "7e54d6eafe30d0e2c92c4f2addbbf42c5db31c8c19e81d5a13dfed959fdffd38"
    "ca"
  end
  language "cs" do
    sha256 "6bcbf177ae08fb6da85336fd7c1f1d35dbbd85cc54307229150251c79cb8a7db"
    "cs"
  end
  language "de" do
    sha256 "3f7fc8438cf1207ab700fb21ee852670057debd48776406efb28323218ffcba5"
    "de"
  end
  language "en-CA" do
    sha256 "60446f08be36dfada60a5e202947b7d6b7ce1bd951950993ee0755f35ecbd6d0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9d4f91c1dacfb7894410408e9b42311ac1990a98c6e1b25d5a39cb0ab215cc23"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0cdfab53377f6adc19b06bd2fe03e681ecf96bdc6197bc818265b5b155772ed4"
    "en-US"
  end
  language "es" do
    sha256 "165b7de31b4cdf70f28c59009b441ee9eb2052c7ddfa977bc8b8db8f313b643d"
    "es-ES"
  end
  language "fr" do
    sha256 "02d101899676617fd65049daa22da5fac4e1485d999129f03faee5e3dd632074"
    "fr"
  end
  language "it" do
    sha256 "84db89ca69e2ae094e31a46cfe0b576bd9abe1d7c75fe8a9e8a5fe872684ff90"
    "it"
  end
  language "ja" do
    sha256 "00bf35c113b2f2d10c905845110f16bdab277c75678e38e9717ed87dacd79e51"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b162db0c4b4f90a98e7d1c5dbdd8977f0b4e8599d49d1239b18b843ce0053826"
    "ko"
  end
  language "nl" do
    sha256 "cde774606cf2ecc5567f4ba8931cbd15eb639b03214067c3fcb7aabce187e3ff"
    "nl"
  end
  language "pt-BR" do
    sha256 "05a99f724376cc061054d43b4c91ad4da45c250a558c1fa65e6a7523255349e7"
    "pt-BR"
  end
  language "ru" do
    sha256 "2de4e75de127b4cb348ffb86bcf540a9e98308589e0a601624267385f6c8986c"
    "ru"
  end
  language "uk" do
    sha256 "02271b6916f85052f98820d5540719cb0fef604f2015938252fa577723012169"
    "uk"
  end
  language "zh-TW" do
    sha256 "eb86094a71f19c80472f8280cad9ea8647c2f44f5cefe4812bfb8500e9cae541"
    "zh-TW"
  end
  language "zh" do
    sha256 "a349fb6120fa34158670b5c63ceab481b5e589bedddbc078703b3713bd60ac2d"
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
