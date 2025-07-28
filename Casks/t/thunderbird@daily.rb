cask "thunderbird@daily" do
  version "143.0a1,2025-07-28-09-42-21"

  language "cs" do
    sha256 "d72247f4ce6aea285f9aa60166ee3dc23a7f18bf3b1b67598b6bccf23ab494f0"
    "cs"
  end
  language "de" do
    sha256 "96581c1323bdfbec38cf2c2facff0311122c628d98662f26a81c119025e401ef"
    "de"
  end
  language "en-GB" do
    sha256 "a6eaad1ee6505e00504c75a6ee04dff2a26b77c7c8cff6e6fe67d06a54c363ee"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b41afc0f54edf2f91ef48183a82840cea26e8d4b7fe6b7cf1aef1f62123a0520"
    "en-US"
  end
  language "fr" do
    sha256 "1766c9903a22a34b766b6179b6f193094c64a71a0f2a0b74ea5944b99b6c0f6d"
    "fr"
  end
  language "gl" do
    sha256 "702eb90633b0e8c57253ece9754062d0e462df045335b0adf2a60ab1afbb1492"
    "gl"
  end
  language "it" do
    sha256 "970cf5981d72c6af451a563cd6e8edcca7b5f168ea6a2e7452af65b0dfe7b20a"
    "it"
  end
  language "ja" do
    sha256 "ad84b4fbaaafecaa8eb49f3c6f742e44b0d8a897b3c96367ade416fffaed9a63"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "10dfda2cdcaef316b13fb13d80f0b963dffe2e778b609fb0c40b00fe85ae2d2d"
    "nl"
  end
  language "pl" do
    sha256 "bace9ea03f3a29c307a92bb889b555f115878f3ecc690ba302a90279f87ac93b"
    "pl"
  end
  language "pt" do
    sha256 "bfaff50253f287e72eeaeeb6482f0383efe20357eb8cdf63697a0c060d7c5470"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "899f701d51e316d16f15f4e29d024f85bae73ac102c6e22fc0b5edc672f3ddc7"
    "pt-BR"
  end
  language "ru" do
    sha256 "66318992936363dda36076c81525ef28d1b4ab6b2b092b221271c93f60e18d9a"
    "ru"
  end
  language "uk" do
    sha256 "2011086eeeb09e3d3815dcf4b580f2ccaa43c6d288e20674099f6fbec3a277ac"
    "uk"
  end
  language "zh-TW" do
    sha256 "9d1be3cca9003bafeb8a9900d2046481b161b23b3b77d2cc3185417e652c7234"
    "zh-TW"
  end
  language "zh" do
    sha256 "c63e6276731716fc020efdb8e1bb1cd2348f31e7802190e3a90f0debdc937ca5"
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
