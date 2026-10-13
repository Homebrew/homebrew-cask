cask "firefox@nightly" do
  version "160.0a1,2026-10-13-09-42-44"

  language "ca" do
    sha256 "e14c82a737bdee3d6e2c138739640f5ad63a50be0da8971dbf76b1e357d59e36"
    "ca"
  end
  language "cs" do
    sha256 "e7e22ef5c9239fbbbcdfcea40d64f3a52d7bbd4ec401a1291e227d169fde78a2"
    "cs"
  end
  language "de" do
    sha256 "94110a8babd46b882ce645e0e14271ab42be9686b0433e3b160ac57254886c63"
    "de"
  end
  language "en-CA" do
    sha256 "7e1a5ce47d64403a343142df3c6f960cdd9a222fb2646fb06b0c5b6e18d319f2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "58107d0289670f4757684dba2f4cb0e14763a3f5f87ee08b82f353381f36060e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e929c780f924d998c82d533f3c70059150cc5748538b67f2366a7725e6f10f1d"
    "en-US"
  end
  language "es" do
    sha256 "1cfda0d8b40d76509f148a894007225d289424e2514c92ae87a4b6ebff290041"
    "es-ES"
  end
  language "fr" do
    sha256 "31e6e9eb3eaf1e286b548bd484ede345ff597a191cca329feccf00325372a623"
    "fr"
  end
  language "it" do
    sha256 "9148d8b07e6661d130643e055357998b1495cae9b97e3108df71c6956f78bd43"
    "it"
  end
  language "ja" do
    sha256 "80084d92135dbcbd20915b4ac58a84eacf0b8cbc924e0d691146e8e60d376f1e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e0fe7241d8ae424ffb5e201fad73aae729893c8e5ad10b0573d4816228a643c7"
    "ko"
  end
  language "nl" do
    sha256 "243076e4eccd383a42ce00e51f5640515b4fcd008859a1bdaa9fba5d5a5b61fd"
    "nl"
  end
  language "pt-BR" do
    sha256 "879e24b0633422649a14c8e2d73d923e60de22c639b8250a5b47baeb8d3ab7fc"
    "pt-BR"
  end
  language "ru" do
    sha256 "f1cbc0e865b6ca1c204113e96d87a8ea3835d4894b8598c87f5b95116f5bbb5f"
    "ru"
  end
  language "uk" do
    sha256 "8d4f5291e2dc99aa8958cfa17e93526bec0946cea399403cbc5e331e4f1be4e9"
    "uk"
  end
  language "zh-TW" do
    sha256 "ac53b95eea12ededc4987773265d102f4c70cfd67c2041a3e659c157651396ed"
    "zh-TW"
  end
  language "zh" do
    sha256 "f0c4c968cc91cd99a5fef2dde297449e5a22fb4c0760b777316fc7561954a4e0"
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
