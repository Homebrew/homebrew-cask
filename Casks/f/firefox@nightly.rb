cask "firefox@nightly" do
  version "144.0a1,2025-09-07-09-27-30"

  language "ca" do
    sha256 "24e76176f918ad5d5f360d921d08ba8997bd0d9495e862cd4c9aa5decc44d81c"
    "ca"
  end
  language "cs" do
    sha256 "7b6bcd62f1250d9804a102c47f6c3f5f32f6a3da692810360fd55d964cf0c096"
    "cs"
  end
  language "de" do
    sha256 "88e69bbdb6c5f07580253cae88501d8421a7dcb8efef41a4d960d9e35b61da8e"
    "de"
  end
  language "en-CA" do
    sha256 "7db9f2c2493b0397cd1cf556601aeb950c577dbd55f8fc9cb2101c08e9212e19"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0efff814e4e641f59b209b3dd91fce02af2bc8552c036907b8182265f16451ad"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e78369902c33ec04cc1548b2f7b92d43a67e9fcee1b7fd139b886327ec0d27a3"
    "en-US"
  end
  language "es" do
    sha256 "be9cd811a281b9d9ca829478a47a190b5b4f3ec26a5c04249a5b6334fc300672"
    "es-ES"
  end
  language "fr" do
    sha256 "7705366f176d227a941da44430a1509554890c35124a696ea9fa63589656cd06"
    "fr"
  end
  language "it" do
    sha256 "0ac99c65b2ec37aaa30f12687310ab229fc9086c8de858fe52cd7b8ec14038a5"
    "it"
  end
  language "ja" do
    sha256 "1975fb2e067ffde9e58acef8ad67a292fc9cac539670399077d0c55b6d337f48"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9066ebb1c57917fe01b4b4a0d00a9606f053f613f02e5e7b0f1b0ee2c3d91e0c"
    "ko"
  end
  language "nl" do
    sha256 "fbc9e444cf693bddf71b1df842e499266e1aff82f70d1772f0777abde2c757d8"
    "nl"
  end
  language "pt-BR" do
    sha256 "2050ec8f645b4bf64b01e3ac6237d4dabccca1382c12441a4ad8b3015004b3c5"
    "pt-BR"
  end
  language "ru" do
    sha256 "8a11f25b62d3dd6e337887d2daf5f2151d8312f64f30f0c21059bb3e199129fa"
    "ru"
  end
  language "uk" do
    sha256 "9bf3736dd0530a5d7b7b376446f40a2060b19c09a96f42cf1f70114a0eb252bb"
    "uk"
  end
  language "zh-TW" do
    sha256 "f6462c8b0bb0474d7280ce751ca0dd9d2902be0c27042f374880f1bc9e392132"
    "zh-TW"
  end
  language "zh" do
    sha256 "df6b55f1999e0089d39f8b6781a7128ba0a80db4eb8887a9757a32165c4b0351"
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
