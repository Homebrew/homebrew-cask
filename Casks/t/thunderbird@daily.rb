cask "thunderbird@daily" do
  version "151.0a1,2026-03-29-09-58-24"

  language "cs" do
    sha256 "31e4c94e8eb2fc21af74f93003251d51d92ce2f77bc92bc993b9115885e14b37"
    "cs"
  end
  language "de" do
    sha256 "bb9ee769427590a3bc2585846cd9f3e8dbccdc838808a5c672d3c70c63b4cd78"
    "de"
  end
  language "en-GB" do
    sha256 "542e24e041509a20f7d4433ad9bbeb6dee6750fcd956b81c828830fe936ca37d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b6e8bd18373c6b0dbdd0d335654902a20771c5510af50d17aa679847d02d6c92"
    "en-US"
  end
  language "fr" do
    sha256 "03eae408f83ce1da54dad61a4f5c2cffe43f6530054942226d54ff186b549fbb"
    "fr"
  end
  language "gl" do
    sha256 "bbcecbdc0669ea037cd7a2f76ff8c701a37bbfd500002ea27a941a01828c6aa1"
    "gl"
  end
  language "it" do
    sha256 "748a54b3bce3bd1ccd5bf5e5f70238c96961de53bc32193299c35c045c90bc1e"
    "it"
  end
  language "ja" do
    sha256 "b7affc47b43cf49847058e8c73ecfd7207434cd2662b301356d4a94163863b14"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "34000e80b13cd00c7cf6489a2ef2b39d6398336d383eb05475c10060895ffdf0"
    "nl"
  end
  language "pl" do
    sha256 "f1517af8bca43200b0e991d983a470f565deba26db98e334c53289ee652ec914"
    "pl"
  end
  language "pt" do
    sha256 "6cd85ffc23791e160fa99cee8c79b0c8205d9a0cc4de2445afe2ce4af187d10f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5b92a5aec4db56841ef8beeaac0a8c8b96b1ebf8719cb62a987efb790dc46772"
    "pt-BR"
  end
  language "ru" do
    sha256 "693f1854a356368b208f9d51ccb6d885c61ee2c2f407233c38a508e43cca51e5"
    "ru"
  end
  language "uk" do
    sha256 "99f48d3ee26a3eac7bc767458cd837e9aadf56884eff3ba908e2bf5e236ebb71"
    "uk"
  end
  language "zh-TW" do
    sha256 "fd2d2f2f67764adfdc9f8b50bba9097ee8817081488cd03221cf65dfbf54b3d7"
    "zh-TW"
  end
  language "zh" do
    sha256 "cc0bc42fd345d630b84f5e156be5eadfb01dd1a508187ccc80656d564bf48664"
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
