cask "thunderbird@daily" do
  version "144.0a1,2025-09-10-10-09-17"

  language "cs" do
    sha256 "bed781f230d12f735b7a6152e86f598e3557ccbc1dc2447a24c99fe386157e9a"
    "cs"
  end
  language "de" do
    sha256 "b7e14ed43ace5fb6418d51cb75ba21e225af638d521b040e488a7b3e6dee1444"
    "de"
  end
  language "en-GB" do
    sha256 "3cc3f7cb21c0c1605969d89019dfd3e585403c705cd1e827569db90fb913a987"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c3151a860ef1a52651208f5d2e8f2ee9db31c4419c92634c918b2ba0442865f8"
    "en-US"
  end
  language "fr" do
    sha256 "6d600606eba9eb9af512416212ef314b8bdddb176ed328e900b8d0b2d112886f"
    "fr"
  end
  language "gl" do
    sha256 "6cacb1e464008ad267dec5c9757ca4714cd10889c86f39a9264be1234d6add5f"
    "gl"
  end
  language "it" do
    sha256 "8c95e930edd836115ec85c47dbbe925a131ebbde574e93c4e79260b937f19321"
    "it"
  end
  language "ja" do
    sha256 "c96aaceb90052646048b780715bb02321884a0ac4c70ce0ef692fa126db2dafd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "105c5d3fd910972d2ac03f0f6dccae78da4f8a1eda3e1655ba3546927b47f638"
    "nl"
  end
  language "pl" do
    sha256 "bb79af0bce29ecaaa96bc70c8437dce50f44c5f748689aff7b99f8b0bf3a7433"
    "pl"
  end
  language "pt" do
    sha256 "645243465d5a721f2a44d80ef94e20771ee9a2a6625e35f120817b931425bdca"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "043a4a6e771c1c2c9e0a28640be0ed535fd94f46f96c190b1301f9cc04872223"
    "pt-BR"
  end
  language "ru" do
    sha256 "2e4b4c8dcf6724b1d55e0a91fa2ed4846d8f6e6f0507c14e2a98e28ac861f7ca"
    "ru"
  end
  language "uk" do
    sha256 "63395888e5b82c23e9019ecaab0fd6bbfcbe2af688a99e15bee22d377e19cf3a"
    "uk"
  end
  language "zh-TW" do
    sha256 "747daabc028d0921bf7ce87c7064efaa8a5361fc380bf6d4251fc845c5e06830"
    "zh-TW"
  end
  language "zh" do
    sha256 "bb5f8944009ebac5a5fb11e5c38dfafa06320c1d77dd1203c92ed280ad24cc48"
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
