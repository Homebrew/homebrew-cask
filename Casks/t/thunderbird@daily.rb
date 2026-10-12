cask "thunderbird@daily" do
  version "160.0a1,2026-10-11-08-48-15"

  language "cs" do
    sha256 "e5d819b28347dddc9176c298e6e31e8a04daf176b6dafbb84d268890980a8f25"
    "cs"
  end
  language "de" do
    sha256 "5b3174204ab8c81117bc1acf33edc4371c39d63da672c2b934c6e8be276548b4"
    "de"
  end
  language "en-GB" do
    sha256 "e58337a353b163486960d839eae08e8efc6a6e9d69e62d1e5f4c612c695c81ef"
    "en-GB"
  end
  language "en", default: true do
    sha256 "96b62fcc3f1a8810bcaa0415b4493c2ee9062584f0bc5f475cc731066cd7521c"
    "en-US"
  end
  language "fr" do
    sha256 "485f647b992eb930219745450a45b93a4803f5ec8927a3f160deb1234a8ba61d"
    "fr"
  end
  language "gl" do
    sha256 "4c0dbb4f79a5442e5697db89af10cce2bad5feba16999d7d38e440e5e242de92"
    "gl"
  end
  language "it" do
    sha256 "786dfa32452a79e7c1561dc714526d7215d2416acadc01cd392d00fc63ea6073"
    "it"
  end
  language "ja" do
    sha256 "b42eedad641032f284bba0ba5f77140d5541d1b89fe49231e9dd9ddc11474feb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "21a1b4f2f95cd42bbc9658923d538aede85d8ee2c1d9f4ccd4039ea28cc7cdc8"
    "nl"
  end
  language "pl" do
    sha256 "e91314f76503d7bc73aca63103de762e02ffc274c7f405ab31096a7d6010463e"
    "pl"
  end
  language "pt" do
    sha256 "5e363211f5d1ad5066b222b9d5e0efbac14569bf52daf87a886c4b251143b1f4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6f5238265f9df1228bdedfda2be4229b7d31bb1b4e9dc37eb46d02828d9b8540"
    "pt-BR"
  end
  language "ru" do
    sha256 "c729b251d75ae5352f0b3a01ec3f1bce29890f29d06fe53c3c363ed510dbc306"
    "ru"
  end
  language "uk" do
    sha256 "bfdd1167923ee2bf433a2c71c9531f25f4c341d9d0c6f40aafd75d4cc1897ff1"
    "uk"
  end
  language "zh-TW" do
    sha256 "e0dcaa4b889aa2a9a545041a110bc8f66192571e1e93a0fe98e9f26720f7c5db"
    "zh-TW"
  end
  language "zh" do
    sha256 "ca61167c48d0f2afd40a5fb1f22da312324de1dbb9b2395a7cc49758a9b92a69"
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
