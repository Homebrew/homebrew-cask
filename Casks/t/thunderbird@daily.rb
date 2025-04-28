cask "thunderbird@daily" do
  version "139.0a1,2025-04-28-10-03-39"

  language "cs" do
    sha256 "a31edf29a68d8a85fa66c96369af9e22588d7815dfd71ffd463e2d6e1b916f07"
    "cs"
  end
  language "de" do
    sha256 "a6e1e948f4fb0ae3bcedebe613cd39f64885c97f8cd76a6109399ad3c15cfc98"
    "de"
  end
  language "en-GB" do
    sha256 "8b7456a135cb69b36be62e64024f8c17d9006122d050cdf1863173c11a958358"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cb30b88507b930e542ee55a99a2d0fd34ad4b4b3487b4c54ee0877a779877300"
    "en-US"
  end
  language "fr" do
    sha256 "9afd4fb252809d83908311652f1cd5464a34434c39107314d4239a9970e8f453"
    "fr"
  end
  language "gl" do
    sha256 "848c8b854e6e04c2d10b34a01795863de9a32a16cb5c0d3284bab095a034b612"
    "gl"
  end
  language "it" do
    sha256 "16b9d58a1b901d7f0e1b14ace2ec1593b7d18f74b4a7e5d856b7e9bc56871d0e"
    "it"
  end
  language "ja" do
    sha256 "885773cfce81014083f4c8e2ccfe70ad7a803cf66b9f640e54f888911109498a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ec94d52fbf4ba0941d9ad863cf900855353c87755a9dc1c58fc3ff8b8be33a5a"
    "nl"
  end
  language "pl" do
    sha256 "3da8789216bc841312dfa39d241b3a33fbad5b5cbe0abb42d59277f364badbee"
    "pl"
  end
  language "pt" do
    sha256 "eb32fe657496e34a2e85a0d093e2708cb4ca1662d64b67bd0d579621e97a0136"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c369554ccf8ada1be5274a7cb4ac5b8d96dff5a0c5a703a53ed3a9fd9525fb91"
    "pt-BR"
  end
  language "ru" do
    sha256 "cc871e504de787cdca25f2c0e2b46e99273736e7c903237a3805c3f076cd84db"
    "ru"
  end
  language "uk" do
    sha256 "f1bf43ccdc84b4f51b21ff932803357bee81627615eeaa2b0e2d2476845ac396"
    "uk"
  end
  language "zh-TW" do
    sha256 "349e0ad7a2509dc9463ff0bb805a7def4308a92f062446494356907d68723b54"
    "zh-TW"
  end
  language "zh" do
    sha256 "113d0c8240fe35dfaba1fa768f599be83c432fecfefe445627842a1b990ec0c0"
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
