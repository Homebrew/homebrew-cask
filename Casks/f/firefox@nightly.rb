cask "firefox@nightly" do
  version "145.0a1,2025-10-08-21-21-03"

  language "ca" do
    sha256 "ad59426957a307e0db5cade5e279ae5655f3f319ff0d4fe7442e5fd0bfef8868"
    "ca"
  end
  language "cs" do
    sha256 "a8eff271d60c85279c909738acd60cc731d3fd54cb285d5f99f866304d532c16"
    "cs"
  end
  language "de" do
    sha256 "6224d1b574148daff7c11dcacffb7752d40f338cff9c01a251ce34a01c782382"
    "de"
  end
  language "en-CA" do
    sha256 "22e5115e501c2dfd5cc2e7553886847cf51be9ec7689e9f4fa6ca34497488be2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1310ac82419b10a1ab306ce1b309c52111b697c70a3884d9809909a407bbde67"
    "en-GB"
  end
  language "en", default: true do
    sha256 "718bd3be7c87b157e09168b89cadc70635adabb449638d90e79344d2aebdab18"
    "en-US"
  end
  language "es" do
    sha256 "0812d3284d47507a252f32b8b1b0a5bb157748009807ce37379c4b5298ff55b7"
    "es-ES"
  end
  language "fr" do
    sha256 "552a3558c99261c6d49fe98649b6e955c584f3177661397310ecfa72575f3625"
    "fr"
  end
  language "it" do
    sha256 "abc822373ea9023a7360752730163a3f1ef438f57874212f18329b7dac7c2e86"
    "it"
  end
  language "ja" do
    sha256 "b6404e6c5faef7c1c28a7afb1b36f1e68db30fc93fe6a91e041d64adffd3f19c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "88a8ac105843974a64ee48da0ce493a5cda03988d98191b43b1be78ad5ef512e"
    "ko"
  end
  language "nl" do
    sha256 "240d11d2b9e4961974589a29a8487ff44740c2126cab71ac1da1ac646e3a30b2"
    "nl"
  end
  language "pt-BR" do
    sha256 "7646e3848b692aa729a8cc9366d31e20ed516cf73b412976ded742714064fccc"
    "pt-BR"
  end
  language "ru" do
    sha256 "532ea6a2b1768fbc5f1f14d80c871367516ef11c2044c2b8ea88fc65f80de128"
    "ru"
  end
  language "uk" do
    sha256 "6c13dbf9692bea1f8f224c5a355851cc7cc9be71cffab8c7db28268a8bc6b8ca"
    "uk"
  end
  language "zh-TW" do
    sha256 "f964eaebfdbaabdcb7fb132ca009a2abc5c7c9efc149c8cef19fce5d086d217a"
    "zh-TW"
  end
  language "zh" do
    sha256 "d565f712faef22c259985c62a706eae379541f9d4a8de1031c7ab8d96c038fe8"
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
