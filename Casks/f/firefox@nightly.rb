cask "firefox@nightly" do
  version "142.0a1,2025-07-05-09-22-06"

  language "ca" do
    sha256 "5321d658b43aed6bfc156e550a19cfe253b7de78fbfc9f9b1585516bcae77a94"
    "ca"
  end
  language "cs" do
    sha256 "2fd6985b4ea4ee2a1b58a7d6c229f504c3be253f82a2e58d0d32c37acc00e55e"
    "cs"
  end
  language "de" do
    sha256 "d88902908c321e9c3c851908003faed15336b273a0dfadcc34ac48ec29f0430e"
    "de"
  end
  language "en-CA" do
    sha256 "dfec12d75ebb72eacf359d1163864d24d5fa11bd3af1550ded3603b7b2e41d51"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0f460fa29c150a4ba88d667f8ee8e493b6153b8890c34e747f2d08fafe242e4d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7c9bc619bb596ef12aa2834c153b2007dd2c3fb3f8732508ff19c4cd422d207f"
    "en-US"
  end
  language "es" do
    sha256 "fd546f7bf736762a1eb16796382319c54620e9a937f41034a1c7fed105fa4208"
    "es-ES"
  end
  language "fr" do
    sha256 "8e510a1389cd81c177c3f329b3cce26b6ca7a038efa89be13c5e19ea930d3feb"
    "fr"
  end
  language "it" do
    sha256 "b42d9f999655b502159e36376fc97781cc517230f55be13bc05981421cabd8f8"
    "it"
  end
  language "ja" do
    sha256 "809356058819965a76b6175919fdd83ea663bcda51a7af5035108dad74d30257"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ee45b633f48a7a66a7bf0bc88fdcf3240e145d545aedab4d78dce9b16ef44135"
    "ko"
  end
  language "nl" do
    sha256 "30506f34317949d6a6b09284dd1da472f6ad46464ff07f6c4012040d8a82b4ad"
    "nl"
  end
  language "pt-BR" do
    sha256 "98cd08200dc31ca45e7875da06e4471fc133a25c6cdc548fe021d999f0fda873"
    "pt-BR"
  end
  language "ru" do
    sha256 "e32ee0048570a8056c9099e1a990c7a856ef4e77fdd38200d2f44f13d01c0133"
    "ru"
  end
  language "uk" do
    sha256 "474fb26e145fca8960d8c1da03693b984c9a3459042bcca5a326ce38f781d590"
    "uk"
  end
  language "zh-TW" do
    sha256 "525e40ac064437b3a841938aff7a31f85603ea316023e0246cf9024f53129af6"
    "zh-TW"
  end
  language "zh" do
    sha256 "b051983a2d0befb53d1e7ec2a9b443009557b068da3fbd797bdc9c58fa5d6ece"
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
