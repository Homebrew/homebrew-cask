cask "firefox@nightly" do
  version "157.0a1,2026-09-09-08-38-22"

  language "ca" do
    sha256 "e9a0b1c9894a72faead16f2a97ee956fa2e8e5e043e48da1bda4f464847d10f1"
    "ca"
  end
  language "cs" do
    sha256 "2a675fab824cbbf0a37b46605688ec6671735294bd0cb96fe8dc7a6b37a3c894"
    "cs"
  end
  language "de" do
    sha256 "12e847065de905e70090de7c2f65bfbffcbc6852bb7887e5d3a56314d41ab46d"
    "de"
  end
  language "en-CA" do
    sha256 "19fa6ed009935a5e03c189dc40a7442e54383032b8f555571e4a24f0108fee92"
    "en-CA"
  end
  language "en-GB" do
    sha256 "81cbf6975d226d0a5d4ef616e2a89bd47b7561e1d19234009ba4a1033f8c297a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "631cd167e03099373431d1ff7c85dc39951be0b0a0b3bd69b0f3884b15bf3178"
    "en-US"
  end
  language "es" do
    sha256 "fa7a01497b0c62dba7cf16a1603c1a65c1596e6076a5c22634f927497ce38133"
    "es-ES"
  end
  language "fr" do
    sha256 "24134502a458d8d145f9ebcd716d1e92c40d392365bc0e79bdf16b91e1493ba0"
    "fr"
  end
  language "it" do
    sha256 "6d1e76a560cfa82365887e2c2bbeda535c60eaeae6d875df795a8d1f78c17eb6"
    "it"
  end
  language "ja" do
    sha256 "a6bd7e9110632786ddfe462a4cfa834fab57f1ae13a54adb2e14548088cac43c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c85b4f22cfca3c1ced596f7f828e1f992a4fbd5d8c14882252d558febbddf415"
    "ko"
  end
  language "nl" do
    sha256 "26c32fc01dcf489edf1dc7f08df90721339a46053265dd34cb11203254c3a124"
    "nl"
  end
  language "pt-BR" do
    sha256 "97470c4f83c44280d4d6d3cb1e8a3e3c08a3ad568209915aa8d4ca998ce9bab7"
    "pt-BR"
  end
  language "ru" do
    sha256 "d3f475206d9b081173735974f1b2a8d2f48ea0c79f1e8a4d12a86844268bb4ef"
    "ru"
  end
  language "uk" do
    sha256 "6aa6577c5ee40d21ac82c0b657da2bf79e8f8654b25c00427371b4e94a88fdf1"
    "uk"
  end
  language "zh-TW" do
    sha256 "1cabc4681eb60aa7fc9ebe05b2757f03076ec650d0c892996e85259331326494"
    "zh-TW"
  end
  language "zh" do
    sha256 "9b007fa95aa0acfe531eafb71c1b9bbba2f8c9dbe136cf88a422e37d100f0486"
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
