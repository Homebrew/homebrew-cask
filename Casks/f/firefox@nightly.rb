cask "firefox@nightly" do
  version "162.0a1,2026-11-18-21-53-16"

  language "ca" do
    sha256 "4a1faa4d3d6c32d8f9c9e1f00b6735a2ebe54f7c623dad5f35f64d4d1b21f59f"
    "ca"
  end
  language "cs" do
    sha256 "972c57a66f08d21385869678f6185e3d0e4c22130058bbdbdc50231083a489fa"
    "cs"
  end
  language "de" do
    sha256 "d225a8c15a2d12ac7e38751df65113629fd424940817aee74233d329584741a7"
    "de"
  end
  language "en-CA" do
    sha256 "f13fd8f677f16bd96ef057b0cbee07a5a4baa828b05da652c3eb803815dd10ff"
    "en-CA"
  end
  language "en-GB" do
    sha256 "934adb5eca1f1e91a5302c56960e35fd69ad5a6d2f19faaf288f8c09e652f3dc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cad74ce76ba92c662a54abeceadb31e7675b7295d1c729a0db2fcbef57c0e61a"
    "en-US"
  end
  language "es" do
    sha256 "3239edd58ab4fdb7f22d684c902add0961452cd8d3ae75c5d8716f5525bca0d3"
    "es-ES"
  end
  language "fr" do
    sha256 "21ec65b57263e37dccb431a295dd233e07c70942100202123bc0f82b513c3f86"
    "fr"
  end
  language "it" do
    sha256 "3b83094524c99ce3ceb3019078a4955e24e141723a5745d0e166670ed649d48f"
    "it"
  end
  language "ja" do
    sha256 "23de10fc64918622a3ff298210c91039f75fc86704ea631d7b0ebd3931a21864"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "174f9694bd062a87c351af9bc301190a63303c140ba18fb002fec41d5283e459"
    "ko"
  end
  language "nl" do
    sha256 "932d0951e444c14e49dafbb0ec57a41000c4fcead191bfc31f9bafad0a71dd92"
    "nl"
  end
  language "pt-BR" do
    sha256 "d2305b590f29b39a87bb1153b800cfbcc0e33538ab2bd4318812fc361dbb3288"
    "pt-BR"
  end
  language "ru" do
    sha256 "dca716c4f2253cade707ed7e9252d4de441f9fbc7bfd926a0f39e47d23d3a7f0"
    "ru"
  end
  language "uk" do
    sha256 "d83cd0228c6f752efc091394fd569d8eff6a1894c0c5841b47fc776e85f36e87"
    "uk"
  end
  language "zh-TW" do
    sha256 "4c92b76a1e65a178da53b0e88a38e6e16da6a0e9703ff4388697f2ad7ee1e57c"
    "zh-TW"
  end
  language "zh" do
    sha256 "c553206f9a7ae5c9940146048f6906aaaf2e7c26b3c1bbb54f3b37acc514761e"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
