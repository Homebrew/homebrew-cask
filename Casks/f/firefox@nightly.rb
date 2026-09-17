cask "firefox@nightly" do
  version "158.0a1,2026-09-16-20-21-59"

  language "ca" do
    sha256 "62600e53b1637928f9e5f5cf6e1006db3719bc1abd13d3d37afffde8a5452d3c"
    "ca"
  end
  language "cs" do
    sha256 "1c6c5f523d2c89b03ba04a8f1746ffb6e631e3976819a40cc6d16389e81f56c6"
    "cs"
  end
  language "de" do
    sha256 "def97a7f15f7a5fee68c61740c508922519f7131c4b895cab07f4084bde16bfa"
    "de"
  end
  language "en-CA" do
    sha256 "aa17e65c02e261fced0cf34e583632bf408fad3dd0b58ef469ead7a3fa6cb723"
    "en-CA"
  end
  language "en-GB" do
    sha256 "eccd1e96c6ed9ff5118801e958bf53703002a5842c8c5cd844a2f52f7fb80268"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0a96e36a352a83e048ca17d3c972e90d8a00226ff5386ebe1536b734106264f9"
    "en-US"
  end
  language "es" do
    sha256 "85c974a99b2fe65ba4fad205ed7dc9fa645aa5ab8132e0a8b1b4a044b45d5994"
    "es-ES"
  end
  language "fr" do
    sha256 "1c2ba47957b8d1dd9165907f18c83f0717c8ade97821265b2ca6f7cb5ae844f9"
    "fr"
  end
  language "it" do
    sha256 "7fdc453075b1122d3708f79207c3d53533d7f336586636e16c3d988f5bbccba5"
    "it"
  end
  language "ja" do
    sha256 "30a3c7c16d1e345b5ed758feb81cb2baba29899fa36b940d3243884037c6938c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "29945d31d5110acec8db087ef8be60009a679008bbf648e680edf4a0fb3550f0"
    "ko"
  end
  language "nl" do
    sha256 "eef23db772aacb378f593893a1641b441ac362da860300db71e7b1d0b60c0ef1"
    "nl"
  end
  language "pt-BR" do
    sha256 "518b0da82378a692adbd4c8ec00c1eb777373524825166df4b198237a61bde27"
    "pt-BR"
  end
  language "ru" do
    sha256 "5e3e4e9760d2929db383edd48bb3971c974f2a06d2a1cda6496212f9ad0cb721"
    "ru"
  end
  language "uk" do
    sha256 "b1b62eeb515322582c84967fba608849ecb1db56edf2d9819a4c536777959346"
    "uk"
  end
  language "zh-TW" do
    sha256 "17e84cf907e3396a561ffe95f131207487b89cee11b868b8bbc064fa6feb113a"
    "zh-TW"
  end
  language "zh" do
    sha256 "1bccc74654c5852e615fa9078199ec407c12976ec37b92e85393b04434c217d0"
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
