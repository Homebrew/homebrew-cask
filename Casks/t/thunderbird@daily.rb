cask "thunderbird@daily" do
  version "142.0a1,2025-07-10-10-20-52"

  language "cs" do
    sha256 "5f2651d200255e3fb2bb33e80fa6edb1a25c6885ea2618198fb6301f67970152"
    "cs"
  end
  language "de" do
    sha256 "4c24210c0d31159aa6a30e4b3a62ee2e2e0a13776d421039871e0e24f33a8fbf"
    "de"
  end
  language "en-GB" do
    sha256 "811d6cdab0c753d9e27fd82b440a68e3288607a7840b7c7bacabc651cbe920a9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "60cec2e2f0724feeca984c42fd594bd16271d6c4336c1950eca78368e0898522"
    "en-US"
  end
  language "fr" do
    sha256 "4c094cd367aab237ba51691a44250bde7d2bd23107dd96d00db4ce91895fb2c9"
    "fr"
  end
  language "gl" do
    sha256 "2239fa9924e82e7f4c8ec37e766238eb4bf2007903ac586c51f9e789525c5872"
    "gl"
  end
  language "it" do
    sha256 "7ec5e10146db071f191bc13446965555b03d09aae8107e8c70ef94cefa18fdf4"
    "it"
  end
  language "ja" do
    sha256 "bd5802f0a4b59e99b22e981931077f630c5f34e2899345b61a5e8d246e7cb953"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "63ca8ac441b9abb0922b0d6bf780101cd54a6b6bf49e498649134df24b36c280"
    "nl"
  end
  language "pl" do
    sha256 "c9eb753f0a135f44b8520e16cbbee620464635bb5072318c2f69219a1cada68b"
    "pl"
  end
  language "pt" do
    sha256 "d6d3f591b64b945a10a5e38a0025da82497462904b9fafcaa4fed48943b8f5bc"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a62359d72878054991a236f8e5fd3a17de4195d5c1345d36d33b1b5df10a78c4"
    "pt-BR"
  end
  language "ru" do
    sha256 "59c8c7974e815d83d8b40521029095f7d6d6b6d2b063c16f64e9d811f04ef124"
    "ru"
  end
  language "uk" do
    sha256 "bec523fcb414a2c744ad9bbf5d8996f771c5a5899878614209659013cd233890"
    "uk"
  end
  language "zh-TW" do
    sha256 "8023e180c1fa22b173f1392f755c52b8975b38d8f91d8211751b1c206ca08f02"
    "zh-TW"
  end
  language "zh" do
    sha256 "a1ef9f04a8c4fbd99bcdfb16b6ce965ee75230679b23c370ddba92c3f42290ad"
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
