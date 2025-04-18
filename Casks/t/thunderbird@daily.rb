cask "thunderbird@daily" do
  version "139.0a1,2025-04-18-10-31-08"

  language "cs" do
    sha256 "578f4745fd96cb83c17a3c78584954577ce27cf165bfbb999aad5fdbd6c42cc8"
    "cs"
  end
  language "de" do
    sha256 "2cfe7bade5132fcfda49758764151235c242d5568f6b92b21dbde6e4747d7ab7"
    "de"
  end
  language "en-GB" do
    sha256 "b11d77a29145319cd4d6595e576207cef810054f03094eb29f7bec92f5cdddf8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d16872dfa67c7ce51300082326b146caff7a15c5405dceeb4e54acc7bd0e728e"
    "en-US"
  end
  language "fr" do
    sha256 "44da1dffa96b9214d4168ce66ac25b8417c60484ef07b35a6d163081d8b89e78"
    "fr"
  end
  language "gl" do
    sha256 "d7148ce794e0e759e64993d5467a5d5e5854fc5c1a1efdb7f33ff8b8bdf9f820"
    "gl"
  end
  language "it" do
    sha256 "68a8cdb4d63eb1eb2d776f552829b319e3de1f48bb7e6cb5d2df818ac88fb2a8"
    "it"
  end
  language "ja" do
    sha256 "840e9259d5ca773466f20c720721c065f9379dee5c6bc544ad9b21723a31392b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d88f7a3b7153cb7e5206f8bb424c66c3cd0febf3c6c3ca01a49cd89e7ef01bf0"
    "nl"
  end
  language "pl" do
    sha256 "9a83bc940c367432b889b90c0223b6bc26e8721477a1905439b502201cecbe4e"
    "pl"
  end
  language "pt" do
    sha256 "993a8409b6793b294d50a30e5d407238567bb197e3eff334705328b4212a1107"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "75e6efbc98d44619ac6d46c1d5ac4a48858f5e90fd21f4f7cb249f35f57810e1"
    "pt-BR"
  end
  language "ru" do
    sha256 "7a44e186ce5150784b60dc6892c3642320898f652a000eaa62b0101c1f38e89b"
    "ru"
  end
  language "uk" do
    sha256 "a0af475851138b0d37f979fef9daf2048b83b18af383c559bd1d9e10f148fa4c"
    "uk"
  end
  language "zh-TW" do
    sha256 "8f797d4253c7e7d0392897ab31fe828c3511f4678d2e4746ad0effb913061d12"
    "zh-TW"
  end
  language "zh" do
    sha256 "7c459efba90e44fae3f1fdbcc2fa9fe37162e927177ee240929494f0994b3d62"
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
