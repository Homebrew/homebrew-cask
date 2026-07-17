cask "thunderbird@daily" do
  version "154.0a1,2026-07-17-10-10-05"

  language "cs" do
    sha256 "58ce57162ffa7a722627f8a40cf699da6aaf8f0cf446af6d28406b7c11d24593"
    "cs"
  end
  language "de" do
    sha256 "02f6a9369343e356c3725882b93fb9dd9e33e0e8bbcdb1a9d83d85e885bbb647"
    "de"
  end
  language "en-GB" do
    sha256 "6b959bc39d1542dbadc8daad1ce9e78cf92f84db8e1a137ac68f594185da3b37"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c780c262695a4f6cdbfd9d002699ae733809986b0e776ba3d137eb66704021f5"
    "en-US"
  end
  language "fr" do
    sha256 "b8df1537a35c91b37a592a03bb66e384087bbe34d1d51bee12c7e543dfa007f6"
    "fr"
  end
  language "gl" do
    sha256 "bc6428022bae92077016b072921f82de7a356bc8b9c278746b58edb8496aa647"
    "gl"
  end
  language "it" do
    sha256 "f90c5bf8df8c6a15f55d7ab9d428cc3aa0d319c1486142278708d137183b8dd1"
    "it"
  end
  language "ja" do
    sha256 "1fd8e4787cd677650dd3f407bd39fe3d79550dd8de2eda3e9c0d90a2a6e11836"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1c906bf7dcfc35d8c26108c9b8566e386f3a9046463d6b16717bf0ba070f1154"
    "nl"
  end
  language "pl" do
    sha256 "5b9c73d21f445196132e5b14d1ab741573f1cc1a0de85101d20c15ed3eabf061"
    "pl"
  end
  language "pt" do
    sha256 "9d589caaf047ad9e696cfb8d221adf11b246516a1c4b4111ee2866eea18df52c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ef0ee6698fdf8a06956b6177b19543060fa7478abcbefc58c89196b39b54e562"
    "pt-BR"
  end
  language "ru" do
    sha256 "242bfe07976b18b0aa6271a309c0ac1c08ca61282b0ecb8e2026ac2acf0e7e56"
    "ru"
  end
  language "uk" do
    sha256 "a779262b561baf809e4a579f10ab49683fddc8784306aaca55b892a2e16b37bd"
    "uk"
  end
  language "zh-TW" do
    sha256 "3b59509b9c27bcfed0607c462b8bb45fc67a22279b7cd70449559ac75dff5d90"
    "zh-TW"
  end
  language "zh" do
    sha256 "6ab551ca9a8ea99f966a9f66ec78881afa9bd42b5660004953720bee8d079ada"
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
