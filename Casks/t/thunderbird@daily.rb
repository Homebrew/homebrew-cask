cask "thunderbird@daily" do
  version "147.0a1,2025-11-14-10-25-43"

  language "cs" do
    sha256 "c988c2801da0bd445a90035c1477b9f31c97bd2d7556cdb42a39b7077d5fe436"
    "cs"
  end
  language "de" do
    sha256 "d0ad15544c8a43c4e86750be6af7da977e5082f981bfe99243bfdab515755397"
    "de"
  end
  language "en-GB" do
    sha256 "7709a3bcb57941302bd5ec2ab6e3cae332d1c5d40e87ab77b7dd99bde57de392"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c1754e5be4fd69f9b4acca1f6ff6418d53f63378489b81c97dbce995083671f6"
    "en-US"
  end
  language "fr" do
    sha256 "b9c05d8398161c5f42938f9d5c6e3f7d7c982dc502fb2d74a50d9c35a16a07ee"
    "fr"
  end
  language "gl" do
    sha256 "6b56fa7959ab13667019973396dcbe8796fcb878ac76ce4415e9df55fe959e02"
    "gl"
  end
  language "it" do
    sha256 "a6f6e5acdcac94e052e083ffa7358ac7ae9ace20286b4487cff532af279c9a55"
    "it"
  end
  language "ja" do
    sha256 "981573a67d86e69702b998786e58fc2494d2775ba1328fc5dd6e85444e9ea86f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "462e5e0f3548f1647f6b23d301a12ead659d9ee7a8faf51d746b48e5700247c6"
    "nl"
  end
  language "pl" do
    sha256 "cb73684842a62cedddcb526e1e81be85b12adc31751e6277f9ccca2f56f26adb"
    "pl"
  end
  language "pt" do
    sha256 "993446321f01997247793317aade1deae25b4b1f51f577bc9351418c57e0b494"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c3f7f5ae65262b9bc5f45072849177bba40266d603bb06b3a640661eb6cc130c"
    "pt-BR"
  end
  language "ru" do
    sha256 "4b361ce95c5c6ef39d452a50a7f01936185d15ae9e767d111edc364f1d2b83af"
    "ru"
  end
  language "uk" do
    sha256 "90709b828b7c869019aad78bc14ac097058d106fd922e203bb30bbe6e0cc2101"
    "uk"
  end
  language "zh-TW" do
    sha256 "c29d88aa94543dfb9f436a831693d32b480a4d0e73b95e8eed5d5d484481cbe0"
    "zh-TW"
  end
  language "zh" do
    sha256 "0bfddeb7c9727d2787c5884b90ca63964e351f547c847b3897f87703a33052f9"
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
