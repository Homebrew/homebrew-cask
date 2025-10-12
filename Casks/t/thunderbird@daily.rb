cask "thunderbird@daily" do
  version "145.0a1,2025-10-12-10-57-55"

  language "cs" do
    sha256 "5a9cd12dc94d7bf3274e37fd7c5c58e9abd94b44badb38a14058f01f5f1064c4"
    "cs"
  end
  language "de" do
    sha256 "b81970b622c52ddc6ee4e564b29a8d6304dcedd2277d644ac989e7be624832ec"
    "de"
  end
  language "en-GB" do
    sha256 "84194b967e537a74c8978c861494a5e5cb292e6f390d09b6e889c426f4d04381"
    "en-GB"
  end
  language "en", default: true do
    sha256 "934cc022675a8c455d721b431b833be6ba180da8214f415c073fb5af20616272"
    "en-US"
  end
  language "fr" do
    sha256 "cac523b52d8220bb5dacf6d8764380fbdbe04c4b70176af703f75148fdc76cd9"
    "fr"
  end
  language "gl" do
    sha256 "3629fb63d28e965ce185dc5da108b3786f5ae8b961818e906d4cd3bc101e162e"
    "gl"
  end
  language "it" do
    sha256 "97ccebc5facf20221ee450fa4845c8e7f8aa548c7f2253c9436e552a886fd631"
    "it"
  end
  language "ja" do
    sha256 "29915a183872ecd03999f823d69dfebe214a701cb5636c48cc010e893e5ca019"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ab6aee2d922392b35bb5232bdea29ab4565a00a3d61f1839fefb1ba8d71df54b"
    "nl"
  end
  language "pl" do
    sha256 "e6639b6194691c6747053bf5b677dd4b227823071a961cbb9c60d814dcb92177"
    "pl"
  end
  language "pt" do
    sha256 "95a57549cefb4ba2362bc13f11fac44773f89379c5ea39c631d75f580d617025"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "97c9d98079a859d9b89e36eef858c2a737fae979b1aa7fb82885e7998a1572d9"
    "pt-BR"
  end
  language "ru" do
    sha256 "d2341da7dcbcb21d855f329b43dc02f51c3a3a55874fc16b6cd70b60b48cba26"
    "ru"
  end
  language "uk" do
    sha256 "73d62dd1bc700a081634c4458dbf3d1667beee6005494d12a4c51a2d157bf34a"
    "uk"
  end
  language "zh-TW" do
    sha256 "db15a6d24aef32b2999cbed715c48681c7f64cd000ab919de3406b8d764ff03f"
    "zh-TW"
  end
  language "zh" do
    sha256 "8ca89b168589fa81c70ab6bfc939d273a62d1cd1b6e4370ef844f42833098e9e"
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
