cask "firefox@nightly" do
  version "147.0a1,2025-12-01-10-27-59"

  language "ca" do
    sha256 "9f9055ea6485e0ddbbc96eac6451a257c9e38fd6961c4705921d2805731cbeb2"
    "ca"
  end
  language "cs" do
    sha256 "7dff2f1f1c51a9fe3e9e016094b07416d162611e6fc111a7894d857283e82600"
    "cs"
  end
  language "de" do
    sha256 "ffcde22a4eec72de10ca1de79c7336f6d32d7c0a8892bcb4b0e4d68ee3d5b050"
    "de"
  end
  language "en-CA" do
    sha256 "5d698572dc5e6f4177b61ce1520c005b1e3f443d95d0c0398b63a4c7ff2c623c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fb8707b06d174a8746bf1acfb81be67c1d468398b979b51408b91236fde93648"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bea7d8b16937276181619d58a8215ec597926859c0fafdbe51f304917cbb3946"
    "en-US"
  end
  language "es" do
    sha256 "56a980d260744f4c9b6eee53229c54af67e0c94b0f45d84ec06bc6983b1b52ff"
    "es-ES"
  end
  language "fr" do
    sha256 "f7c84be67c05cac2ac729ae94b6ec71d4db905be460c4f20061c713c3e330c03"
    "fr"
  end
  language "it" do
    sha256 "7110437aa3a107428ff3c9db918af7a5396b73bfc67f0f8d67c854f6ea4c3593"
    "it"
  end
  language "ja" do
    sha256 "f434fb9e64dacb11c7431f6c04e88f0df5979326fc1bcb56b243cb73e021db18"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "faf143df539e0da320debc259a08b0a50cc302951e5b1757639626d38b75e732"
    "ko"
  end
  language "nl" do
    sha256 "2a51896b1887110b7ac065446bf9c4b4fccd6b43e4450d488c3c86ce5e471bbb"
    "nl"
  end
  language "pt-BR" do
    sha256 "e317f9164d312ac95d6eb8f47792fb5706b50213822a68444b24ecdd582d7509"
    "pt-BR"
  end
  language "ru" do
    sha256 "e83030de562ffb9c2dd2a871dbba1fa8e57420c3b8e7585ed4b19139ce936718"
    "ru"
  end
  language "uk" do
    sha256 "18a196d7141bba47cd13ba9578d3cbf4fa65671e8bf8adbe2bdc3249ccd1bd99"
    "uk"
  end
  language "zh-TW" do
    sha256 "6aef52af0b07b7686214905ed04c1272f8f24e5672e46375cf6b86b52f2e3536"
    "zh-TW"
  end
  language "zh" do
    sha256 "6ea51fe72f169216a71d9741dcbedb641d1d63d538b02defeb7cf9a44b906634"
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
