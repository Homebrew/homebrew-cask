cask "firefox@nightly" do
  version "139.0a1,2025-04-22-09-14-55"

  language "ca" do
    sha256 "f14180f87c0cb7590bf203ed4edc0756ffd1118e6155ada60c8528b6efb9f33f"
    "ca"
  end
  language "cs" do
    sha256 "63916988a83cb2711eb824a7fb7543ebd2be7d2f8485ebd90137b77f888ceeaf"
    "cs"
  end
  language "de" do
    sha256 "1babc91f5f17222fa058b5f5af2e5b73c4333e2c99dcde3ea4e77b1a686ace67"
    "de"
  end
  language "en-CA" do
    sha256 "d0740fd85ecc46983b90c78180cb1535cd401ac9735b6b0d25832ebf3395bb32"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f1e332461c4c8b8cb0017a1773cbd1e9174fe288582692d180b861b315015717"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b68a8bf06ebb9d50b82bcd489198adb97230a20b60a7142a9a859399f1e4e646"
    "en-US"
  end
  language "es" do
    sha256 "31bfa7f89e6bfb8d190b2f630b1de11a1838da19926c99f1f3b039b3f897ede5"
    "es-ES"
  end
  language "fr" do
    sha256 "c0d7c149978d57a7e4150daadc6fe14e9b2ff2a9545bde2ad6574f68e38a527d"
    "fr"
  end
  language "it" do
    sha256 "a7b2ef884ab1c45ce41c91d84ef24f6f8f3bf51e8eb3d497bb854d501402067e"
    "it"
  end
  language "ja" do
    sha256 "ff04980454765af6321754f27fd0fe293571a6af6946bea686526d3de67605c6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5abfd6c6d49769b5b9d420c814baed6b7ba8f4e60df293a065f37dde4afddcc6"
    "ko"
  end
  language "nl" do
    sha256 "dc433aced4a0c465b45f4d02bf52abdb30437e9114a7a3d217d26a174a2e3207"
    "nl"
  end
  language "pt-BR" do
    sha256 "aa9a6c10a8298f6499e44e74d47e843672903c3b3727794b7567b52ebe41a754"
    "pt-BR"
  end
  language "ru" do
    sha256 "eec349efce8efa93f80aa792e7ed5a58ee2cf0dbf51ea43d664b06fcc206729b"
    "ru"
  end
  language "uk" do
    sha256 "6f3b0afdb5feead3ee841592d10b40bb156197b4af2af0f8ef186e168993da20"
    "uk"
  end
  language "zh-TW" do
    sha256 "548feb86e8064a1431823f9272e7c9154036910903fc5d85218287961e01a521"
    "zh-TW"
  end
  language "zh" do
    sha256 "ace4b5c5c881ccd2990a783b7104f0614f0dc13bc490fbb44809d2570995b7db"
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
