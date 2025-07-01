cask "thunderbird@daily" do
  version "142.0a1,2025-07-01-10-14-04"

  language "cs" do
    sha256 "dad2e533a066bd2afb39e2a1241fcd11145c6acc4d43725119afd46ce029aa86"
    "cs"
  end
  language "de" do
    sha256 "f78bf597aa14c0c7f8ad5a79a9368f2987191a32ce55c50c8561b2b642c221ab"
    "de"
  end
  language "en-GB" do
    sha256 "2b04c75caeea88be171a3cd9cce0841d4f4f09e53d0a4ba2aebbd27614ed6778"
    "en-GB"
  end
  language "en", default: true do
    sha256 "482181a5c265a83684f9610a2aae5bb91d8dc95d75bdf279d518f61af4ca26af"
    "en-US"
  end
  language "fr" do
    sha256 "84d7fbfffc777ca9f800eeb96e42d692bc130bb00f0f57d2f09f7c75b54b7254"
    "fr"
  end
  language "gl" do
    sha256 "dada8ca22a301fc8ccfb702027f23527f57b79e4137e6530c419a98c7a3f0489"
    "gl"
  end
  language "it" do
    sha256 "33747b924fb1e86e0a1eeb02d7f3e047a03503ee09162b98362710694ffe70a5"
    "it"
  end
  language "ja" do
    sha256 "a5302ef3bff65bbe4a28edc65f145b4c7196d04a2cbb64f90fb248bee106f047"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "16af7fa3b3a379c32c0dd4645110c6242fb08ed3a4d5ccb3836edda77365f3ab"
    "nl"
  end
  language "pl" do
    sha256 "520b9cc0bde8e83773860f354dbf75069aa0c9add56963f97864184dad0db4e1"
    "pl"
  end
  language "pt" do
    sha256 "564f7801f5a7041aad4489031aafd6194075f5ccdec6ed28c649d58233af5cac"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4712577b48b3157fd8824f02112167a2bf9a64f0f7ccfd374489ec5a2f857060"
    "pt-BR"
  end
  language "ru" do
    sha256 "cf2bd99083ca0ee72ca000f943d54746156ee410fa071f59bb32a79631f99eef"
    "ru"
  end
  language "uk" do
    sha256 "52d09f628e95f1a088216d01dcd680de110d87db83c8b83564103d81a2fe1170"
    "uk"
  end
  language "zh-TW" do
    sha256 "5398964b884589d7e2f24b472ac9414a8dcabfd48b34a8e150758f9c4fbdd0c5"
    "zh-TW"
  end
  language "zh" do
    sha256 "3ef94cdd70d32a509c6389c4553c4f671c6bfb111871502db22e16d22556d7e4"
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
