cask "thunderbird@daily" do
  version "159.0a1,2026-10-05-09-35-38"

  language "cs" do
    sha256 "81d7ad62cdfd0f3f0ddaa74549e3d043c8feb70dc72b6025076d21081455e5ba"
    "cs"
  end
  language "de" do
    sha256 "00c2d0efd469dfcc4fc48c78cdbfc132066170001c0d36b67a151b7e6e3bd182"
    "de"
  end
  language "en-GB" do
    sha256 "093313db610485aee404a7e10b8a848ed7453f16b7667d924c9f1b4abd9c9fd9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e8ba44e697819f01f648fe7f08658e23aa45d2060a5aac8d4475a21c91fd529c"
    "en-US"
  end
  language "fr" do
    sha256 "9b71f4860ca0ee48d3d458e717e424ec149d46f846ed220772613575ada9157a"
    "fr"
  end
  language "gl" do
    sha256 "4dc61bead05c548f030877804eeb90c208a91b433111e3b4ae42c073e8f9a05a"
    "gl"
  end
  language "it" do
    sha256 "5750348a6b4b62f79e3826f8774810a10d172e417f29d685414c6255566a970f"
    "it"
  end
  language "ja" do
    sha256 "c37988d5f7a4d482c5b9a0ffbe5ec19b032a005d7723a419d3dd56d3dc7fef24"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ee73f452aaaf651bbd0e140d6fcdeaaec4c48c68cbb1a75fd68af76535f10a37"
    "nl"
  end
  language "pl" do
    sha256 "7f31a44d05550f8ca964aad4cb8055a8b69208ac57e327a61238401ac6ed9089"
    "pl"
  end
  language "pt" do
    sha256 "81d85face3f4e7fc4734d7e8120f2c8fcd9ed7eaece57a2e59e79cb3a58fed3c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "678e5cdb250730b314a95df1384c8e1625b6532cf9fb30666ed8bbbd18886a53"
    "pt-BR"
  end
  language "ru" do
    sha256 "64dfc3b4056b6ab082a2f95226fd7013ee99b525661d1b6bc7731da9427bd93d"
    "ru"
  end
  language "uk" do
    sha256 "4b9bc15b7be70eb9e93054cdfece73565c3da26419141ea48fec16c5eb3a201a"
    "uk"
  end
  language "zh-TW" do
    sha256 "0ce4a8ffb883fd30b0f4382f1d97e267d585e0ef9a26613dcdb830cb1d9ae77c"
    "zh-TW"
  end
  language "zh" do
    sha256 "dc5cc21cc4a4096978b6e7b988b5e71cd3ab7c9d728c4272e04c6e0612d4ca95"
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
