cask "firefox@nightly" do
  version "159.0a1,2026-10-06-19-44-15"

  language "ca" do
    sha256 "415d6fc58ab5dc9f9a29beffdb2661fa34db225592a60611e5a01cbfbf992a7d"
    "ca"
  end
  language "cs" do
    sha256 "01b8e0839fc3963af01e96c00de686b71d110338df45f130cbb0a9a13f3bd829"
    "cs"
  end
  language "de" do
    sha256 "4bc5d0fd0ce1b4470554a101295d471bce8f5c2438960b1f36eb68d566684b63"
    "de"
  end
  language "en-CA" do
    sha256 "223dee29e9d9dc8644b5f4b15f5d857340fd0e1f12dca019d27a34bdc345ec10"
    "en-CA"
  end
  language "en-GB" do
    sha256 "91d858e499169ef3e01baf79c5b1a3266a554b51ef1f1292e8ffb6cbba84f497"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c89f1ad6f4dc05b3880d8f138b90be71ada9287b068666008d2b69cd4333d869"
    "en-US"
  end
  language "es" do
    sha256 "37e93091c7f1675ab651d5f07e9fbf74bd1ee01452d3d30130632387460312b1"
    "es-ES"
  end
  language "fr" do
    sha256 "5b7b1a53e68c1fe24e35484166d2401a2d718522fdee0f105d7d9c5f4107efeb"
    "fr"
  end
  language "it" do
    sha256 "8ee2aea97c42563dfe56af8d3e9ed2037acd6230179841f908ad9f6dc517b3ac"
    "it"
  end
  language "ja" do
    sha256 "e0803303db2fe497753d8be9125defb41e0532a076d50c42b138c9a60118fd6d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9559019062ef38d802ff54b10029ebf1a04be18a5bf786150dcd87df5f94ca51"
    "ko"
  end
  language "nl" do
    sha256 "b6f82050d4722ba41591eca59dd12888ef3955fc1a52b5784e1d92c37466e4da"
    "nl"
  end
  language "pt-BR" do
    sha256 "c72ad4df77755cfe53d79d376c940d0d14b8b55c572f61ad722ef9fd44489a48"
    "pt-BR"
  end
  language "ru" do
    sha256 "d5a0eb15916a72d1e48b6c7b624511eb5edab54a22d716c9bbabc3503eb065e9"
    "ru"
  end
  language "uk" do
    sha256 "743d08e428cd9a8fd0e4a447e3c162b579669d00e181f5890a09dc099418296f"
    "uk"
  end
  language "zh-TW" do
    sha256 "9aeea0e35ed3b82dcbc70748cacf85c9e405f0827524d13d5b8d1030db01789a"
    "zh-TW"
  end
  language "zh" do
    sha256 "b14c2e5c49f6da797b4393a4e5e3957bd5e89634a39e4fd039aea0ef0b455c15"
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
