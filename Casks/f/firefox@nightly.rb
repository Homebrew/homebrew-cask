cask "firefox@nightly" do
  version "153.0a1,2026-05-21-09-40-38"

  language "ca" do
    sha256 "a40a4ce8f43874d186dd314ef57ff46deefb657dacb3895003b69c6fa9cd97de"
    "ca"
  end
  language "cs" do
    sha256 "dbe17b3b95782c15a83a0149fc896d804b4394cd0352a3acadc821df158b12b0"
    "cs"
  end
  language "de" do
    sha256 "722ba1946eafc9019e01af3c9937a773d8346507f0fcf5ba6fd4c25aa35504bb"
    "de"
  end
  language "en-CA" do
    sha256 "423acaa15e1f3dff26e040b1c28f6332078cc19f6a53e0c83dce2344f5b6d012"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ded6688f4677a4f270b3b6f2cd2bd15e00821c03dcc513df4fe94cb8d9415c29"
    "en-GB"
  end
  language "en", default: true do
    sha256 "32f62a8d66367552809d81d22ed2f1fc01f5e5b535d57c6e400cd6bd0d5dd593"
    "en-US"
  end
  language "es" do
    sha256 "508b9f7eca1b16f14e4c6aea753ec1fa2a5ad47dfd03b7d2c197b603fe82bd53"
    "es-ES"
  end
  language "fr" do
    sha256 "7e626b8469616d71a18fa058655e82a0c7be85cfd800462f505007f40acca7e0"
    "fr"
  end
  language "it" do
    sha256 "abb36e9af2be892662e4806c4537194f5df97b01bc2e7c13846c41738498b50e"
    "it"
  end
  language "ja" do
    sha256 "94736ee858843ca2e68a1fd1ee03192e62ec66f1eae1b07d267f2f25eb5259b4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "35419108d2f1dc3bd5d1ada39dc6c0a13dbec25b0c735ed16508d98d78c1e210"
    "ko"
  end
  language "nl" do
    sha256 "5fbcc4d36a194f6fbb2ac498ed84cd4dd8cd444ef009f05e89dcf21b19e09328"
    "nl"
  end
  language "pt-BR" do
    sha256 "276b0c73308038b9bbe9b0ea043e64d3202a0a1df4c9c0f8126da21f32a58667"
    "pt-BR"
  end
  language "ru" do
    sha256 "ab68fd5172bf264685acc1cbbb5f2b1e78cf453a3e91c9f71d95bbfb4dfff0a4"
    "ru"
  end
  language "uk" do
    sha256 "ae12c0da4464d584471ebdd5bad4a14cb1b112921c70f389bbd3b201ddd91682"
    "uk"
  end
  language "zh-TW" do
    sha256 "1b274c9ab85890bdc88bef9522f870f9f07cb20922c337240b18ba3c2e1f6cd5"
    "zh-TW"
  end
  language "zh" do
    sha256 "5d0537a074c2c0dc1d63e7ea532be1c9389dcc7d25c625a8da868b5a19cf3333"
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
