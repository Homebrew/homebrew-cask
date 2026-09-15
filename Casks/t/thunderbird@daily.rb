cask "thunderbird@daily" do
  version "158.0a1,2026-09-15-10-34-46"

  language "cs" do
    sha256 "833756599c05b963da0b266ab62912ddfd01f1f1e6362057a2755c6227a27632"
    "cs"
  end
  language "de" do
    sha256 "37b71c264beb80b5e85cf8f7ba6cf805570877cd53995fd68ba1b28886111020"
    "de"
  end
  language "en-GB" do
    sha256 "fad099bd35d082cfee8ebf50d38d544b8bb3f6e9c6a56ab5518c97dba82ed77d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2544a202c040381f2458eba6d2ca62b53e1ddc0e37b33fb58d0895b72ab3c5cc"
    "en-US"
  end
  language "fr" do
    sha256 "08dac056a3ef2247f4fc7ad220f9bee5fc7ac12695e3a368c4986dd807178bdc"
    "fr"
  end
  language "gl" do
    sha256 "7739f838a3bd84745cc73f213322bcb19fbca43e7c3e930a2be2f21726b9b206"
    "gl"
  end
  language "it" do
    sha256 "5dc2942fc4505f191581f9cf53ce65b1a3fd6492f1a822c122c53da676a2a5a0"
    "it"
  end
  language "ja" do
    sha256 "3dcd1c2cc9c7d78ddd3dbf604917856986909caf15c63ac489d28f8480c20336"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f075bcbb37ffbdf5084df98a3500a09814913b72c566a8df43354edd0c434034"
    "nl"
  end
  language "pl" do
    sha256 "5159d2adf941f5f94ec64f28853187fb0649c4162d830bab7c1ecbad9831ec4c"
    "pl"
  end
  language "pt" do
    sha256 "2fea3398399454d293de3187d50042744f48ebe8d6ed51d5d2043a7adbdf236f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2c2d5c1db6133e3069873cab0ea2ef0a76f364c821f1150eae5b424122a26d97"
    "pt-BR"
  end
  language "ru" do
    sha256 "61dd62acfa065b4db770b19aadb7ca15cefbdbcd2319c282fb758f8813e4d918"
    "ru"
  end
  language "uk" do
    sha256 "b946e2a3df55bf137111149ce32f563496f12ec37e045c46b8de2622fa19b53f"
    "uk"
  end
  language "zh-TW" do
    sha256 "a75ea7f8e7df9f2cf1b6a9eba1476a28c04d023270d861c3c2e7f0744f085140"
    "zh-TW"
  end
  language "zh" do
    sha256 "1f0a7cd756bce874402faac25fbb2a6bd96007260a27a613317368df0bd4a27b"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
