cask "firefox@nightly" do
  version "155.0a1,2026-07-23-20-40-11"

  language "ca" do
    sha256 "b97809f399b283c9f43559cf70f9c44be2a4f8e85d46860343b8ae3a03c853a6"
    "ca"
  end
  language "cs" do
    sha256 "3f4fcd5f421411e87e30f1e7ce4c76507ec73874d55f57cb30846f03f16b9cb9"
    "cs"
  end
  language "de" do
    sha256 "7a68a118005d1902109a4f8e135c3757a9d9aefd23d70bffb3b4e35ee5cad83d"
    "de"
  end
  language "en-CA" do
    sha256 "611738202b8c22b5ddc7ae578c417b846177adb18e3c34ba005f070a0d3771be"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8f05b95db23a88d3e9128047953bf62d0ee28eef280db708b2996a2f6364871c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f46829f006fde482b0149021830d949322d46f803f3310958ea4331266cd436b"
    "en-US"
  end
  language "es" do
    sha256 "ec378ddd824fe928ddaa234902c136af241884163b71774501f2b15114966e2f"
    "es-ES"
  end
  language "fr" do
    sha256 "025780cea2c394bcf6ae7caa9ca2c57f6f40e3be7b3473efbab61cc9eb8259a3"
    "fr"
  end
  language "it" do
    sha256 "08659223eecab68511f06d02f573074d2a1158bc62afe35003df1d0076b3e8b6"
    "it"
  end
  language "ja" do
    sha256 "60537a665e34f69512c1b99a96326df861e4665e89598a7f87dd04614b6923ac"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "70430c3f50d02c41b041ec07f3d188aef0a0e7320eed702c4f4ff55f9a22bf3b"
    "ko"
  end
  language "nl" do
    sha256 "07695a0bc3a1ee17b531892e35f24a481212e3bd803d05cd2df4b7642e07159a"
    "nl"
  end
  language "pt-BR" do
    sha256 "c7aac7e191f296b60359ec826b3552281a9fe278a4ccb5320fd8bb77832fc211"
    "pt-BR"
  end
  language "ru" do
    sha256 "46684ffe262e032b35b0d6bd4596a23ca96ffebe7215226c18a46ca47a6966d8"
    "ru"
  end
  language "uk" do
    sha256 "5af94abd4e61594574e4c563180523de99fc0743af13062281445ece4964c8a3"
    "uk"
  end
  language "zh-TW" do
    sha256 "533a3721e99e831e50fa2a210ed5725c51fd0de0e3d08fe30bc35d28a574d972"
    "zh-TW"
  end
  language "zh" do
    sha256 "df8743020afb18377fdfda66d783ed8e34c255bfc8a80327fef0605528e99ee3"
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
