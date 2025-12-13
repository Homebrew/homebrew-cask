cask "thunderbird@daily" do
  version "148.0a1,2025-12-13-10-08-38"

  language "cs" do
    sha256 "5bb17c053fa5b2cbfce87ea6967247b11f6ceaa717269a4e5265f70c31cbe4a2"
    "cs"
  end
  language "de" do
    sha256 "81ea581a30e8c8e867bc56847ff881a6c847a39dcafe0630827f137da7945860"
    "de"
  end
  language "en-GB" do
    sha256 "a6f1b37b709d8853994383dbbb5c313a53a82a00c60daffb5267a77e823c36ee"
    "en-GB"
  end
  language "en", default: true do
    sha256 "80f0db103a1ef295f0ceb721d5c29db221ad6a2d873f4860b0e80c2565f6f399"
    "en-US"
  end
  language "fr" do
    sha256 "9ef4c42c7407ac51b58393c41d6d20e181a2d1f37d3085086c8e3f215a1003b8"
    "fr"
  end
  language "gl" do
    sha256 "00831e2469e9784e0e2c9909fc3bd446408a45e25f7361b1ccb46c7cb6c050dd"
    "gl"
  end
  language "it" do
    sha256 "f9d063dd87d9e57dfc6fb33bc7e59d612c225c3b4dd8da79338211746b0b6785"
    "it"
  end
  language "ja" do
    sha256 "4fc9bdd1b949fd2864a3d3dadf0d98a07cebcbe0d819836863e0b2bc2a5f08fa"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d277b54587f652b1a3cb4e3b9cf1b4fc0bb6ab7509ec4fd0fc7f46a1542e8c19"
    "nl"
  end
  language "pl" do
    sha256 "787bbf17fa582886cabd53779370c63c0990d18543c18e12d517dec86c266959"
    "pl"
  end
  language "pt" do
    sha256 "10cf1cb04436fb7e0741fbc59bf34bd4b906ff3958a8d060df8160d213b83314"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c45edf11c574730ad8518a906f180bd1b9b05625c3f7f6da7eda4d1db6effae3"
    "pt-BR"
  end
  language "ru" do
    sha256 "35b58681441625e2d9bfdbd6e4125d4519fc13ba89e6f903b02617c9d65604a3"
    "ru"
  end
  language "uk" do
    sha256 "79e36b7a859dd572f318710255c253a01238464c59b58ead70a5c333fa93b1e2"
    "uk"
  end
  language "zh-TW" do
    sha256 "362ff3ce331d8d83bac5e18811df66919fc8a4c1bf29d189ecf0ec8f8b790507"
    "zh-TW"
  end
  language "zh" do
    sha256 "fa8b66f7816cab59eaf27a8edebf4ffd6cd92d96e97aa56c45927ad4780b3685"
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
