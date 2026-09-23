cask "firefox@nightly" do
  version "158.0a1,2026-09-22-21-13-42"

  language "ca" do
    sha256 "43819bdbe7702aa9dd21f5230c4534fa5ad58014ed551fb7f485f6c6980d58ff"
    "ca"
  end
  language "cs" do
    sha256 "866e30fcdc3a6823ec0a7a9114a99349d0589cd525df47e6c299e5724a2483ff"
    "cs"
  end
  language "de" do
    sha256 "e3cc0964342951673756f7014852df93e0f6046993be3e59385eb8e1988c1e4f"
    "de"
  end
  language "en-CA" do
    sha256 "60382f127a4228eb191e1da3b1df5124dbf00ebbdfde499d32cba775b0c6f0b5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ff866e0a2e852ace6e8fb6b56c0de4be557a999cdbb0ab2801fdef62dbd2a155"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ddc2f69910f38ffff4b07afd744b56947adecb4bd21f49069f6d66b9ee72262a"
    "en-US"
  end
  language "es" do
    sha256 "17ea5f01011aceb2ccae528a6efe3864d2c04aab59333faa4124d1829e964b43"
    "es-ES"
  end
  language "fr" do
    sha256 "ea6a28168af2f70bef95139628473eb92681956eb18e14575bba1ddc9863ad5d"
    "fr"
  end
  language "it" do
    sha256 "885b206e8162e548aacc7f674509c1669775598d71f01111c9ecc11120139da4"
    "it"
  end
  language "ja" do
    sha256 "c74e3d52e7dd3274cf74a3dead140cafb02523b534627f2a9d0ea97e6ffad763"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fa2e24e936422919e8db1eb24524334bce72fb6c303e78a8a045476980e9a950"
    "ko"
  end
  language "nl" do
    sha256 "329474243e55106917acc5716ec6b38dd05280b83f2e1bbf73855d7c45c1dfb0"
    "nl"
  end
  language "pt-BR" do
    sha256 "9ef9696d105b2c603870ad2ef477c05ac37c426ff35557ac0ef4b2dae9737537"
    "pt-BR"
  end
  language "ru" do
    sha256 "0a5103b5eecdc9b78131996969d50f08b666fab4cdf127e885fa3d64a868dac3"
    "ru"
  end
  language "uk" do
    sha256 "30dc41d09726515e29c8c05035648ada3b482efcbb12821fd96a6b4fdd708db2"
    "uk"
  end
  language "zh-TW" do
    sha256 "f9460b3f0ab777f47a97fba89bccf9b00476fb29c9444e74589923e79ef0f789"
    "zh-TW"
  end
  language "zh" do
    sha256 "92512f816d0d947edb8c6df1debf0622e53e880f7b26deb094144dcc75b90d14"
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
