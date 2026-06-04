cask "thunderbird@daily" do
  version "153.0a1,2026-06-04-06-50-19"

  language "cs" do
    sha256 "6f2987d82ed6b87bbcd55c391a9f2e7fb5d67368ec867ed9148a9a3e36d2611a"
    "cs"
  end
  language "de" do
    sha256 "ff70c0fb7ecb6c871b0f4c8c9a2f108de68c67374dcba1302da85e81da9a7170"
    "de"
  end
  language "en-GB" do
    sha256 "52562642ab0239dbd7b7cf4096fe9564f7664b977cea3c1d9c989f8fa4d5e762"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5ddb3c9e60b637fefd497337af4bd24a065afec9376156665dc2fb2ab5fc8ca3"
    "en-US"
  end
  language "fr" do
    sha256 "fb1708a854b1bedf6bcedd46e6593ffdc290235e8cdbc9ffc6f6ae8714be7497"
    "fr"
  end
  language "gl" do
    sha256 "2e11b832bd4ef69d6b76006f0a0132c1ff59ef6e52f0348a5fcaffad16343cc5"
    "gl"
  end
  language "it" do
    sha256 "dca9f5292783421d7d6983471846e2c7bdcf43017760d47717675c3e6ac19750"
    "it"
  end
  language "ja" do
    sha256 "468590d07eca8f182802fb4a22f1e6b4ae4105a1f3296c8ab177490c3124d326"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9f3e556788a8658c94ed4a798f532130d5ad9bcc7d4d6f0f4269d5ea4e0f04ff"
    "nl"
  end
  language "pl" do
    sha256 "525f21da8a9cbe40ae2904a05567239a4a5b78f8c1982bddd3da5de05c8fa443"
    "pl"
  end
  language "pt" do
    sha256 "2c8ddb402dc6e82084ec5ef69d982eca045e505be0600c61732e096b820b17b4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3b69beb73554cd3b53cf1f300091e80025ea7761227efed5e4ddb870a0fcc492"
    "pt-BR"
  end
  language "ru" do
    sha256 "aa15c0674cc1870d833e13bd13f09a41167a94c4121faa6c3b03cac1b634ddce"
    "ru"
  end
  language "uk" do
    sha256 "cc30b0f0342fb0e710f12c5cc0a00761cf5fbce17f703cd370ee620bc3ce2eb5"
    "uk"
  end
  language "zh-TW" do
    sha256 "6edd84f44fd5ae0f6ea19b185f21ffe635f7a01836de2f47108c099a20eb64c5"
    "zh-TW"
  end
  language "zh" do
    sha256 "35088da9c684dae73abc7f219b52932fc3bf4c2be5d88db144c133335e823b15"
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
  depends_on :macos

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
