cask "firefox@nightly" do
  version "149.0a1,2026-02-03-09-28-03"

  language "ca" do
    sha256 "bb55f27b74792ba31a18833e342a373c74137982b95bafa6c81953229ea4695e"
    "ca"
  end
  language "cs" do
    sha256 "d226efae3e8eb8a6832f525e737e0ac92c20766533b5345ca2e4b60232a89a59"
    "cs"
  end
  language "de" do
    sha256 "d5cb759adee5bb9d765f36308227ca6165347253e00d11de01beb91c1dc42881"
    "de"
  end
  language "en-CA" do
    sha256 "cf5f50c42b615d2591f0c32cc6c603db20a4afd4a5e4d412ad7ee728b98e4df3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "76124fa35d27d94f21990e7aed3e4e634352069c12280b443275596670aa5015"
    "en-GB"
  end
  language "en", default: true do
    sha256 "78610fcf7e280bae8f828827b3c597a311db8d9a27cd26b9bd3b132d0fa77481"
    "en-US"
  end
  language "es" do
    sha256 "473d0312930140e1e7007b3eb2b7e019e9c9508f93d922426ba1a4c466d130e9"
    "es-ES"
  end
  language "fr" do
    sha256 "f0824f4b5eabd4bd4f9e4895c5c6c03dcbe3a80e0505e4dcb61951d20f91b55d"
    "fr"
  end
  language "it" do
    sha256 "01888a003e60ea56b79c41b5dc5aae776fdab5d0d4514130967545a3bae9c1f1"
    "it"
  end
  language "ja" do
    sha256 "227f4967809fc64e9e43c0e4c978774e8dabb90b2984503aeedb3b67c6492c56"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3bd23a9bfbf638892f0417c9773911e6ad09d8d3b319360869684c7c2d029008"
    "ko"
  end
  language "nl" do
    sha256 "ac5de24b8d8352d2f1aa577f9b03f3cb915cf2d1d09a86435f01421117757a14"
    "nl"
  end
  language "pt-BR" do
    sha256 "1330145e22b8237c43b6868b9fc4b1f51c02163fe2413566b04fe7d28e63c929"
    "pt-BR"
  end
  language "ru" do
    sha256 "22a76a6d7808f0f284289dcf824869432c9ecb6b5051819fed3a6a6dd42dbe96"
    "ru"
  end
  language "uk" do
    sha256 "98fb33faf7ac7d64486e570f10a7d854b93ac5bee45040e3c35279a490e3564d"
    "uk"
  end
  language "zh-TW" do
    sha256 "2ef831e8e6fc6422c3d6ab1af954bc5b0f13e81aff38163604296d97976359aa"
    "zh-TW"
  end
  language "zh" do
    sha256 "27e623f3bcbdd9a4ded536050b384af7e5b6dc6f7e25f69f8f3197857c4af528"
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
