cask "firefox@nightly" do
  version "139.0a1,2025-04-11-09-29-38"

  language "ca" do
    sha256 "7d32650e4095cb76335f2ccfe88681dd6bab6f4a205f44f11f0eb48d10dc3a53"
    "ca"
  end
  language "cs" do
    sha256 "cdc1a4525c1b2b188a5aa5aa1ed54ae2048603ce4e6f9b1d4f5e2f04590b2ced"
    "cs"
  end
  language "de" do
    sha256 "5388cc145b7beed13727aa3c68c424340328d47346d90b2c13e2a8696b15c4ab"
    "de"
  end
  language "en-CA" do
    sha256 "52dc0bf9f950f4c460ed8636f6dc4ad1847601c17d02a64dd2c6cf0b520bdebe"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e9f9ebacf3018cc7d6f8515e19cd2b3b4fd793ef71f98983ad282033759dd1a1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "00e654f3cd4b5f06f8e54ceed218901ed21267145f2b456a9f9fa1f3ef3fe1e3"
    "en-US"
  end
  language "es" do
    sha256 "5df8c934dd52caf7120506e923f97dddaa3944b07113db8be0fce020ef83e29c"
    "es-ES"
  end
  language "fr" do
    sha256 "3628137ec77eb37382b60fd9d88134dd980d2929b5334497a21e1a88cfc984a1"
    "fr"
  end
  language "it" do
    sha256 "14d473a30c90a1f703c07c4d674c19b836fc6e33efb786676996b94ac3899dad"
    "it"
  end
  language "ja" do
    sha256 "e6c330510462e96d85d602d4ba4adc07cc2fdfb8dcfe6ae7c6229895ccd03588"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "75e8043db48620faae44876d98af3eea17255c4a50e6505eda1a9d18e7f9d422"
    "ko"
  end
  language "nl" do
    sha256 "9014088925fa395f6a400e649ba3153955efe67308bf9cd13dac0c46cbed1f0c"
    "nl"
  end
  language "pt-BR" do
    sha256 "bba2c540063930d8e1c406fa5b8bd510b18a701fdcad1800442260cb26c75f53"
    "pt-BR"
  end
  language "ru" do
    sha256 "e78b09046580db7d947f0edf47b22ae57c24581e8b656112b1ad891f11f5b8db"
    "ru"
  end
  language "uk" do
    sha256 "6fb2675d7b28fb2dae68a6d2c9f14f27acfa8acb0b4f98875a1d7b4bdbd4dab2"
    "uk"
  end
  language "zh-TW" do
    sha256 "47d7ec8297e36cd54cd920c5685c27879ffa32aea87834250d4481e7a6e337fc"
    "zh-TW"
  end
  language "zh" do
    sha256 "ad8534bc560cc6d0395f7ce0fdc3975d328939c1013266624e24f353eff06287"
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
