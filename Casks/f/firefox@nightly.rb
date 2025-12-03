cask "firefox@nightly" do
  version "147.0a1,2025-12-02-21-13-24"

  language "ca" do
    sha256 "efd1254e61bfdfef8f8393b81611b8ad099bf4b4f621034bbaf93112555768a2"
    "ca"
  end
  language "cs" do
    sha256 "481f8057693e17a5428baf53628a77660ba785933a8629a401d54c5825f7af14"
    "cs"
  end
  language "de" do
    sha256 "0607516e28b244a48d9414f69de8a6e01162ec4e51f65987dd061a20b283824b"
    "de"
  end
  language "en-CA" do
    sha256 "7e71f947d09f2a05a0e4fcc38955476f432e4a27347721095c29d58b21157e49"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b5ef6dcf76631f0909e8857fae5cde5fbbc3fd251b2d6080069096e693cbd7b6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a25f212fd5c15d89f9ce5d5fd062aa57003cfb1dbc253909ff718dc5b02eb15a"
    "en-US"
  end
  language "es" do
    sha256 "04e3c2bb50d33f26d18ffcada1d3be4ee2603632d5e7fb6bc22d3ee2456cd67e"
    "es-ES"
  end
  language "fr" do
    sha256 "ec63f716a598add257c8aab196349ba4f198861d48083d48b3f11d0831b43183"
    "fr"
  end
  language "it" do
    sha256 "ba0087fd0f9c3c2249f11950d58e5e0972cdbf4110bf1e5dea12f3f0f3cfc30d"
    "it"
  end
  language "ja" do
    sha256 "aca8bc76ccc19fa9766386a39d932933ca0ecff9b06ee386822bdfd2e6feb49f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e4febeded77fb7b730090dd208277379b64efd2f42bce1e95a68bba955c27a08"
    "ko"
  end
  language "nl" do
    sha256 "8680e7574631733d7ed048ecc96ed2a08cf03f0a8348fdd1f6d128e7e29ad00d"
    "nl"
  end
  language "pt-BR" do
    sha256 "2e6b9f78345166e01b70031785d3f4c77b3d1cc1f8ac6e174fc9125b35ec3d99"
    "pt-BR"
  end
  language "ru" do
    sha256 "3d549ae8d62366714f644874b6b2877a154a0e7df5222f2573c136d94c0412d6"
    "ru"
  end
  language "uk" do
    sha256 "3f955c944b2746c555c36b2145978956dbf2c4aa1d42440344266bca90295604"
    "uk"
  end
  language "zh-TW" do
    sha256 "6233d9e9eb76531df5e63887671a373fc1652315dcc415b8bda9504331fe45c2"
    "zh-TW"
  end
  language "zh" do
    sha256 "9fb135e0617212a95c9548674f52b8bd5f3930c40f01eaf1d81f8dffbc928aaf"
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
