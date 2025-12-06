cask "thunderbird@daily" do
  version "147.0a1,2025-12-06-06-57-52"

  language "cs" do
    sha256 "ba517451c27e9752b052f85c3fbb58052bdf051e8990755b7695c53416350185"
    "cs"
  end
  language "de" do
    sha256 "588c36c3249dc7c6df9f60c55c7cbaff7936cdf16d5cb5cb1433989e55b61b86"
    "de"
  end
  language "en-GB" do
    sha256 "32e6822116066d8b38154509be8f7feb9d16eaf39057646d5c3152ef6a89b63f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "87539800129559986febe4fe7fc8413949edc9759a4c106a407448d4d11af9dc"
    "en-US"
  end
  language "fr" do
    sha256 "f07b494a7165ebd71d13ea8f5c5c6a528f16862ae70a0a32d6d9f3c51fa301d3"
    "fr"
  end
  language "gl" do
    sha256 "ce704f1d8cc6f98fe722e0dc3d2917a45ad727dd9ded4c0a244f47ba4d11515f"
    "gl"
  end
  language "it" do
    sha256 "03f7363006f1fa6f3a309a8a3d5c0fff6ac345bd66eda8c9f367190c646ed387"
    "it"
  end
  language "ja" do
    sha256 "1d383a68b614b2386cec1bb646bb8e644ebe6f597b91c60a2ce3b0e59e354aea"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "200dbc139a5098a5f028de9d63e16be53562d968ed42067489b9f391ad12b827"
    "nl"
  end
  language "pl" do
    sha256 "c0b0510ab81980aa7a052b99dfcf1bd6b5546ca8233ff419cef9fd7ad29c6edc"
    "pl"
  end
  language "pt" do
    sha256 "ac9e2feeb81028c8571d5f951087e87003546851cdf0d81ef96832e048baf1a4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "05752b8352b96e1edd12f09ad5d4748095522357594f7c2ec66673281206ce56"
    "pt-BR"
  end
  language "ru" do
    sha256 "b73cf2a258a0c53c7a33f2876c72b7b31f9b65e269e5906888f8529ef560a211"
    "ru"
  end
  language "uk" do
    sha256 "903109c1e92c2c1b362411ea0b5a3062958d98b2fca64b489da28ddd0b577bf0"
    "uk"
  end
  language "zh-TW" do
    sha256 "2e2375fce09ef4d9a18950e359c674519f5ddf53160e23cbaa47da7a9dc4e501"
    "zh-TW"
  end
  language "zh" do
    sha256 "ba19adba04b332cfa84241f4b2363c6cbcb69501f565ab41dd7db084ae2d66c8"
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
