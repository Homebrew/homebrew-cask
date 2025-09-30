cask "firefox@nightly" do
  version "145.0a1,2025-09-29-16-04-04"

  language "ca" do
    sha256 "4c614ae0184b93614cdb29c5ebf3d59fdadc84e734db4d2d49282a14e554c621"
    "ca"
  end
  language "cs" do
    sha256 "a264a5a1d595a66f29cd32f131700d427f68aa9cfbc2b4172c44e7b8b564da88"
    "cs"
  end
  language "de" do
    sha256 "12f368f032ce94fb67bc4661f3ed2eab98f890e19fb9fa37e922b71a57093100"
    "de"
  end
  language "en-CA" do
    sha256 "2e13ef6560b0487ef3de217a51488b9a2daba03b03ea6cb99fa82ebb8840355a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e158cc98fb49f9a547f3e535f3abd70b01a7d1dbd429d6de7ae601ea036c9b4a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "28c8a776c7a1cb31ad12d421b22ba325218d50f94910f2ebc0d1fd3771f175b2"
    "en-US"
  end
  language "es" do
    sha256 "805a5181d2020cdb223a64383d38b2156fd755c4bef4817ca7960ba9de0245c2"
    "es-ES"
  end
  language "fr" do
    sha256 "9164c942a7d6d872dbdfc1d9ea28edafaa61dc6e6c515711105cf1004949023d"
    "fr"
  end
  language "it" do
    sha256 "1718018d68dacee136e3ee3ad5a8bec88fc9b564732c943601ce6475c4b11a08"
    "it"
  end
  language "ja" do
    sha256 "c3682eb9c019f83bd26954d60f6a19ff1fb6a1ea6aa8e50c6774d551c656f910"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "aa3b1a6ba0e033a612deafef30224a16ac144d16f27c013966ed66bd15f95b86"
    "ko"
  end
  language "nl" do
    sha256 "4d44046853352b467dc43eb642997623936606807b4f4ccaa019576e1b18f0f4"
    "nl"
  end
  language "pt-BR" do
    sha256 "3a9598d46e75d765600d98c226457ff6739dd2054bc02d319ec8bf6f68774e03"
    "pt-BR"
  end
  language "ru" do
    sha256 "6dbea3222952b3a83c2d73250b910de2ab15198067c2cb127edd7c9498f9dcbd"
    "ru"
  end
  language "uk" do
    sha256 "217e43aab6e4e073d09a8d3725d3c1d563e41b706632402fc7aa84423192bc5b"
    "uk"
  end
  language "zh-TW" do
    sha256 "70dea7da6c7b8f2ea94a650bad9179a68f2126722bdacc6134aa4e23df8b3785"
    "zh-TW"
  end
  language "zh" do
    sha256 "db04b23491e59548e4a1449e1ff44086d159909adccd515b116297eda91d2940"
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
