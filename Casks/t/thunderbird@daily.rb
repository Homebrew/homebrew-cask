cask "thunderbird@daily" do
  version "146.0a1,2025-10-19-09-57-17"

  language "cs" do
    sha256 "ae266e6e79eda2b305381366d46e1b8fdd41504d201831bbdf39bd9e8564f51d"
    "cs"
  end
  language "de" do
    sha256 "22763f72ffffb6f08255564e9a56283deb28ed5cdabc98996849de8c0afa0df1"
    "de"
  end
  language "en-GB" do
    sha256 "fa8cd53b381ada9672c6474885fa830065f8525990626837a49f997dc6d27380"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b36ef9292279a03c5eb9d65b29fd8ab45de9b3a4fbf103bdd2e19beb58e25244"
    "en-US"
  end
  language "fr" do
    sha256 "2c80aeed00696b7b244ec7c87c87ed534ef1709ab79aed25f7d8330c7d31516d"
    "fr"
  end
  language "gl" do
    sha256 "2f10660d0707a880cb9129777579f73fb6c56c621872d623bd182a79b7fd586d"
    "gl"
  end
  language "it" do
    sha256 "037302bb8828b7ee6f1dfa5bf4832564ea54b8ade6ae2a87154b236896db02ff"
    "it"
  end
  language "ja" do
    sha256 "e18dfcafba00594f9df7eb36c7b4e6a3b6c9a40b128aa335aeaf8dea48db4f02"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8689994ca2bc5a9f60f203e3c2a22b8c83c5a1456ce551adf1d975a9326781d6"
    "nl"
  end
  language "pl" do
    sha256 "19df5b7a622a9701513dfcfabec76fdc6c70f37937f0edc6fc87c886b12e7f40"
    "pl"
  end
  language "pt" do
    sha256 "44887b7101ad18c2dad4c7d86f762caaaa12bf31f7cf6bd4ad4148599994260f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4ac72387a06a9d95f1f83357196342be64d99b2111a8488997e1dcb310293884"
    "pt-BR"
  end
  language "ru" do
    sha256 "171cd689bb99c66fd84de7c5ec881a421fe6c0639221dc12ac03364c14d01778"
    "ru"
  end
  language "uk" do
    sha256 "32bd366bb7033b55a123aa309c813196d9c5f38995a842b2649e88549eab30d5"
    "uk"
  end
  language "zh-TW" do
    sha256 "000789945194dbdd6cab126882c87a309a46ae120ba539a90fef5de30661139b"
    "zh-TW"
  end
  language "zh" do
    sha256 "8e707d2368d7f065a12171859fb9d2065ec0d3ed73f4daa7d2e206e67a0831e6"
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
