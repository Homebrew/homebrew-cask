cask "firefox@nightly" do
  version "159.0a1,2026-09-27-20-51-53"

  language "ca" do
    sha256 "ec662919f773b6dff6c55ecccb5d7ee71be9298181f71b7574742e60cb769196"
    "ca"
  end
  language "cs" do
    sha256 "0a2a846a8f842dfa7d508ab1ed61a6ef19efc831991051203a7db7a0c0f743b7"
    "cs"
  end
  language "de" do
    sha256 "f0778476a7384a61d94ec053f9e78f0d6f7655bafdafef48782302beda1839b1"
    "de"
  end
  language "en-CA" do
    sha256 "bff6893661c12a4fa4ba071dec993b3950808f18fd5c7675270ce1fd84dbe52d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "29f3777c9dde58fd718444801410eef02d9aeccfe4aca1930134e2a6795fd388"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2dd716fa9ca18e86f4b02b4e7e8d10b85f1f685c25bcd3e25a639929b4263f14"
    "en-US"
  end
  language "es" do
    sha256 "80387d58a286d9c6d7bdaacbcc2d0b4cd45791505df7b7797651ceed0720ab5d"
    "es-ES"
  end
  language "fr" do
    sha256 "2b0b846ab187de95964f54bdbacf9d7d6359287a717c4908a1fec9d185c20de4"
    "fr"
  end
  language "it" do
    sha256 "d8d5ccd411a0246fd868f08a001e8038334d4748f9c0fe00ef392c63698a16f8"
    "it"
  end
  language "ja" do
    sha256 "6f16a867a1696b59d9a3d7aa446a706015e87ebc4e1aebe65285425e79cee185"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3df5eaaede5b8fe0c57fde152d8a201ac1c2a3bcd418851a341b19aff17011af"
    "ko"
  end
  language "nl" do
    sha256 "715bbbed6877442f41bfbfab5567d3232ef3cec0cee15aca3d31aef49ace235b"
    "nl"
  end
  language "pt-BR" do
    sha256 "41a0d1867d6e3c429a0e49d9ee7449f6056073efa501e9f084703cfde04b7868"
    "pt-BR"
  end
  language "ru" do
    sha256 "7d07284b461d00acef4b4dd66fc08a7d47c8fbe325da6679dad9f863f62c5d9b"
    "ru"
  end
  language "uk" do
    sha256 "51518b6ef739760c703e7134313a72c9564280447786bf053b52d8ecf0d9a5e5"
    "uk"
  end
  language "zh-TW" do
    sha256 "f50df4ab1046c38b640321218b6d68a83007a9d2eb8aec4dc50c514d043e3166"
    "zh-TW"
  end
  language "zh" do
    sha256 "6ccd1ca94ee46da46bbee8d8868100a97b6254b2c05b1d02aa0358f2e8ddd8d8"
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
