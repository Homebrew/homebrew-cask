cask "thunderbird@daily" do
  version "159.0a1,2026-09-29-10-48-05"

  language "cs" do
    sha256 "f1ecd99c89515154f636c09b32206b7b266906a2e9cfb2648b4af6f9849fa779"
    "cs"
  end
  language "de" do
    sha256 "0443a8c793ec6e7a906bced6766bafd44fae7a430cf9590ecef3f104d3ded00e"
    "de"
  end
  language "en-GB" do
    sha256 "354a6d63c54fcd9d81a3422ea8034c026b6a32960ea957b406592376c9af5a8b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a2cae8d687bfc599ef399d8f1abfc040408e2af5a4f1f27147e1061073752f58"
    "en-US"
  end
  language "fr" do
    sha256 "18699aa64008c2fc45e6291486775829a8033b072e067e8f37e56355dde90935"
    "fr"
  end
  language "gl" do
    sha256 "e929500aecc405a4d1823e0e9119af512a516038a96ca5e8de66401a511e8f0e"
    "gl"
  end
  language "it" do
    sha256 "577734c6bc059e44f66a5eee30920e9458dcd63ef2aa5e5176c4a6407beb8e46"
    "it"
  end
  language "ja" do
    sha256 "dc583157f524c52ef6e4a1ba9e805dde8c4bb06ba9a1a47409cdc5469adba89e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "990f81ee3c44929d8fd8455dd0f135837ef83a63871dc75cb758a13b4e5622a2"
    "nl"
  end
  language "pl" do
    sha256 "02cb91c1aaa4d253cdcc241999a27a68f7f378b5b7339592aca6a53b3e8919f9"
    "pl"
  end
  language "pt" do
    sha256 "64ea9d372676d2237fd050632efa4661c5e75d33f008e70286fcbd18cec3de88"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e2716d7f4c050e43ec5cd986ce3b83ed1777ae22725464da15037f38ae9366b3"
    "pt-BR"
  end
  language "ru" do
    sha256 "af57067977992727b8bdde10582b6b86102bd200b72a0f309d53337ae0f1e163"
    "ru"
  end
  language "uk" do
    sha256 "676ea58f22184d39603512adb6351af7d22b9967cc209fba1023318c68d04736"
    "uk"
  end
  language "zh-TW" do
    sha256 "3e16373d5c298d64c50ec62bf7a433dd0b72ca6ba503170e65861e00229d1b9c"
    "zh-TW"
  end
  language "zh" do
    sha256 "4dab32bc6e4af9b116f82e983ee56e3e4a1b1e83a722627fc9274a3a19373de8"
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
