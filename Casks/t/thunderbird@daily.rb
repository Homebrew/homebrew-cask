cask "thunderbird@daily" do
  version "147.0a1,2025-11-26-10-05-48"

  language "cs" do
    sha256 "228abdbf88cbf65b94d8185098996a64e1adfc739de9b1902fbc92b319b649a4"
    "cs"
  end
  language "de" do
    sha256 "7ebe233b6c4b3e565a286e295ade3e52f8b44edca4335e52c07b0e76d0c0cd53"
    "de"
  end
  language "en-GB" do
    sha256 "af87aee20fd64ddd1702db02e20c68f57314cf87d1066871a368adfdad6f16b7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bc01f6637670e6cbcdcb7ec31c7413a45ae987eba598722b2fdcc6b68f467971"
    "en-US"
  end
  language "fr" do
    sha256 "9867d126c01f246e6e170293760719b9d27d06156d73838650ba83d3178f9437"
    "fr"
  end
  language "gl" do
    sha256 "21842de3609ba9c0deffeeb819ba2a6bb328a3eea0bacbdc6849f457a81fcb94"
    "gl"
  end
  language "it" do
    sha256 "094fb66b84c7311ab35608aa715275d89891d70b2253c4c6359dfe498e7d6638"
    "it"
  end
  language "ja" do
    sha256 "3225fe2895f50cbeaf7b44d2b0fb6f44d3cd16ae7bc907ea7948dc620137d93a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "df7c164e07b3b5a0698d7f56e800cf961d5adb442e58adb36e6353768b1b0c31"
    "nl"
  end
  language "pl" do
    sha256 "e4a3fd4ce3024d828785bc6e058aa102a45488df41e8f281be5251c9ebfbaedc"
    "pl"
  end
  language "pt" do
    sha256 "b66fa868011ae41e3e68d02a915c1fe33c0264442d09701638a9a230f55d2d69"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "81e8f0138d8d11dbfdf510f73eeb0e38d818d130ec99471c075f73518123d9ce"
    "pt-BR"
  end
  language "ru" do
    sha256 "274c1134868788c5eee81e23db28867d53c03991dc1425a1a6c919db71c728a8"
    "ru"
  end
  language "uk" do
    sha256 "383dec6a41b7f9c1c73709fb9ea8c6dbb3d9569e0642542b97e9e67dbae21f11"
    "uk"
  end
  language "zh-TW" do
    sha256 "539ec7366325309903145575a7f03174fbeb056cff4966d859e0cc3305f17dae"
    "zh-TW"
  end
  language "zh" do
    sha256 "65e13560e9c8b067c314e34f37dcc3d143ec5e031341bad926d0d094dd157dbe"
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
