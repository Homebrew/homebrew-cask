cask "firefox@nightly" do
  version "141.0a1,2025-06-02-21-11-30"

  language "ca" do
    sha256 "37d6e62849b0dc9fdc9e984c5b5edba0d4c5e16bbd663700997cf02d74ce02c8"
    "ca"
  end
  language "cs" do
    sha256 "6a68826da5d3c3186c31f93b21e57825d3b36bb7312d9795e38128548b6ee7a5"
    "cs"
  end
  language "de" do
    sha256 "e0bba2c7111886bfe4815f1257121ad6ad9f15ed37cf46e326be416817b7408e"
    "de"
  end
  language "en-CA" do
    sha256 "cb0526123553d6a25fa8d4faf92aec0af02fed9887bdf9c46278a284d5c96518"
    "en-CA"
  end
  language "en-GB" do
    sha256 "af7fe783b8f7d73f4574e6294d1150643d7df50290697085de381096972cee91"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5ea2618e34a2f62d212c1e581f0940dd830ff83578325b31518622ebecfc8acc"
    "en-US"
  end
  language "es" do
    sha256 "8d2532bcc56f404269056da75aa45235f9e95396c317aeb38965615f484e77b2"
    "es-ES"
  end
  language "fr" do
    sha256 "a010d9b89f09e056ae009b3357fc36443223e996bf9cd4c93703ec1d304156f0"
    "fr"
  end
  language "it" do
    sha256 "f8081998946288225f2f37d05c5a591da1cf2b2778fca7fae4af74dcf128c403"
    "it"
  end
  language "ja" do
    sha256 "dd9e71385e75929adac0e522750aa0b67b3992d2e2f5994810108f02daad842a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c369bf9c8b0a77494d2ff703e0171faaee1049f3f9c2545b56c82c8aa4349944"
    "ko"
  end
  language "nl" do
    sha256 "4ce073a70f87def9ae9e80f68e09a549f64301bd53ca0cef02415ff673478e32"
    "nl"
  end
  language "pt-BR" do
    sha256 "5da5cf1394784e42fe03c42d36b9878cd23692c43998c23579e0168d1b0b8f17"
    "pt-BR"
  end
  language "ru" do
    sha256 "d12025fc8bb5e3249a3eb806cd4827853eb181e5c7131d5cd1dc1b053721e619"
    "ru"
  end
  language "uk" do
    sha256 "c9f00b1a5409639eac70c56a9afcbcef34d7eb2daca89f7595b8e8725448d4ad"
    "uk"
  end
  language "zh-TW" do
    sha256 "a630bbb5a48c2d310beecca67a7467fcb6bfc5f48bdc85be8d50de237b43f041"
    "zh-TW"
  end
  language "zh" do
    sha256 "a0543a9f10b8e427be623c77bd70957906d326ea3b88f345e563cba897acc282"
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
  depends_on macos: ">= :catalina"

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
