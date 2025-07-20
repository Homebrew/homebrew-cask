cask "thunderbird@daily" do
  version "142.0a1,2025-07-20-09-22-57"

  language "cs" do
    sha256 "603c5e90eb97fe317fb44ff00f9a644cc5401ec6d5aacca84e66b6d3df07383d"
    "cs"
  end
  language "de" do
    sha256 "f5625e3deca4ad09188d6a04fffada41504ca46c2e41c562db5cf3a1ba5aecf8"
    "de"
  end
  language "en-GB" do
    sha256 "cfafdb9c9e9b5d0d154e72e69e5aecca21166774dbe7abfc957df74621b9428b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c001b8dfdfa9c04acd0d1fc732927f7811e8a89bbbc3acaba16caadfec79b7bb"
    "en-US"
  end
  language "fr" do
    sha256 "ceaf47a4e53b5a547827e1a756bb7b4d6a21d7e4799da2632d2f0199963d8250"
    "fr"
  end
  language "gl" do
    sha256 "4276e3d1d9785d9c14f88216d3f2dccf021ed585a6185c3027c3aa8a76bffbb9"
    "gl"
  end
  language "it" do
    sha256 "c5c91dfcd972a42a64e46dad05e5b216c87bacca86bd44f953ae3e178508b420"
    "it"
  end
  language "ja" do
    sha256 "735f75426d448360cd8fb24f7b7f4c7fd9a3c89a3aa914737a7261a3dd6242a9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ee139b70c069f3f4c01f0c9285d57f559158fb1d6eaf1716e709dc94836978c8"
    "nl"
  end
  language "pl" do
    sha256 "035a159b206c1e64c18305a12fb30b097a9ab1efb6c6db5f7d8ff1045d3abe87"
    "pl"
  end
  language "pt" do
    sha256 "e5d32d395dc97bbd8f4f5e0d6ca2ae1d018ac1dcdce9f211fb31a3c512a41ac9"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0d3fe49c39319f8182b393b2a3721ddfa411903a6da3c29994006465737030e7"
    "pt-BR"
  end
  language "ru" do
    sha256 "29a8b704e456397dcc910a9d21a929db9d8f652e8fa23155dfcf206d38b14a06"
    "ru"
  end
  language "uk" do
    sha256 "3d2afbde14380f226079222cbe6cb1d737a51e663ed4e855a99de0df0ca7bd07"
    "uk"
  end
  language "zh-TW" do
    sha256 "44627e0e812f94e4bbbbc381ef35b5d349d9bfd76e97cbed1fafe669152e853d"
    "zh-TW"
  end
  language "zh" do
    sha256 "cd0148d7d855ed0cf7274878966b565cb81f510072c596866c8755cc1c94483d"
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
