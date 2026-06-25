cask "thunderbird@daily" do
  version "154.0a1,2026-06-25-10-22-44"

  language "cs" do
    sha256 "467d5437fd4f52f699779264b24bb91afa589a92ad318c62d7fb081a8f41940e"
    "cs"
  end
  language "de" do
    sha256 "bbd3910c0da1828cbb8adb390395bdf74e413442c5a77de043c83cd5ac959c54"
    "de"
  end
  language "en-GB" do
    sha256 "32c126e612e28d082cb2a5d26da08b1a0a58c1cb4bb65717424a351eabeadd4b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e699f9fe40c0b8d6747098fd8aa092357f649f270dc7df69fd343d651fe15ff9"
    "en-US"
  end
  language "fr" do
    sha256 "3d67ae52b289ca5fa0702363b09fec05dc5321721395f06333ac60f83323bec8"
    "fr"
  end
  language "gl" do
    sha256 "98e00b9dfa97e8bb0cf6a63bfc27802a787c5a539480cd804823072544d3862b"
    "gl"
  end
  language "it" do
    sha256 "a72367bc4e6b925a6e01b1c91f9ec51e6566c96b4031ee182292fe185ebbb8d9"
    "it"
  end
  language "ja" do
    sha256 "d90e063765ffa5e151d9b8c86e46974204368f143c39c83dd6784fbaf3540154"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f49242cdf4839a5f2fdf08753dfff1713e052520f07f64d737b807dfdc9ed002"
    "nl"
  end
  language "pl" do
    sha256 "75238e0abeca92ff4395542df16ef97db95fc689c8b188297062318a6943ef37"
    "pl"
  end
  language "pt" do
    sha256 "ab564e97f823aac27b59db7e612b4d6f54bbc3096a48ff2ab33c2ff963de0ebc"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "18b226d851733cb6c3ed6c130b91c665ddbee0c7a3238907aa094baf2be79ef2"
    "pt-BR"
  end
  language "ru" do
    sha256 "6c172fe75aca59341d780a2088b15dcad4fc9c1bacdab50870dec8261bf2a3bc"
    "ru"
  end
  language "uk" do
    sha256 "6df91dc45e0ea13f6f189e4b885ed9c006b9d294757f9bcffd2595d0836e587a"
    "uk"
  end
  language "zh-TW" do
    sha256 "d55333eb146a2c441519eb44d2dc1509d463ace83c5d5bc5b11924148302979b"
    "zh-TW"
  end
  language "zh" do
    sha256 "fb441943d68347c1591c9767e4e5afaae8d53decbc5412348000a19dd6d5d1d3"
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
