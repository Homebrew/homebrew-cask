cask "firefox@nightly" do
  version "156.0a1,2026-08-26-09-12-05"

  language "ca" do
    sha256 "0d5b2b7040dbfeab209bf4cc3d67ad603aad87f4178eb0f9c97d038d393c8167"
    "ca"
  end
  language "cs" do
    sha256 "4ecbb60e3eb1d7e6c12fb882161f164e8391174281ffee3d2b52b2658f2a9194"
    "cs"
  end
  language "de" do
    sha256 "7dd31bfe93304c5cbee25b739f7439d750c3c0953235733bd49a2ab7841e4f23"
    "de"
  end
  language "en-CA" do
    sha256 "0dd74a99bb7e20a81314fbd55c596e67c77a7911d9a036d23483e3e49f6a96e7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e7f33ead3aac47ab03aa5c7b032c55800f48c5f8980b113f32af4dfff76bbfb6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "74904746934d7de13e7a8df4ea3bcbd6a384553ba539ef3a707def01e425cfe3"
    "en-US"
  end
  language "es" do
    sha256 "72cc3fa1ed8c2bcf7670d29ec539419dfcc28e4ab14b421d16a53cb4ab10cc16"
    "es-ES"
  end
  language "fr" do
    sha256 "634da451587fc9a2dcf2e32321a68e83da0e1de1e43e1c4d4ff8334c394692fa"
    "fr"
  end
  language "it" do
    sha256 "84586cea17e1e7ee85e01ce2eb9737a512019938cba564a24bd71f0b13797bbb"
    "it"
  end
  language "ja" do
    sha256 "9c0c38c4594c324783b0e728353b77bf749452199103794735738a4df74d9d59"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4b941ba396513616fbf03b0f3f297947154d7930717e8ab0d1a928b4f74eb9b5"
    "ko"
  end
  language "nl" do
    sha256 "c478e0dd64140d3bbe7fcd1e4f3300e3df91fba5f29c78ef081e8975a54511cf"
    "nl"
  end
  language "pt-BR" do
    sha256 "84badb020339e7388751a7068b834eeaf6dc5367137978daa01d95c66c05b364"
    "pt-BR"
  end
  language "ru" do
    sha256 "acf2eba853aebdeffcb69fc61cb15feeb23e3933bfe9b68141dc85baff9d04e1"
    "ru"
  end
  language "uk" do
    sha256 "5af1c49e65c1ddd7ce59320587edc7dc26cf6fa8fe0676260dde5a6bf2c1968c"
    "uk"
  end
  language "zh-TW" do
    sha256 "400920aff5aa21c0ffe09af445e62907287faf630b8b15e8f2e307ee13d2ee0d"
    "zh-TW"
  end
  language "zh" do
    sha256 "f1c9c1cda8c179ee770d8f85f70b64f76e993b6dc9511133547fd2b7d2729f33"
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
