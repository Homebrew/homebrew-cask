cask "firefox@nightly" do
  version "162.0a1,2026-11-10-05-33-16"

  language "ca" do
    sha256 "5fce28b9e9ea325c453084eec8cc3e285dbcdde4797da6792ced9580302a2ff8"
    "ca"
  end
  language "cs" do
    sha256 "7040ee1191aad67989b4dccd550750ef1087181bd7337f6fe9bc530c54eb0f25"
    "cs"
  end
  language "de" do
    sha256 "aaa58c08b91408a59ad01b0459b5c435ec57acb87ea6e9bd6ee0d0c7ff6b9311"
    "de"
  end
  language "en-CA" do
    sha256 "be417e7e96bb5dd57242ccb12ef1527873030c493ab8acf481c43cd6d019bb91"
    "en-CA"
  end
  language "en-GB" do
    sha256 "67b5a57fa2cfe70eddd5628f03a0bc41e5ab7a62068e8bae5e868698bf4d759a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "49e3e7b7d9665d2342ed569b775a89748cc8ac41c6dda247de9bdda37e892ce8"
    "en-US"
  end
  language "es" do
    sha256 "f9d80027853f290955bb41ccf1a0c1b351181cd743d37fab6607dddd2e7d939a"
    "es-ES"
  end
  language "fr" do
    sha256 "75437417cc84c2720e092e4ee0ef6946a23cbe617afde365c8cede086d1d9b80"
    "fr"
  end
  language "it" do
    sha256 "0c3fb98d16a40502159f5580fa2bdf88699222a0f8209f4bdcfe305a7b9b48de"
    "it"
  end
  language "ja" do
    sha256 "9ce25f7901339943cc476830398994803196b320c22929a041a6ce1c1403cdc1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a759f3643c74b09190b6c1e5ca9fa9bcda85fbe0df981aadafc60c1d4506c6fb"
    "ko"
  end
  language "nl" do
    sha256 "4180d3594378bc6e2104fb0c664284f402513a45f84036d0b641a5ef459832ab"
    "nl"
  end
  language "pt-BR" do
    sha256 "1e86f4ce57219af057576af517776d2a3b805c0cd0f1224e4d160b20b56c3b4b"
    "pt-BR"
  end
  language "ru" do
    sha256 "6df2c43b448167ac607d5cc21d3470419047d36498e2dd988d373ddb4fb2896b"
    "ru"
  end
  language "uk" do
    sha256 "db5c5d4a783294b84b75f0e2b4486663c3c9be28c01c08a86054fb0d56224f96"
    "uk"
  end
  language "zh-TW" do
    sha256 "a036202cc099a0db8ce6858092f2b92d74bbd4faa099d4be4d0e36bfe7def54d"
    "zh-TW"
  end
  language "zh" do
    sha256 "589dba2ebca3335fa0123f74c11c59829caf33f1fa271d662920d30b9739bda2"
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
