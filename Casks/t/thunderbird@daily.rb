cask "thunderbird@daily" do
  version "159.0a1,2026-10-07-10-36-18"

  language "cs" do
    sha256 "2413bb5d477e6181de6628d0a2535a09a7ff4483abab0b2f716b298a6900097a"
    "cs"
  end
  language "de" do
    sha256 "476cf2c00e12661c6ad93ac32a4dba66ab2c249fa6e0ffa547972e017df8f719"
    "de"
  end
  language "en-GB" do
    sha256 "0c8d3732ca872e1da0758299e817ca8332fef13ab14ad8769b6d038010615eac"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b87cdced8e7e0a668c1df48123ed93c47198dc8e42693b70fcd78e7f26102752"
    "en-US"
  end
  language "fr" do
    sha256 "dd70669d95564fca20aab8d9c7ed1dd56b6415c8eb58fa3432b6279113358498"
    "fr"
  end
  language "gl" do
    sha256 "628de20522ebf9e15bcda035376399c1f4f280f5dadda3687dc4b8a9be7bb1c0"
    "gl"
  end
  language "it" do
    sha256 "691a1c3b0a9511bf592e61187873d1fa828bc005ec3dead752fa304d42987c9a"
    "it"
  end
  language "ja" do
    sha256 "ba8dfd77fef56da2fec2a82f7da2101668952a7caf1464ee3ebee3692c9c20fe"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0438aa8ac4f025e6962238925cbeac79a79979e3d03f75918d1dad80b533e91a"
    "nl"
  end
  language "pl" do
    sha256 "26c10dfb26e6b0baac6c837ea9ca923f19278d082ea75b5409dbc7548eb8667b"
    "pl"
  end
  language "pt" do
    sha256 "0d0cc0fa1f73c0e1eb4b20937722de53eff198160647f88b03f969c27938b928"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6662335353d27a3df2396f97ef065e9dd17331f97b847bb01c9c00ac0cacf507"
    "pt-BR"
  end
  language "ru" do
    sha256 "426770b392e031de106650e17f9eefd81fba68b86f655cc86866037ec8dee200"
    "ru"
  end
  language "uk" do
    sha256 "c616eb3ab41aa32b902065a5b9f51d81ade025568eeb56f91b529609e6c96649"
    "uk"
  end
  language "zh-TW" do
    sha256 "a3d2fd67c82a48f79d05d943afcd7a6ccdb70a2b9a9c2e17f850548f7618d777"
    "zh-TW"
  end
  language "zh" do
    sha256 "6ccda66b5a092b05af9681a01851545a9df0474af6301c7215d3b2d6deefbebb"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
