cask "thunderbird@daily" do
  version "147.0a1,2025-11-18-10-03-13"

  language "cs" do
    sha256 "42b270991de02f994f876d2b390f76f072c54d4463b4573c9fd83d10f87fb072"
    "cs"
  end
  language "de" do
    sha256 "569f7359156220e03e3fc2bab447b98d8ff319c169243c45ea8ac3cb9024fe25"
    "de"
  end
  language "en-GB" do
    sha256 "d99803dc9c44f4638664b56a00e6bc175ba0a236fa75bde0e0ee69d09f8e0774"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2c73cf4e33df14b0023c2065e8664d5dd2e9bad9bc6585534571ce67b0e3263c"
    "en-US"
  end
  language "fr" do
    sha256 "8d2fb3bb7469588d272bf80794c71c2c6faceaa9f9490d6a1976e9392ea53e4e"
    "fr"
  end
  language "gl" do
    sha256 "219d65c6cc877ebbf85f0f7ad189dbd4d2c882f2560a2cd8e0130c2256035f5b"
    "gl"
  end
  language "it" do
    sha256 "6436f25e3c1b86345d2d3a449ea0ad27a39719bb1254ecd0f42e65f602b2a232"
    "it"
  end
  language "ja" do
    sha256 "efa3dd3c4cc979e53d25e594bc839afcd21b1853e970aaa5d02e975485d881eb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cd95f397ec778d4b6222fdf1aa230b7448e5871c6a0105b85ee91e5896f6477e"
    "nl"
  end
  language "pl" do
    sha256 "cd54e9cc2e3ee6cbd3c1e6679eeb0392ee5d976d9d9d9e937daaf23aab7f9bfb"
    "pl"
  end
  language "pt" do
    sha256 "35b39396acc235e29ae9d6111ea0f0df8f3b2c16a7ad1a45325cda6a5813d48a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9eda1e4b8ee70d64f99c35a67d54a3e94d6321f8a1b36bf0e3bacd0e42725033"
    "pt-BR"
  end
  language "ru" do
    sha256 "76c9c89f75928d52096df82a4a9c6fcc2dab80cde7c34f94b0980a7df8976b8e"
    "ru"
  end
  language "uk" do
    sha256 "d413d5504904a3480bcdc4be4ac1b3c6cabfdd3e9aecae041e36bf86af36fb80"
    "uk"
  end
  language "zh-TW" do
    sha256 "f810593b1f9001084ffcef4281f82ae3ea98f1dda48f9ff9f2212d7d49d7f3fa"
    "zh-TW"
  end
  language "zh" do
    sha256 "a866e51addb9c1eae1fd8a736b9239d3e9c34f52683bb09d37bec28fde6b6d28"
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
