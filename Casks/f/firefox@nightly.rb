cask "firefox@nightly" do
  version "141.0a1,2025-05-30-21-23-12"

  language "ca" do
    sha256 "d352c10c7ecda71d4af8eb7cc99dc30535876faa4cf65db1510bff280b306022"
    "ca"
  end
  language "cs" do
    sha256 "23e6cb428ba2e72bc5190ddcacd7ac81c69a8b9ac84df41d6ebf69a5ab562d1d"
    "cs"
  end
  language "de" do
    sha256 "30bd54f761bf38995bfc4779c62e4d4da945db202f8b2a97b3aebd987b9e9d13"
    "de"
  end
  language "en-CA" do
    sha256 "ee2d617806eb7894a13df5f2fd7bb30f4ea376690313d2332b5eeaaaf080785e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "61b891c976c823035217eddce0959018445082c02f8b4325ca358e9d099514a9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d8062b58a37a05543caae802a5dd391f99ba10e7852b5d579e799762279e82fa"
    "en-US"
  end
  language "es" do
    sha256 "4ba0abea086051ddfcc247bcb6eae4ec17cf913ff63f1d4921f5c8f3b5bc5a58"
    "es-ES"
  end
  language "fr" do
    sha256 "2f0194909ef03c9b6e75776d02f62cc9631aec3b0dabf75da82afb74dff1d8ee"
    "fr"
  end
  language "it" do
    sha256 "794374740829e3107fb656aafc754bbb0944d871fac6e9a8dc6d884c1b55014d"
    "it"
  end
  language "ja" do
    sha256 "1cedc0544d75bc2e81759ff0b24b948b0d3aff1f5d7e005ffb55370454544739"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0714216ad323489bb4fe30bc78d05a52f1496fa6b4ea5c9a82c4eea1dc6ab996"
    "ko"
  end
  language "nl" do
    sha256 "182765eb8abe529e6ef9d2cc8451eb15d20719d69d9251e69fe2d785b84f207d"
    "nl"
  end
  language "pt-BR" do
    sha256 "b80046a89e73ed38c994ebca8dd5218348a076d9e2ed769504c442f8f76de14d"
    "pt-BR"
  end
  language "ru" do
    sha256 "a8559d8a6dec1f1f8161823d1fc58207f929347f8d6139067fa1fde32c1f0c40"
    "ru"
  end
  language "uk" do
    sha256 "134589b3bcb35fa2e780128f2c257859d40184e37911e39726912183b9510c3a"
    "uk"
  end
  language "zh-TW" do
    sha256 "b84571ac8b75e0c4dd67495c443cad623c4d1160fec43ba28a8abf76a49170bb"
    "zh-TW"
  end
  language "zh" do
    sha256 "76f0f8808b6a8e3db7679a72a4ffd7a61a980e869d7211ccec7b743b4fde69f5"
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
