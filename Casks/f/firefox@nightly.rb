cask "firefox@nightly" do
  version "151.0a1,2026-04-07-13-15-19"

  language "ca" do
    sha256 "37a0714c727336d3f37b11c439f3d4bb76a286ee0587bc64e77f9c8d5a920513"
    "ca"
  end
  language "cs" do
    sha256 "4d71a100bbefb35d9919a8137f9aa08a0f705f10d73020cbb72e2291d634fc4a"
    "cs"
  end
  language "de" do
    sha256 "e08c95666b9bfdb5ab223c1dc88a4d6f4b24582921e7e902f04efc809263f171"
    "de"
  end
  language "en-CA" do
    sha256 "9c7e7e403c096e2e16a5eb9b8f8688bea048daeaf54b2f46aef5f5d05eddd671"
    "en-CA"
  end
  language "en-GB" do
    sha256 "589d8a54032637f10da4979d57a8485b6279bb4c42554dcea7d163c4c0303147"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ab25dcaa6a96276fc3fa69886c3fdb4b7520417eb562fbe212bf88f42dd62fb6"
    "en-US"
  end
  language "es" do
    sha256 "3a992370f8a092b09e0b5986aa5e09a344643bbadb7fff10d05f27bfde94e191"
    "es-ES"
  end
  language "fr" do
    sha256 "19cc05fe42da85634404bd57cc13a59f04ad5aa9b1e78539d0d5f392eebb42f2"
    "fr"
  end
  language "it" do
    sha256 "7e6392dd1feda8d15a2bd92f5c646230d4970cae32b6106b3e4c754564ebe8eb"
    "it"
  end
  language "ja" do
    sha256 "2cd30b2a0ef29fe2190734ef066ce21fe40d4fea83d2d8d37a97636efc499540"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0d82357204cf8ac91960ed634fae4b1c5a9d1efae7854dbcfe4bfdc1d0e959cf"
    "ko"
  end
  language "nl" do
    sha256 "7285f54e39e38df0e2ad1d26d24df154bbd8c659471c30e4812b1ea0dfd2e611"
    "nl"
  end
  language "pt-BR" do
    sha256 "12f2bf7312066d9adeed11666a3c134b7f989f5926c4b22fa14184c9c5906aa3"
    "pt-BR"
  end
  language "ru" do
    sha256 "b7b2b2e0dca7a93adb7bbc0be96ad8dd92b36f1671d0b6391c4884d7994a0cc7"
    "ru"
  end
  language "uk" do
    sha256 "beaa6947ae38265f9bcb285f68a38eaeee6117c8dfb79f77cfb7c5c21caf18c8"
    "uk"
  end
  language "zh-TW" do
    sha256 "787c1c4620f4e00e91fe5d5dcbc3f3bd8703183b02939f790d5cd7ec1349f608"
    "zh-TW"
  end
  language "zh" do
    sha256 "34d21c54bf63bf76196b967a90a671dc5764cd57f22225bc7d497c8f7677fa07"
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
