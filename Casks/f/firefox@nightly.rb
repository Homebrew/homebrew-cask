cask "firefox@nightly" do
  version "155.0a1,2026-07-30-09-19-50"

  language "ca" do
    sha256 "fa362ccc071b73b62e1d5a5767c257a27d367d561d648c90a06d4df37ffe0c58"
    "ca"
  end
  language "cs" do
    sha256 "550d718b7c0c5b258a1a0a7891dc30f45a55d448deefcee882c22cb29eba9eca"
    "cs"
  end
  language "de" do
    sha256 "57a133c58e8c8fa4aba6df2ff918e4a21f64aa7ae2cde2c3775eb797a3c946a9"
    "de"
  end
  language "en-CA" do
    sha256 "c825d30ab2600bc0f9e24aadc49a4de868f1a6919c9556be431e3ea46a1358be"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9fae608e182cc74dce8e571dbbed646e9750ac9e8b881aee7bf079c149e9b69e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "086c7e47dcdc9a88d9526beda05d0c40f28b515b687b263717cbcf0a6e47c5c6"
    "en-US"
  end
  language "es" do
    sha256 "07c9e6e01faafb7b7dcad5397d83a624a64e067d8f1390c3422243afbe63495b"
    "es-ES"
  end
  language "fr" do
    sha256 "08bb3f1d896c953a61b4ec03846ada86010d086a2cf578c780e4c60da06a0efa"
    "fr"
  end
  language "it" do
    sha256 "bb6f1f3d653acd5ac293f9f90b9a2d5a61ddea015f902e197ece250991eefc44"
    "it"
  end
  language "ja" do
    sha256 "c4875d31e946a53e2768a5d61d0907e87a2f27c29672a66a0a916b82142d67ac"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "70ef9e4de14f6ef0a88f9dbf078235035efa483589dd993c126985b414ffa858"
    "ko"
  end
  language "nl" do
    sha256 "f7e6ddf8fce75729c25a56a015582a57ee7596189eae2b7299513188da7679bf"
    "nl"
  end
  language "pt-BR" do
    sha256 "5c8a381c25588872a4b99efbfcb0d8a1e76e0dd1b8e9c3c33f805d4c7abe7a22"
    "pt-BR"
  end
  language "ru" do
    sha256 "3fdc7df6b1ecc548a95062a7e2c2deb3a49800d9d3b43e67bf691c1311b1e079"
    "ru"
  end
  language "uk" do
    sha256 "7f0ff035c59b10df994329b2b16de774e62255ad3b2fec1f9dfb323d2483eb53"
    "uk"
  end
  language "zh-TW" do
    sha256 "689b34838fc0317f15a76ac803f3f766e759899d2cdd58abae69e90b452cad58"
    "zh-TW"
  end
  language "zh" do
    sha256 "3e6f7ba4d317643df5401d1fee921c02cb7bf29fc08d6cd48448464362ef248f"
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
