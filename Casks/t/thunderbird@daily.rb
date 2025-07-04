cask "thunderbird@daily" do
  version "142.0a1,2025-07-04-09-37-48"

  language "cs" do
    sha256 "5e3927175abd9e73b28a243e04263d28eda7b20c43de3cd4650cf73761b5d895"
    "cs"
  end
  language "de" do
    sha256 "7c9b746be45b427e527c2665c4201fdd199a95e1d8767892559f0ef23f7eead5"
    "de"
  end
  language "en-GB" do
    sha256 "88c7720ccedda5bb1771667e37557c860dd22136542ac07ff333ef83ddefa429"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dab33e11901eb1cce9031cd4907d2a2f0cf37918b03235f03a4b4ef7aabbc424"
    "en-US"
  end
  language "fr" do
    sha256 "9ffa378522311e8c04c966547730b1854253cc1bd1f9d280fc13f39aec745b23"
    "fr"
  end
  language "gl" do
    sha256 "5e8e9e92b1c6f2a38528a3c61867f3afd2d385de1d14df18a6ee3178a26662bd"
    "gl"
  end
  language "it" do
    sha256 "642757a4224684557375beb8c51be5d9e0ab2a6a807c0144f8fcdb5982022fd4"
    "it"
  end
  language "ja" do
    sha256 "4a05431b30d388dd56ae0f370ba5e9219a60fe7918e3c7aa5a9ec9e7aebbf8de"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "568333cd19bfebfe17831b103a749bf481c4a4f31d3a45fb991612095280c320"
    "nl"
  end
  language "pl" do
    sha256 "2b0f88ebbbc84b7c8b2acea1367d6bef716e878d59d4f567fae900310755fa7d"
    "pl"
  end
  language "pt" do
    sha256 "537e6b7b9c5547c505d91df05c680d8539343bae825764cc0f7ff5d65bc700f7"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5eb31f0972884797fbdd4ef71f33e7f26ae72ddc8807e11e975158bc8e70309d"
    "pt-BR"
  end
  language "ru" do
    sha256 "3ec3d935237204e89f14150b37ede29d008a836aa561f1a07e8a411725b7bcc8"
    "ru"
  end
  language "uk" do
    sha256 "722f5943d36843feb61df310d227e8fafb641ec05018db7ae33e8f412b7a1216"
    "uk"
  end
  language "zh-TW" do
    sha256 "9e97aa3dc15f9bf5cc381b4b5f9f630f23f9ccd52b20fdd892d87862438a53a3"
    "zh-TW"
  end
  language "zh" do
    sha256 "29b50e90165e39f44c072fb5eff98e1db06508b1f58087c86de286b6489ff3e7"
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
