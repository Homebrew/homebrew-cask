cask "thunderbird@daily" do
  version "163.0a1,2026-11-28-09-34-31"

  language "cs" do
    sha256 "5441c2e897d5afe9c04139b043a19f5f7bf771cc1e5f2fa2594fec29bba49968"
    "cs"
  end
  language "de" do
    sha256 "30db4a60c9880ea2495dd19b11301100e257e976641c69e5f5bbc9eb0501b3dd"
    "de"
  end
  language "en-GB" do
    sha256 "b0aeb8b7cb9ab97e13c1e1d342c4b76d6aa31ce17d1925afc3f0afc3aa5fa762"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9790899afd080166f9eb37e5040a5c4a53769602f76cce0bd9bb73cc353f7ae9"
    "en-US"
  end
  language "fr" do
    sha256 "b515151aee6305f114adf2611eea8a11a91d3c2fa08c079804bf0b277c2ece29"
    "fr"
  end
  language "gl" do
    sha256 "50e95f3545e177070e585fcf5d5bbe2481c576e6042a71cbb311f7d00bf91c03"
    "gl"
  end
  language "it" do
    sha256 "4e71a911f642b37632aafe0b24141b19e0ad8697e827e6c13cd18cc27d95ada6"
    "it"
  end
  language "ja" do
    sha256 "00a67b3e781c8999da5bfe09a7524dfc4b85fda5ad61c13751b9f0620e3f03d2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bef53851daf04270059947abc71a8cf02e829fdf3109853c1baa3e6dce50ee96"
    "nl"
  end
  language "pl" do
    sha256 "17f58e2a9844543c2a1fc98402a5d6917a48485d64082c4ad00acfbd2cf9182e"
    "pl"
  end
  language "pt" do
    sha256 "7f39ce1487c3e141e38f3fa2e3b071a09baa7080f64cff036b7e115a9c871352"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f64f03a4a301c5428d314fe3958db1d624449e83bd4beba81e776f2c58a7f093"
    "pt-BR"
  end
  language "ru" do
    sha256 "e71be01ccbf020b8a88d28925af8e80b19ee4d8b54c82c0592a79f13e4e9ceba"
    "ru"
  end
  language "uk" do
    sha256 "0be7c054bfb469d19540d4e53d1492326ed62b968a30c69e95512648473f0e35"
    "uk"
  end
  language "zh-TW" do
    sha256 "06ec341f08f72f38e693e7855994a039f8f6d10c17590b114efe9a62a5d80a47"
    "zh-TW"
  end
  language "zh" do
    sha256 "cdf0984ef7b5eeff6bb09723263bf485a0f911835ffcf33cd04af1e0a8d8695d"
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
