cask "firefox@nightly" do
  version "139.0a1,2025-04-20-08-07-30"

  language "ca" do
    sha256 "5c8aba39b578ea2efb534b50d8eb08d74e2eb7e1d05b8f0da097c72430491701"
    "ca"
  end
  language "cs" do
    sha256 "5cdbe3f86b7435a80ff96fa14ed4d2e4c2cfd73a04761af6cdf88fd794ee2550"
    "cs"
  end
  language "de" do
    sha256 "4f07e23a782fc3a0d8db59c427bfb5ec45277fda031554aac286d6ae0727cfda"
    "de"
  end
  language "en-CA" do
    sha256 "3a5de8d0a3c02b6221992969820f36916aeb8bb9190f4c3d1016a8b06e4dd073"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bd231eec13720aa135fff3fcb9352c175f439248e2ee38b7e37768c5c85b137c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8e2d6b6d1c66c6b65f4c2acdf8229d338a9b2fdf62b56f3b5377f781b7e55bd1"
    "en-US"
  end
  language "es" do
    sha256 "fb97b1d88fbbbbc630346eee4b1e00dd9a1388160d4af6d6e652924763eb46f3"
    "es-ES"
  end
  language "fr" do
    sha256 "c5c681f88b1884ec7b80fc9c459ed42b7b31eca509d0e2fa035473b7888b64a9"
    "fr"
  end
  language "it" do
    sha256 "e750c35261b62304da6456c0378469b50d468cbe655479562420636bdacb7808"
    "it"
  end
  language "ja" do
    sha256 "f75eef421f923350483791de00b4c562195e4e973dc97d100c5287fcd36cd61b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a5e5307e5546551b47fbe1551b45618e39ccc4013b54913f1833787167a2684e"
    "ko"
  end
  language "nl" do
    sha256 "4c05696ab2c0243ea9b1f737db0840e798d483ccf6dc6de060f568ad579b6c85"
    "nl"
  end
  language "pt-BR" do
    sha256 "e0bc9fff39da8a723b812f03f3f4ef5f45ed5d71a95ff9ebc9338287f12215a1"
    "pt-BR"
  end
  language "ru" do
    sha256 "ab976ca6b8886cb724f1211d185e18eab3d09dfbc9659b99f5f5ba258f94fd19"
    "ru"
  end
  language "uk" do
    sha256 "a1e55a81ae8ba32d0269da5fcc1409ff5ca49ef0e1f8723dd24f72cc88673dfa"
    "uk"
  end
  language "zh-TW" do
    sha256 "c7f5cd5ead48e564f44035b1f130cfabd7a96148e93d70b6da3d6816ebd8b1c3"
    "zh-TW"
  end
  language "zh" do
    sha256 "ac85c3fc0463617f443188a9edbe83a12db65a51f38fb08492c0a046731e6265"
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
