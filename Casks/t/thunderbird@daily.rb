cask "thunderbird@daily" do
  version "147.0a1,2025-11-20-08-36-17"

  language "cs" do
    sha256 "d66a228037a27b483ae9e63540d901472ec360d88d9a91737de2198790a60a66"
    "cs"
  end
  language "de" do
    sha256 "add24c906ccb2cdf4735336a681a50f68c14e07730a9cbfe71fef7bac70a6c88"
    "de"
  end
  language "en-GB" do
    sha256 "1217bd2977caf474bf1a5abc6ae753d1a58ca62926e4bd79c6057949bfaf2551"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e04485a30b4db465c0fc8b1272d244c5456bd532928fb4e59ea49b4174c6b000"
    "en-US"
  end
  language "fr" do
    sha256 "59b301ce6761fd0e9186f797dfaacfd8a306b655a7244b4e9f0e1e57b568f7de"
    "fr"
  end
  language "gl" do
    sha256 "483ec6aeb6619a92a8317fabce91c203447d3de52f5c50fb328441c0ffa0ebd7"
    "gl"
  end
  language "it" do
    sha256 "b45bea5c487ec5c77779d3551823da3a88c619bd98f806ce3b0897edf79f072a"
    "it"
  end
  language "ja" do
    sha256 "6efdd785ac95657e7cba111736f25ff253bf8124e6e60002757fd2af0be3d344"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "212cb0a373095ee0f7d42ef836603fbea62893ef823d28956f33d7670e715f90"
    "nl"
  end
  language "pl" do
    sha256 "262bf2727d26541c91d3ea1ff34f11fd39dfec4a0a4160252572ba587e2f2b39"
    "pl"
  end
  language "pt" do
    sha256 "8c6f50f800eb664424cb11cfa1f490cc19cd5084bf98a0514d26786a88c9963e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1abd9ce78ac695df22d90428f458500ca7e976b24711fd940b0444c01785d012"
    "pt-BR"
  end
  language "ru" do
    sha256 "bf5386b24380f10369ebcbadc6dac89873334793e477ef7b3bc47fcb1c2d3274"
    "ru"
  end
  language "uk" do
    sha256 "91973e91bbb4e5e9a84a4b484bad039c14f6da260d958a051a8f1429954e527f"
    "uk"
  end
  language "zh-TW" do
    sha256 "2e5925636d300532675eb2933f6412ade936a54165fb2b176ccb6c66d044b160"
    "zh-TW"
  end
  language "zh" do
    sha256 "d2a8f2f0296a18cffb5966dd05385a93bddbbed2807ba25c08298ab5f255637d"
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
