cask "firefox@nightly" do
  version "160.0a1,2026-10-15-16-10-46"

  language "ca" do
    sha256 "2c3483006ef97895275adcf8753a3f103c952a1f9ba36d76fefb02051153df04"
    "ca"
  end
  language "cs" do
    sha256 "d9b6a12f04ab69e70304e72a55342c4e481ec50e4fe1ca7936fe0f48a7803ad5"
    "cs"
  end
  language "de" do
    sha256 "99da1a596ad97615f36ef43c5fd9960d96021a507b1c9048acda3347b1ec02ce"
    "de"
  end
  language "en-CA" do
    sha256 "50c800cf82ccaa90c706823a8c215f671becd4c41148f7c842a0358c127346b3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1aa012611b81adc0209c85d9976b43c926beca3c9cb469d9815225a8ee8ca9e4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "74fc8b1cf7a3bb82286c660f5a841138bd1b4df5cb6fcddc4fa3460e74d7f555"
    "en-US"
  end
  language "es" do
    sha256 "123a1b7ffd0f22dd04d37c7797a16c53eeaba64075ef80374140a03a5e87dacf"
    "es-ES"
  end
  language "fr" do
    sha256 "02e4017be751ec0de61204455b32465b3bd91fa6f34a23267ac110ba0fd2c1e3"
    "fr"
  end
  language "it" do
    sha256 "8b6a2ef675b4b4bfd93c21131477e0c592a449e19453714969e020fb08e7a127"
    "it"
  end
  language "ja" do
    sha256 "74054ef76dbb12a6439bf90674871e47d342b314db870e4712aa9a08f23540de"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "16bb90769126187471bf156f352e6f27b0105b6a772135235f93ceeca59aa96c"
    "ko"
  end
  language "nl" do
    sha256 "aff52c942c8b8ad8f68dca4df9234aa676c7b1d4c8894d7ae23da8b725a8accc"
    "nl"
  end
  language "pt-BR" do
    sha256 "4e0b1416b55e96b1539229c4dc2d87cc393b68233a02296e7d6476d5ac875231"
    "pt-BR"
  end
  language "ru" do
    sha256 "eb87e391754cedf454b5e09e52eec9e69590be9f21e13d25d371a6341dff6d1e"
    "ru"
  end
  language "uk" do
    sha256 "14e5d3ca11d8d1ea2d2ae70ffc339c6d549635e3f7d8a398fc9e457fed7e0c5c"
    "uk"
  end
  language "zh-TW" do
    sha256 "8596b1eb8143907e1079cb683c9c81cc3ca0c58d346cb58fb6d1a5b5f358c7a1"
    "zh-TW"
  end
  language "zh" do
    sha256 "2920a85b2d1817299a199d726941af526a7fc919f0725fe52f5f767a4c9ba790"
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
