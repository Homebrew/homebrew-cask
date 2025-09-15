cask "thunderbird@daily" do
  version "144.0a1,2025-09-15-10-47-19"

  language "cs" do
    sha256 "d7479b96ada671bf1bb0f2a257a4e62443e5d7e8d75f82036ccdd25749659038"
    "cs"
  end
  language "de" do
    sha256 "3764dcd29c364d9a61f5b16e854164009ce612d13b16416a3069f4e87c4a5520"
    "de"
  end
  language "en-GB" do
    sha256 "15b5a1258ac70425224e926f0525b46f4385767ee025073770f05f331cc3d3bc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9dcf3e30bb0b65831921dd04c3dddf3024740cb2257f5a7c1b92ce6f5bfa8081"
    "en-US"
  end
  language "fr" do
    sha256 "1a50c80178dc2dc094268cc89b405b0747a73fbdc4db48de166ef8a938a1561f"
    "fr"
  end
  language "gl" do
    sha256 "d51fc6b0bde75bd8f01c6ed8117700d587dde475a0ea540a948b04d835f0821e"
    "gl"
  end
  language "it" do
    sha256 "78a4ee71054ac581782288119fe5a048b5fd37eba6259cf08010901b4394bea5"
    "it"
  end
  language "ja" do
    sha256 "ddae004584cae0782338f7952f68bd8434727d16f4d4d2c465f315d6444905a8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0b8addaebee68c67549fbf4e031330c8a6701941d1ec4b601af67113b9a26f92"
    "nl"
  end
  language "pl" do
    sha256 "6c9734f6740861fc0d798662458e19a525c860c1cab629a99b7fd88725ac5f7a"
    "pl"
  end
  language "pt" do
    sha256 "1365400f664143eda3e7702e3d99e695e65748183169eb8cd7d6c9543777bb26"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "96ee9549935514a6d4b2f8ecc7ed5ea99610b74f21834e479433dfb8bb2fa098"
    "pt-BR"
  end
  language "ru" do
    sha256 "a65930cae0bc92505a3554656a2841936c4450c29888868e652390e5f7d1580f"
    "ru"
  end
  language "uk" do
    sha256 "0f8f3d85072281ad28ff8dc69cb991898f00058c7282a039e771ae6e41022510"
    "uk"
  end
  language "zh-TW" do
    sha256 "2ec96ded9f71171ca00f4a951bf77a543be4257f5feb5303fe29a61eae817832"
    "zh-TW"
  end
  language "zh" do
    sha256 "e90f5eeeb6b6303ff561190cd2c6b3bd9106d06d72a144da7fbf16129fa13fc4"
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
