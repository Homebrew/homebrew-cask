cask "thunderbird@daily" do
  version "144.0a1,2025-08-28-10-44-54"

  language "cs" do
    sha256 "05aaa1be09192d2c7588814efa5910603b8841138e665ff9ddd2305a949075c1"
    "cs"
  end
  language "de" do
    sha256 "aab546ee89a38cb0aa7cd1609eeee99d0ede152183787ff53f67d44ca6ca364c"
    "de"
  end
  language "en-GB" do
    sha256 "d0bd31b76f6d0b89dc079ee82f342e9ba76ab53ae3b795de684077c92e887c19"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4bfd2e6790d8ea1977ab20d3e349be2458622c2fdcad1bc3bf8a20c9b69ac151"
    "en-US"
  end
  language "fr" do
    sha256 "d55d52e3eeeca901a2baac94f808f18c7a15d6e2bd5d06c0cb1caca5ec527367"
    "fr"
  end
  language "gl" do
    sha256 "9893a8c99f86cf020fc0ab4c741de8980027a3913ed1c1966623f49e854d6d3b"
    "gl"
  end
  language "it" do
    sha256 "2918947dd325597a24901d32c7ffa8694edc995a310c481633ed56f84947ee53"
    "it"
  end
  language "ja" do
    sha256 "9b260a06e8899bc90e813339ea9a63b426a4663d3b4e5488285c16386d96dd0d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "928dbf907cbb7da0d8e742097389234ef6927eb5e2ca3c15a9386bac3945072e"
    "nl"
  end
  language "pl" do
    sha256 "d236827068f57bced66883c9ca24d81025cff95f9734e5126a196202e34cd831"
    "pl"
  end
  language "pt" do
    sha256 "59b57817c7cf2cdd9a67633857b3653ea0e67160d790fb7de08dd86314a22987"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "38d0781b6095bc49272f1bc26c634b78f89f2465738e824d45eef7940c50f46d"
    "pt-BR"
  end
  language "ru" do
    sha256 "b463c2aaf612d218e876453dd0c8ef9f87eab7745a5fa6d90aca9e34fb2cdc71"
    "ru"
  end
  language "uk" do
    sha256 "338873b7abe911f562704e4fa4969f3dc6dcbc95b9d158dbcb0fcba7dfc11d7d"
    "uk"
  end
  language "zh-TW" do
    sha256 "f3542991ebf0da408334d941e13da37a2ce25b482bb1f63e52cacc50c9f6fe75"
    "zh-TW"
  end
  language "zh" do
    sha256 "9f4e1028d0937b61a8baee6b04375a0ca387dd0952e710b0e0034b735e774eea"
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
