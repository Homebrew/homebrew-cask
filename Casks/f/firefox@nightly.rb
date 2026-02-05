cask "firefox@nightly" do
  version "149.0a1,2026-02-04-21-44-33"

  language "ca" do
    sha256 "552814a2c7841aa5a2aecbe5ab387a498a243c1685f9890e7bd5be4eeea515f3"
    "ca"
  end
  language "cs" do
    sha256 "7816da7101cf626f0c8c7175b94395d84a25ba20a126b25977512c3ea3f550f1"
    "cs"
  end
  language "de" do
    sha256 "260b77710f854f0a9e0af9c93a963415208516eaf2d79a9fa6f6e26792748c01"
    "de"
  end
  language "en-CA" do
    sha256 "2b57c145d750f87a0c4a082fbb73543dd0811732a6ee61ecf4124422781c912b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bf36208401ebd1e2be94d258613096d436c8b09fd30cca658cdc4f36e7c6557b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f4d7bc6ebd445f866b03c2c5d68636a041d72554b57c065360486eb38d8729ee"
    "en-US"
  end
  language "es" do
    sha256 "a9580a86af6c3670dfc43b0c13c6c5d0ea4b739cac419a46d6a15884b6b1b78f"
    "es-ES"
  end
  language "fr" do
    sha256 "6446f6b4a0b3ee7f751c5bcb1b2faff7d1d1205e96a5f4a332f82dc2e5f07b95"
    "fr"
  end
  language "it" do
    sha256 "380e6dfc81ca59f0d005a24d5618964ae89a871f294b9f134ab8674db6c97a4a"
    "it"
  end
  language "ja" do
    sha256 "b44d6fe44cec6a81a8c5e4088eec96c33338c277842183f1cb4128f9c5df41ae"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0d9968318077fb23acc898b7b928cd9f526f1b5f4019b7c7e86f79847d880ca3"
    "ko"
  end
  language "nl" do
    sha256 "ba0894c4ef41e3ba9770e0caef47a0be66d29a47ba8a3af4de0a99f6d157ad20"
    "nl"
  end
  language "pt-BR" do
    sha256 "44b22e31d8797bf5c3ae78570264613c4e3a4efe021ca36fa51074275b697c51"
    "pt-BR"
  end
  language "ru" do
    sha256 "08eeece27b56024a022f089bc8f89f43521d8870514a671e23075e76811cbadc"
    "ru"
  end
  language "uk" do
    sha256 "cf2d4a9807ad196d2d92e367cf2cf397af72ad41f0fa7d071b71f2e4fdebc070"
    "uk"
  end
  language "zh-TW" do
    sha256 "ba704c4e27e6c68b19b31b1190f3eb4de96b7c3278852a172e9d41727d434b3a"
    "zh-TW"
  end
  language "zh" do
    sha256 "e0ac2d227a63a36cda5467e0594731b356b753328319b4022f1cf37e887f3288"
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
