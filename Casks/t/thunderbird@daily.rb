cask "thunderbird@daily" do
  version "145.0a1,2025-10-11-09-57-46"

  language "cs" do
    sha256 "9df73705d02e577aa5d74bc42cebcb20c7913814788333c569c8d3267c6c4b90"
    "cs"
  end
  language "de" do
    sha256 "636132a27c2112b6eaef72a899957919c3ad293f07fa580ca7748fa90790389b"
    "de"
  end
  language "en-GB" do
    sha256 "3cfa5728e4634d1b179477e0e3bea7c613643fd6ce38c91accb1826003f0405f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fde4465c48e2d5c903ad3f136fd157741733e2f1f568cef7f18f5474a9a51105"
    "en-US"
  end
  language "fr" do
    sha256 "36410d9d6a9d6d83e79fa83aff8649d12c8cf850eb65041f3f9ebd67f5332811"
    "fr"
  end
  language "gl" do
    sha256 "b73ce80225f1ff286e919505f69c09637d8cc900995c4e5604495f5c386cc249"
    "gl"
  end
  language "it" do
    sha256 "24d8644350132aa3de60c07149c42851a07a0be8db330613df09d728afece910"
    "it"
  end
  language "ja" do
    sha256 "c9220a3c132db4de24a0648b5f2c4699b3128827ab67aeab9cb22a09d40c6a61"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "15603b6213829d093e187f657fabeda41196c685707f20faf6b86401c6891c06"
    "nl"
  end
  language "pl" do
    sha256 "27a5bec6a980352aa709fb3b9306719bfd73dc8bd16ecd57998cd2c517e16fc3"
    "pl"
  end
  language "pt" do
    sha256 "1aed26fcb88523cb82fcd153115551d224ece792cc380aac793aa6c9669064ff"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "290226e0c4e75adc28542f2c3bdc55e5e072aec77154d388b6483f2a617aed00"
    "pt-BR"
  end
  language "ru" do
    sha256 "5ec32d203d77eba6d8ee41718ee9c8a789c5afe61c5ad0755bf663869b4db0a6"
    "ru"
  end
  language "uk" do
    sha256 "0008cff0e9bb044cff4cbd253421bc430fb05d2f27cc58c19e86838686a67bc5"
    "uk"
  end
  language "zh-TW" do
    sha256 "6286c828b7fcab3d5ed8cf3d56243d3f91c92422370ed3f88a0b072f186435b4"
    "zh-TW"
  end
  language "zh" do
    sha256 "a685ac25d4a6fe40e2f2fe9a8268c717b2214fae833943c7dae6c7b3e7960000"
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
