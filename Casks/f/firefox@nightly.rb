cask "firefox@nightly" do
  version "139.0a1,2025-04-22-21-37-40"

  language "ca" do
    sha256 "d4e0bb375137d982b496d19ba51ef3f385f8bc0416a4ef6bc7ec7343147fb028"
    "ca"
  end
  language "cs" do
    sha256 "253d0748086d0485f1f5fbce5c44bbf20e41b92967c368699d37e1735ebcf469"
    "cs"
  end
  language "de" do
    sha256 "af4c87a4d81c0a63402f7161903e1e7bd9fd3119d8a798eb8293be4eb459ce58"
    "de"
  end
  language "en-CA" do
    sha256 "ca7758d79cdc92049412567643c83a53f24b12fc4f1bf477fbc5ab4c292fad24"
    "en-CA"
  end
  language "en-GB" do
    sha256 "577f2f661288dd291b49ba66aaec0e71e2e9e54da35780cb6529d016a1f54712"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eb1e70c8b771bc56c9cf0cb1d755eaad8e7f8e73c3c621095d3d80dcb8a9c788"
    "en-US"
  end
  language "es" do
    sha256 "5a5e5925cae2271af09dc329d7b73c3bf02d2ff691e49046548ebe2e99c7baf3"
    "es-ES"
  end
  language "fr" do
    sha256 "1578a18c398a55a1dfe0f5d69d7b5074f80a9e70d899f677c135c5844d10e9a6"
    "fr"
  end
  language "it" do
    sha256 "3c2ddfe85b258aff1466b093945fc25d439f283d7db5b14ac7622a697c4d92f6"
    "it"
  end
  language "ja" do
    sha256 "26437fd1beb6332b398c85a9da9559d3d4652895dc0561c5cc48f52d02ac6e95"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b31610878c175065890a17ba0db4a8e4dd2415bcd439864f0ef62d6a8a527c0d"
    "ko"
  end
  language "nl" do
    sha256 "ca48b6be72cbf4ed8be607143b66b671863ef2e615fc95f7b7d8fbb7f5b1c347"
    "nl"
  end
  language "pt-BR" do
    sha256 "b09e291bbdb571a93672f808d2d4c654927b96a84d00cfe16ff96be8b455364c"
    "pt-BR"
  end
  language "ru" do
    sha256 "25a784e2f0d52c32258daface8e6f2c403a9782bf60e0fa835aa386f09d04810"
    "ru"
  end
  language "uk" do
    sha256 "9ac6d7c2f5a75ff894aa5c282b0c205cf0936fd3bc717e9ff8cf537a7fd14aa1"
    "uk"
  end
  language "zh-TW" do
    sha256 "6eb37f1a08c3f8855aa9dc9240ee0ebd4c8804eac52a22480897f31fd4184c1e"
    "zh-TW"
  end
  language "zh" do
    sha256 "8154ee64e094d83ce57a2db275ac84ee7d15578b5224328099eef4441c9b9981"
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
