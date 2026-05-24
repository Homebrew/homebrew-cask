cask "firefox@nightly" do
  version "153.0a1,2026-05-24-00-14-56"

  language "ca" do
    sha256 "1e990500277ce50b72f1cd7b65a1c6e3141b31534eaabba0bea5f75a3bc17edf"
    "ca"
  end
  language "cs" do
    sha256 "c25a193f706c98a3c5eb6f5c67379f674b8cdc1300340f942242e4b52b9742c4"
    "cs"
  end
  language "de" do
    sha256 "ed3169b260e523e911f5d9a9f313c154554b0d6701562a66d358268053a5f1dd"
    "de"
  end
  language "en-CA" do
    sha256 "49139d5688aa8e21b1cf4dba3151480599315c013947fb5055145322d4253a2a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b33bd42346340f04a21f2ce9e1801e02781b955d93bfd4681a3f9c990d9d0f7d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "531ae46943f9594be98804c84fb61e644d5a77f767867337a1e37beb00f66578"
    "en-US"
  end
  language "es" do
    sha256 "eb66cef60474eb3e0b68c03022129f94f71a5a9c5c150f92b58b0072627920fd"
    "es-ES"
  end
  language "fr" do
    sha256 "ddf4f3c42f7c13c2ae9986e251f5a8a2caf0761a7bb9130f77985c8252abd614"
    "fr"
  end
  language "it" do
    sha256 "4b5666800510fdc93b97e38ba66d1168389db7e9f8f39a649ab59009b0af27da"
    "it"
  end
  language "ja" do
    sha256 "2e5740ed9f090bccd65651cde0259d7c39ec58bd736f6a621db583c642d02259"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "22eecf7582cd6d7737e6e1e9a50cf7a4ad425fc64f09d3a6f49e0ca657be9220"
    "ko"
  end
  language "nl" do
    sha256 "c6472d74b15558eeba6036adabbfcbd455eb6f6ede7eb60d4e3d6ade5c3dfba0"
    "nl"
  end
  language "pt-BR" do
    sha256 "b1f6291ea01e85d4d5732e44313abc3b48dc927f5bd195f4c87bfa691092439a"
    "pt-BR"
  end
  language "ru" do
    sha256 "2985023ec0bf995a8ae3cfa9ae881f2235289de84d7ddfa020d7784d8efd4b00"
    "ru"
  end
  language "uk" do
    sha256 "cc58ca3b03028385cae3d2a0622c3971bf9f67b15fc84a57c462f1fdd5643cb9"
    "uk"
  end
  language "zh-TW" do
    sha256 "1e36fcea46986a0435a86b0d13524f3a6cfc967779e38a1833659450aee23770"
    "zh-TW"
  end
  language "zh" do
    sha256 "a9935acaf6bc70e85acb6f1a70f8f1704c0875edaaf8f7b44ea5204ab4325a9a"
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
