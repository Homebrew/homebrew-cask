cask "firefox@nightly" do
  version "144.0a1,2025-08-22-09-40-33"

  language "ca" do
    sha256 "76fd8f64384bc70c96a63650abc38a44077f03733887b7a04ef51701b8f3ec69"
    "ca"
  end
  language "cs" do
    sha256 "e9581616284f48bdf00e5aeb448328a29470abd6cb0e174e8755c02df80c9f49"
    "cs"
  end
  language "de" do
    sha256 "de0c24ef01cef8e29d7820cce560b749e51a82ef89287e4690296d69cf2b4fab"
    "de"
  end
  language "en-CA" do
    sha256 "5c9fda6c4c2008b351c3a2eee5085853489319fff006d91528900b9ff00ff94e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5429406750bc038fb43b6e252c9f8245308738b722a162fe8de95b0490520b57"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2263dff76a2f43faea736ca7c4cc81f85da07bd1543a492432d35fb2c1236718"
    "en-US"
  end
  language "es" do
    sha256 "9a8a341b70323f0a54c5dde7e40a2a39c07a8627d398604298d26bba564cfd5b"
    "es-ES"
  end
  language "fr" do
    sha256 "816464d39380db8456872d1e0bb95cdca3b0809c2abcd63ea97ae2f5265ac4b8"
    "fr"
  end
  language "it" do
    sha256 "765d5811cee9f015e105bbac3c11cc0b701d1422d37acdf4fa0d7bccb118fc40"
    "it"
  end
  language "ja" do
    sha256 "e5429f6cbfb1603c56e95edcca6d94aee075157e53862ab5b0c493c7ab364ad3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "961278193526b20d549265f41f1a67724faed14d10521ff1f7945b9c17321e15"
    "ko"
  end
  language "nl" do
    sha256 "1f6d9f9ae76cd3e26f34446b1f1837612d631de46daa3ab307a7d931df5517ef"
    "nl"
  end
  language "pt-BR" do
    sha256 "def1043e635b64089cec5e97ef111fefaa26ca6043497d7ed1765427b3d82eb7"
    "pt-BR"
  end
  language "ru" do
    sha256 "0c119071f4be2694f62dd1f896b994fae66ee6b616c4ba2e003b39688d48fa68"
    "ru"
  end
  language "uk" do
    sha256 "a1bba525bfe173d3e434e897b1fa95de00672e602dd34c20ec82bda47eed4464"
    "uk"
  end
  language "zh-TW" do
    sha256 "af5f999ec40a532f978ac8bd9cbe4b3064524cb5b792d1186934b34d9ff95fc8"
    "zh-TW"
  end
  language "zh" do
    sha256 "2e5fbc11a394a81f5afd8b2fe763f867ed51752f61a36a49d48e71b2d0963486"
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
