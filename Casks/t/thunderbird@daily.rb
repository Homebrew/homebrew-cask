cask "thunderbird@daily" do
  version "140.0a1,2025-05-23-10-01-50"

  language "cs" do
    sha256 "639a151c611d0610515266cd97bb9c6f90443ae4444732dccbc6201e194c86e6"
    "cs"
  end
  language "de" do
    sha256 "ebf99e147e0cd9fa387d1aabf11503e8306b327a36b01226f4e14f3d4ad83acd"
    "de"
  end
  language "en-GB" do
    sha256 "ec0b3a4affae6b4e284be9dae1ae5c3f6772ccd83d5979e2a168040856c4bed0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5c4a1f864a8ac95c3deb18cf1c9a619eb2de4b65d433eef3f617f6b6301275c7"
    "en-US"
  end
  language "fr" do
    sha256 "201eea30e6e5f5e649ccf9ab8a210253882fc9b67a0d59c2880b7fb730d4d9eb"
    "fr"
  end
  language "gl" do
    sha256 "1aae1e13ea5765d2474959d0e2a3789b440b0d0f9eda4b94a0159dab911614a1"
    "gl"
  end
  language "it" do
    sha256 "6f8e5e694ddcf9201df29fb92415d35a5eff0fdfbf4917756bcd311925114597"
    "it"
  end
  language "ja" do
    sha256 "1f41e071501717d1e1c3fa0def1cb21a34381f38e190d211f814e5c00fc92a13"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "aebb993657d1ed26e24f51af12e5eb66654ec86f88a7306f2fcd90dbfbbd2b97"
    "nl"
  end
  language "pl" do
    sha256 "d92a7006be78a418ef8fffc00fa9caa17703108e864daf8d84f0f447c4f2ff38"
    "pl"
  end
  language "pt" do
    sha256 "5629f909eb1f9b03ddb61bcfd7831406cb150d7da389f8480aa78ba53fef9f42"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "acda2cd12c965a29b22c71942eac89069915eefcee8c36f79f5ed29f8c213f91"
    "pt-BR"
  end
  language "ru" do
    sha256 "947158de52b864bee82d143f4d76dc0588557d50ea6526dff783d35340eb2c98"
    "ru"
  end
  language "uk" do
    sha256 "f8fe324ac990d11dccd1d38bebae00b67aa1c926c933d162eb9f6826c17e4cd5"
    "uk"
  end
  language "zh-TW" do
    sha256 "a7f49158bf79d706415558bb25e79f04f3d7ab2a100e5897b54ec6d360f9eeb2"
    "zh-TW"
  end
  language "zh" do
    sha256 "fffa2e1340a53dbc0cdfdf939668dedcb6ac5b81e7b8f31f79fe4e2396c67ed2"
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
