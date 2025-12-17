cask "firefox@nightly" do
  version "148.0a1,2025-12-17-09-19-59"

  language "ca" do
    sha256 "7f1b46af30726463d9e6c102a02fa1329144b4e1930f2b3c1cc3acd50e2d28d2"
    "ca"
  end
  language "cs" do
    sha256 "ecb6cb041220f58f12c104febf99394e5f1bf565321e0954cb6bead8b70b9c0a"
    "cs"
  end
  language "de" do
    sha256 "cb1e8b548af172077047089c3e37119046fe3674de78f0b7216f672e74d3e079"
    "de"
  end
  language "en-CA" do
    sha256 "947266d41a0d9cd282deaedbae50624b26a20a204bd5409a52fcd7cf25710588"
    "en-CA"
  end
  language "en-GB" do
    sha256 "255a39abe1be6c4c4d121bf17d62c9135ddfde6f4e6a73cb7416e2f65ec68707"
    "en-GB"
  end
  language "en", default: true do
    sha256 "427f7a7b0b2fa6859d3522b2cd56a9ccffc27bc7eca59846f89fed648db6959e"
    "en-US"
  end
  language "es" do
    sha256 "7514de2deee10ecff0cdc60ea06343bf12fd715137350c4a93ea0c1877bd2ba9"
    "es-ES"
  end
  language "fr" do
    sha256 "3dc0c2ee192617360a4c2ec609659cbb1859cd1e13651d94f2d586dda2529c59"
    "fr"
  end
  language "it" do
    sha256 "d4e43b50c66bf927116ba4de953dd3f632c3d381e6a63417f79db9af7a21e43e"
    "it"
  end
  language "ja" do
    sha256 "629959e9e0b0832905bd5435888255b250e28bea051b0a6cbbc96f9735d404be"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bf358ba4cb78a04b05973743b88957295012ab79362d2a16da8996bfc346c027"
    "ko"
  end
  language "nl" do
    sha256 "79db7a42468a47a90a2e57373e699f731d83a871fb3f363933bff5f51825a1da"
    "nl"
  end
  language "pt-BR" do
    sha256 "7b4fb306afaa22186db435cea1572b7a474161ef36a69143cb6f10dd3a4bf376"
    "pt-BR"
  end
  language "ru" do
    sha256 "b2774a20849315e9c990670ffd80adc0366057409a2de640f481e3833b963b4b"
    "ru"
  end
  language "uk" do
    sha256 "a5a0294e0e79e2911b5a93d56bd8774a13ddece1d90bc5488100d8ac0b99ef2b"
    "uk"
  end
  language "zh-TW" do
    sha256 "191526732c190c168ca2f01b23205e2c6c69a7432ad91e1a6f872d444d11b1c0"
    "zh-TW"
  end
  language "zh" do
    sha256 "83cf4a2df4414605704929b78a0797742152d2c1340f7c136224e82d6cefad8c"
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
