cask "firefox@nightly" do
  version "143.0a1,2025-08-04-09-34-39"

  language "ca" do
    sha256 "c456e9bda453507b95c9d8c9867cb14b15e554ab66bf693b17309bb5a74a7502"
    "ca"
  end
  language "cs" do
    sha256 "234c14da04d77c53ca67d89a49e783e9b63a5986bcee0dad92616a693eff917e"
    "cs"
  end
  language "de" do
    sha256 "b7c386a146387e3688877fcce594be8e524d5c63e7a219aa690bdc7e6a6a43f4"
    "de"
  end
  language "en-CA" do
    sha256 "4829d6f417c192a7ebc991173f63837ff4b5833264d1565bb7a7b2fcda0f89cd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "15fe49144af43d9525c1bd9c523c7d49b7316b89d41d5ba5babd8ac76dfae03c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e3fdf3415e3d71ee9fc61082ecd2952e1f6ab4d086ef7fcccdeee7e337839b91"
    "en-US"
  end
  language "es" do
    sha256 "e4188e621186a6a648ebedd6ed09ddac049fde0f6852011c7c6160d9f7170923"
    "es-ES"
  end
  language "fr" do
    sha256 "54557e292528df82bb0981476e12f9f432d5d394ae7f4e06585fbc6ceb39fef1"
    "fr"
  end
  language "it" do
    sha256 "7b9f3011e615d74feaf13dc1416131534030259ed3a8f27dfe017e77c9964d24"
    "it"
  end
  language "ja" do
    sha256 "b9c620b59b2a127c317b92bdc7fe919d442171c61861804dabe8653040f6dde3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d57305447910cd6b272a41400c7ae7dcbaa47d54aa220773dc488a77ffcfdecb"
    "ko"
  end
  language "nl" do
    sha256 "763bb1cd0ecc098f299393802ee952194e2cf0d05579485c8069ab0964631902"
    "nl"
  end
  language "pt-BR" do
    sha256 "21271dc30ead1f59300e5cca2293929438545ab8f3a7fc7c0300ebb323eae83a"
    "pt-BR"
  end
  language "ru" do
    sha256 "21ff7b7e6263c55147fba96a8ac909a365475133a6375623a2bcee4bad2836a8"
    "ru"
  end
  language "uk" do
    sha256 "d8c7714e3bec473368fdd7b091c7d5fb69891436b28048efca25a72f0d013c5f"
    "uk"
  end
  language "zh-TW" do
    sha256 "f898a117c22ff664050f9165ecf4dbd106ddb83d2a4a86bca5615509609f1f6b"
    "zh-TW"
  end
  language "zh" do
    sha256 "80564cbe9eb107488a60373edb1eb7bef9d3891ef5d155361295654c53984e9b"
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
