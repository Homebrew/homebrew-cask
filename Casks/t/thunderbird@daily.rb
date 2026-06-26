cask "thunderbird@daily" do
  version "154.0a1,2026-06-26-10-53-57"

  language "cs" do
    sha256 "6f60c5754c905b08f362e4cde3593535bae52cdb55f080f8b5e4f2c79b55965a"
    "cs"
  end
  language "de" do
    sha256 "00187b91751a84a36ed87cf839d4ecf19091761f32742b5a3e636c66aeb96c91"
    "de"
  end
  language "en-GB" do
    sha256 "2ce6d10be1e3f5829e108a11e9fb8a8977bca42aca58f87a6fe0cf9f1309785a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8c92cd12452b4003df2519fa11e1f4ee07a7b574b8ac7dbc882ab7038a110d81"
    "en-US"
  end
  language "fr" do
    sha256 "fc98fb7264c26ac93424bfca06c61b7874b89d9feda94c3b84a0d83c20838050"
    "fr"
  end
  language "gl" do
    sha256 "3e12d11ac55f9f5f317cace37146054a099b2009cd4c9b1e0435c0ed381d5725"
    "gl"
  end
  language "it" do
    sha256 "69d622fd8ae74f929b18987b237a2a4cfdd70d7fb4b326adcc0b099c5d53157e"
    "it"
  end
  language "ja" do
    sha256 "b5ab5d2cb2af4b2db5c645566496a08728268ef65389c4fa8b3fee0f9dbc56ee"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "107e28fa897efbe1d2b40fccab30d42a2d8f7d3ef1c5dbf8af0457788e4d1cf6"
    "nl"
  end
  language "pl" do
    sha256 "02a0f4aaecd4ef715da20ca9b009c0ff32f38ddb8e68cd1f607371d80bfcfa15"
    "pl"
  end
  language "pt" do
    sha256 "e7564b965bed12ac8f803ac810d2261716e5d5ac22dfff2a07e342bd4f4a7257"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "78b802d18d35561e8b56b4c58854ec4c76cce3bf2b4c11cb19dee215b43fc292"
    "pt-BR"
  end
  language "ru" do
    sha256 "0f572a9670e9222375880d88dcbaf67d48f04b5461f958e867534f1e49dd365f"
    "ru"
  end
  language "uk" do
    sha256 "ddfa96b48b669ebd87fd9169b157c8b343e32d3c9e89d215e554acdba00ae6eb"
    "uk"
  end
  language "zh-TW" do
    sha256 "382b81a943cadd2dc829427774824e51aff47ae0cc61ec4da9d30e3f6d49ef31"
    "zh-TW"
  end
  language "zh" do
    sha256 "6d53870fe9ded182f606d6649f23a72b14b66e5e6fb3a4ce50bae4c4a2dab127"
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
