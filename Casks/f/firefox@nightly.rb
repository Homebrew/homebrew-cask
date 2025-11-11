cask "firefox@nightly" do
  version "147.0a1,2025-11-10-21-13-28"

  language "ca" do
    sha256 "e11b4881cf45d5e6223da2e6e6d1bcfe6bd927e71eb19403f7be128dfb9837b4"
    "ca"
  end
  language "cs" do
    sha256 "26620e5c38aabf34bd1ffb0b4e7b67e1f79944c97189d73f4886d9bc0041a6be"
    "cs"
  end
  language "de" do
    sha256 "6d7fed7f4b562b054abb883006670a1ae93e305ff970c6de4f534e48405f58ee"
    "de"
  end
  language "en-CA" do
    sha256 "cd979f6f5d5ad3d0754ecf697c86646b71599cf0506aa18efb31129cf3014668"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b7d550648d5a2f3176d20ac814a7d444084cacf3f03aa855694df8210785eb3c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cc2a9124ac84314f222f8689e7ca6c470ccbe68bf1de927d73b8acd6f87d7f8d"
    "en-US"
  end
  language "es" do
    sha256 "92dc8832eea08862421d832ef9dabd885207784abfcc4237f284fbf8404ed539"
    "es-ES"
  end
  language "fr" do
    sha256 "c83d67c8dd20d84cf7902eae596c9e300be99b09a6cb7d5017ae370746390e80"
    "fr"
  end
  language "it" do
    sha256 "ae0c1e9794f922a2ab5152eb3d45f16249b306e05dd938194e7cce225fba3f9e"
    "it"
  end
  language "ja" do
    sha256 "f2990cc8e5d6a8dae47efdec0598ff21caee902be10e250db7a7c99ccd6993c4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f1ede1a339548c054797209a8d596a960a5703284cffec04fcde2f9028442834"
    "ko"
  end
  language "nl" do
    sha256 "db629625af93b90b820d1c8ecf1c0be87e74c5ba172df17d0916b4dda416e474"
    "nl"
  end
  language "pt-BR" do
    sha256 "542f4c93889fd23a457ccc29ca2aa41b59e5713a648fe845a5f912f10daa0384"
    "pt-BR"
  end
  language "ru" do
    sha256 "e03cb3997ae5a1ce2ab7a5042a0d1473c57bccdcff104ec38cd1ef781866fc0b"
    "ru"
  end
  language "uk" do
    sha256 "b358a01568660a94f793319c3f39788a7e09f2dbbf9b4e8aaccdb019682e15d8"
    "uk"
  end
  language "zh-TW" do
    sha256 "df837cfafed2b24dc11d94cf744dbc37eebe673554c1fdff0452a8a214dbe997"
    "zh-TW"
  end
  language "zh" do
    sha256 "939704cf8396a3132fcc4eeaecea45e64633d389d6d5ad79d2e7c1c7f3786afc"
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
