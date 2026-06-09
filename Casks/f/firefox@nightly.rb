cask "firefox@nightly" do
  version "153.0a1,2026-06-09-09-06-56"

  language "ca" do
    sha256 "d215b3d2a12bbc8396d1cb214b40965549902a949329fa909d5688d932606bdc"
    "ca"
  end
  language "cs" do
    sha256 "cfa4c6d807495134084e56f5ce0dff737c4c3ac0df1db798bab90809fbd914c5"
    "cs"
  end
  language "de" do
    sha256 "584c9f747011b6cec1149331cccd24ace1e6d5538c931eb0bc0bef00ad57a1ac"
    "de"
  end
  language "en-CA" do
    sha256 "3c218b088285314a2f1c1ac006382febf3165bd412cd33ef9bc70bc5018c582d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "97375f92bb47fb8df1e2af9ba92a99b259c821c10c03ce3e109f2e1a12142bae"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ff909df7411e385b10a622ce84ac4502f2de24023e677950af34cc1ac515be31"
    "en-US"
  end
  language "es" do
    sha256 "29a6a2ee9a34bc01193961bc9d21fe1c916bc27143555ad18d9f6a6c7dc0bfef"
    "es-ES"
  end
  language "fr" do
    sha256 "ad32e0dae839e3bc795ab8553c6f313c225f1ebf6395f919c894b87d5e6e26b1"
    "fr"
  end
  language "it" do
    sha256 "17707853c01f21a97e1063cd9128e0782292fddd68396ada80a7ab15bc9370dd"
    "it"
  end
  language "ja" do
    sha256 "cd8aefb7aae3bbdd4f616e06ddd03d8fa1e151622ab6bc61d2568724303b09d5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a3ec5991b94e0a4260adb84628dd7c17d78c87489a447c1a08958672659aa1e3"
    "ko"
  end
  language "nl" do
    sha256 "ec31b746c230aebe1bbed197f2ef4f7fc60e4cf5d75cb399246d99fd66abd322"
    "nl"
  end
  language "pt-BR" do
    sha256 "2e2d93d1e8d249d829fc3439573b1970a56a83feb1980ed3ccb3c8e2c52c9553"
    "pt-BR"
  end
  language "ru" do
    sha256 "df2d465cab9e352d7254539d0b1f4348e246ed764e09f40548fc40b1348eb5bb"
    "ru"
  end
  language "uk" do
    sha256 "864f5a91c9652f39432f46a23b5eff110da3e7ace756947742bd3cec3608a795"
    "uk"
  end
  language "zh-TW" do
    sha256 "7c22a9f405fafc6ae95f21e34b5c610d8df5583513f940850bf2e3107a877240"
    "zh-TW"
  end
  language "zh" do
    sha256 "015db3d64e24ec3589142efacffa029d014cc2c8996c47b98ce2e87610bebcdf"
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
