cask "firefox@nightly" do
  version "145.0a1,2025-10-11-21-28-38"

  language "ca" do
    sha256 "a19e7406e20f5a55065a39c530273602b34848fff57b65ced444388a7230de67"
    "ca"
  end
  language "cs" do
    sha256 "1bb23ca8865a78fb9cb523b5231d87330a72361495d5de9143be84cff2032b81"
    "cs"
  end
  language "de" do
    sha256 "4388d54646fbf40c2b506a8110698be0bbdf389ec2cde9ca6952874c48e08931"
    "de"
  end
  language "en-CA" do
    sha256 "0be17b0c0dc8315568b6ce504a00dc9c1f53e5ce5c0d527852a661894e923e6f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5d3483750996d3a837197d1894f402c1cce01982dd834232ce51040e5808b3aa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7f3bcc0d019015b8fef30a672d959030a567a582ffdcc2ccf407edb999881f17"
    "en-US"
  end
  language "es" do
    sha256 "503ae09cdf68b24198ddbbd3f53d87d10e56e2a34841dafad217c1b390545738"
    "es-ES"
  end
  language "fr" do
    sha256 "9d1a36c9f85878ae07aabe3a315faa6bbab82dccf5126eb29bdd3ed673e0c5d5"
    "fr"
  end
  language "it" do
    sha256 "1e0ff2357e16189ac588e3df83e42a60c824cef381867df84390fd30daeb4aff"
    "it"
  end
  language "ja" do
    sha256 "c5aa687d5104105b749a566b3e1a6723584e87620f7a0bd143f614cbbbbd77e2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "10a88ecf4cc9c55fddc72282500b18f7b681c9242214c59493f9394078b96ac2"
    "ko"
  end
  language "nl" do
    sha256 "d05207f7fa89401fbd98e232ec6b0532ae93d13dd883983fac824b82a14c4899"
    "nl"
  end
  language "pt-BR" do
    sha256 "6d981f9e1866fd398707410e6906eeb1ad7274a6b12acf4a92754d3db9aca8d9"
    "pt-BR"
  end
  language "ru" do
    sha256 "1a753a77f2eff3c095807c05fa748d2eade128ce5e83e92215cd061de664e876"
    "ru"
  end
  language "uk" do
    sha256 "9cce4fba5ad7755dc671c4ca47da81576d818c58e4cccaa8dde711f12028f8e4"
    "uk"
  end
  language "zh-TW" do
    sha256 "0348f0026bff17f786eacb3380e34803b44007e13404c1eed3be04de25420804"
    "zh-TW"
  end
  language "zh" do
    sha256 "e25dd0ca91b4e4b7f7c4b93904ecf78cd0533bb6d1f42a6538eb4ffb15735481"
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
