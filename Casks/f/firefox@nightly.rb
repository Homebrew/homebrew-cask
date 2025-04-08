cask "firefox@nightly" do
  version "139.0a1,2025-04-07-21-29-17"

  language "ca" do
    sha256 "9eca191f3f0ba029b9ddb9adb142078b949a17d9778be4c259fa5c542199c059"
    "ca"
  end
  language "cs" do
    sha256 "ec123979c6d2bd6f48ab66cc0bda34e6bb1846b71dd3fd57841043de2827e332"
    "cs"
  end
  language "de" do
    sha256 "745360e662ca46200420ea6f108d3773251d9001154705d74519837ecb6c6508"
    "de"
  end
  language "en-CA" do
    sha256 "60b7ab8a5103b67f141f36c689d4603ad6a31e7855902d51bfa80a773a8f07bb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c51461fcbade70542fa7022ff8da91bc7f190894ec64d681a6a407e38073f73a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "44f649f92c6e11e1086828f8a32264592464704ada6e5b745b416edfb5bb7b3b"
    "en-US"
  end
  language "es" do
    sha256 "89fdd2590356ed61f15ec32c8909a0187449f57a54e9965d2151cbfac3f4ae2e"
    "es-ES"
  end
  language "fr" do
    sha256 "d67dad0b466dab915300c6177f2b67fddaeac5cef328913cd53cc3fd2c7e3b76"
    "fr"
  end
  language "it" do
    sha256 "29e8618df1afccfbb9b7e5b2756a8d42bf7c426f517926cedd358c0acf88f853"
    "it"
  end
  language "ja" do
    sha256 "0f4aaf3e9f67d7674117a328aacc197c8a141eb255df2f6e506fcb209aa1f4a7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3bd54ebe3d6b28e38cca278c5e8a9aea1c5823766f50ee03fc60f42ad750713b"
    "ko"
  end
  language "nl" do
    sha256 "366e3794d777bee5a16a8b08a2d93eee66a3d001867d488a257b6818b74a8075"
    "nl"
  end
  language "pt-BR" do
    sha256 "7f8fd76bb95ad2c644c21a8029116fa5d11ab03fc0c009a29066084a6bf76660"
    "pt-BR"
  end
  language "ru" do
    sha256 "9b8ff021802cf960bff83519c38004df0b5a5249204ce6089a8f31fd6267d058"
    "ru"
  end
  language "uk" do
    sha256 "38f35c8f7fe92f958fae2cf9fca90d2117d7a7f7178898a534796456efecfaf3"
    "uk"
  end
  language "zh-TW" do
    sha256 "04286d14f67337f876f6de32641f85f221d6a5b3e2b521e8ba1211cebd75c19f"
    "zh-TW"
  end
  language "zh" do
    sha256 "dde051c8bf2a1e214d79a296c06c18db43d0913f1995c01eaac5f1308b1b825c"
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
