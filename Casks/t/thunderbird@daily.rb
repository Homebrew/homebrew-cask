cask "thunderbird@daily" do
  version "143.0a1,2025-08-14-10-47-23"

  language "cs" do
    sha256 "7739b9a545eb19e7b4ceff84c747f8dcb6abce2e9585982e5f5c8d5237b8389f"
    "cs"
  end
  language "de" do
    sha256 "864b80a9489345755d9da35fc55746ddff60081be57ed82a1d40b9ee6bd09c64"
    "de"
  end
  language "en-GB" do
    sha256 "c17ee3b63196c08ed7bc73cbc40bb8da4e2638276a8e4e38421c2c7f998bd1af"
    "en-GB"
  end
  language "en", default: true do
    sha256 "18a194e6a47189a8c96523e9b8e965744e4a4f11fe986c8599ee98fa288bb4fb"
    "en-US"
  end
  language "fr" do
    sha256 "7fca1a546742fe266954bc9b1ce37e409fed86f8a496663445fca212be829bdb"
    "fr"
  end
  language "gl" do
    sha256 "d28e907c6bf8ecb3d1dd1540afaf0ae5c3b49959e165a5fb1c7824a5c5288971"
    "gl"
  end
  language "it" do
    sha256 "d4f4b76f1de7e6f899893ca207c0e9074e31866ca57ca4425870954bee1c22ad"
    "it"
  end
  language "ja" do
    sha256 "d149db9450089f5e303a51c4139f53e7c133ee0826c47f2b565a475fa2f22009"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "57a112132db00b4d5a8479d3048864db799966c7f6ad73765327c0f2167be8bf"
    "nl"
  end
  language "pl" do
    sha256 "6ebd6a57ba85c7178ac293b36113631a7a42849dee4893fa86b8ea448bfba788"
    "pl"
  end
  language "pt" do
    sha256 "1a310dd6c6b2708ee1197f8efb05dd7a2e45fe85663140995fe55f907cc1e684"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "66965c523acc10a337f038b351b4e5ebb35cd5ebeb68abe78a49e6d2f6a5d28d"
    "pt-BR"
  end
  language "ru" do
    sha256 "afc92099be74a44217bfd38f9cbd64bf12e6a6116ab4cd1a154dfa98b10f252c"
    "ru"
  end
  language "uk" do
    sha256 "07fc9e65daf646dc822a2baf16405d00f2e6e287e30df4d1088f200f7922d3b6"
    "uk"
  end
  language "zh-TW" do
    sha256 "b6deeb2633a6647de9ff237bffb36f7cc069499efb6c3749df3b7a8c25bc498c"
    "zh-TW"
  end
  language "zh" do
    sha256 "1fec75a14e591a343b9a940218da83144cd12c67202bad604f08dd87f59d9012"
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
