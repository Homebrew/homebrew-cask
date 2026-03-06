cask "firefox@nightly" do
  version "150.0a1,2026-03-06-04-45-42"

  language "ca" do
    sha256 "0c4ff9c10e6e3d945b11e03b345a373daf6e506ddf40919129e4faafcaed1f44"
    "ca"
  end
  language "cs" do
    sha256 "6f49e0f3d043013d296443bda7c0daeaf86f36d529f06ed619fb1ba37d5ee521"
    "cs"
  end
  language "de" do
    sha256 "b47e5153590ef2e7b2d2ee9e6bd4d08d8f3ac7b675e953a9a399b8170286e729"
    "de"
  end
  language "en-CA" do
    sha256 "faf6aedfe10c7ca093999d131ff37c56bccee88c4dcb71e03359bb5112a24207"
    "en-CA"
  end
  language "en-GB" do
    sha256 "654492c1313dba3c5499094ddc8e8357fecbd985bec516365b2fe46396359a14"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d09928da88f0327e361d4ef05d8e4cb990738162fd67163e813b068877221df1"
    "en-US"
  end
  language "es" do
    sha256 "c0a0476c4eabb6d1d0e664d6ae52fc98ce06331cd8c2c8f55b7b22f91bedd4dd"
    "es-ES"
  end
  language "fr" do
    sha256 "b8d150e326267791bdd33a932b8f8cf74d2c34d64699d4630a3891b94a21e9de"
    "fr"
  end
  language "it" do
    sha256 "11a5f5b4658022ffbf69c7a0c80a5299fee22404dc1cfb5d6d78d02f7fffe539"
    "it"
  end
  language "ja" do
    sha256 "32651eaa6bf59d5a9f6446e8c53017f312ae0e6784847ec212a883dc9560918d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "abcd6efeae3399843db4cd9d4f6d6ecbd580fd1baa27458947c06d419089981f"
    "ko"
  end
  language "nl" do
    sha256 "785f452e22b1597b7bc59d56709c32487e3d0afd089659031e2f343ab5da99bc"
    "nl"
  end
  language "pt-BR" do
    sha256 "87f3e4b603f74eb2049e1ee7da4df737bef1714902304c7236e1bc24bf204900"
    "pt-BR"
  end
  language "ru" do
    sha256 "a179c923a819c8bef1f651289eb39cf46511a7f9b36d0cd1d5430e23465b61c7"
    "ru"
  end
  language "uk" do
    sha256 "c2e5fd2a4788e9d0a9230f5cfde4b24f067d1550b73fa63a99ce014af1cd7826"
    "uk"
  end
  language "zh-TW" do
    sha256 "e955e72b3d20b647ad19b67f4e9011359efad5238e751b48186e1cbdc966d45e"
    "zh-TW"
  end
  language "zh" do
    sha256 "e6edff6384f718ea7b384e5aa420bec1d0cac8979725eccdbffb64b8de063788"
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
