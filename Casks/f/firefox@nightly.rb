cask "firefox@nightly" do
  version "147.0a1,2025-12-04-09-30-31"

  language "ca" do
    sha256 "e51b7df3fd26df6bc53fc5d114b8261c6e503d062619860cfdf2c200cb04242d"
    "ca"
  end
  language "cs" do
    sha256 "d0d8a4728ca0b88f5a228937f5f63fb7f236d6ece9dded1fa2ff361d8072cd12"
    "cs"
  end
  language "de" do
    sha256 "3bd5786816396e28e74c9dc1947ae9d4c7126723da3e2ee9e3213e34ee6aa39a"
    "de"
  end
  language "en-CA" do
    sha256 "11316257f92fb56655d98f661e34a6768d18eba546d98c36629c4c3c225a7459"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8bf5295653ad34b37e5c3e184fd0309f63c17da39e31e645ca35eb1cbf74b5bd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "985b9b8b4f1b41e38d5c6715195661ca7a70b76887a426f177cd29cde817b2df"
    "en-US"
  end
  language "es" do
    sha256 "7ad91e2e81533dec18f9f854bdab29531b627a6b2a9af68dec132c4083eea6ff"
    "es-ES"
  end
  language "fr" do
    sha256 "76f358d8143afe951ac51ff0af64bfa2eb5b5eb4718f5dd2c53a566659e6a10b"
    "fr"
  end
  language "it" do
    sha256 "0b46fe3cb2ef3f2d4f7195e6063900e52255ff18e896a03f2ecc2924f778e5da"
    "it"
  end
  language "ja" do
    sha256 "54bb8437fc501a35cc55c5984eea2196fa29458ee7d40879634ba9c4b57063d7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9992449587655038e20e8f8dfcf6d1fe4c6615f05d9ce0c6461a3b66973ce5ea"
    "ko"
  end
  language "nl" do
    sha256 "3a6ff5c7bee1ea3915b0ac22ac3ac3e792362c22acaa4d853da29533ce8e23da"
    "nl"
  end
  language "pt-BR" do
    sha256 "cd09232a1e9487c10c51547626063d4b5ed07cdf668646016fb71fb1f81ebc67"
    "pt-BR"
  end
  language "ru" do
    sha256 "0d61f72f5d4e498496905143b5bde30b8e716295ad9c67486b03ec2fdf1b8352"
    "ru"
  end
  language "uk" do
    sha256 "1074246f20ccb50af078c257fc06533f84c089485db56dd0d2f34b974cf3e506"
    "uk"
  end
  language "zh-TW" do
    sha256 "22ee048ed35057a0c926997fc1977654ed6092f0faae4436ab8dcfef40fe666b"
    "zh-TW"
  end
  language "zh" do
    sha256 "a765aeaf2ed92b5512b3bfb8627ea602b69abd3b5df87878510463f61a37fae5"
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
