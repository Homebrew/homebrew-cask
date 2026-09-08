cask "thunderbird@daily" do
  version "157.0a1,2026-09-07-09-45-25"

  language "cs" do
    sha256 "190e05739723d782c41c55263617a6248f191c296f26a79985007c168bde10ce"
    "cs"
  end
  language "de" do
    sha256 "490dde957c3a461df29ce15419ff49730ab21994304100d5f2420578b85e475b"
    "de"
  end
  language "en-GB" do
    sha256 "91c22b23b9a2f2d06f1e5d95787549eaaaae98395708400fc9ea6558c1ebad8e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c2077b4834f475634c370a0e2474414fc9406b287d9240be66549a4ed2358ce5"
    "en-US"
  end
  language "fr" do
    sha256 "ef0396dca24233d5e9a34fa530c7ba7e4520ea7fae3e4f74f0ecc32951311a83"
    "fr"
  end
  language "gl" do
    sha256 "e8a08ef355a7e7dad986b998f713d5f2c9f001b6cacd285cd9841e51a9b938fc"
    "gl"
  end
  language "it" do
    sha256 "d55bf2c1bc4ebccc4f44b4c4d8a30284798e067ae05497d9c8cdd550ac9b4717"
    "it"
  end
  language "ja" do
    sha256 "6bc18a1d6fa9c1f1081440ae5587fb972481f14f1ad11386125fbeb2778c4f7f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fbb4f2749ddbc1c37a7e50bc214ab47558156219b2a0adb130f06641f9592f23"
    "nl"
  end
  language "pl" do
    sha256 "63e287be9419fc582e15848e4c84248c03c233f3388efc549d53b773a7cbceb6"
    "pl"
  end
  language "pt" do
    sha256 "13e8fc015f6b0e6958174850a3dacb62a275d03fd4c35df8a597f1e6c8f9a701"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bc4a4f121a676c1c157a1153007fb1d30c4dd301e8c059d6ccd14c7640767bd9"
    "pt-BR"
  end
  language "ru" do
    sha256 "8911f220bcd52a56f675a5376e7c15c3acea1349ffac40dba28185aaf35bdf53"
    "ru"
  end
  language "uk" do
    sha256 "3d18efc84cb4b3d410f34ba01fca8116c32e96844ce979fdefc63d6828c56c8b"
    "uk"
  end
  language "zh-TW" do
    sha256 "ef2a1dfe16d04f603019a3eb9a66cc8302bc067c076dcdfa0fe7275dfa3124bd"
    "zh-TW"
  end
  language "zh" do
    sha256 "b92d00cfef46f8a9e9bf9756529a6d4f8d08ead076e625296c58036957a1b247"
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
