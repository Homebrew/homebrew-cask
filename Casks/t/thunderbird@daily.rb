cask "thunderbird@daily" do
  version "156.0a1,2026-08-26-09-53-42"

  language "cs" do
    sha256 "1a8f49f77dba6dee5eb03191a17fc21d7dfc7a5dc109959d8c9624b39e50c93f"
    "cs"
  end
  language "de" do
    sha256 "4e53f7a6d20b0e36b4b8b82de60e73051e95fb58809766b5ebd051c800a59914"
    "de"
  end
  language "en-GB" do
    sha256 "b6ed689dc91dd7553d630bf6cdedc93e169e153c8f5fab8f36b2178b5882870a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "37fa9ddc06a265a2ea69c9a3c19766b6ade5f477d379ebad32de09febdfc58cb"
    "en-US"
  end
  language "fr" do
    sha256 "51aedde4ad30de091cec07823ced7ea5ecc9b9c2150c3ba17fa36f70a0df7425"
    "fr"
  end
  language "gl" do
    sha256 "dc6669345801d46891ad516a5c84cb8b52cad4b8bbe90f5e26338f3a36aa5db9"
    "gl"
  end
  language "it" do
    sha256 "ede8b78828a2b137d4112b370b0ef0ea7ebf62caeaeccdf7ed6f9205dd126ab5"
    "it"
  end
  language "ja" do
    sha256 "1fc39505e7af3bdbc06dbe94cde73488372f1edab88047b11ae77af212b9f7a5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "604b61f108ac536cac6a104c3aa76702ae7e7fb63725542770598ed71f5639b6"
    "nl"
  end
  language "pl" do
    sha256 "c0325c5bf204c0a7457d1f6ddd4d8caaecdb5015a39e05c66c67666ba21460a7"
    "pl"
  end
  language "pt" do
    sha256 "0cc4de7c54c31aafffa9f4ba237d8cf58d3a54cebc4471e103f77f4fb1d453cc"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c8b3f95c8e7020d701546a0d75d9d299b81acd7b462eb5f6a877312511bd2d92"
    "pt-BR"
  end
  language "ru" do
    sha256 "41b503a7e78c544524a5a3180792c1a58d4dbc8a219b1a25973cea98e9b2dd49"
    "ru"
  end
  language "uk" do
    sha256 "d6fdbd449581e8e07f281af876fb77533d6db8e7760f0704d24c33ab3f4e90bc"
    "uk"
  end
  language "zh-TW" do
    sha256 "52b459cf6b7fc00beb1e082b9c4f27ae64126125d8aab0cadc436f3bb7a04faf"
    "zh-TW"
  end
  language "zh" do
    sha256 "345abde9d24a792dbe48ab0c93702fca1f86bcece47debd91af01c7c40eea4b6"
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

  uninstall quit: "org.mozilla.thunderbird-daily"

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
