cask "thunderbird@daily" do
  version "155.0a1,2026-07-29-10-08-53"

  language "cs" do
    sha256 "ba822c504ed11c3d9a76b7962a9376e663c40148cce0fe61f7c7c2438fa8d5fd"
    "cs"
  end
  language "de" do
    sha256 "d59e59e02cd434e658f1b4a050a4235a3b1548cd90ee7fbef39406b21a7e4040"
    "de"
  end
  language "en-GB" do
    sha256 "32baa359982c82980507add31201e978752904648c22f03dd7a7788a02109919"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e811357dcce6aefd0f21e78121c263c5ce4671174326c9b77dcb97ec19938789"
    "en-US"
  end
  language "fr" do
    sha256 "d9fc1762fbb14217ef8ce1e3e4ef6311650abac2bd6191f9945f60fb14d710df"
    "fr"
  end
  language "gl" do
    sha256 "7602569612c298d54db79ad468cd9694cfd1941cfe67f493ba4a086dc480b5f5"
    "gl"
  end
  language "it" do
    sha256 "16b77f98ccc97a55455d8ebc224b81012934dde9bfce50ed210009816f8440c1"
    "it"
  end
  language "ja" do
    sha256 "8877cc829a56011b38617386730009b81e95d9841a18aacc50a2d40041fb9d73"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ad03e8b45b651770360adfd8486d81d0035c0e84e3cd45d04bcda414e1b14b06"
    "nl"
  end
  language "pl" do
    sha256 "2c91e02415f335c03d8aeaa89af497f4b70757b3c2c445820df7420af9768faf"
    "pl"
  end
  language "pt" do
    sha256 "ffb27d505248185098ac3889112602574b1f3ec59f8c9a0dc294c0cda700c025"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b2f6ed280289546d503d69f6b0d1b41f795aba15007f7fe68c62ae766c2336a6"
    "pt-BR"
  end
  language "ru" do
    sha256 "72812931abf8e102c9198d53c60973cddf73d9ab5fbae09c73285ffe2b7e1a86"
    "ru"
  end
  language "uk" do
    sha256 "9eebeb3e76a0d9fde99364cc41afda6359c96bfff6f3096ec29500e5f579e0d2"
    "uk"
  end
  language "zh-TW" do
    sha256 "12c31190fe41116393b4be630f1078458cd0045d3bac1af0dbf6aee486943a6f"
    "zh-TW"
  end
  language "zh" do
    sha256 "3ec8af4899d5d2b04bc2a02fd7ec5ef002146afecdacb9763b941a75a0163c9b"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg",
      verified: "ftp.mozilla.org/"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Thunderbird Daily.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
