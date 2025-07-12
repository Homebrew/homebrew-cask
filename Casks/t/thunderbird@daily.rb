cask "thunderbird@daily" do
  version "142.0a1,2025-07-12-10-50-52"

  language "cs" do
    sha256 "d501e9d8f5b9b745e52aa92a0bd109b59b3a80da6755343d11faa4c604e1f2a2"
    "cs"
  end
  language "de" do
    sha256 "d3e0951d08043b4c91e296290c1c315a380c01c6a03f449d473abb9a8e0a3cdd"
    "de"
  end
  language "en-GB" do
    sha256 "efeb499a9f2b0f139d0e78965c01e33af84bef5f19ab218b14bd28e66c804d39"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c9f1ba7dc3c3f991ba37a0b01702e9f94ee64c3a51a03bdbb5a3fa880403ebae"
    "en-US"
  end
  language "fr" do
    sha256 "02914014a34eb821a8583af4c995ce35105ac80d71e06930764664ec741fe406"
    "fr"
  end
  language "gl" do
    sha256 "a88dc599f1f10df3fc02a54b0749fc43aa5987610f3a049ae81ed99d2f9287d6"
    "gl"
  end
  language "it" do
    sha256 "bbe142001ed155109a2b5a2b0c006b409220ff4ebe475270df948a92d17e68cb"
    "it"
  end
  language "ja" do
    sha256 "6e737d2ff6a6b5fc19b681207155de9f7a6dcc60ae837e7ab6876eccf5bdd4ce"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "44fcfe28a3ae05b0eb6984fadf43b3344359ffa855da531a263f162e364edb02"
    "nl"
  end
  language "pl" do
    sha256 "95f8e648da80ba3ca4f765a7c84bf77db5add4780b4b9fcdd003c0b5a4b2d348"
    "pl"
  end
  language "pt" do
    sha256 "1208b51e6751ae927a395959cd1b59a3368043be2686f8d638f2b7ded5860bd8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e1f47a79be64d0333cc8e11a4b917a4af429a1d51cf18145abdf9b86c58cd2c1"
    "pt-BR"
  end
  language "ru" do
    sha256 "9fb3e757254a544273060aea26bed1179c25acc48d577a92d68ccf2c35cb6e46"
    "ru"
  end
  language "uk" do
    sha256 "9791a6510d55ebf074c43117de77669d35afc6364dc95fcbd8a5ede1aa1f1afa"
    "uk"
  end
  language "zh-TW" do
    sha256 "a61808b52268196f54934eb1b0ae18e602dd8a3c38787a0669ef03744a0b3889"
    "zh-TW"
  end
  language "zh" do
    sha256 "51d4f8df37c02c717d0dbb2ffb40b39eccfcb6b1924a94644a5e2375e2794071"
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
