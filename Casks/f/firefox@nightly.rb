cask "firefox@nightly" do
  version "139.0a1,2025-04-25-21-24-24"

  language "ca" do
    sha256 "424010735c5de95d168bc89cdcdc117910e3245940db581d3cd3c078f8de795b"
    "ca"
  end
  language "cs" do
    sha256 "6d199d664fd833b74dddf123dce2115dd3ed11d42d7aa9c7e2fad35c5ebff892"
    "cs"
  end
  language "de" do
    sha256 "ffcd82ce20332dae7f46e18f99a6f40462d1c72868e9e871b973469ac4354502"
    "de"
  end
  language "en-CA" do
    sha256 "a2aee86f5fb287e03089d65f314e757c20e6703c58e9ddad50579e562320ec2c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "faa47419e541a422a9f7f7a5227fb6ca6c9719ecf366d8a713e8186007c37890"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1018e059bc5ae1fa68e345511395b900b34946ba944da1fa41392b46d40dd4eb"
    "en-US"
  end
  language "es" do
    sha256 "81cd8fb48d3a93d45d0e310bce520cdb9fc7a141818cb85358914d8447a60ce6"
    "es-ES"
  end
  language "fr" do
    sha256 "2ede200c215d9946d9606cbd10c621807f74bdc5f619625ea2ffc60e5fa8c3fa"
    "fr"
  end
  language "it" do
    sha256 "7c3c08b05354d2311fd68ac3ee3834d6c62f1728991f58b68e3e7149856c48b7"
    "it"
  end
  language "ja" do
    sha256 "ff81c39ef051c467cfd4bd7be0d6dddd8754d54bea27b23212e5458e31a72b24"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1d9435614fa1e9c043c8a62855abc1fb2b15ca4952c0f7a0cbd0cdc148d90f01"
    "ko"
  end
  language "nl" do
    sha256 "4cc3622e2cbd6b76e0b98a56e4a181a23d9954ac636b45c84b96721bdf0069a6"
    "nl"
  end
  language "pt-BR" do
    sha256 "14f3b0cf0b780cf60325f8da0d5f4d3428a5dd345318bd45573b9662bf8d9b64"
    "pt-BR"
  end
  language "ru" do
    sha256 "fa3e34d77eb567083ecd3a14d463c29beb1ea2f8b47c1cdc3e05fd1946d8d9b4"
    "ru"
  end
  language "uk" do
    sha256 "6b727713a4783ef82e9d840be468cc838261cf60d4b3ffce667e8e54d4ceff69"
    "uk"
  end
  language "zh-TW" do
    sha256 "c7d8bee723cb6d6d13a34a4b2ab89702a9bb18da68d70476584d031889d5e859"
    "zh-TW"
  end
  language "zh" do
    sha256 "da55905e53e266697f9cf08ada7c25f73743f29d25ec814091b467dcb77c78c3"
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
