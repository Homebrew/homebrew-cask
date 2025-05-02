cask "firefox@nightly" do
  version "140.0a1,2025-05-02-02-16-50"

  language "ca" do
    sha256 "220de4b7e1213d94b1915060020cdf43a4923cdce7dd7f61ce503ecb5d191691"
    "ca"
  end
  language "cs" do
    sha256 "2c98b561eb6590fa909f0fef27255a18a673459b14acda91761d318464985364"
    "cs"
  end
  language "de" do
    sha256 "6616fe20c06eac691c2ebf4ffb76f370389ad45fc77c118b22988078343006d2"
    "de"
  end
  language "en-CA" do
    sha256 "cda9ab19c531e6dbedf6358ce4a9468d5e3bc73282ea47ec1dfb859fc9074c36"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ae1e417ab477e7a5e4fabf7e1740210453074e5b03b1ff4cb04bf64e01c17db3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3a2b0ab4936d99c11f2ed74b54c08b1994fa5a748ed13a6a44bb7a0a6bc78a06"
    "en-US"
  end
  language "es" do
    sha256 "1a357d053121b4413c5224b3ded79e13ea716668c8cae2b8a68aeb2b58315ea5"
    "es-ES"
  end
  language "fr" do
    sha256 "7f5332bd2afe7c93b566d7c3b333d9f39e6d33c1cf62e15439f55b8f746e1a5c"
    "fr"
  end
  language "it" do
    sha256 "44ab81624d112a7229deec36244b118c4163f5907a628ce22d48b906c99edccf"
    "it"
  end
  language "ja" do
    sha256 "11b207b2a104c08471fe7b5b940d7c029ad32cfb718d3806aa8449f0c2eeb458"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a2ba7f85fd0360b293befd6c54a7d5868f5c25845fd016df1fe9499d79778c33"
    "ko"
  end
  language "nl" do
    sha256 "b5f1faa123080560fd676b7c4672e1e0c5daba61fffeffb90f54dd77666fc050"
    "nl"
  end
  language "pt-BR" do
    sha256 "9ef19c03794ccfaf66a62fb44e1f4edcce391c6bb0116a668cbf82dc56f9c3d1"
    "pt-BR"
  end
  language "ru" do
    sha256 "2214989e683cf064d820f9850073b8ed6f3b88822087e6f2cd900e299610a231"
    "ru"
  end
  language "uk" do
    sha256 "f3a5cc482910d2eb9b79a7be2d8b7115a46434553ad815d44e8cb593aabf1b4e"
    "uk"
  end
  language "zh-TW" do
    sha256 "cc0447647b53f18c04464378d890466852eee561f59354181a6b1faa4dd5874d"
    "zh-TW"
  end
  language "zh" do
    sha256 "9ca8eed457da02c22d45e9520f4e154f5a6e64dce0dd10e36985212047cdc84f"
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
