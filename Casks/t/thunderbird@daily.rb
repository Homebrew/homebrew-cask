cask "thunderbird@daily" do
  version "148.0a1,2025-12-11-06-55-02"

  language "cs" do
    sha256 "24c27d7f34e56f09758e081292a56142e14c60402edc83fe6bc4f0123582c31d"
    "cs"
  end
  language "de" do
    sha256 "6e8590dc6fd9627023070a9f7e7c9189a2d1ae457b6fa806b1dd2ca31c33e1a1"
    "de"
  end
  language "en-GB" do
    sha256 "3b2a73521ff97fdcb6e24f68251388c0673c9ecbe039fc02f36d9bedd74f0a0b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7cd0facff76fda164f4617f6ec9372ec71fe25d33bdd49e1bc75502ae15f4133"
    "en-US"
  end
  language "fr" do
    sha256 "7ca8bc10e2dc4075cf5734da23d9eac07cced07c5b8f8ec827aaa26ffeaa47db"
    "fr"
  end
  language "gl" do
    sha256 "883895cf4e1957dc769f34525d31b53c48a91e655c09a54b441e9d2a115efcba"
    "gl"
  end
  language "it" do
    sha256 "cb27729621629229dbb45c0e2a98056c9f916fcff635b5d3d983f2742089d00e"
    "it"
  end
  language "ja" do
    sha256 "86040a180dea8a8d5a65cb0b40902215659a6100eb61e7cb6548fded1a2e202b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "791e228f7ed8321872d841e26618136faed32bee6bb92074d54bfc4b31d8f6c2"
    "nl"
  end
  language "pl" do
    sha256 "b8b4bef565b91d780a2f2b704b1de77ad9701e6c1fb5916f4b5178ed118a97b8"
    "pl"
  end
  language "pt" do
    sha256 "c3a89c0c65dd10121db7aa4cbe87faf82de8b9313842d5927e0d0d1be9e7a8ba"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8f789fd4f7a87e9d23c1ff1d0ccf2dfec3206f48b96182ae44455fed201ee4ad"
    "pt-BR"
  end
  language "ru" do
    sha256 "8a07d42f76b9ff5057c09f633d55f30d38f5579d4c073f33ee32e52b7628d1b4"
    "ru"
  end
  language "uk" do
    sha256 "9e8bb897f10752726ddbaf750e8aeaa10cf3ce4279e3680912098623e8c6b326"
    "uk"
  end
  language "zh-TW" do
    sha256 "281dea06fa71b74f0f65b6438c88c0840332264ecb80c4fa033b30c854359f62"
    "zh-TW"
  end
  language "zh" do
    sha256 "a5d71ca10a4dd28b47a478e4d45fab841b15cc92a335b9cec8056219c66e44be"
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
