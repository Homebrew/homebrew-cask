cask "firefox@nightly" do
  version "152.0a1,2026-05-16-09-07-38"

  language "ca" do
    sha256 "1b3b6a1fd3c700f96c7beb8fb6c37a561741e721aefd32be86c5567246a0b801"
    "ca"
  end
  language "cs" do
    sha256 "01ed475a4394f2cd7154e98620b88964a6d40a579196d22c9eefe335220cdaf3"
    "cs"
  end
  language "de" do
    sha256 "f2d5d6e65d7a0d7f99fbe6e7d0b0f2b105b64daf0ec85d8b507f1c68c2933024"
    "de"
  end
  language "en-CA" do
    sha256 "2b2bee7635d6652f51ae0451dba14ebf1b9e16fe71511060411731763258e5f2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9d676eff3fa21b819e6d3a4f5366dd0a7c609f903919f38207f32ea334754352"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5dd0c8808bee08d277600a7e1251d5d754854064d7ca750505fd418e663d6cd4"
    "en-US"
  end
  language "es" do
    sha256 "d4532eed95677faf32cbdfc48642ae29f9240d3238f640816f832b88d2151248"
    "es-ES"
  end
  language "fr" do
    sha256 "7c526faa11e4ab21125eac47c4dc41001e03421b67501491ccfac27edb58c113"
    "fr"
  end
  language "it" do
    sha256 "2bd838916a557fd0327d3af72f6f958d60ebe55cdb31bdbc789a1c354a50f736"
    "it"
  end
  language "ja" do
    sha256 "9730d640979cc929d99ce64ec3e6db32ddde64f149fb805c58991070a142aff6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "be88c5c2b9f5e267a8f32cef9c63c1f61944a563d2e36e195e3657973f6cf454"
    "ko"
  end
  language "nl" do
    sha256 "6af7fd7e5d1032f49575a364c1494656f913c5e8cb94f7923931ea8188f8b22e"
    "nl"
  end
  language "pt-BR" do
    sha256 "aedda881b7322a2b695d489aa5fe180a218db5981c99d7c25ff2131ea26d6ea2"
    "pt-BR"
  end
  language "ru" do
    sha256 "f1ace5176540d61bb25253bc5484d3a65cfa46a1d5dbe4455131245794c2224e"
    "ru"
  end
  language "uk" do
    sha256 "bd1b3817e7f07fb4360843e977bf6bedb0bed9fc4acc5dee8e4b0625af161870"
    "uk"
  end
  language "zh-TW" do
    sha256 "fb937ccb90e21055ff81f3a5615e40d1c80021d00e43d3c427c8dfe6d7e5d027"
    "zh-TW"
  end
  language "zh" do
    sha256 "b62366342d7ff3b48fd14c9e4caa20906d4348341537a156281824e4f2e9086c"
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
