cask "thunderbird@daily" do
  version "141.0a1,2025-06-16-09-49-44"

  language "cs" do
    sha256 "b39c794e7822c1e891f8379c5e11410c587bd65070c26d14a79731265be9ded5"
    "cs"
  end
  language "de" do
    sha256 "fcf5e9c80ecd1ee924a49838db4ae3748b5fd30677bad3dc0d6d37a64957ec9b"
    "de"
  end
  language "en-GB" do
    sha256 "ee5ba18b825d287aebfb33e65294de35236d162489aad90e3a2a2c668c0ccd29"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a630ae8fe7196b7b90c576008f3b12710403c05e971008af9d8fa315911ab71f"
    "en-US"
  end
  language "fr" do
    sha256 "2fb1ac4859203782be9b9d993c4cdaef89cab9ca27bfeda70166dc495122ffd5"
    "fr"
  end
  language "gl" do
    sha256 "798cb73bdcb7f9f138140e9ec03163e10828c26c0881fe7fce508ce508a01e68"
    "gl"
  end
  language "it" do
    sha256 "ca0918b04203ac4ca81dd71fd6e4339c3c8a16a0eaa9dead55c6e19ea3f724cc"
    "it"
  end
  language "ja" do
    sha256 "7c146e25b1804cd6265184c80ef6895362057caedf75ea1d641d0db1d70d50cf"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fc0cf124667ae4425985862c945e183c1a7dbddaf7f8476d30167a62dc7875e3"
    "nl"
  end
  language "pl" do
    sha256 "52ec44924359eab98efa0c6989041f30f642ef64b65377c4ebf6e68b112694e5"
    "pl"
  end
  language "pt" do
    sha256 "6c040db039e7325f4b31685a18628fc28af48e001b46f51e2044b326c729c42b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ae0475ab13061ec3e4468586ba25d6fb9dd643c574ca8036c25c61da06cba598"
    "pt-BR"
  end
  language "ru" do
    sha256 "d1c5962567ca4a5fed0d0e6df46e2cbea5110d64aacf1f109b0a3d9b1cba8aaa"
    "ru"
  end
  language "uk" do
    sha256 "d68a92e24bfd2442b208ef0c222a323fbaee40bf01794c7711c175424550b161"
    "uk"
  end
  language "zh-TW" do
    sha256 "9f795d4bb173d0cd85013e7123dc02cc1d6a9a1c0e95f6f2816fd784510dbf0d"
    "zh-TW"
  end
  language "zh" do
    sha256 "161c86cd72d26ef9205bbd8ad4f33ca95c21e6d3e19b568d0e9dea7ea098f2a7"
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
