cask "thunderbird@daily" do
  version "147.0a1,2025-12-01-10-58-17"

  language "cs" do
    sha256 "69cafe1c3e8e4f50bfd8d8d593354ca777f749af5c0be9e10f854310d6ef8f9b"
    "cs"
  end
  language "de" do
    sha256 "2e4d12e376505ada36a169ad935afa05f7462fe7533793691a7930215008d4b1"
    "de"
  end
  language "en-GB" do
    sha256 "44e58608e28c9b7b07454848ebf15cbb4e2e8cc4f7cfbaf745240b3db3797d33"
    "en-GB"
  end
  language "en", default: true do
    sha256 "844afbcbefaacc7d93b1c3aba7020ecc57d395e5da69a5330a81783ae3500732"
    "en-US"
  end
  language "fr" do
    sha256 "869d0f3a726ea958261f830f1db46e10df0c7935b2600171166ed1bcb476a400"
    "fr"
  end
  language "gl" do
    sha256 "47b88d8c27690bad9d14d90f6ae1e96b7ad83294af61e14d76d400d8dab2ce89"
    "gl"
  end
  language "it" do
    sha256 "5d7ef2bbbf2f12b9188bab32047bc274514b6312b3d96642d9e1933ad6c72e50"
    "it"
  end
  language "ja" do
    sha256 "c16bd6e19c0810b05ab81249944595ca4cfd6e95651b70cc3ea7d0c08ec568a3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5e35005812acb7f9236590bdbbb24f99795a7f7305409090f99af20ce6a053ce"
    "nl"
  end
  language "pl" do
    sha256 "165a34272b6b39b817c242f2f2e4befc0be7c83cc107689f8a4d39f32016e174"
    "pl"
  end
  language "pt" do
    sha256 "894f0047eade86c86d1aeb6f7b69711715372cc757fdce5e68c04d0436d5b68f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2824801bbefb99b96760136532c9b334a61c20287ef205d702a49b09189aa13b"
    "pt-BR"
  end
  language "ru" do
    sha256 "b64fb75c93026fe4ae330aa2b0b6654e4f93f9b37a468aef61349191b43e0424"
    "ru"
  end
  language "uk" do
    sha256 "bef9898267d315331462973bfc15a2925dcbf0b483097c713504093218978f4f"
    "uk"
  end
  language "zh-TW" do
    sha256 "68f2f2f08d6568f09a8e8ecb86070c4dedcc40611c3a86531704145524ab863a"
    "zh-TW"
  end
  language "zh" do
    sha256 "a80a0fe798b2734ada780ad1d0ffe8a8e2bb3b866aed2594f157491e399c6930"
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
