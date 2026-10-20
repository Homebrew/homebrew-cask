cask "thunderbird@daily" do
  version "160.0a1,2026-10-20-10-53-42"

  language "cs" do
    sha256 "1c2d51c6aa7ba92438e7c3a930f9b1af812326c07aa9ca8d285d56beab48641d"
    "cs"
  end
  language "de" do
    sha256 "2f284b4cdb98edd9d876a0c51e3c493c39af250bdf790e3b96e4ce3e1cc32ee5"
    "de"
  end
  language "en-GB" do
    sha256 "ed5fdadb022f38c59d896d82efc1cc7925cda457ced5c17a30ddeadf54341e65"
    "en-GB"
  end
  language "en", default: true do
    sha256 "251c75ac204514ba63453befd2b859c8044256435d2add19eca31456021606d1"
    "en-US"
  end
  language "fr" do
    sha256 "e999bf8182f5ef1bb524202a57599f2f04496dbf72caeebe766762ee3fd335c1"
    "fr"
  end
  language "gl" do
    sha256 "b8091fecc8b4b7285a1dccc717ae5a5d4bddbad4f72f67754721beb3f88db579"
    "gl"
  end
  language "it" do
    sha256 "4128e78387ba46c3eb4b05584410c69510d52797329f835b7d4261760f9649d7"
    "it"
  end
  language "ja" do
    sha256 "76450be58d5d35224fb4fcc553baea2ad9a7e56910844545bb0be2ddeb107baa"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bf1c6ff4279103acafb69c7cbef2631def2573315907fa98270782ccc74eec33"
    "nl"
  end
  language "pl" do
    sha256 "3de1edc2ccf9913c9ae0c97e78e9661412c31d70becae1899ada8663c7681b5b"
    "pl"
  end
  language "pt" do
    sha256 "51c1c45878654ca7ccc9528c87ada21470ec4f2efbadb1af40bafcfe661da26c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "075eafe912b342ead37360e0d988f5436c2b80bd8b10a95613834bed86c66804"
    "pt-BR"
  end
  language "ru" do
    sha256 "54262a88206b7cb2841c2889b90f98d49decf92e249d59ef9924502c26275f6f"
    "ru"
  end
  language "uk" do
    sha256 "236c7fdafd699dfc48021896e40c74fbc925528909789f30ca8c63a2e629d766"
    "uk"
  end
  language "zh-TW" do
    sha256 "2ff93fb021f76a08f6259d5a49426d168ac204b915f15eebc2a67ad32adf98d9"
    "zh-TW"
  end
  language "zh" do
    sha256 "4c559daea70dcdc34f6a113b7792e0a07be0559481ac1eb44888d84ac8efa971"
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
