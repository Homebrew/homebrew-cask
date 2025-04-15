cask "firefox@nightly" do
  version "139.0a1,2025-04-14-21-14-52"

  language "ca" do
    sha256 "bcfb61633079975d2573cbac27599c29937c216c1c6616d44c48e6c1fcc41014"
    "ca"
  end
  language "cs" do
    sha256 "2c6490e1b1e8e77dd808c2b48d1616367ff1ff83ca9bd7992cd3c936dd6fcc2e"
    "cs"
  end
  language "de" do
    sha256 "c95b0e6745f70183643ba048b84c7fb7c71281948f8f1c09094493d32539a0a9"
    "de"
  end
  language "en-CA" do
    sha256 "59219536f1d4923696baac9e88d194a6577e234f39d77e1266e4d19cd63315ca"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5b2bd863578eb2d480d60e887aa57e13e36075d44e3d71e6c251f69b62d7e8b0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d21b5ecb892c24cd7cdaae0ca5fcc937f3e4bca92d0ac0bd0ac0360dbefb64f9"
    "en-US"
  end
  language "es" do
    sha256 "c96ff586ebb599ef7cd6f2716b6e70cc65132772a803eb11a030898b748c33ee"
    "es-ES"
  end
  language "fr" do
    sha256 "04dd8fe2390cb788f83816068e5fa3ba0c24c418a24f2f2dc4b791e72d66293c"
    "fr"
  end
  language "it" do
    sha256 "d3a0284535d3f2ee11d472cc459b70c6970b18c581a44e454c0b36c450c0e51d"
    "it"
  end
  language "ja" do
    sha256 "5c4cc225072e9f8d4adc40081e5f8d7c395f0f8adf886cdc4cb8ecb122786c4d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "75106f18e915bf89176f2895e5d50c549473ed54d92d424b8a7b910c2d7faa45"
    "ko"
  end
  language "nl" do
    sha256 "ed5474ef0402f56e4baaf7db6e9627b23c83ba33420a6c1e2b2aec33edbe7359"
    "nl"
  end
  language "pt-BR" do
    sha256 "840a4ed311fe2a072299845a3d9c2ee47ac3f79fc0a6244b285d789801faee31"
    "pt-BR"
  end
  language "ru" do
    sha256 "be40e8235011469a9472bcb7321864790b92ba1cc8ee9e4815891d5c296a12e7"
    "ru"
  end
  language "uk" do
    sha256 "b16648a78f5a863ffa48445f49b5988f820beb1e49131e0ad5974c493dae4fdc"
    "uk"
  end
  language "zh-TW" do
    sha256 "9b37f42dd228799cf7c825548ace31dfbb6210b0c92b6d09ca6a08b9a902fb79"
    "zh-TW"
  end
  language "zh" do
    sha256 "677237e820f8c03fd86039beae02df169d5f92ee03c1aa71666d92801309eae7"
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
