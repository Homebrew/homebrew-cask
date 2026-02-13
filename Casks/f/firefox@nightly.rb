cask "firefox@nightly" do
  version "149.0a1,2026-02-13-09-59-33"

  language "ca" do
    sha256 "be9d00faae9c48b10a84fe4eb35890994c960b67840c44b2f1825487ab635bb1"
    "ca"
  end
  language "cs" do
    sha256 "815fa0572cf204fb4595ed7c53e7971d147ce90a240b899c714c50a3bda011a8"
    "cs"
  end
  language "de" do
    sha256 "386884727b4ff2cfe634369409458af290c4f64c4525b6d3fbe8ddf2f8a4963f"
    "de"
  end
  language "en-CA" do
    sha256 "214323ff3ca92126ee69f7990beb0a70a010d86ff422dd6bc06227218b7c275d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d4356ad86d62ab1d93ef64a9938c0ebe63e569c197158a2faa5c522c6dc4f043"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8c764ab46ad1982942190e7e90ee5249e75c48f2ee04283f14f7c5cdb286ef66"
    "en-US"
  end
  language "es" do
    sha256 "d68d224655b993b76e8ced6dc60e2d61e3ec09ae551ac39fdb69f06e4e27b694"
    "es-ES"
  end
  language "fr" do
    sha256 "9eb611cc0dd0a6d1881c446ea90c02b0d4de727a8631e46e03e86bab16673f92"
    "fr"
  end
  language "it" do
    sha256 "2b83fd6f83af3ea2996756d17c2130353e3f346b89b6c72a8d88ed729501f8f0"
    "it"
  end
  language "ja" do
    sha256 "718e8a29d164668cebe34439e3282ad906c4d757064dad1bf511354d87ec6c94"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d93a327c6b5de1e1a7feaab6f09a7571878457c64c28c18921bc00aaf4a61651"
    "ko"
  end
  language "nl" do
    sha256 "13afa6a29832bb8d20121abaa91d8531c5cf0425ad004fa5541f4706f469eaa5"
    "nl"
  end
  language "pt-BR" do
    sha256 "b7c52c0bbfe42b8d1a697cd660e4a423065616cfa5681f76b6261def119aa9cc"
    "pt-BR"
  end
  language "ru" do
    sha256 "b3ac1ea5610d9178a36030d5c22f6ac863574390147936886583b67f4b5f4753"
    "ru"
  end
  language "uk" do
    sha256 "e4af0cd4efa926c9c6d4b0979b191da1364955b26b3e33685f73f499dae1133d"
    "uk"
  end
  language "zh-TW" do
    sha256 "8574b134eeb14f87326a7d0b77a2bc0e5602ab4784476e230c782fb72a9838b0"
    "zh-TW"
  end
  language "zh" do
    sha256 "6dab4ce789685ab28bb12b75ec2182e7989c710c9cd7ea6c496fdc15bd39fc9c"
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
