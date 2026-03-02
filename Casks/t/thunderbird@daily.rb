cask "thunderbird@daily" do
  version "150.0a1,2026-03-02-10-00-45"

  language "cs" do
    sha256 "6658fc129ebaf08439fc034c2dae3d01c64bfc1d4a66d2e27ce085bdc216e3b2"
    "cs"
  end
  language "de" do
    sha256 "5f79e01a3770fd19de0bfb3ac13640a8d53586ae6824cb3a23f946e4b50f69b2"
    "de"
  end
  language "en-GB" do
    sha256 "ffb1718035867ec18bd5338604fec847639819fcf31cbffb25f6e18b763a8b98"
    "en-GB"
  end
  language "en", default: true do
    sha256 "81348af13a5404de4e573ae0c6893711fa64233e161d523139bf523d10235725"
    "en-US"
  end
  language "fr" do
    sha256 "10a61d4d9da01f9b1a7a03e7e3b29e06c60746a4a213e7346ffa6cb92ddf74e2"
    "fr"
  end
  language "gl" do
    sha256 "7935c279cdebd736f83aef1a8aa1111eb3044a079ca284e9e74733d992b90e79"
    "gl"
  end
  language "it" do
    sha256 "d71f4ca3939c0af762d40dc535d72d6db8eac86ee60fe05f002697765beb09ae"
    "it"
  end
  language "ja" do
    sha256 "0925175e6a94ac8c516d13109bba60f1268b539c534285f0fc603c97fa171c44"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fbfab5cd29424e770ae42de98ec516943a67bb11a2f5ae1735c4f7ee5d195066"
    "nl"
  end
  language "pl" do
    sha256 "d8b1acc5a4d9e740cec9a8cfeda2e3727e3b5ba9a48a03ecc9f5cc8fc5348930"
    "pl"
  end
  language "pt" do
    sha256 "f245b953440ece491c45730de2a79e4c17ca50cf684b4e3bd7442c246613b77b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1dbef1bfb68792ad513d8aef6b9a1f3716f122d36c1ad9a4587c79fa4316525e"
    "pt-BR"
  end
  language "ru" do
    sha256 "3f5deed614ce92e2051c5168de7eb74d002442e4ccc9eec9f62e5a382fcf4521"
    "ru"
  end
  language "uk" do
    sha256 "192d875dfa838630ae4c7bf1200d046dff07676f5d7eb43802beea95601499dc"
    "uk"
  end
  language "zh-TW" do
    sha256 "ec2d512a3447adfc8f8c6c80530eda3b8493a1d293e6656a598da365067177ec"
    "zh-TW"
  end
  language "zh" do
    sha256 "205a150fe201203baf5551b6bdac1d088aabcf3ac78786650e60874a9b0768cb"
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
