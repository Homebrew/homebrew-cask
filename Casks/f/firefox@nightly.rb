cask "firefox@nightly" do
  version "155.0a1,2026-08-08-21-05-18"

  language "ca" do
    sha256 "4c7418091491bc8365c4a75b57d20fe5787b6907bc1e8dd91f25fd7ec455d282"
    "ca"
  end
  language "cs" do
    sha256 "40381e70706aa96478dd3c0947f5d0f0909ed61b56b5f8dda936509a91b02e04"
    "cs"
  end
  language "de" do
    sha256 "f1c5d0691a54c984427d4e436ce51cb2b6f67bd83ae80ccadaecc09ea1f1d98c"
    "de"
  end
  language "en-CA" do
    sha256 "77023953ec7d402e3932479849dd0757caa8219ee7308a18e4cefa62f926faa4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4ed1b70c1693be728b85036386ba31a0218e22f25a152ecca5d76362ed22d637"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3ee30eda588087940837f7687a403a2abc31bc81c076b077ec7a7c370c610892"
    "en-US"
  end
  language "es" do
    sha256 "ceb389e631ac2d21466d4b0f03b8bfa7d008255d3dfef2284409f003ef6ed91e"
    "es-ES"
  end
  language "fr" do
    sha256 "0aa9cbaac2f9536b4034129e3aefbf9a450e01d5b9f64cf2d504eaa1d17aff9d"
    "fr"
  end
  language "it" do
    sha256 "5aee8e2f1d727c7ccdbbdde4454cb62c29d230aad9ab6d57b9ff890a023aed4f"
    "it"
  end
  language "ja" do
    sha256 "b9ccdb7ff5fbb0ad878321bf3435ceb273d4f0edaa1500ba67c7ac73addea006"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3a56edd08a8fcf9b6092df0e444376c97e04d4f267fcbd666ca93a7c24424777"
    "ko"
  end
  language "nl" do
    sha256 "00acd9d143739b01fb7a85aa80cea209e606ed126de3da89f89807da12977349"
    "nl"
  end
  language "pt-BR" do
    sha256 "137694ed5661baefe8107cd4c0cb5abc63d021e6c0578bf7ff3bdf3510c3dc05"
    "pt-BR"
  end
  language "ru" do
    sha256 "2bfa5061763412154493392242a5e005a6d03c90f8e20f83ea059bc1ed6dc8ad"
    "ru"
  end
  language "uk" do
    sha256 "116ede4a7f7e19a8a039d8146b685af89638c2b21e762fd9ce11daa7e58c1fc3"
    "uk"
  end
  language "zh-TW" do
    sha256 "9f4bd35340bdb43615cf46557638bd6c021591bd24799a6daddaf818a09bf43c"
    "zh-TW"
  end
  language "zh" do
    sha256 "c41d5bf855217c9a0cc3413e1d93ea2a9f89e0923a6ed9bc0ab1013380fb6f17"
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
