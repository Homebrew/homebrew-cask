cask "thunderbird@daily" do
  version "143.0a1,2025-07-29-09-56-59"

  language "cs" do
    sha256 "55bba654de9384c71c605a71f9bf96faaa2cf486fba28a40971ee01a1e09107c"
    "cs"
  end
  language "de" do
    sha256 "aaec096dbd8c5771e3688f6bcda99282489ea53fd9fef4407760159604c07487"
    "de"
  end
  language "en-GB" do
    sha256 "4804d9c9688d823e28aea3bc77046222ee9e1b0c25caa8c40f27fe45cefca06f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1853806bcbc1d18d8ef8769845071bb365beb14476e9e12d8b609d0c3e1fe752"
    "en-US"
  end
  language "fr" do
    sha256 "48d5d751d0fca5f05ba6f53dc9a0b14d987d241a66249bc673e04273ce15fdf5"
    "fr"
  end
  language "gl" do
    sha256 "c67f1eb065497a1a61f1211fd47b34b522001737574fae8158c43f727ed19767"
    "gl"
  end
  language "it" do
    sha256 "6c8b2f4b96b94e8784c56a09309a9bde1f91def17fb50711aa36446a6c69db9e"
    "it"
  end
  language "ja" do
    sha256 "7e09246f3a04ab025987736a8e21108f4006a2d06dc694a6d5cbd09a66a4c1fa"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a941174d57e6c8743ddcf622bb52d5c8546013d2118c4e9da945ebf32c6033dd"
    "nl"
  end
  language "pl" do
    sha256 "b9038b2bf2f59ae3cafbfe6c46e591927aa39592b1ca35125c08fadac58346ee"
    "pl"
  end
  language "pt" do
    sha256 "2d8ddb627371710f89e2b72cfef008b674ebc965b45d51116dcca8f9551fe155"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bb15e77c02a9451f4e7ed7f8dde1b58903ec3dc034f5c34fc577e3ccd95c3a51"
    "pt-BR"
  end
  language "ru" do
    sha256 "abd4a59ee17a0494d8c123fbf65084cb8cbf157fbbbfda33f31104e726bcc6d6"
    "ru"
  end
  language "uk" do
    sha256 "a708ea8dcc522cfbdd6bd17d57a418675b8d738badeb4fca8d1f00036cfc7530"
    "uk"
  end
  language "zh-TW" do
    sha256 "0ae4fad69683f50ad90b75a5e1854b666f25e2ea5372d25779bce4b21921d72d"
    "zh-TW"
  end
  language "zh" do
    sha256 "3b705e09d1f145133678ef7c33a5db8e5bc240c9d9652d3413c077c72a079bc7"
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
