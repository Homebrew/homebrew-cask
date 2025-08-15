cask "thunderbird@daily" do
  version "143.0a1,2025-08-15-09-56-01"

  language "cs" do
    sha256 "69eaa21ece02ff6ed9a3447aff97313f09b4b53641e90c16aa4b090a2758d796"
    "cs"
  end
  language "de" do
    sha256 "90f09f7310f9972702490ce2e77207f533fb7debfd764327e815aaaf1880e857"
    "de"
  end
  language "en-GB" do
    sha256 "f0f83c89fc16778baed546746ca576a102d8ac9f127aa95e0c9475bf58ad86b1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c24ac65a4cc2fbb317f5deb5e7b133cdc8882de95f40d374d49f3bd8e2b21a6f"
    "en-US"
  end
  language "fr" do
    sha256 "2a44da3466fdf0ab19da76e40472a1113b97840407396f0c2c7988cfc2237d24"
    "fr"
  end
  language "gl" do
    sha256 "ca33ab380e8d6a59f918e964d22c2600917867c25e5c33a5fcc5f53729f65d6b"
    "gl"
  end
  language "it" do
    sha256 "3a86f40a05d4f26efb199e75bb409805c3d5f7434e9f7f2991b571ef3dbba2bb"
    "it"
  end
  language "ja" do
    sha256 "fd577c40f7251c8afe3972576a548b15c88fd4449dbd00721bd28e7f07417961"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "695594f0a627fca96f48c12c98c04a36390364e8d1f1bfdf4cfe668797d62c6d"
    "nl"
  end
  language "pl" do
    sha256 "94940d7a28a7901b366747f41ef1939931fda727aeeabf478322a49a82d5fa86"
    "pl"
  end
  language "pt" do
    sha256 "46fb3db05b041b9135e2e8041f3b5e4612d0315c05542a7958fbb054f8a64cef"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9468d3600e643de5d88eae962cfd4d4426fb314b86972d25c0b44dd4cf349a16"
    "pt-BR"
  end
  language "ru" do
    sha256 "ac28ac24ad6114e6cda514de061b6e475798dbd1dd3da13ea7e4e50a766fc9e5"
    "ru"
  end
  language "uk" do
    sha256 "cae12667db5ab279fc70de599378757cfbe71f190005561e4b81e9a5663f3f2c"
    "uk"
  end
  language "zh-TW" do
    sha256 "bbea913a8f7210f3aef1b84a22386826d23b6d8a411abc0cec80df72302ec7d2"
    "zh-TW"
  end
  language "zh" do
    sha256 "87b38fbcab0e8a0efff1c72893677cfb0b6e6e8c1738408e5cf1f5b032d70ca9"
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
