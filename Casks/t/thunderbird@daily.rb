cask "thunderbird@daily" do
  version "141.0a1,2025-06-20-10-48-41"

  language "cs" do
    sha256 "9745e915da888ecc15da2bdb676ac7cdf55c26d9708e2c020bd31132d6b17ac0"
    "cs"
  end
  language "de" do
    sha256 "b7af6ff90498f8c976f61570373db29f61c96a072f4ce05b53c7be718aecb99f"
    "de"
  end
  language "en-GB" do
    sha256 "736e3828a0c40b913ece07a01b0b6e68e09b7ca6254fd4ab3fb81e3ab01a7744"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bfe376d6ce25967116d982e0fcbcc371b4cfd7e98c86a260dfc14f8d79dec8ee"
    "en-US"
  end
  language "fr" do
    sha256 "166793d5debeead5a0c3d10f40234edd6384cea171710b9fbb755b9f48851a2a"
    "fr"
  end
  language "gl" do
    sha256 "02902ed2dc610a9bf8ef0690c78f6dcc6fa2c2f7d21a19e67cd4512583655e06"
    "gl"
  end
  language "it" do
    sha256 "426f51f0701556b84a68da1efff205f7149661e5aea2a69e34d4296439daba31"
    "it"
  end
  language "ja" do
    sha256 "23a360c965c0df6f9b465243d2053a421c693d35b79ac7d633dc78bef6d70b8c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "24d3768f9ae8ab603168d8d52114750600eea395ada446b8d7f88f2f28633fd7"
    "nl"
  end
  language "pl" do
    sha256 "76642087915be41c3b6f70976a66415177c5e9b44e3e1ff4c04b77a2613c4c2b"
    "pl"
  end
  language "pt" do
    sha256 "d31ccea698500753db2938893e2bda3c74e1ef7bd9192d13d220dbfe6acadc9e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "29279177fbf7f4b3041226e603cf19f3334267b5a903e69f0121bbfb5dcdeb75"
    "pt-BR"
  end
  language "ru" do
    sha256 "e6cf3a1bcb611f568968f48370efce55f9ccd47672b30bf8cb23c7dbc49fa6bd"
    "ru"
  end
  language "uk" do
    sha256 "ed8690485aeeb7949b5cbda8ec15372a6dea105cdd50f479897d191d113f39c7"
    "uk"
  end
  language "zh-TW" do
    sha256 "78bac860fe978730d6db731eab872db1b1f8281ed5bca74e177379aa9dd24179"
    "zh-TW"
  end
  language "zh" do
    sha256 "97282aebc61a38d4470a82c27e573ae012d8d920306044e3c41aa034e89103cb"
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
