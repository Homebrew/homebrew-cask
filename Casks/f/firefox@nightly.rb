cask "firefox@nightly" do
  version "139.0a1,2025-04-23-09-21-27"

  language "ca" do
    sha256 "db2ab2df67ce5db1d704303f5b9330bfd9c163358a2183496d9b80e993a91428"
    "ca"
  end
  language "cs" do
    sha256 "eee07825c81e244a23c2833a903eb7b4a773cf726fd4f7e5e0801804ed2f8183"
    "cs"
  end
  language "de" do
    sha256 "d641113c7ebad3eb42f054b084997bc1503a81234353243342ccd8ab331175c9"
    "de"
  end
  language "en-CA" do
    sha256 "a0d9271d03786d7ce8dc573daeb30a21f6b1c2d0096d4b8299e3cea4a7c6a3fd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e407ac882b7e4b6033f06d1e248f0e3ecf104974c999ee74550ba0a0db229c21"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a473a191f1bf33b89dda368fd11a93556aa79a71e1a26c358ed1a3bcecc099ca"
    "en-US"
  end
  language "es" do
    sha256 "33c629c0025923b7565439b6a82e9df8e2069cbbde3b06bf997f30dbb16184d0"
    "es-ES"
  end
  language "fr" do
    sha256 "962f6f66d3607aa31fede4f74aa7e48355dfaef993fb1241110ae64ee0dea188"
    "fr"
  end
  language "it" do
    sha256 "5ec1f6d6cb418a92bff638bbdf95cf06a014e92209b7c49f23bb95406f511aea"
    "it"
  end
  language "ja" do
    sha256 "4be60e661ec7a385316b4e8b58b73e458740a97713b874def31a2672b769c305"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7f4561ff0548a881882c988436a10d1ea982c6ab30c770ce080b4dc6432220a1"
    "ko"
  end
  language "nl" do
    sha256 "33c36417f618bc4954eb662aed7370ae9f5e03092b758d6ed3635cc3f2051970"
    "nl"
  end
  language "pt-BR" do
    sha256 "7db431179328fdbc675ac7d1ea36ef8f59a64b51e457199888525a2ced390439"
    "pt-BR"
  end
  language "ru" do
    sha256 "5fdbb7b32fef514eb2c22ed5b4078896742e85f7589ebd0d45dd35e7e56d80e1"
    "ru"
  end
  language "uk" do
    sha256 "863959bb87dc0ba314be91db5092c93db0f32ed933abe8345a9641ae0f0cf4e8"
    "uk"
  end
  language "zh-TW" do
    sha256 "a954f30cb326bc2563fb9cc0e8d77e991adcbc384a2be80c4e6a6ae77fc8de1b"
    "zh-TW"
  end
  language "zh" do
    sha256 "3463e4f85bcc6e61e350c5d8d4aa1ada414d08a5b8bd26b99bfe94155e560392"
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
