cask "thunderbird@daily" do
  version "145.0a1,2025-10-05-10-26-42"

  language "cs" do
    sha256 "f3018bc0c8341171bcc7be6783ac0c116f2dfa9ddd20517b7674d7bbd4de2401"
    "cs"
  end
  language "de" do
    sha256 "7726d96dadb4ad40aa5aa6d98d150085a8f4cbd41f56de5443844717b0e1e552"
    "de"
  end
  language "en-GB" do
    sha256 "35841a5f4e01df60ae8ed5319d94931e99cd02d8b9642a43b4c8c3ad5d815503"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3e0bef62231b060e26cf92e3a370c0093b863bd7af5d2096bd99c7031e8fb69f"
    "en-US"
  end
  language "fr" do
    sha256 "59529abe5242c55649c82a92402037ad664367ed692fd5bec7beea43bf26edc0"
    "fr"
  end
  language "gl" do
    sha256 "ae7864af51b2945dacba8d3b5b047f40619f3a237c614ddc553764f7a72f273d"
    "gl"
  end
  language "it" do
    sha256 "0989692f25ac1d947660c0194d6e3bcd6cb1204fb93394cdc397b7383a525f54"
    "it"
  end
  language "ja" do
    sha256 "95973567e451b51fe06a3f881cff5d3bb7a91624f511a9b4c189725e00304eb7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f6a1162236129f345a97750dfe8d305940ef83eb4e2c0f804fba5654b89667d6"
    "nl"
  end
  language "pl" do
    sha256 "465c7aead83c03b0aa0c97f800db8cdd56f214401c47374d624b0a327d111f80"
    "pl"
  end
  language "pt" do
    sha256 "24614354cbcfdd3d90df621d1d7fd3ba8df30d3db195ee0ec614ffd66343cf6d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3cbd597258a3086bc4f85ecc945950274727cd2394ffa9fde161dc1854b4dd77"
    "pt-BR"
  end
  language "ru" do
    sha256 "105e42af3b81307af31f74f5b3bc3c8a3c70fec7d896e14e5943ccf2cfaa621e"
    "ru"
  end
  language "uk" do
    sha256 "d20103a84f6e8e93fed795f143f79e014fdc5aa1cd85fbfcc8d0c0803e2f9121"
    "uk"
  end
  language "zh-TW" do
    sha256 "36d6d5796b17882dbe298bd40c274b24d1fb05df42639d94d15e45019abf430f"
    "zh-TW"
  end
  language "zh" do
    sha256 "0b7ebd519c583025c672c8d29c2ecbd716c347eac6c25cd47712a871c7917e81"
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
