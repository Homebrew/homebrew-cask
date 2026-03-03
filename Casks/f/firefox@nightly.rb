cask "firefox@nightly" do
  version "150.0a1,2026-03-02-21-14-16"

  language "ca" do
    sha256 "c9cbe36ce274640424bb2991ea90f648b16a76f0784f375621a7bf2430b63848"
    "ca"
  end
  language "cs" do
    sha256 "67a4ea6c1cd6c72a9bbf9273f43ab18a4f0912693ae12258f6290e5a4547f165"
    "cs"
  end
  language "de" do
    sha256 "a0f5cb62bde450bde8dd18814817bac80a7f53d9a72d02d86aa026c2e5c01549"
    "de"
  end
  language "en-CA" do
    sha256 "4f1a3b34734ebf59046552b616698d2d365c0c571c5d28cf904a4aa750404433"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e1feb0d77557f2b5bcb1cdbc50644522130bc2f078f9321c37409c60f82fffa5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "af9db5676f2d2e7ed962618f19ac4d8e03ff1ee57ec2fb994c3133621eabb5bd"
    "en-US"
  end
  language "es" do
    sha256 "f20fb804ec1bdb0d3e278482a3bc4459cac911623beff61460cdcba35eeeae8e"
    "es-ES"
  end
  language "fr" do
    sha256 "311000be9ec3fd13c4c4364ba10ff9a5d4238309d717d398ac54bd3f72e2937b"
    "fr"
  end
  language "it" do
    sha256 "127250109b03292f8c0987f53e60b9f1880607114ab62e8d2ff75b7b4371be5b"
    "it"
  end
  language "ja" do
    sha256 "f1904e68dc0a481fdb88e06c6b26070904b7f270792fa46364f6264dff20ff82"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "aa07ecda73523dc44a94fa246d976a5d9c349a275243289cfb5c790c03224032"
    "ko"
  end
  language "nl" do
    sha256 "48e4ff6c71c11e5b64e207ed60c6e38d62e44a8cec94fa154af50d0058cc4ae8"
    "nl"
  end
  language "pt-BR" do
    sha256 "f402da1c3b8100b7f18763bd37b83a19e04d4c926340ecd579d686df0bf470a0"
    "pt-BR"
  end
  language "ru" do
    sha256 "29f1158f819e4df42d4cbf33629eee2d31ea1424210b8a478ea6799dff48d78f"
    "ru"
  end
  language "uk" do
    sha256 "56e2e2274aeba1d652049d2751b8309f62c955198bfa5ad8f4f9fe767d8807b5"
    "uk"
  end
  language "zh-TW" do
    sha256 "5d7e1ac52d6e5110959d30bc11897b27659164269385300bb6db25feb5645e29"
    "zh-TW"
  end
  language "zh" do
    sha256 "d810679cf15dfca4fea5c201f44656e4a98eb5560afc653cb06aff3bd22f8dff"
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
