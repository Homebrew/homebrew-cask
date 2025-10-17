cask "firefox@nightly" do
  version "146.0a1,2025-10-16-21-47-04"

  language "ca" do
    sha256 "0f71fa0b494aabd0365b3d0037efdaaea4420b8912aeb9af73f0d2fff634332e"
    "ca"
  end
  language "cs" do
    sha256 "129d5822cf720623da4fafeb86259af5ce8d1f742824e56066d147d6a791f1b3"
    "cs"
  end
  language "de" do
    sha256 "5ac4fed2b70edcc1c5b0018cad4c96c70eae876571edb17d31dbe9428b5490d7"
    "de"
  end
  language "en-CA" do
    sha256 "0eec489abb879df187f42339c2223e891d675efc22cf41d2493ff921b64fbdb7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8749b4c8e755210b82174eadc1107466cb9bd2077e4c3d50cfa83ca128b819a7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0217b4b47839e77c5412508e6e4705803e4b037c127b128e18ae804cd7104452"
    "en-US"
  end
  language "es" do
    sha256 "8bcf36277386537c851341d7f4292bd5b533662b8bed08809285c803a468de66"
    "es-ES"
  end
  language "fr" do
    sha256 "3ca9e763ae2697bbce32a8da864ef2b3a4707f2463aca94f0073bced85ecf183"
    "fr"
  end
  language "it" do
    sha256 "a7789731f05cb1f59f766c770fba7c6a4b644cebb03f741d9a837af57f1b05a1"
    "it"
  end
  language "ja" do
    sha256 "753d13c510b568843e7aa91b42106b299fcf2487af6223996c5d1931bef9c056"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2dfbe616241985444a63830aa2cf27b97bd7a832ab75d539f4aa1ecd1664d344"
    "ko"
  end
  language "nl" do
    sha256 "2462b2284578ae3696f9300e1346b71c71ee46183a28726517552693c303c96d"
    "nl"
  end
  language "pt-BR" do
    sha256 "2e966bbec7e26ea6ac22a3a3abbea173af9fd8370c622acafe503fbfcbea4560"
    "pt-BR"
  end
  language "ru" do
    sha256 "8142976b717297ad502a90f8a1236811ce8e350843561baf87b918f23f18d604"
    "ru"
  end
  language "uk" do
    sha256 "f772c8309212addaf730e61c00fb871f7f7b23b1ec8767a266156110cfb05791"
    "uk"
  end
  language "zh-TW" do
    sha256 "4d0f72f4bf13989ec1a664aaebeca61e7dc51a9942e182631969b559f0250d5c"
    "zh-TW"
  end
  language "zh" do
    sha256 "b10cab1e9fd554ff149546d620f954fe4d13bf2509460ac3acbdc9ca22d2212c"
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
