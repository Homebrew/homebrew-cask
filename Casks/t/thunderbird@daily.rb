cask "thunderbird@daily" do
  version "142.0a1,2025-07-04-22-11-27"

  language "cs" do
    sha256 "8da20194b828ef2f00c2cfaa5912da7e0bb3d2983a9e1796a9a329fee4b16848"
    "cs"
  end
  language "de" do
    sha256 "57df5ece4fe8931de95a26abebbc3631c69d32daf1b8dc58e7e7874fe4d5973d"
    "de"
  end
  language "en-GB" do
    sha256 "0b80abbe5f7f256a599b878e5a0e47fe81d39dd10f8ef98500456ea5164be2f2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4288792cb430da008f0e14b72a5d0eb111cbb98e515a967084c9ebd529f725f6"
    "en-US"
  end
  language "fr" do
    sha256 "9d09fc80a9f7799a15fba1513e8d5371f50ba1030527d4e215d6d37293e50860"
    "fr"
  end
  language "gl" do
    sha256 "8a4a02f4d843e866bfe51ddd6216ce48f231c9083cecf710aca15ad0be21fc43"
    "gl"
  end
  language "it" do
    sha256 "aac527fd9e4b4e3a6e7dca585eee7665b803f7c32b4b55d008d07bc2ea2e4648"
    "it"
  end
  language "ja" do
    sha256 "4a0dd167822ac5843ec94636b94afa3e3989c21a2a8a19820d94a02222dc785e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5e03ceb412be439321fa972c24abacebd6ddc90cbf59d5cd9e114d7caa6f01bf"
    "nl"
  end
  language "pl" do
    sha256 "e693a4ec63f5ba44c1e4b1dc2acda45653224afc16b220d55f04e66f6cbbbd22"
    "pl"
  end
  language "pt" do
    sha256 "f6d9914cd819b9686614068e6832827f1003510ce03993a044731142d310ccf8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "39726c7df253fe9d37dd90fd2a2e11e2fd4be0f840299ba50368141569160691"
    "pt-BR"
  end
  language "ru" do
    sha256 "73bfffae1b6ff3a0b02c684dddfe42d44ba8c05238c4e3e55ab06742fe2b61d0"
    "ru"
  end
  language "uk" do
    sha256 "e83040d7fd2cc8f171ed28db1c958e337834ce4e912b6830eabd08c04512c8d1"
    "uk"
  end
  language "zh-TW" do
    sha256 "075a837803accdb9d360c58da882647880827e75bca69aabc55205ecf2c45195"
    "zh-TW"
  end
  language "zh" do
    sha256 "d600b2f73d038debd08a7b07917d629f903ec10921a9222dc114eb584cbac45a"
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
