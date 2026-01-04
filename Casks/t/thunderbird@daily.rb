cask "thunderbird@daily" do
  version "148.0a1,2026-01-04-10-37-32"

  language "cs" do
    sha256 "8bc8546dd3d949cd6bd85f96c934ca9688199d07c914938f40cb3876ccb6781b"
    "cs"
  end
  language "de" do
    sha256 "831b0e03faa6fa11edf5cb14af9546717ee030cb17c3c741151fe71d8580ce35"
    "de"
  end
  language "en-GB" do
    sha256 "2821307bd57cce4b0c4e598edf865addf5e90963d2d0b8328023842ac3e18493"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c2fd93ff47f04d270bd48e98c7ec192a2a5aa6fdf2237ced23b9845fc48ffcfe"
    "en-US"
  end
  language "fr" do
    sha256 "9bea9ff751f375fb63d718339be7587c2b3325458b4c765d511deae8320be184"
    "fr"
  end
  language "gl" do
    sha256 "56a6432cea293314aab7bae6a928ce87135fd80dd174a124bf5df792c061aa05"
    "gl"
  end
  language "it" do
    sha256 "357e27545821aac06c819f0ba8825429ad650e7b9bd9a1014e79f89584e9bc3a"
    "it"
  end
  language "ja" do
    sha256 "75d413069ea2695536314cd6673a3ef894f066e1447ba52b2a18c460295b6625"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6bafea228f999e5a93b203ca8ec79b79cbd2783264386b82e989efa30946d91b"
    "nl"
  end
  language "pl" do
    sha256 "82ca0027143c9ea0558c0abf5ba8183e1d28e80da1ec69af131c2eb0a273bf80"
    "pl"
  end
  language "pt" do
    sha256 "1922b66c984f3d75920ea9b9cdf880a01885eb2322b438d6f417f436a3a4ed7a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1b913506310f65b265e059be5fc8c0d04da0fa7588255ba2c3353370b7221700"
    "pt-BR"
  end
  language "ru" do
    sha256 "1e7684e31fcba678979561e9197309f5583b6b3d3c68a463e1adef96ddd0c6b1"
    "ru"
  end
  language "uk" do
    sha256 "8922d53b161296876a095a9bdd62af3bfc4ccf13231305e39fdab4df61fa4895"
    "uk"
  end
  language "zh-TW" do
    sha256 "991e028a2c8d40cfd13b094d86d6121523342f971785ae73cb351f3f3b2a430e"
    "zh-TW"
  end
  language "zh" do
    sha256 "22e888e1af808326d77b359fcb468f5ee8efd4f270161c34c07e2cc7dd5af236"
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
