cask "firefox@nightly" do
  version "153.0a1,2026-05-21-21-15-59"

  language "ca" do
    sha256 "da36dd7be9ce164a3b85e556484c5ac4ad475704962f3429075c595f57eadd06"
    "ca"
  end
  language "cs" do
    sha256 "e91671e7669143eeb0176c7d06583f3ad714366698817c57fa48ac2063c47907"
    "cs"
  end
  language "de" do
    sha256 "e1a30c1ac446a6563ebadcc641ce1679b9aff3cd3100b70e12cf68ef210dd3e6"
    "de"
  end
  language "en-CA" do
    sha256 "33b5b22e9f9a198bbea64dd17a9c9813499e9918fcfb11bda8c30e71d8375890"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d8a326d8dc75ee5a1080661de46d0e90f117dd75977a693067be2ae533eb6da4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e47d17e3bc93bf6d3c442ff088f9a8327f440673ce1e848fae90239bec16c79d"
    "en-US"
  end
  language "es" do
    sha256 "6c9628a8d084b5e2c0cdae90cf304312beaf79486cacbef9597ce6d33e951162"
    "es-ES"
  end
  language "fr" do
    sha256 "b42b00c9c4d61a4c9bf39e0a9c35d8ecb0b0197ff89853abbdbd041a69986514"
    "fr"
  end
  language "it" do
    sha256 "3a5be4c670aa369898c0985519a9c3aab920cd664917820e7d4d2fec9b4d4630"
    "it"
  end
  language "ja" do
    sha256 "93dc9940f0575f4f9ce52912048ce556f4a09b8d505b79088fd50195a3acfc0a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "68bb4ac7d9cb875866761264457aa9ca2738183ff5ddf0f1215b50aee4c216dc"
    "ko"
  end
  language "nl" do
    sha256 "a3288babf947526921d03139495a65db9808d8dc8a84776d154fb7ab637b6d33"
    "nl"
  end
  language "pt-BR" do
    sha256 "1523a8c37b38854eaa491991c2202e3d20872c661ac1f2299e6b6075344bf362"
    "pt-BR"
  end
  language "ru" do
    sha256 "e3178bb14b9ab1d02e742a4376efb864dde8b73ae1ee408b38f47f52b9513e8b"
    "ru"
  end
  language "uk" do
    sha256 "5f4b5f401b5bf3f76c8e135cf41188508154d9f364c537dc5f0cbc2e745c91c6"
    "uk"
  end
  language "zh-TW" do
    sha256 "1554118ac033026e6ff440ad300505f2b6528c577fa0eee34f32ece8e0608605"
    "zh-TW"
  end
  language "zh" do
    sha256 "928d8f1c070901e07326b2e3e9809442d68996259aa57dd88d28135b57129e80"
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
