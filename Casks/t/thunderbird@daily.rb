cask "thunderbird@daily" do
  version "149.0a1,2026-01-17-09-39-54"

  language "cs" do
    sha256 "7e8f3da78ffb23bb632cd8fb6992e3916cb7e384140e59526cded44e2b12d9c5"
    "cs"
  end
  language "de" do
    sha256 "308f9469625569f740551f11e190fefbf7386e38399fa30f0f56df34c9372fb8"
    "de"
  end
  language "en-GB" do
    sha256 "2dac84170c469965268a0966f7a476df68ac0477244b578e63ab0b6d89309d03"
    "en-GB"
  end
  language "en", default: true do
    sha256 "82c76a0a65d2a50d42ff7b843cbbbd32b7fc7d2da7e1b6dfa4f35eeefd3d9175"
    "en-US"
  end
  language "fr" do
    sha256 "d09fbd3cc97f6f3ca25292164e2c480a46b4bf534319dd6ad8dd38abbede08f8"
    "fr"
  end
  language "gl" do
    sha256 "a96cb2960a38874eabe2d7ee06cbdf03ec3f2323d7e4c85fe65482eea9a7b029"
    "gl"
  end
  language "it" do
    sha256 "1fd85a16744e6cfae577face13921ed6fa8ed5d27edccca6ea829e2b043330da"
    "it"
  end
  language "ja" do
    sha256 "0ba14bbaf6bd4f65df69d3179680156d2578e689120fd2a3afa1382b808a104d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ca1209cb8c8ce525c00841e024a3da8534dffcd776ebebcde4fa31b6e1a21f5c"
    "nl"
  end
  language "pl" do
    sha256 "1905a0fed491eade6876ac5fe39b5c9bc6605d3f131cf4b8b1344efe8e08508b"
    "pl"
  end
  language "pt" do
    sha256 "dd0c84131e79ae920200a736ac32b34078d069ee33065b4d91a44751784ad64b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7e768d7db0f4542e661706fe153e1535f051983518a5c98152235d09b278cb8b"
    "pt-BR"
  end
  language "ru" do
    sha256 "868fd0e8fafde93f5078fa08826a8d8d99e1cbbff7e27022003e15b823b253c1"
    "ru"
  end
  language "uk" do
    sha256 "0a9078151ab977798dc9015f56245dd2ca85ebff5714851231b382e98e3a332b"
    "uk"
  end
  language "zh-TW" do
    sha256 "f189aa487b1235b13b6694725e61a755b3be9d0c153fc18fdb55d0fa375241c2"
    "zh-TW"
  end
  language "zh" do
    sha256 "935ef79b53bac8490d180b7182da082c52ab4916503360d97aca7516ed6bccbf"
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
