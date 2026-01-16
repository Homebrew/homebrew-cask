cask "firefox@nightly" do
  version "149.0a1,2026-01-16-09-35-21"

  language "ca" do
    sha256 "45498af1dd0d678577935c9b8556e62c7c8dc601b31a057803cd482f405fc868"
    "ca"
  end
  language "cs" do
    sha256 "9087897764fa0e9af98b20fddc0600961ead818669e9f4da4278f6b3744f767a"
    "cs"
  end
  language "de" do
    sha256 "596cc7a64104a97d073c8a34bde0327fddb421fa35a6bf58f1778201826181d3"
    "de"
  end
  language "en-CA" do
    sha256 "8aa4d4aa4e603849629a7704747a5bf713aa627916bf3edfba7f4334dbef2d44"
    "en-CA"
  end
  language "en-GB" do
    sha256 "188eddad6fc3a37cb25cac4490d8c8a832f58be5f05993087b30e668aeb2c43a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "62224c1e478fc243b4426ac19b4ada95b6bbdec9bc023c47f60b2e4015cb2ce4"
    "en-US"
  end
  language "es" do
    sha256 "6b45959ce31d992f8ce4ce3df1c8527b9fc38172c5b3b45a6bd1c209a39d83cb"
    "es-ES"
  end
  language "fr" do
    sha256 "48aaf072f1710322d2b5d17b05493a6ba688a7ff1cfae1a99b6f8d511360935a"
    "fr"
  end
  language "it" do
    sha256 "18982668ec5b4882d4dbbe8fd7357e1add46af397fa0ecdd689f7c272287026d"
    "it"
  end
  language "ja" do
    sha256 "156582cb149c890031fa0ae5b0485ec0fa2bbbf40373443b672a978aea736f82"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ebb1ae950cb83525a25abb6cbef3c3e0559572603426162dc77d304693b86951"
    "ko"
  end
  language "nl" do
    sha256 "df8285d3ba6ca12cf3688bfccd690948f9a473b401e0ec8a2d8a46da9ba5042c"
    "nl"
  end
  language "pt-BR" do
    sha256 "5b4457f03c670b503521d7f6a7762e6de2dc0dd7f7a799bfe4224eb5d48657e3"
    "pt-BR"
  end
  language "ru" do
    sha256 "659a3a55fbbef854f201ca9ff938e1556c03bf8e19951c5155f201502f69386a"
    "ru"
  end
  language "uk" do
    sha256 "28bd91ef4ece63c71dc9276a695b80239b9b36a4c21e2bed373285e2c6d6a468"
    "uk"
  end
  language "zh-TW" do
    sha256 "4a8924fbfddc6239b38899d6f25002c4df029146be37f0fc32b2a288f324f2cd"
    "zh-TW"
  end
  language "zh" do
    sha256 "d1622359cbb67cc32b6934fac7293e897f9a7ad96c232fd3018256f39d6b7501"
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
