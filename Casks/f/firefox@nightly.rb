cask "firefox@nightly" do
  version "154.0a1,2026-06-24-06-32-55"

  language "ca" do
    sha256 "7b78804f988b7b1326a2afe0cc6ba626798a44da36a619b8336fc0f3137f8be4"
    "ca"
  end
  language "cs" do
    sha256 "73b8475aa248bbd49a9db2072c5af1d5a5363f34bc57069e68054b51bb8bb02d"
    "cs"
  end
  language "de" do
    sha256 "8ed60508e6dbc4d1d86015e2a78777d247ea9f5353585d51a3bf98d42353d07a"
    "de"
  end
  language "en-CA" do
    sha256 "53fba52512896c60fdb10c3887c33cc443b3a07810f92abbf903bfc13e93bfe3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cba17f617f364fc67ff948918789a29bbf14deca840a283481416966f05d472f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6cbd5d738828e47167712d840d2d38878314ab0a24b5ad27b8e02a9e5f7a97aa"
    "en-US"
  end
  language "es" do
    sha256 "da778373eec3e085d56d307f05367931f01ff69d590ef976d22a9dd8d7920dd8"
    "es-ES"
  end
  language "fr" do
    sha256 "3a22308278f10a5163ceff69bfa854caaa344e6b393383eeb41ade9f837ca95c"
    "fr"
  end
  language "it" do
    sha256 "7290a35b9d936d23e31b620825041b2ba80147587dc5c73445eb045d26aee700"
    "it"
  end
  language "ja" do
    sha256 "412e9b41864054a4a61ca6710545be24577547cf826fb928cec9e36294e89b20"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b0a1487da0468e457a729e45cf4229f740bf936bfac4933acc1cf23da0ef12b5"
    "ko"
  end
  language "nl" do
    sha256 "ae7019944f01352f9d98fb896eab7ce07b8bed9a53d9251d8526448e41309463"
    "nl"
  end
  language "pt-BR" do
    sha256 "7bb10f716b0a1f61ca4db0aa325a0ccf371585f2115040ca9ded56a0f138d558"
    "pt-BR"
  end
  language "ru" do
    sha256 "4e7a4775b736712fb864175908d717378938e9235a22de8187f0452db8186e74"
    "ru"
  end
  language "uk" do
    sha256 "386a5a089c65969613caf0a6f6a7e2cf07e689c71332c345cdb02cfcd25f5e5c"
    "uk"
  end
  language "zh-TW" do
    sha256 "bfb14dee088329c86357b20d5a93b9faf942e9ab6a20cc053bd12ae381a3a230"
    "zh-TW"
  end
  language "zh" do
    sha256 "e61e3e2db26c7ab1ae1212d60277735a2db6f9daae13193a227e44988e486cab"
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
