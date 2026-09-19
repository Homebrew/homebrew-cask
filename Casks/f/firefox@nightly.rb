cask "firefox@nightly" do
  version "158.0a1,2026-09-18-22-44-51"

  language "ca" do
    sha256 "9ef67a2f574a2630741157ca9e2a6abcc5a604da16e58e077d6b5a42c9b0fa4f"
    "ca"
  end
  language "cs" do
    sha256 "5ef103bc5760da29e9131307183cd363181cd3e5268503bbed492142b2c4720c"
    "cs"
  end
  language "de" do
    sha256 "e977e7e6e039b86daafc2e062fd1d676d6e08a1ea543fd286bc2712b8e4284fe"
    "de"
  end
  language "en-CA" do
    sha256 "7b6369f4df4f740d7874aa0529ff5c60acfe68fa23520c92ca7e0a06a240e02b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "07f8eefaf2abb4c1900800431fb9f1356d0f24e53f3efee31fa32eccc3fc30ba"
    "en-GB"
  end
  language "en", default: true do
    sha256 "68c4aaa8a59e89d1fbb622ef96efab871b4181c57602b1be419471632be30d2f"
    "en-US"
  end
  language "es" do
    sha256 "094f7dd5c4c0486e414552ba861f58ac31d545e9f815d6db5f89e4d0f64f2a20"
    "es-ES"
  end
  language "fr" do
    sha256 "d2f6db9d35366d938b98c015d15ab1ac99ba98d79d040bc6f34f8a96bc1ffc9f"
    "fr"
  end
  language "it" do
    sha256 "a1c794e9f1c817138396e6377113bc8dc7cafbd66cc33d1e25a55048309a840b"
    "it"
  end
  language "ja" do
    sha256 "ca28e8c20475daf46cc0d42c0c388bd554e11357f1d5d36d5bfb172d83a546e2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4ea8dfa8b1c1f5a02b8090e55a044d9acc4e56dedaa691ca141c52f4970f8ab2"
    "ko"
  end
  language "nl" do
    sha256 "b1b89ecc304654d7a77eff9be805af3caff5bedb3e5a84dc84a5ecd3aaa0c83c"
    "nl"
  end
  language "pt-BR" do
    sha256 "f36ed4aeba773c1adb751ac4e61eaf95d07a26e424442f5a6e85a59b9153f399"
    "pt-BR"
  end
  language "ru" do
    sha256 "74fc0c0ed1b7f6e644458865b3e51c6bf8250edb02f195fde22fedd43d1c2437"
    "ru"
  end
  language "uk" do
    sha256 "7f099f72c49aa2fe9a9befe887b3679118f8954b9f71059ffeccc6fd198b5656"
    "uk"
  end
  language "zh-TW" do
    sha256 "a75a663854b21f054c4e5dae936239df421e3a8b01f988a41d96ba455ede91d5"
    "zh-TW"
  end
  language "zh" do
    sha256 "7614fbb8c0ed0e32d9809dbee90cbc168085982e4cb7a08758eb813dd6b7f85b"
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
