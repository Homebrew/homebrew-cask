cask "thunderbird@daily" do
  version "163.0a1,2026-11-26-11-00-23"

  language "cs" do
    sha256 "4903a3558de7d7773c430f6f510fa3ab5fcb46b1568f7b76923f375845bfeb74"
    "cs"
  end
  language "de" do
    sha256 "e6fa17c3c8574775d9a307cec65c61e3e570808823b5da973b8a435d63da7182"
    "de"
  end
  language "en-GB" do
    sha256 "fbabf62786ca7ed9383853e053b4ad6e1158869a44562f3d357e09f0bad86aa8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "223897de753c7a60901dddc1d94a913cb1495bbf693ad6285425ea05b69e347d"
    "en-US"
  end
  language "fr" do
    sha256 "0c74e8ec376ad9e1db7040cdb14d1d3ca25e9f0dccc93d4e3bfe050f4aa69449"
    "fr"
  end
  language "gl" do
    sha256 "ad0fc1e73d70e1d7c1586004d3eaddfc13fe10b4b00eb9925e3b90ae45e9f0cf"
    "gl"
  end
  language "it" do
    sha256 "20a56180244f13c6f4913480ecde0e2c497518f6aed83ac31c9d115ea79ce29a"
    "it"
  end
  language "ja" do
    sha256 "75ef9c958ec7819305094bac4f2aa9827e399e739087bdfb02796f303600250d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "108c73393e55fc9c3d59fd5308b3beaf941ea7ac7eefb408f3e6efa21ba3bd9e"
    "nl"
  end
  language "pl" do
    sha256 "7e026fb03479980ef473c82f2a33391b32f71cf2b2c255b423515fcc4d4069b7"
    "pl"
  end
  language "pt" do
    sha256 "a5cc744c8deaebfd89729cb995a8f24758f6f5db7ee2700c76b0eab52dee4449"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a3321ace6fc6e69c53abac94b5081d0ef2768fa86af15e4b23704c2db33e3005"
    "pt-BR"
  end
  language "ru" do
    sha256 "76f386472a61b2cdd2aea69ce81205313b9066bf2807f59eb1686d9c732a2287"
    "ru"
  end
  language "uk" do
    sha256 "141b8438d8679cb9be7d80c50d5bbd44f0994ba00e0d61db8445c313e82e071e"
    "uk"
  end
  language "zh-TW" do
    sha256 "b72e610852b6daeeb62b22980d733cc6be9a6b752032bdb8bbd7c36dd619a463"
    "zh-TW"
  end
  language "zh" do
    sha256 "5ddc2c7cb6e2d516895d5ee601d2f8677880b921da71b773b6e3632c4021e88a"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{year}/#{month}/#{version.csv.second}-comm-central#{locale_suffix}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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

  uninstall quit: "org.mozilla.thunderbird-daily"

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
