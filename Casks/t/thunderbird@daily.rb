cask "thunderbird@daily" do
  version "139.0a1,2025-04-17-06-55-00"

  language "cs" do
    sha256 "258f842cf51f318bebe9020c70a40415ed69c10604134db6abb6eda0fc52429c"
    "cs"
  end
  language "de" do
    sha256 "a28ae14aee2d5c610670f414f1f0f25f8c412aefe7f6273efb994b8da7747048"
    "de"
  end
  language "en-GB" do
    sha256 "1576be70d6f3e5194f2030cc6ae0c68f661ed3a621483fea3f8f039abf775721"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ad608a6a3306e6df2986ec1bdd69d4ec46c558efb07684e73407fbd2ddc7db60"
    "en-US"
  end
  language "fr" do
    sha256 "bc19c321bcc3ffc3780a65d86a37d307fee123780773a3ad3acb014afd7f1c8b"
    "fr"
  end
  language "gl" do
    sha256 "b028e0811f8f09cbc7f3e8d8a218e09a4c814cbbaf4161562fd795541d5a090d"
    "gl"
  end
  language "it" do
    sha256 "3cfcbbeff96d0837ff1052e8a0dd4317f0d6a0df07900c5a8e0668125717fdd7"
    "it"
  end
  language "ja" do
    sha256 "f1c3655e9270753dd36f5b9a2c3775cb95819c1187c1fb4ece2324b8fb967062"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ded6e5fc754755833ecee25876e121e1bc32d592fae8bf0fde9a48b2250b9dc4"
    "nl"
  end
  language "pl" do
    sha256 "0e08e2d63ad9279c7c59c56cab874bcd580815c1a60efc6403d231473e4dd660"
    "pl"
  end
  language "pt" do
    sha256 "8f512d8e56303218f07b111d3505fcc381d875027bacdf04fdc62eb36675d81b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "29687246137d6fca225ebed81466089dce2a25562b7de2b529999665d5d017c4"
    "pt-BR"
  end
  language "ru" do
    sha256 "cf4c708a6323ba53f044c4c6a0b583112be1d60b955bde9a5559965fc832ce16"
    "ru"
  end
  language "uk" do
    sha256 "209770c79097d8f17b467ebaf6db8d72341cee37b608ad1b1fd5d32992f638de"
    "uk"
  end
  language "zh-TW" do
    sha256 "bdb3644579e4f1e1301d9e069cc8d501ad037253a5f1c37ec47b2a6a6278bf65"
    "zh-TW"
  end
  language "zh" do
    sha256 "85598271f83dcc2e0253eb5ca145aa1929e9a6058ed3f6936bd4ddcf13ed9901"
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
  depends_on macos: ">= :catalina"

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
