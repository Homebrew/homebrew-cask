cask "firefox@nightly" do
  version "144.0a1,2025-09-11-16-21-14"

  language "ca" do
    sha256 "1c8342fa47fd74a6b5c442758d4d4058b406578c936cbd18a77ac90a7b77142b"
    "ca"
  end
  language "cs" do
    sha256 "0e9e386ae84e612ae8ab94da207274b89f3e64c56bc7ad54928493a0060bb8ce"
    "cs"
  end
  language "de" do
    sha256 "67802a42af233c1c8bc62d218c6844f30d02fa56c54d3f144a6a739d287804c7"
    "de"
  end
  language "en-CA" do
    sha256 "83b41716883ec99b836ada2e4d02ae00e554f0429b032e1141c7f8ab9e211c0e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "06c2ee9399e2ab584825e4dbcae0650bfe74b81c13bd4d60672b6b3af380d4ff"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4c6f4e67084571787c3e26a3ac140fdb19cddc28b005f104e6df34419e55ce0e"
    "en-US"
  end
  language "es" do
    sha256 "99958cf18fc1821888e660b203b9cc40f19082abba0a2fe9faf7abd4e4c1e1a4"
    "es-ES"
  end
  language "fr" do
    sha256 "6fefc2d87188ecb3eb74bc0af762311383e41c29ac0e9cd99fff4ad39629a32e"
    "fr"
  end
  language "it" do
    sha256 "0954d158e45831862cba1c124a43730d487c5e482335caa5b0b075374b0bde61"
    "it"
  end
  language "ja" do
    sha256 "f63485ca57cf7347877f9848380e840f17e14abda16a95f7509e5c7b451ee018"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3b51644a1ff5e49feeb1b372cff6466a44b62dd1cd20a7a8e48b87dfa04460ff"
    "ko"
  end
  language "nl" do
    sha256 "d5e165a079c0f0c5665a9ec8b81a7f7eb9c3876f024e45121a0642806f9b4a05"
    "nl"
  end
  language "pt-BR" do
    sha256 "99f56db492284cb900a48c06c9eeec3db24c9a9111f9e076ef81f82a0ce265a1"
    "pt-BR"
  end
  language "ru" do
    sha256 "14900522e93584d1e844fcced694b30215b5b7cb6430aaa5fbb04b06186b8e5b"
    "ru"
  end
  language "uk" do
    sha256 "cdcd2dbbc68177244adf22e31b344076f053f44c4da25296c616def2ed0560bd"
    "uk"
  end
  language "zh-TW" do
    sha256 "a7fe082eaf18cf76c3460aeb7063c81ab07914ba17a54331d5292fa0b531f6af"
    "zh-TW"
  end
  language "zh" do
    sha256 "bb60217cf5ea4c87c24ce11d9b9411cb7586204e7a4a1c097ec721d397466018"
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
