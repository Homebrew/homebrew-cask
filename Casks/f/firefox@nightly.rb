cask "firefox@nightly" do
  version "142.0a1,2025-07-04-21-20-32"

  language "ca" do
    sha256 "43ed0457b0cd1ee04eede4a800574e6832a9464d2d811653c51028e49f7b7d46"
    "ca"
  end
  language "cs" do
    sha256 "08bcf2fad514a0593e7c4532ac3c16793008a36310b6eb3e8cc7191037b10664"
    "cs"
  end
  language "de" do
    sha256 "f76b83d003f03ecb28c3246ff00cebd67e23fb327334c8832125cb647ff7233b"
    "de"
  end
  language "en-CA" do
    sha256 "4a4340401f810c9ba8e021ac9a7035562ee54051f38edeb02d341f0b6354aec2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d6f02c22e7eccdb910c274e3aa82d2cb7d528fcb3d20b850f11894c3ad6d06f1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b0b4419b74857ecfb33c014a1467951343708714367c82c5cd918e96c8585f3b"
    "en-US"
  end
  language "es" do
    sha256 "04be316710fab2af0a11912fefff2122af51a22aa1e77daab74058899fc4e71b"
    "es-ES"
  end
  language "fr" do
    sha256 "c49ca40774cd141de519822905e537eb5b0749656bc38f3dd3daa062d3a4fdf9"
    "fr"
  end
  language "it" do
    sha256 "28b04b7b146ec96eddbf5d5ae82e2c29c3e48b972ae51be71d09a9fc36b16d1d"
    "it"
  end
  language "ja" do
    sha256 "b864fba479b9586da8bfc2344a1130871e661c9e46926a31d39d6c133d262478"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "85f2914a0ca4cfeba8c2dbd04c7668f630bff6553d17ff94cacec787cf35de04"
    "ko"
  end
  language "nl" do
    sha256 "770bde60cbd75a2219806460a8541ac7a24fedc6338297bf8f57d81f81883139"
    "nl"
  end
  language "pt-BR" do
    sha256 "2ad28f20e1635d563b9aa3f3c1e10afbc12570e3b84326ba1ca34e25f81a3783"
    "pt-BR"
  end
  language "ru" do
    sha256 "4cc4d851e7896208d1152727db4ea07c9abc51a12683ff78f76853b10d8e5cc5"
    "ru"
  end
  language "uk" do
    sha256 "0c47452ff4c34b336cb4e57f8a09c1aca257c669aaff421c91c7ccb53bddd426"
    "uk"
  end
  language "zh-TW" do
    sha256 "a557bca10590244794b03e6312f42f75bce9c46b49c4e840bcdacbe52c6796fc"
    "zh-TW"
  end
  language "zh" do
    sha256 "8f4e9f98df8dfd31c53f7afeddcec2438f06377794ea5e0e679971d67603831f"
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
