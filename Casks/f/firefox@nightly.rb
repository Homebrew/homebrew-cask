cask "firefox@nightly" do
  version "143.0a1,2025-07-25-22-54-59"

  language "ca" do
    sha256 "6ea3fecdbefeb233f10759d6992e1536761b9c53670de3b43dcb3d53113d32b1"
    "ca"
  end
  language "cs" do
    sha256 "873b976d31cc74c2dbe380b8a81215f780366f5da36ae359651e9005047f3bfb"
    "cs"
  end
  language "de" do
    sha256 "2d72b9de12c8003b861b72541e1bd80e468f2e72a05a6242c65e20baca20a91c"
    "de"
  end
  language "en-CA" do
    sha256 "71977c39107c1fa03a15cc4bc5ebe52a0325be40c53da88e1200d2d2670aaf13"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ddbda8098e03655e6be23382d0a773a7fe3b7c0645ac89457f18008ba494d9af"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7a6b93219dca7191fcacd0846aeefef774fc73413fd8890fc7de33b0e6c46a0b"
    "en-US"
  end
  language "es" do
    sha256 "662c65e206c0553d4d5fde44f72d0cb6054f5d579fe3d2ea306b38ad977213db"
    "es-ES"
  end
  language "fr" do
    sha256 "d8e85c6bc75ab6471ad400c469364ea9843f4056361bbfc9c103b0ae618e13fa"
    "fr"
  end
  language "it" do
    sha256 "a6dc4fd5c95da3e10c2d2d63fbd4d4dd6241a16fb912abbb91abd3bd009a9b3e"
    "it"
  end
  language "ja" do
    sha256 "2669ce4f672d1af9fcc069bb42772cd9613a22df1ee4a1736e059e96738a18c8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ac2a7a4aa73f46d078ec3398da0f83710e885913a8b0f5d9b32912d641010f31"
    "ko"
  end
  language "nl" do
    sha256 "c0f586b9801c88038269f35bcc08fe1e6a8d8549a7f8cf338f608a37a745dc7c"
    "nl"
  end
  language "pt-BR" do
    sha256 "f053b9a48d13fd6a312b114b719ff45791fef89e2b06f368260aa26a18d46316"
    "pt-BR"
  end
  language "ru" do
    sha256 "f7daa867e21aa3ed220851b1f3260155f0c2eabb20104b642e47022c6ce301f3"
    "ru"
  end
  language "uk" do
    sha256 "37d48f762369561a2f954b1f00bd4c89dff6c60854a280797c84e249d6b41525"
    "uk"
  end
  language "zh-TW" do
    sha256 "654ca27780a7813e558c36e6fe2dae4dfd18c19c969769bdf1976c1b588ef273"
    "zh-TW"
  end
  language "zh" do
    sha256 "b01dfd0e1f85feed661289adbc76996b884ffedc37e4bc0402d1e120e704d677"
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
