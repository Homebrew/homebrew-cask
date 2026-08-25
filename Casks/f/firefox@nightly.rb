cask "firefox@nightly" do
  version "156.0a1,2026-08-25-09-04-28"

  language "ca" do
    sha256 "9217db28cf4754428e6550d5113a276250efcb1b5d07922be6e63b17e5f5378a"
    "ca"
  end
  language "cs" do
    sha256 "d926c40b9dbec0059b121a0da0cfc73694b9b8cc7602506785d1df0ca624a002"
    "cs"
  end
  language "de" do
    sha256 "07f7f2ce431a20a7f3f116c2ae6b7b0821f59b279d04783ac4eb2b4cf3fb2b64"
    "de"
  end
  language "en-CA" do
    sha256 "3feb8999506789c69f98952753c0de73801cb37ffbcc7ff5b467fe0f2db84381"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d4926e06e887d91e5ef80c587f35210d771e972157138d02a1ae0b3b1f7148e7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e6fa36e84c4114f176dcd66495247af3edacbd3f998ba2d671879a997cf9da4a"
    "en-US"
  end
  language "es" do
    sha256 "5a7b5ba113b3e7826a86ebd7ac926a9bc65edab8db876adf5c6a7f8a734127d0"
    "es-ES"
  end
  language "fr" do
    sha256 "70701c87b1502eb57645429286a1b2bdecf23bcd15c561d9bd5ca90f1be27bb4"
    "fr"
  end
  language "it" do
    sha256 "ceb6e599b324ffba3274c1ee3a12afee1626249435321c91b77c015d7dec586a"
    "it"
  end
  language "ja" do
    sha256 "201a1b683942ba55b53de91b3902f459dc83cd64ad36ca81f002c1c2ea1fa471"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3ad48cb07707bd07c98cda7e3c4f2ef3b1561ea0e0432ed4c59fac66a15b4867"
    "ko"
  end
  language "nl" do
    sha256 "e3f628b2f6cfbee5bd89eb1d6f5950fffd904a9e879bc94e12b68cb8a883803d"
    "nl"
  end
  language "pt-BR" do
    sha256 "915cc90c1573627dfc591588500b1e7e453d6353d74f6d547ce7c9542754230b"
    "pt-BR"
  end
  language "ru" do
    sha256 "1c3a5aedf77da78361cf4ee1e97b9361a53a793e585e38c146d1e30c3217c841"
    "ru"
  end
  language "uk" do
    sha256 "ff8ff9b54432aae8fa73a019b887f5076bf57f60a865dd7e0454090f04f28e46"
    "uk"
  end
  language "zh-TW" do
    sha256 "f71ed180ce86f35bfa8b230781820f8a6f94af0e539a27ec654e207f93a52e49"
    "zh-TW"
  end
  language "zh" do
    sha256 "8a9d5e9966fc6dd34fe7d479cfbd150749626ce33a80931ad2b409f71416cdf1"
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
