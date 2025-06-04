cask "thunderbird@daily" do
  version "141.0a1,2025-06-04-10-57-17"

  language "cs" do
    sha256 "58aff7ce728adb02f3ec9d3016013e74b3702dea08dc1e1f925d6927b8b29ae8"
    "cs"
  end
  language "de" do
    sha256 "639300ff8edaa8053cd36369366547b72c040381879bd860bed4a84a24c2b611"
    "de"
  end
  language "en-GB" do
    sha256 "fdd2eb7545133390d1acb4702a798827ce8500bb385565f21e12eb8e4399e1e5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "22544fdbd19c71b4d16715efd8951a20a226c8dff2a8518060437af34ebdac1c"
    "en-US"
  end
  language "fr" do
    sha256 "4376ed4e61f1e53ae5ee8a4316add6f5d07a559c48c12777a228ebc9b6e5871d"
    "fr"
  end
  language "gl" do
    sha256 "e48d9d928f7d84238045a18fc2d4b82715579b562478068eb976ee556dd07faa"
    "gl"
  end
  language "it" do
    sha256 "baf3fe7a174ab4f36ffd657fdf46cbd5bea5121347ebd1a0844ee8b3fb28de7a"
    "it"
  end
  language "ja" do
    sha256 "141021d2390bbe582c4223b4e9b7055adf14e61a01bac5f361a834a206fe0983"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "523d208c8eb0fa3aa79d5e7a6c3ecd6f1e15560a1a879ed0793542779231712f"
    "nl"
  end
  language "pl" do
    sha256 "56a57ec33660d69640e1b95c50af8db7f9226b0aca81239e4b4fdb0c5c55ac91"
    "pl"
  end
  language "pt" do
    sha256 "4099fabb6b3f1bfa662d5d804e605fc5045fced4868c2483f5ab0b66e599fea7"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a456a3f9ad5890e5bb35d492cfc5e1775190b1501b78de0aa019f78262f2a685"
    "pt-BR"
  end
  language "ru" do
    sha256 "4b89917c7d49121e1779683ffc900a0e399f88149f3c7b7e0c0bdad070c13466"
    "ru"
  end
  language "uk" do
    sha256 "392ab5c5522c3edbded3b70d9b89fb75e1f4d8d3458b360ebb7af47aaf298245"
    "uk"
  end
  language "zh-TW" do
    sha256 "53c20fc252b85397cad58e0fe2b5ad5c9594c51dd75dbaec1c42f6b06f240dd3"
    "zh-TW"
  end
  language "zh" do
    sha256 "210aa20a5cb8bea7bc7377416acd9203099a29b72b97ac006e812c38d37ad5a2"
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
