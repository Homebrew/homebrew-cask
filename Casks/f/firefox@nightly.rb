cask "firefox@nightly" do
  version "155.0a1,2026-08-11-21-43-00"

  language "ca" do
    sha256 "d0ab67e3a052467072e0641aaf2ef10d5a29c155fc8bc777153adb837ce099da"
    "ca"
  end
  language "cs" do
    sha256 "fadaaab6da5c25bef0c70cd49182de11e7dc73c3bf4119280072873cb0611e16"
    "cs"
  end
  language "de" do
    sha256 "6ad2089c23677895ba13ae6e3bd67afc1385f4902088bf8affb388b6362db5cc"
    "de"
  end
  language "en-CA" do
    sha256 "b6756106c4d5e297655d50cd8f1a9adedd61420a04360e37e4792da0f1b510d3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3afbe96e25c962ae1240e360e8be3c99913f2fcfb457a40499a9a0239f5a5e6b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cae4ce7e7fba05ab9ed2866d544d5c6eb6f1285d5431c54ca9265e26313dadb2"
    "en-US"
  end
  language "es" do
    sha256 "4bfd330cfa0e687ab5a944eab9c9d282148939bc969bf7f70bbc70b7d71d2006"
    "es-ES"
  end
  language "fr" do
    sha256 "0b3e22a3cff625dad194b5197866fce55492254265e994730b4fd3b766e33287"
    "fr"
  end
  language "it" do
    sha256 "2ac4204c8fb3f24249600217f5644df6e40ba1c6797140dfb20bd4aa70bb88a9"
    "it"
  end
  language "ja" do
    sha256 "12f1c48d9d552935863e0d2279e3851038fb7fe500a66890c1681ff2d4f6e101"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5cbdf910e384f68cbf70c8f01f65bf999d6ed7de326bfbd761ff2e9082dc49d9"
    "ko"
  end
  language "nl" do
    sha256 "0619ff8de770a3b39ff00ef9e5226e178f69dec79af04eed195ffb39f4725536"
    "nl"
  end
  language "pt-BR" do
    sha256 "30e07bccf8eb1eb93be980ebc535f9a1c4b7244d33b8049e8694ea3488b4a0b8"
    "pt-BR"
  end
  language "ru" do
    sha256 "978f61b767714c7df09c90fbcc62f0db8e83ae86c92a1e4e0db6acc04650a231"
    "ru"
  end
  language "uk" do
    sha256 "6229a7cec654b319f43a2c4ced2ee18d942735e291cac44aec7b4712a52a0ed3"
    "uk"
  end
  language "zh-TW" do
    sha256 "0a888a44116e1961f43d5ab8b2507fb01c50f5497260d82ac1de3981c3589d22"
    "zh-TW"
  end
  language "zh" do
    sha256 "a0a5a13fbe40bf3bef1cf3ef676d3cd3ace2debec25f551fed083e4ab524963b"
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
