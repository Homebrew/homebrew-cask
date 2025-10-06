cask "firefox@nightly" do
  version "145.0a1,2025-10-05-21-03-00"

  language "ca" do
    sha256 "70403b1e8c23ee3f9fa046f65e2ea965545de3fc0a0721bce5459360d824feb2"
    "ca"
  end
  language "cs" do
    sha256 "1bb49cb721357bbaf485c62bc6518b4a6ac7a64ed4b557ac213d13b1e9281227"
    "cs"
  end
  language "de" do
    sha256 "6ecaaee420bbec8062f4c5faa053461aee3e2418c24a9a00c3820e272c53cee9"
    "de"
  end
  language "en-CA" do
    sha256 "d40b72024506ce9e2cfa163a89f50170a38c172cb3a6db437c005d4002f9f736"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ba942333026dac2f2ddc523ba9cb27ed0384bf05cd8e3c319b7b867813bb8b7b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e1143fd5f8ab17ceec69470d4766806e155e02836d7082cc22356465ed781906"
    "en-US"
  end
  language "es" do
    sha256 "ea054f73546c5920b89a01c86f34b2033273f9a6bbf2ce16f65a1fdaa18c32ec"
    "es-ES"
  end
  language "fr" do
    sha256 "53dfb90cc58656f98b1626fc1d88e307631a797e1d7fbb143f976497b7566fc7"
    "fr"
  end
  language "it" do
    sha256 "437d62c873474c356e03c959a7558842987864da292f1cca28438a7fc6a4cadf"
    "it"
  end
  language "ja" do
    sha256 "157fd28e20cb8305d74367f17ec4d985be7519bd561fbe04bb73973cc066126a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9e2de1bcab2ba83ee339c0426e23f7caf8f186773319de1cee528e6452bac411"
    "ko"
  end
  language "nl" do
    sha256 "eddee27ec0eebe0268e7dba96420ab3ffbe4a16d0471f57ddb98e4d2df0ac561"
    "nl"
  end
  language "pt-BR" do
    sha256 "d106be74fbaed18a9c5ba4b4875ab147bb4efd340e3d0fb33ffc3469865fab2e"
    "pt-BR"
  end
  language "ru" do
    sha256 "cd442ededf348e0a03722fae8397ecd2d14293734211a26071efa70408686ef1"
    "ru"
  end
  language "uk" do
    sha256 "d583cd827f378e285c62c41652a1a41faa6830fd60fa201c0e7e1ca1a6e2b04f"
    "uk"
  end
  language "zh-TW" do
    sha256 "c8e241320f6fe8dc1acb388b5b4433b046c93f1f7fe3d1881a82aadc6bdda26d"
    "zh-TW"
  end
  language "zh" do
    sha256 "0d2886be8d925b9059bf4cab5c17cc2596dd28200815df765d5014ee4708ccb0"
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
