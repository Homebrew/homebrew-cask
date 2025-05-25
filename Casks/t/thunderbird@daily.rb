cask "thunderbird@daily" do
  version "140.0a1,2025-05-25-06-53-38"

  language "cs" do
    sha256 "8a701791a62e5cbd3ad2945168c51fd50e13fb004fcac201f6d6b4ce9172b63f"
    "cs"
  end
  language "de" do
    sha256 "bdbd8b5dc8c26c593e79bd22d7226e60622aa6a8b3a350597d0c8494843a4f55"
    "de"
  end
  language "en-GB" do
    sha256 "900e3fc9c2395f84ae9797f5626651b6a58daf8e42567a5f1c4067941dfed293"
    "en-GB"
  end
  language "en", default: true do
    sha256 "74928b8925f6e626fbb0b9392ccf220434bff8f69630f537ddb956c0408d5d3c"
    "en-US"
  end
  language "fr" do
    sha256 "d421ba2024c9013aef563fb457bcb81f0e4b6902bb53c1248d8f6de0a9b93a66"
    "fr"
  end
  language "gl" do
    sha256 "88c11d5c6fbcb7ac78de8ff3f9c0794fe17046b8d35729e4c20a7ee8704462d2"
    "gl"
  end
  language "it" do
    sha256 "77da2719ef1eff2163bcda0f7310120f9943e753d36a70f5a0f29b733355f66c"
    "it"
  end
  language "ja" do
    sha256 "267361f10341469b7d7f928a2bc927d0118f474839728454c4b817d30dfa2a29"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "45b671c059c12f834af486e134f79ed54479c13d405ac34ab43b4aee68b1674f"
    "nl"
  end
  language "pl" do
    sha256 "c156c7fe461e22e9ad0d63b664f6561e592453f06de3c1c2012edd0ab616a9fc"
    "pl"
  end
  language "pt" do
    sha256 "3893ca47a351ed461d14f4977bc5663f417f98728f4f1f073ceb092328cbace8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f51dea3fde0e01012e723c22734d53393ddc56bc2d5a5fa98466e2e2808fb61b"
    "pt-BR"
  end
  language "ru" do
    sha256 "95019d63577d6a59a1985158923c9bac32da24fcfef2d5c62df586670df4695d"
    "ru"
  end
  language "uk" do
    sha256 "52b6b570dcc191b103e68a6d33de73a3e936d37eb20d384fcbaa0283aefa5512"
    "uk"
  end
  language "zh-TW" do
    sha256 "26f92260fd3a302525b51b808481c34bb6acf73fb4e1ba276ddb26c2e98e0dd9"
    "zh-TW"
  end
  language "zh" do
    sha256 "e409cf51429d23e9dc60736bfe71528f671a4443c2eef79b3b6be87a2a63ffd6"
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
