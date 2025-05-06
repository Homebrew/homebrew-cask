cask "thunderbird@daily" do
  version "140.0a1,2025-05-06-10-04-55"

  language "cs" do
    sha256 "09f7260ead26e0030b0b69c278546211776f79e43a80be482802a06012d00bb8"
    "cs"
  end
  language "de" do
    sha256 "9694eb292e18a10e4685fbc72996558c04728e23e08641b66eb5aa8903041b44"
    "de"
  end
  language "en-GB" do
    sha256 "2e0d58c612879739220fa01cf6e157a0fad0a90db69f0acbc11137d2e2c4c226"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3f5eeb774638aaef47d6b4e9112d323638df6cabfe6f8586b7a9878a55ae0a90"
    "en-US"
  end
  language "fr" do
    sha256 "090684ac3506b3846fffa6a431f267f82f46b4e200db83b2f29e9608d8511058"
    "fr"
  end
  language "gl" do
    sha256 "7278c9b91e45591189ef12040575a7ef50194462cf2fb603f1dab8b79a9d0976"
    "gl"
  end
  language "it" do
    sha256 "ee995e3303da6c93bbb7aa9f3fbf8397aef48e9d93c9ee9748b41b3d7700fdce"
    "it"
  end
  language "ja" do
    sha256 "32950c496932fb3ee56916c9f084a2eaaf34bd2cf4a74e206d87ba8ebea8106a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "15aadf095450e563f4a87e8f96a6405559d3d3677e51bd0554f0bc9d384f5500"
    "nl"
  end
  language "pl" do
    sha256 "c0760a3f9ac30c7ee1c93649f00088416c87840f96be75d9a47a5e83292429e8"
    "pl"
  end
  language "pt" do
    sha256 "f02f7a8039228f5aa238828d5abc1319f408390a2064b1e76180e9e9e3035761"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8e2f9bcc05ae243197771bb4faf6a7b8cdf94ea62ffa9ac5c772ae9b11f80e8f"
    "pt-BR"
  end
  language "ru" do
    sha256 "d273c4ac1c24948b2edc7442fa2b068ffb13a4564379951dbaec4d6e13db2135"
    "ru"
  end
  language "uk" do
    sha256 "86f0fed75370d6a8f1fbf6775c8f0ceb0e930060c02b8a66e98487f52ec06076"
    "uk"
  end
  language "zh-TW" do
    sha256 "e8a5a66a7291dbe386b673490d16bbe3f48340dd2cab41a725db845d222c7e90"
    "zh-TW"
  end
  language "zh" do
    sha256 "b980060f6147a8101720e04fa94e7194dbe6698b02c4774cb103e55267772947"
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
