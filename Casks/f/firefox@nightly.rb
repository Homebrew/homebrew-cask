cask "firefox@nightly" do
  version "143.0a1,2025-08-15-21-07-59"

  language "ca" do
    sha256 "0ad042860b25790551e45a2cb94684d28bb5afefa624c8c05d8d6bc6a8824b16"
    "ca"
  end
  language "cs" do
    sha256 "b948e445ab0034a8c8168048dd7cb08114ae554156b431651c24803a7ba47880"
    "cs"
  end
  language "de" do
    sha256 "843345e30277d4398ded9aa07ce99ed85c7e9141a96eb9b1a23ca5dc02317522"
    "de"
  end
  language "en-CA" do
    sha256 "d1848245ef4eb163f849e26afa998396b08fe148225b726eb8a9766c92f882f3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6fcb930a6d590812f70ee65400b892b047c1b5eb218e667acdca491c577301b7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "11e4c30ce48a5fef551a2cbbd25a36c6581bfeda98b7d271b917da40b223fe8b"
    "en-US"
  end
  language "es" do
    sha256 "acd931c48c1ac2e52ef78c80291c33f6f220f984275c787117eea5e14d180283"
    "es-ES"
  end
  language "fr" do
    sha256 "ef87b07d71ee81c0bb1c7f207054d02728a908fe3919c0c4f882eecf74e4f444"
    "fr"
  end
  language "it" do
    sha256 "5a849fa5d12542b7aa6d0b71d8dad88d12bb023c20fb7c2a5ffbb9542014096a"
    "it"
  end
  language "ja" do
    sha256 "6829be44b775349ff76805cb413474fb12c8ab5e7a707d70671e92302e12d883"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3107596eb444f4bd1f8aa5faad467672b2afb0d47907c4f72461f5ce0568cc63"
    "ko"
  end
  language "nl" do
    sha256 "cdbc4dfeb6ef5a57a781c5f50172a169f065d2af71441d0eeade3b1496b50336"
    "nl"
  end
  language "pt-BR" do
    sha256 "7a854bcaa91712a8be18c4ec9a169b0b0911679f9c76f27ef4e328a965943b2a"
    "pt-BR"
  end
  language "ru" do
    sha256 "9daaa02b90ed9ebd7fbe73f924bd72bc7df59f9080910e1d48dfdf48f969d949"
    "ru"
  end
  language "uk" do
    sha256 "d07df7c7b37f8341ebc8ee2e09a4d353706704c9c88a63f3e0cc1048e333429c"
    "uk"
  end
  language "zh-TW" do
    sha256 "97e2dacc86b5ac2f4b825f07f6ee3badbf8695a31e1baf7a26c03c225d3bd03c"
    "zh-TW"
  end
  language "zh" do
    sha256 "8da2673b8dcb4f73d21fbb9698b72e57c04b999699e1d02b2cd418cdf1830904"
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
