cask "firefox@nightly" do
  version "148.0a1,2025-12-27-09-36-25"

  language "ca" do
    sha256 "c3fb0d19baa0739432a480b97055c19b7b868b1975f2aa4bb0bd319d5261e063"
    "ca"
  end
  language "cs" do
    sha256 "e16ebdf36c5b614e92bcfcc5cd3c95aee2356a378f90b8d3f2060a7f94111f43"
    "cs"
  end
  language "de" do
    sha256 "9ba1bb23206400f536980563aae08daae6b68f640fd3ff2572e2de56a3a2ef04"
    "de"
  end
  language "en-CA" do
    sha256 "17f02b6be06e9e20c6ca54a98cb5c76a6be4c9b0b1d8581b1502513ae3c840e9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f35777693289f0a9f277bd5ed493009bbc8eb81f5feb1df26757d27c0fc87b79"
    "en-GB"
  end
  language "en", default: true do
    sha256 "200d4c502e128cad3c3b2a382255d4f9cf3d7b346df22d36e5619fe799df4c7d"
    "en-US"
  end
  language "es" do
    sha256 "0de8cf69853ab77ebf33eb07cc6d81b64265f99a91e8954481a94f020f1765f9"
    "es-ES"
  end
  language "fr" do
    sha256 "9350d41bed33b2b88a6351d7129ec041d4eee5ab2258d4a1d2cce1ce1a97534e"
    "fr"
  end
  language "it" do
    sha256 "850ddeebb0856f561473ac86045ca9549928b99e98cdb2e25fa3f5c420bc6509"
    "it"
  end
  language "ja" do
    sha256 "9f99df398f35132cf780ec41ff80a6147ebedd95d30c5899ea5cbb5adc16d115"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "216fefd16b4841b1a10f34326249809822e069bccb2d662ea4682231133b5e38"
    "ko"
  end
  language "nl" do
    sha256 "b020365ff75e1df45ef87ef559b808f372bcfbe894114aa530b3f3d51677671d"
    "nl"
  end
  language "pt-BR" do
    sha256 "fd7b91152e64747573a0057e4825b20b6e69f2cc722406c943d6822d978f45f2"
    "pt-BR"
  end
  language "ru" do
    sha256 "71a6948cc5e7bad85604570b49b5247b28227afba7bdd64f81abe0a02f9a3c00"
    "ru"
  end
  language "uk" do
    sha256 "7d6e9a953eae19e02b231d047a902607aadcd1cbea83bf4ec1e73bc7ce9241da"
    "uk"
  end
  language "zh-TW" do
    sha256 "454d229a59f1f58d2af46fc8d3d37dfbe30e9567500be850458380b78fe0fcfa"
    "zh-TW"
  end
  language "zh" do
    sha256 "56c09826d82fa2b3b0c3fc2549d89f87bbca7b8dff5a4ad97bef62ef2c732318"
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
