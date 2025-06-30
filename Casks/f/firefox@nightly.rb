cask "firefox@nightly" do
  version "142.0a1,2025-06-30-09-39-46"

  language "ca" do
    sha256 "1003941a86d6aad8bbe85801fbc80ad0edbc33b54d161ff984803a6410fae590"
    "ca"
  end
  language "cs" do
    sha256 "be4050260f084b770e8646c8c96fe0737f2bb90e8c2ac40773a20cffe5e45c16"
    "cs"
  end
  language "de" do
    sha256 "d5e2e7302c35a4ab1d7e63d795d368ed12a4d3344bf5c6f779ccc48973145571"
    "de"
  end
  language "en-CA" do
    sha256 "f1d99bd9030743e059dcc4b893b5693caad0672ecd736d5a0606fa223920672c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a5d0dc6e979598d158fe9b368b70a7f096891ccf0c69405dab7df56054f91e5b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8063af6b34362ea34e6ea0f26d245f39f49aecdcbfe950d9bf20d78b379144e1"
    "en-US"
  end
  language "es" do
    sha256 "4e4ad15c6317ae85b88174dda551d8bacf88140e5a453b39d83eda8eb49506a1"
    "es-ES"
  end
  language "fr" do
    sha256 "b33a39e982e2a17943cb634cfbbb0b60c4e8855365a114ac043ad511ec672344"
    "fr"
  end
  language "it" do
    sha256 "49f7c7383ebd237bc1b42f18c1959242d9d0c316c02e531b6ed3efc4fcdd24f4"
    "it"
  end
  language "ja" do
    sha256 "06c348acd50f762c1a92611a8961295d7dcebda79f6809560f6719754e524c87"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7101fefd198e8eec21ce904d6d0420ad11c51c768d9582cfc426bc19f8b22e63"
    "ko"
  end
  language "nl" do
    sha256 "c983a6df3e52bddb492369dbfcd655122486ca11e3be46c23f2aff762193df08"
    "nl"
  end
  language "pt-BR" do
    sha256 "b864f572061b40ac36907866884e518144630537cecfa9e6e0fd3ebd6c3378e9"
    "pt-BR"
  end
  language "ru" do
    sha256 "e467a3fb5be4ab7b68308422c7b44640f3acb55b850abf0a618dc37cdda2e8a1"
    "ru"
  end
  language "uk" do
    sha256 "d7d2f53400fe129f8076074181297819f96b7e7d23a82091420ebecc9ce1a7c4"
    "uk"
  end
  language "zh-TW" do
    sha256 "f2f243012707e0c0494474bb11f02c419b7dda841c6045eec80fd89bbeac0f45"
    "zh-TW"
  end
  language "zh" do
    sha256 "9f317208319fb8379e47267efa42b6c8e40a7385060fe86f833e00a5f5ac0410"
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
