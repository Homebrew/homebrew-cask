cask "thunderbird@daily" do
  version "147.0a1,2025-12-07-10-12-05"

  language "cs" do
    sha256 "b0b72daf8304ddf18a0c6220c4e07b5a112d959361174429b438d513a7f4e937"
    "cs"
  end
  language "de" do
    sha256 "dbab176e26308dd7334453fdb220c7351d6792cf6f6240e321ce290c80c93c71"
    "de"
  end
  language "en-GB" do
    sha256 "53b96819a35926a8dcb5811ada4c145e4566ac2806cbed0082a82c93e76daedc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "278c853002be752eca01a3a0207d962d70e0ac7bbf45ffe4419715958bea0983"
    "en-US"
  end
  language "fr" do
    sha256 "5a0c8b2df093b7d0a4f7793efeab60c364de7c0ad247bfc63c55c29c8211249f"
    "fr"
  end
  language "gl" do
    sha256 "026b9c3a1dc7c250822e26274672c6372e115a329860558feca927568c1a7cdc"
    "gl"
  end
  language "it" do
    sha256 "f430e1fdcff7715aaa67f0be0932f9a7ce6e5c9a23540cdedcc35687ca8e3b80"
    "it"
  end
  language "ja" do
    sha256 "aae27c84ea450b900bb03dbc2cf6eb1e660841d0ea8297717f9418156d6090b6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a5208ff475ef9608f3da9ca2f52380659781beda1c45327d29511df79f5a7dba"
    "nl"
  end
  language "pl" do
    sha256 "ae956125633d08c5528b27781eae87dec34d715325d3aee41a688b762c10961c"
    "pl"
  end
  language "pt" do
    sha256 "0a12a4cb39db469d059defe6adcbf437920b1690a0f9f3608735f455091f300a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "47e2db38518c961ea73a49208785992c88ccff8d34433fc954c4f40a48622d76"
    "pt-BR"
  end
  language "ru" do
    sha256 "8bb79d92549a4788c0449c7eb385f42506da59f2719b8ebdd022c5eb23802ea7"
    "ru"
  end
  language "uk" do
    sha256 "e3d40cc1d3a0a4044d41c5043f84b2daf794e6a93bd7ea376b5f13799e60afee"
    "uk"
  end
  language "zh-TW" do
    sha256 "41e5555f803ce72a7b9739eac5a3999abb25b4732d18df914e83bd2312597c5c"
    "zh-TW"
  end
  language "zh" do
    sha256 "54c82abec4d365b17481b59ec2411330513d3029bca6aab0902b1d041fbab9b2"
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
