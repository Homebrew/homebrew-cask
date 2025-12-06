cask "firefox@nightly" do
  version "147.0a1,2025-12-06-09-23-47"

  language "ca" do
    sha256 "f27eedb05cc04a5b332060505494d5fa2e93426a43970eff083e05daa37b28bf"
    "ca"
  end
  language "cs" do
    sha256 "a2955c9905d528696ea64f573d50bbae63fb7dd0354c95572209ef9901496ed3"
    "cs"
  end
  language "de" do
    sha256 "6c955b908e5a3c3fbb4bfa7ac9f2a8d1700f326fca231be0289f556f259043d1"
    "de"
  end
  language "en-CA" do
    sha256 "1df674cbb0807cd69c0140a1bbb7125007c270b10cecbd41fdc20f683f2b509c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7d3eeb5f8330a39556d741fca79440415abed5adb0d6d1740f4bd8ee412e5d0b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "182f7f8eea502066f8235898afcf22662aed9e398cef7b78d2bcf2c860151052"
    "en-US"
  end
  language "es" do
    sha256 "d8e649105eca88f4c78f9f8b41462ed5e91611fc2877bf9c029e7083da4259fc"
    "es-ES"
  end
  language "fr" do
    sha256 "4cf48f089b2b6bf6b7a7c07037a269cfea3927eda955bcb886b2d9d93f325530"
    "fr"
  end
  language "it" do
    sha256 "8726cfc9e3ee3ed94af4a6d9a6d45d4f6b865bbe8f881a2a18ed0da83aa37dc7"
    "it"
  end
  language "ja" do
    sha256 "29f0789e9fa4d83381e6d56a8202ae329410d83733e1570a541c54b857da1b03"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "925c29ea2a0a7e4ba17f38be59309205ba4ea530569b84b089658c11546bb538"
    "ko"
  end
  language "nl" do
    sha256 "64a1788fc95397893d5082368693b756000f35adf48f0e36e1cc305b9657c05a"
    "nl"
  end
  language "pt-BR" do
    sha256 "a50554b29d929d44587b498726f724002921bfdbab7a6a846c1d9764fb99162d"
    "pt-BR"
  end
  language "ru" do
    sha256 "7aa93b2c02c3ddcb1af2f6245bb46cbafc10c35a1cb939ed89a5f645d8aa081c"
    "ru"
  end
  language "uk" do
    sha256 "4439a827190d434fbfa0fa569e0227454a1bd6d0e9db96c91dddf3b3be7757f0"
    "uk"
  end
  language "zh-TW" do
    sha256 "c45cb47be910d7c9f6df4234fc8b9a513da24c3b46c185c872fe69d9ef9dfc32"
    "zh-TW"
  end
  language "zh" do
    sha256 "68c808f9278ce63360c0918839c48bafbd395d5a22daa4ce45ab91e73db5baaa"
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
