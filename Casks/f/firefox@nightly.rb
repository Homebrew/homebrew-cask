cask "firefox@nightly" do
  version "154.0a1,2026-07-12-11-32-06"

  language "ca" do
    sha256 "671993a8469e7010a116a3eb06732356ead49dd1451dd6764f4431c9998520a0"
    "ca"
  end
  language "cs" do
    sha256 "850377bd1857d85ebe2cb6e8cd0822e85aa10068134eef2b25a47595565ec160"
    "cs"
  end
  language "de" do
    sha256 "676fa378506c9b26e619c75747c80324afce7e9a96206b182b1722eafc76bcb8"
    "de"
  end
  language "en-CA" do
    sha256 "23ecb661ebd916b4cf613f81f095601973f60e2de30345b19704432be0cebb8a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f763153967030b9ee74930916f55d20d541612fcf29a4d386fab9dde174ddae8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "51d49e0ed4c7aa4a7d1b421450e4f1ab8bc8952fc4466f267b9df004641400f4"
    "en-US"
  end
  language "es" do
    sha256 "d71ea50ba77f1813e9959c59c9b7313c5744ed27f7f97908b22081b01bd7b43b"
    "es-ES"
  end
  language "fr" do
    sha256 "04ec98595d13a432c4487a289fdd5207178948b213ef2ca789cf20214fd5b543"
    "fr"
  end
  language "it" do
    sha256 "ffb96048e85e3bbddf2ecaf035efb71edc833db21f8a68f64c5a63c5bab1fb7e"
    "it"
  end
  language "ja" do
    sha256 "a68cfea10735c95df583802ce13552157432410569abf9e34947df02ea647f99"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f1757f6150d56cfbac4c2f72f3d7f59feaa40b14cf7f6e909d19eaf2af6c340d"
    "ko"
  end
  language "nl" do
    sha256 "ba61df0ec3491194ffcea3d7ab7f2e3ff8d2732ace37f01c491c05f5486b59d2"
    "nl"
  end
  language "pt-BR" do
    sha256 "2fa4ad8342fd06a08d0566e48345f78984b66bd331460dcc170cc08e4e5bebdc"
    "pt-BR"
  end
  language "ru" do
    sha256 "f65c405aabba1ff0c9bfe453126887cf27a196e5465485185c4e169e5822935d"
    "ru"
  end
  language "uk" do
    sha256 "65bc41aad2be8c33fd9671645ca05a01737562beaabfe2e93f95d33e3a213722"
    "uk"
  end
  language "zh-TW" do
    sha256 "fc949a537848c61721ddc7793ae2fdeeb934e28982bffdb2bedef352e71a95ac"
    "zh-TW"
  end
  language "zh" do
    sha256 "6bc7a8af3ce498e48ac6b8cf039711e3d305e530d0a351184bdc777d31950c9d"
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
