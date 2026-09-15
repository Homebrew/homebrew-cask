cask "firefox@nightly" do
  version "158.0a1,2026-09-14-21-43-22"

  language "ca" do
    sha256 "a06a3d4bf97ad9d9c9b846c49b3517240f1ae74cd8f054d177020ba90d27e56f"
    "ca"
  end
  language "cs" do
    sha256 "d423f2359a0b3ff1ee85d92c85dde1a59d2a115a45f5046150f99245759a4ac8"
    "cs"
  end
  language "de" do
    sha256 "203d209b32579157ce581b331098b68cabba435bb513c2e7244f4da7dd09ebeb"
    "de"
  end
  language "en-CA" do
    sha256 "1f3041bc7aefb38208745a1c18cca5beacc3b5845ab3abdaa1ab556448d7084b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "501d3713ff4ac5010f25cacbdca112621f7802fcf0756660082d9771b232856f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9b2dfa8dd6193df749616bc2797791ad25d8e6c8f3edb9106f35b5cf8fecd988"
    "en-US"
  end
  language "es" do
    sha256 "4621803c32c79b9aa2abb7b7bd5194335dfab95061a664280bf7c8d0644b09da"
    "es-ES"
  end
  language "fr" do
    sha256 "5169ec5cf30b35b0be281f9438282d595bbdbb0043e7b245a9d6dc0c5bf02bdb"
    "fr"
  end
  language "it" do
    sha256 "9ee7e72c32f9f6c760b9043b12cfdd618e833f77ad9f28310582429624af0014"
    "it"
  end
  language "ja" do
    sha256 "eed363477fb85efa19daeedbc2bda62b6af49c24e498220a32cce58fb3fdea98"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3e001e0fc1612e190aabd27726434155d32f7c16a11106cd0b4c4f997fde7fb4"
    "ko"
  end
  language "nl" do
    sha256 "25d220e78f9fe891ac084dcaec682535052fca4e14c070542eafc963fc46e11c"
    "nl"
  end
  language "pt-BR" do
    sha256 "127f872bfca716e54575810643542c611f093d9327360e9b54aa9f9675d5639d"
    "pt-BR"
  end
  language "ru" do
    sha256 "5953fe791ee9c290e07aa23d0fdbdd14c83085fda912df27226cf4609c9bbced"
    "ru"
  end
  language "uk" do
    sha256 "d001dcc5e857913c7088da371585d55337c5abe48a9282e07640884f837246e2"
    "uk"
  end
  language "zh-TW" do
    sha256 "247859aad2f47ab3c4e2a9b2bf6ef575cbbbd5face7157fc145320dbfa9d6dad"
    "zh-TW"
  end
  language "zh" do
    sha256 "ddbb3fd0ab43fc35c169b30bec86a685701d369abf4725b211c7f555d3504a75"
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
