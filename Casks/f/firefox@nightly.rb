cask "firefox@nightly" do
  version "155.0a1,2026-07-24-21-53-55"

  language "ca" do
    sha256 "b81f87b177672c3a9667399a8167abee9a642f40d5ac41f8038e76dd9d1c9905"
    "ca"
  end
  language "cs" do
    sha256 "36bafc1695fa6c4329fc1eaa3e312415dfaba56b39b00943c354b2cced1cfda0"
    "cs"
  end
  language "de" do
    sha256 "521d7aaf3e893a13736e3d225c47a842423b284d8f8b3b18d00434aae6c7d68a"
    "de"
  end
  language "en-CA" do
    sha256 "f064e28fab21e84c62e40ceeac0b37e9033d26a720dd0b3a471a441696fa30e3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "375fa68996bb6d053f9489b982c99b88d89f1162db7002d08668dfe963081e1e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "375d006673fe4b83536609695f48bae5e86e26cce709846ee7e2dd809e0bb7f3"
    "en-US"
  end
  language "es" do
    sha256 "e584ca5a89c971e4819f8f6d2324efe5963dc965867693bf699ec59be948309e"
    "es-ES"
  end
  language "fr" do
    sha256 "51564b46eebe18d780e2221f50f0769ce70ca97ae508cb2ca37ac8899f94e14e"
    "fr"
  end
  language "it" do
    sha256 "8ad78932807e2ae11d67c929813143fe531821c4f4ed9f1a7e87fe2a0cf85f33"
    "it"
  end
  language "ja" do
    sha256 "891aefd7e481696becd49bfa2d28d34a9a9edcc3174336afaf55d36a545c961f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "08c6d3b90b8dcbd445da577ddc260ca44fe9643422a9807494041a442ee1ca7d"
    "ko"
  end
  language "nl" do
    sha256 "ecb2b497d8b64613bda22b31cfc92d58790288988d08a3496b4f8ceddeedde9c"
    "nl"
  end
  language "pt-BR" do
    sha256 "b2629103eb82ef82fcfd7bdb91eb1cd803c40f8383fcc8a51429fada06338816"
    "pt-BR"
  end
  language "ru" do
    sha256 "8feb9fef6e5db8574dd47b55ff76b350655a4d9a33aaff194e259c71ba69c86c"
    "ru"
  end
  language "uk" do
    sha256 "a9affe48942a9a6858ab074a3274a63eb30c8adad2c1f57b17bb093ebe21e97e"
    "uk"
  end
  language "zh-TW" do
    sha256 "f4b24d0da9671e74f6318650797596d0b81653da2e6b75cdfd2a24af73f0c63d"
    "zh-TW"
  end
  language "zh" do
    sha256 "757cfe594507fbdf3d105d3452616707d97c0d14634a99d186bb3741e072cf53"
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
