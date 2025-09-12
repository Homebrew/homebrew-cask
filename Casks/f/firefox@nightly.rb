cask "firefox@nightly" do
  version "144.0a1,2025-09-12-09-20-29"

  language "ca" do
    sha256 "a29892855d3929da8f538091aa41ecf5a6d113df3e7875da8414b2c7f31b4724"
    "ca"
  end
  language "cs" do
    sha256 "86f4f2191d0c73ca8bb17be4f2964b4dd0fb70d9b27170ad59677488259a1aac"
    "cs"
  end
  language "de" do
    sha256 "cc5117dfc0b50e5f1c5d41648431d9c88282943f74de9be9bf2514a8afbfa329"
    "de"
  end
  language "en-CA" do
    sha256 "017c179a559e3e32e3de64df8d36a6396b005c4fe088d492e2655dc916d465ad"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d5870ae4033c34149d0e54475404ac7bc397a5bc40c9c4741b1bc71637155348"
    "en-GB"
  end
  language "en", default: true do
    sha256 "85779eef970ae0a451870732a0f1b7ef9b580e0ac21f0ddbcaf16e9d8f7a0cf0"
    "en-US"
  end
  language "es" do
    sha256 "7efe4bb909607e782f1323c05e8c4e8054f37a08fe0049eec669965199f14622"
    "es-ES"
  end
  language "fr" do
    sha256 "27f66955ce821bac33a8e3abf5e1e4adff8c70bb02f3bb1ec8d06df9d8da6d73"
    "fr"
  end
  language "it" do
    sha256 "990c309790bb618619124965150826850241586c0c8330a69bd137ac7061124f"
    "it"
  end
  language "ja" do
    sha256 "437807874d4c6bfde4642a6f81049c43e94dd8d6504549722eb5e7ed6b7f207e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "834e69185af83ee75f533fd9ef33c0c83379a117a2832ed13aa94ce58c1806b7"
    "ko"
  end
  language "nl" do
    sha256 "c9e24c974de9d92b714b07eb77f98a528c20420cf871cd18f6e58244163d4d2c"
    "nl"
  end
  language "pt-BR" do
    sha256 "42a3422db1ae37b2ffd989ade9a00b605923f09704ee2d398c03ebc472bdb9a9"
    "pt-BR"
  end
  language "ru" do
    sha256 "74d529060c008d232fa96c13319655e84d2cae15144e5dc4b4ebf0a8ce2a6719"
    "ru"
  end
  language "uk" do
    sha256 "0b633f06eb58eef7931dea1985e1cbd8217f87a17b904bcf23ce893a5f7a0d3f"
    "uk"
  end
  language "zh-TW" do
    sha256 "3dc77c6acd3189f070e9349aac8dcddfa0fdf4840586a292f10cba4c753361fa"
    "zh-TW"
  end
  language "zh" do
    sha256 "44adfa5d3bc5183b0dade0c8020933cb897e7265ebe28a4ec712b9fba478ae1f"
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
