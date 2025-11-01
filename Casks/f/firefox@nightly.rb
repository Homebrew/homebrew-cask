cask "firefox@nightly" do
  version "146.0a1,2025-10-31-20-51-28"

  language "ca" do
    sha256 "a219de77512dd322c0752b7af3889ef600a940e28f0454fa0ab3c15c41c36272"
    "ca"
  end
  language "cs" do
    sha256 "66cc17ec4d33526947135160978d77be5ca4067dcb557550a7e9d99b2e00883c"
    "cs"
  end
  language "de" do
    sha256 "52497b6cc4d45fcdb0d2669e64ee8b602cc333f62a51964252e05a4adb7bd74a"
    "de"
  end
  language "en-CA" do
    sha256 "967ae0c7cdd970d04c3bdcc5767e8b8f58f757777ef40612b1f5b03b3d0d6262"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7fee729c0a8adbf988f16f48fbf657e88486edaa7298f7d04758ac28d77bd7ab"
    "en-GB"
  end
  language "en", default: true do
    sha256 "51d92b9231acd21ef698ef0c33885c129bb26b990c361d2d032759bb3d200c9e"
    "en-US"
  end
  language "es" do
    sha256 "e7d4fe4fcd12ac2328999d321135034bd4c92dfe62bb2d1c91932b742be9c6f2"
    "es-ES"
  end
  language "fr" do
    sha256 "f92ab41f73897554f824fff470e0106b8f242d38311a4b2928283aa20227384d"
    "fr"
  end
  language "it" do
    sha256 "7ca9ef5bd65df3823cc3c251c2f29ee63f1b2bcb49ea96f4f2efffe63f058f62"
    "it"
  end
  language "ja" do
    sha256 "9d458c247e8e5cf8ab773aa1b251382a109019102d485cc9b679208531b6485e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d3ca1f770b77e17c775dc61332ba33787b67b547a0d7100f5599e263ee2effda"
    "ko"
  end
  language "nl" do
    sha256 "6af1d4e7106d9c2d0d46e359a80a885bc1a2e5d565842e1ab5b71bd2e66a28cb"
    "nl"
  end
  language "pt-BR" do
    sha256 "08d59dd92edf76780bc38a10b4c1fa6aa8c5e4d03af64d00278d9e196e967091"
    "pt-BR"
  end
  language "ru" do
    sha256 "965c842647073e22c548221a639198c5a41844b1ee80b4b7302f655c36e29fc5"
    "ru"
  end
  language "uk" do
    sha256 "c4ae5538198322ff05c1d9fd7911ef5974db080b98182df23dc24ba26196be55"
    "uk"
  end
  language "zh-TW" do
    sha256 "fc9d2fe5354450cd645bbae308121c3050f059ae6a553eb5bfc1a6a22690366e"
    "zh-TW"
  end
  language "zh" do
    sha256 "3b7a8c2cb62b26850dca146c3e8db7831615bfcc0d47d52876853b6c23abc712"
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
