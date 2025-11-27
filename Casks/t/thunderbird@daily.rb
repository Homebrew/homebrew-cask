cask "thunderbird@daily" do
  version "147.0a1,2025-11-27-10-29-01"

  language "cs" do
    sha256 "bfc53edeff6f1977e0fb1cf8644512ae20c9f7bed846d1db11b10e10a04ab98d"
    "cs"
  end
  language "de" do
    sha256 "882c5696b154f7b04bcb24a7e2e3f65e80fe0d864188bae9df1cda8bbab5ed27"
    "de"
  end
  language "en-GB" do
    sha256 "906c53badfb558d1e62e6d676c005763f93ac2e3e43f5d26e0e6a4a22b5fdcd7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4c251556cdc5f7d93c16c9fa32abed258ae8803949b529d4e36b6bffe2d445b4"
    "en-US"
  end
  language "fr" do
    sha256 "606a733e7fe15cc5a23127cd7daeb6386ca30e8f7c90f08bbec48b07770309c0"
    "fr"
  end
  language "gl" do
    sha256 "df00e93398ea3936bb198443f0db4cf6276c1ee6f881f727a89945c665fb22ea"
    "gl"
  end
  language "it" do
    sha256 "6dd2e369a9f249d6494262c74b16512e41a479298ea85ea98b18e8d224fad846"
    "it"
  end
  language "ja" do
    sha256 "41b7564dfee5aa5317af4d90933622a6798ce7c80062849b523feccfd7c75052"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ee1ffd945d024a6c566ae10bd47d7110d509e736700d197b80f6cd121b397273"
    "nl"
  end
  language "pl" do
    sha256 "0efdd079245556077c71c5f714d87bcee926a05c819bad96769cb984aaf79396"
    "pl"
  end
  language "pt" do
    sha256 "1b08d953e7e09b31b19f6f229c30b0b77b3ac5cb74302b4d0654779bd104d95c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1995783cb8ae5059308512a863f6af278c0fd34d52906b56339e64ff3e46ab88"
    "pt-BR"
  end
  language "ru" do
    sha256 "9d91b958bf251c8ff157a28a40c414387ccf6981557cc2729c5632d1224c3825"
    "ru"
  end
  language "uk" do
    sha256 "e82d38b4463bdbcb6a9c037470d077b7eb37e0e30498a73ce597359a53fe27c6"
    "uk"
  end
  language "zh-TW" do
    sha256 "18c16883f0c1d2a93b77cb06f408b9dd08d8f29159d096659c9ffe83e95b554c"
    "zh-TW"
  end
  language "zh" do
    sha256 "66006e8d09c8be72ead666564b4858a3eff64fd3329958cac75d3986b789e709"
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
