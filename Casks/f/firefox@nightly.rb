cask "firefox@nightly" do
  version "142.0a1,2025-07-11-21-24-55"

  language "ca" do
    sha256 "ffcae0483be9a1e4ffe0d06fe8129e6f8f7c14fd0d809d8e4377bae733167fef"
    "ca"
  end
  language "cs" do
    sha256 "14d19bbda7549b93338f361be78b56801ddb033d9d83de9b016a01cb2e8fcca4"
    "cs"
  end
  language "de" do
    sha256 "7bbbfbf54d40c7d71ba1387f69f3623b7af00e345214ddbc647c81a39c6977b0"
    "de"
  end
  language "en-CA" do
    sha256 "bc8629bf82c63798d78f7e5b7deb4087145cee5a7b91d1c4b93682f03fe6c984"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ad8b4f1cc478cd1384c6378db03f2813c876edb8bd377281e0bf54c5ceb77baf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0ad7e8576cc0173b8f4aaa618fdf76149edf24eeff64a9f158db2a7b7ce25d09"
    "en-US"
  end
  language "es" do
    sha256 "adc1217c5e6ea7a3c85d900400cc73e82388f08b3e3ee88c19a3b6301d3a9509"
    "es-ES"
  end
  language "fr" do
    sha256 "dd389a559142c9eace77d95b5c9608eb97e6213a0d4511aacaeb8d3bea66ee82"
    "fr"
  end
  language "it" do
    sha256 "ee2c0d3dfcc8625df0bea46f373f872649f8f51deffccf2e02e80d9bcca5ecf1"
    "it"
  end
  language "ja" do
    sha256 "615b53a29c8f1ed823539e0bf40e43b42b5433056bf6099a877803eeb95d5e01"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e8106dce91206367ad5a91f6e7632867958426d548cd33fc596fa124b9f99eea"
    "ko"
  end
  language "nl" do
    sha256 "e43b8c741e796811b394d5f84fd84eb73588fca251ac2fd08f3923972f9e3f78"
    "nl"
  end
  language "pt-BR" do
    sha256 "4d4846e4b017733dc6fb19edddb8049e80be1e4bf924d217a094a25f80c83f46"
    "pt-BR"
  end
  language "ru" do
    sha256 "f0a78b29284114c30047cc406323a684aed2f0de94c2e80a6f13057d95100bea"
    "ru"
  end
  language "uk" do
    sha256 "4f14fd882f4837df0702edf9536350fb94fd20cde2406b2ff63daeb88a686c35"
    "uk"
  end
  language "zh-TW" do
    sha256 "487271a7790de3ed933ac80309650a6828db7ebb0b3b70f73774792800b5419d"
    "zh-TW"
  end
  language "zh" do
    sha256 "60cd50fc7314d797c377590245abc19afc9f773e9a6d8cbe44bcff1fc5139596"
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
