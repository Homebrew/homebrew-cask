cask "firefox@nightly" do
  version "155.0a1,2026-07-21-20-23-27"

  language "ca" do
    sha256 "b32c0cbc46f5d313ea262a91a3e0c4214d27871014e4778207c10988586ee4fa"
    "ca"
  end
  language "cs" do
    sha256 "f917067bc54a7e0a8ed47f72b48317db728af4143a754359d1a480e147878ca8"
    "cs"
  end
  language "de" do
    sha256 "59aa553f169dabcafdb8b0ca583931d74ce5ff7637c197bf1c5888a9c1bb7b18"
    "de"
  end
  language "en-CA" do
    sha256 "00ee3cba911de07e77a7d76bbf8680b2b877fdcce7c8af8a5859986f8df3b4c6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b269ef08881c7784ddd010c18dbf66f44350ac8a3f7d26a932415315280672bb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7aed87246486b561daa4a72dc6165acdbd1a767fdb6174d506dce10d372caadd"
    "en-US"
  end
  language "es" do
    sha256 "a1737583363e2121eb6178c11c97aecf8da04588dac5f6d9c16f3a127f83d538"
    "es-ES"
  end
  language "fr" do
    sha256 "2b77799060613f2e2822237ad3413d70e0df5d8ced75269119ad1fbca6009820"
    "fr"
  end
  language "it" do
    sha256 "32f516021de109d44b4ac37de242e36f3c1120da7cad00b33fa41c16668ffd8b"
    "it"
  end
  language "ja" do
    sha256 "8b07468f61f0fd5a11cd2c48c92e9860ca798da731f1c511392109517cb69d54"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "beb47f7b9f0c7b521ee792346b8e9576ec043a7e51e4fe1ba7bbc3d6def44595"
    "ko"
  end
  language "nl" do
    sha256 "e1dda791270825b4c5ca6acd2cdbe05480b515a66ae74244cc9fceebb0cd5d3e"
    "nl"
  end
  language "pt-BR" do
    sha256 "eec4d335ea40534b41892ad0d540cadc82d6495c73e9d190d4f66172250e0a59"
    "pt-BR"
  end
  language "ru" do
    sha256 "78c74f7bb8d73c59dc445ce2600f96c64a61a3359e108fec29be5974ac462b51"
    "ru"
  end
  language "uk" do
    sha256 "1eee9ca37eb35dc5b0c594717fececf607848a4d9199052172e0b8917d2a09ef"
    "uk"
  end
  language "zh-TW" do
    sha256 "bde4de247e98ccfd78d4c9d0de7d07e3db7a75ea60217848f1f09edc402eaa21"
    "zh-TW"
  end
  language "zh" do
    sha256 "6e20b26295a98dcf032a15c44608d81205b93a94213760953f9a4e1c987a7e27"
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
