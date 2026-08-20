cask "thunderbird@daily" do
  version "156.0a1,2026-08-20-10-31-21"

  language "cs" do
    sha256 "b746c569e13f00613f1ec8e4ce05d117ca44ad7e417666f8d0a0bf06cf4c050f"
    "cs"
  end
  language "de" do
    sha256 "24bdbc05c23f7d88658e5af4c6d062d20fc70682b5dbbd844ecb3f9c05653601"
    "de"
  end
  language "en-GB" do
    sha256 "ffe6048cb53a512afb25ad3c6c331cd92f61988531b3465639c14e654585b167"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fe3a27ed52da26f0205250a73c4e82d167948ae763e9294daacd54eafd08219a"
    "en-US"
  end
  language "fr" do
    sha256 "2c030c42c3fce4d55e8570476de5ac5f1d188de6c13f1127152704cc94e072c0"
    "fr"
  end
  language "gl" do
    sha256 "53599480dca2a5e528f27c6dd8d4da682437009df2ef43460fef1f9794480cfc"
    "gl"
  end
  language "it" do
    sha256 "ba28d321290455db1c80b52fe9ddd26753faad5b29f131405d298912439933b0"
    "it"
  end
  language "ja" do
    sha256 "d1f3d6d4698641ef85427dc0b8c9bc20e64811b40d8785a9f6133ebb583e884a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "15f55e175a0104d12f8174489fb73da4ae52d5e57ef96911bdc2656c73f289f4"
    "nl"
  end
  language "pl" do
    sha256 "f85d750b1520664724647352768202e96cf2147017b96ab1c69bef11ae05e099"
    "pl"
  end
  language "pt" do
    sha256 "c5cc1b8bbb8843663ab41efbb76bb6ec8a9bd8b5731d1fea1f87399c6b22b3f7"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ea75d4d7097f28aca06825b7ab74f1a7b45e00e85998d7f2fbafe17e833ca923"
    "pt-BR"
  end
  language "ru" do
    sha256 "4cd5232ed146a4e1071e280d7a95f399aec54defb6a88412f5dd8769351ab50f"
    "ru"
  end
  language "uk" do
    sha256 "57828267e34067792f54ed2e2426119362b7c66eba54b52d4c7a42f21a55f879"
    "uk"
  end
  language "zh-TW" do
    sha256 "172ea53a92b66a9bfcc7ada72c5235cc4083242302baef4d1018f65bbe64f1e9"
    "zh-TW"
  end
  language "zh" do
    sha256 "f1644355dda5dc32ece2e66acccbb6f051ba2105199d101efa59f0b41ae8be8f"
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
