cask "thunderbird@daily" do
  version "152.0a1,2026-05-18-08-53-28"

  language "cs" do
    sha256 "198082ab989782b720f89b67f5802a57bcec80100c3e7e8f0dd6c02eb633ac8a"
    "cs"
  end
  language "de" do
    sha256 "79ea0f27b97dd060753d3a47dbd19d0d9ab3f273106185f7d522255611da2328"
    "de"
  end
  language "en-GB" do
    sha256 "ecd75bafa3feaf84634aa956a78fc1e566c9229170ad74ad2e31faa54fa2c44d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9e46d4f64598da40d4aed0244f08ae5026ec0217808b74c9c460c5c0fc63e4ec"
    "en-US"
  end
  language "fr" do
    sha256 "7a5947304501df0b1e76eae1115e85bff0b6a69eb71144dc84475a62ad244ec1"
    "fr"
  end
  language "gl" do
    sha256 "a9ff2094982b52c5440bc6f5df1664fb3a9b81f22fcb3f18ca843fddff969698"
    "gl"
  end
  language "it" do
    sha256 "d5cfa9d033aa928d0d3915875cfabd0a2c2b02b5bb24080207d383c36eb31270"
    "it"
  end
  language "ja" do
    sha256 "3edbbc85882dfd61ac9a385e1a01188196a3fbe03a09a3fa94448953316813ce"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "011c1b5fff434219874ecfc6aed01a11f06a4f1855a5d26bcd18eb70cf482ff3"
    "nl"
  end
  language "pl" do
    sha256 "56270cd2122ee772e3d154b7e0426801641e0770370e75ff5bc923ba78455fbf"
    "pl"
  end
  language "pt" do
    sha256 "c2ad9f48bc39a6ef62098cdc4e4a9ab4abd5cac5115ee9ab2bb177ac5e72860e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "140260c00e25487921a96172c297801da8c4e13c4ffb05fe5c7e1e237a368489"
    "pt-BR"
  end
  language "ru" do
    sha256 "d63791af946ef9ec5baf5fdb8b0be644b672136c03bb2b1d1fb1d57f59c3166c"
    "ru"
  end
  language "uk" do
    sha256 "7aedd2d056d8840d173a7b74bd12dbaed2c88af0b164d202fbaa1f06784bb43c"
    "uk"
  end
  language "zh-TW" do
    sha256 "b106ff53bb6c962603b96afac940286d4ad413e36ea9915117514fc94774d5f1"
    "zh-TW"
  end
  language "zh" do
    sha256 "9fdcc3a5e2ae01e285536efa5df89f38be2f4a1678687c49f8482b2fe26483e1"
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
  depends_on :macos

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
