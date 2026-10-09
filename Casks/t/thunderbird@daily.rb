cask "thunderbird@daily" do
  version "160.0a1,2026-10-09-10-54-31"

  language "cs" do
    sha256 "4dbfcb499b69c0600b3fadafc3de0498189c933c23fd961521e79250ef1ba554"
    "cs"
  end
  language "de" do
    sha256 "8fb69460c452323f2f8d2cc08fa5a6ce8c5f4569bd4b5eddc43febdb863543dd"
    "de"
  end
  language "en-GB" do
    sha256 "58f8d414da7d4cf5293d65d5db66bc4bf515762234dce3d09243cdf80943e4f5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2c193cc8e722daacdfd109648ac0d5be5ae862e917349d6118baa1385d55d22b"
    "en-US"
  end
  language "fr" do
    sha256 "3c262043167e3f3f5deca1aa8d586ceb9795c78fba52be76cb650490171699b8"
    "fr"
  end
  language "gl" do
    sha256 "d2b5a2b75a398c238025b1ccb547b813b674317caed985bbec7644456adc19bd"
    "gl"
  end
  language "it" do
    sha256 "f86d13fb01261c1b085e3acfa2c484ca87ca2c5cbeb3053f2ced9ddee865f246"
    "it"
  end
  language "ja" do
    sha256 "f8063f1de178767095a0ce178acace0c7b39cf6e73fcd07a17a89c3c45e72ea0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fdf6a131e11872015b1cf216d1033f82194ee8980d40c4f8a04eccb575713b6a"
    "nl"
  end
  language "pl" do
    sha256 "9865709da4f2cc5346501382448349b13cd629adace6613691b98d39ea61acc5"
    "pl"
  end
  language "pt" do
    sha256 "bdbbc6b8de78a9ce49a39395f2521a802d1665224acc0f3cd80167f2f8625482"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2b60695a80137259ea11f86fef90f7b57d244c655e4174092655ce5a87449cdb"
    "pt-BR"
  end
  language "ru" do
    sha256 "6fbd2ff51b4d7955dc0f8a2b31fef8d818dd817f8a6d5ae391ed89d73e528bcc"
    "ru"
  end
  language "uk" do
    sha256 "f50034c5a0737e470b713f5d1ef3c3545ec0626d5db44bd0a0916a0ecb982e38"
    "uk"
  end
  language "zh-TW" do
    sha256 "97fbb99ff40a3a55245b2e9bdcf29be1ed805a166362256f85e2b18a91668b98"
    "zh-TW"
  end
  language "zh" do
    sha256 "ac3d5ccb085a4fe73722072f0daea6f4b5e346263d454b12dc434cb4cfc09648"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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

  uninstall quit: "org.mozilla.thunderbird-daily"

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
