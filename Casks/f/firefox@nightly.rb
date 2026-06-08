cask "firefox@nightly" do
  version "153.0a1,2026-06-07-21-20-12"

  language "ca" do
    sha256 "f798174170fbd08d565e78daedbf5f3a1bbb841b06f5ce184fb390b1e4f9705f"
    "ca"
  end
  language "cs" do
    sha256 "b9d3bc8756bab081a5a46e665c873da9d8010d58272e12e3fcfff119338666ab"
    "cs"
  end
  language "de" do
    sha256 "63884bf1098c2bc68eda4db8708c459f86a621d3bb9629b1f98f037bdd81f2fa"
    "de"
  end
  language "en-CA" do
    sha256 "2e1491e16f5e360ca7414012a6be65e4facb9bdb3a4b74953fd40c4cb96857b3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "440ed1f1d6d89a1991e6b3642abac7aec86c2435bc92e90b535b01033c0d26fb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d50726c722941cc4fd0c486fb1966428c30e4f4e1d55f5939a706d14cc09ba46"
    "en-US"
  end
  language "es" do
    sha256 "bf38532f393f4c441b0aa85b571c6e84941f4aad8b9cd43d19429b1af80134d8"
    "es-ES"
  end
  language "fr" do
    sha256 "e945d57bae6684d09aca712b5efab8f0127015ef7b5defe099da59e975936203"
    "fr"
  end
  language "it" do
    sha256 "5313c3ea214ab8afd9d7325a13041fb96869b9411393322fd953c2b2d685b0bc"
    "it"
  end
  language "ja" do
    sha256 "1b033b4dd4f56f39b04127561cf50b68351f44ed5f15fa7364e094f97b072ff0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5f39003cb8b87a958557241bb8e07cf5a3e4e87fd3c73639c6dfe91eec1fb5e8"
    "ko"
  end
  language "nl" do
    sha256 "1aa74adc14300b8d7ca03dbb67009afffcfb755862edf0f99167f76cfeac5878"
    "nl"
  end
  language "pt-BR" do
    sha256 "949552303dd7b850cec74cf90b6ed4b93dfef8443a6cdff3cbeee29575ae9bda"
    "pt-BR"
  end
  language "ru" do
    sha256 "bb83aadf63c3f8ef1e1114c0fceac7d8df31e86bc10889164745e923507fefd6"
    "ru"
  end
  language "uk" do
    sha256 "8c77879e6ecbf655f407a1334d509eba8068fcaa0835c2072f0ad609bf52b96a"
    "uk"
  end
  language "zh-TW" do
    sha256 "72c4d8ba55e7ac7c1c9357fde64e9d59f529d2810608324b1b96cbaa242825bf"
    "zh-TW"
  end
  language "zh" do
    sha256 "f5fbf63d2875469dc2bd42add883492b43c8330d9beeaa6f905e92441d31de34"
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
