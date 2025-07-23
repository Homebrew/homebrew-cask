cask "firefox@nightly" do
  version "143.0a1,2025-07-23-09-41-41"

  language "ca" do
    sha256 "889610792949dc8050bd012ebf3a0051b6cf47481943dec21d6870208bf62079"
    "ca"
  end
  language "cs" do
    sha256 "6b6750ab0ae3c87f5e59c1bcadd830513e73ed1e8fa6b04688ea6b27136c2757"
    "cs"
  end
  language "de" do
    sha256 "c9047a9c9735a882c42a1d5a59bda21d2b7910ba7802120b5790b1f9b329fd9e"
    "de"
  end
  language "en-CA" do
    sha256 "8b5a2e0cc3229c55780d39c7f83761878bee11524b5c3ce52f999ef6e413994c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "922eafddd1d24148bbe9b3a77cd144d1c2d5eca219a628742dfbee4b6381e253"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4520763bb80424e7c703ff3d3ff7b977ef5e2967b15fc8580d7dd8762142412c"
    "en-US"
  end
  language "es" do
    sha256 "d73fc7d221e6793d2525136e125dc852c20f9990c9059288e2f371da14364f3c"
    "es-ES"
  end
  language "fr" do
    sha256 "0fb5ac59e03cdb48ae83d15881f3bc717804cc93eb2c6401a6c9c53bce31f6ba"
    "fr"
  end
  language "it" do
    sha256 "487d0499eef29f3a952cfa7a689005ce0e13cfa92bc14596f3388ddbf1c73fa2"
    "it"
  end
  language "ja" do
    sha256 "528644f1c0c34678a6efdfb79ebe73a7c427136e3f75284aff40df594fcafc5f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "eb3c13e9b679341ccbe6e264557ae9f66d07d7a3b845574f66d0ad83a3e3f616"
    "ko"
  end
  language "nl" do
    sha256 "3040306a1c85692a486e095731d7e693f68c9ad70eb6e95392d942b472e84dba"
    "nl"
  end
  language "pt-BR" do
    sha256 "b982b965fe84699bcf5491cb04837123d8f2c3c56b40d2bec6e23301bc8422bf"
    "pt-BR"
  end
  language "ru" do
    sha256 "dca4ec2265446a0649a9b803284e5e64d54d2a58cc52e57c3c078df0c219d77a"
    "ru"
  end
  language "uk" do
    sha256 "390e3865b51a51d789e449a486468ccb7e7ee10dfffc788b6987e5933f688ca9"
    "uk"
  end
  language "zh-TW" do
    sha256 "202cc067fca5767891b7680e0071a2aa09492d7d623a23e2278bc7e04e7e0343"
    "zh-TW"
  end
  language "zh" do
    sha256 "8ba4d15d89dccebf9c09d0b2ce20834b3471de924eeca7a72d1d118ba5605b19"
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
