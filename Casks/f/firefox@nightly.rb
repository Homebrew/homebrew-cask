cask "firefox@nightly" do
  version "160.0a1,2026-10-22-08-45-08"

  language "ca" do
    sha256 "daf3c8ed067847627cb9111382cd6f5b5f5fab963c2425546ab774452abd7237"
    "ca"
  end
  language "cs" do
    sha256 "9d517911efc0db9d81acda040009a880994baf14c4d969b674ed755241369823"
    "cs"
  end
  language "de" do
    sha256 "c6c3172143423ba1aaf64936821edbc89d7430aaaa1ec132b87d84a429489118"
    "de"
  end
  language "en-CA" do
    sha256 "03d2cdc3ce216a3f2c9b1a3d499519152c9b683f2a7d55a79e5908be641d47ba"
    "en-CA"
  end
  language "en-GB" do
    sha256 "48fc123c02b0c766b9e3b47a433755ef9f8db6e8c75a87f613d881132079c9d5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c46a08c3f7d4e36704206bd75238683598dc93c7c584b8f7965e56fd1275e9af"
    "en-US"
  end
  language "es" do
    sha256 "5e04e7434d7c5be5af2b4d73c9b1dd6e4688065faef3e0bd52ddddcba356e316"
    "es-ES"
  end
  language "fr" do
    sha256 "f4f9ec28c432c00f8e993064fe6e26e623a75c3af5f8b8ae26d7f15b5fe07abc"
    "fr"
  end
  language "it" do
    sha256 "d8e15f687ba3570e8ccc9e15e90377cd0dcfae46d756b4004884ac8600f56ff3"
    "it"
  end
  language "ja" do
    sha256 "e4e4add5479bbe46fb8edc1e2ca2e63a78f8ba3fb39e16a16f92814d475c962b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "53677310427cc94c48a33ef48a0c4838cbae88ab8b30908ce53daccbc323bde9"
    "ko"
  end
  language "nl" do
    sha256 "9b12cdc487d9baece84946f04decf85b399203ee5ce60fb31ceac05135edecd7"
    "nl"
  end
  language "pt-BR" do
    sha256 "e69d7923841a5e2fa0ec60eee45b978fc51b92e86f186b5fa693a85c75d9bd45"
    "pt-BR"
  end
  language "ru" do
    sha256 "10f01706f52a9945895c3228581ddab9e6739714cc9fb07b907014dad3dc0b17"
    "ru"
  end
  language "uk" do
    sha256 "3a7512ff14da3334f5d662b16e6a27a84c715de9646601056ba2f3c8cc05d221"
    "uk"
  end
  language "zh-TW" do
    sha256 "ab537aa38326f0462177d083817f98b258d86ea34ddc03a97d4d18674caabcd1"
    "zh-TW"
  end
  language "zh" do
    sha256 "daff7b4dc9eb468b7a0eb17ae7a49962822a54931b10f3147240392431bf38f5"
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
