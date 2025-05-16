cask "thunderbird@daily" do
  version "140.0a1,2025-05-16-10-02-51"

  language "cs" do
    sha256 "e5e6abf180781b6210e1c06cb81b4cdb0e5e30c934b0352ecbd5feaae1039288"
    "cs"
  end
  language "de" do
    sha256 "d13a1561adf9d109a398a0ba9ac06b8f885da9d5021a020cf6002a3e8fa98c17"
    "de"
  end
  language "en-GB" do
    sha256 "189be470cc9087cce8ef6efa24fcf75d422121ce9b7cdf92891b7a7cf955ee75"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3e1730a89242ebed047815cd12f7034dd9c1e7b3b297bdfab71788a91cf41c40"
    "en-US"
  end
  language "fr" do
    sha256 "dd9c7a78de857a8f354bf1e8d5856df3bd1f9d9421b87626e8119cf3ecbd2c49"
    "fr"
  end
  language "gl" do
    sha256 "c2ef64df1465e72a46de01cd357084987bdab12e2358a72f8352bded9aa9697d"
    "gl"
  end
  language "it" do
    sha256 "d45c1f7433c660cffc07577187a0b1e8917d02b5bf4c853e6ab826a77710ff4a"
    "it"
  end
  language "ja" do
    sha256 "a98655cc821e37d407af0dc6a4b2a7b5f4bbeb2ad9df50840780b7175e5fd689"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e03b3bfd1d2d3f914ac65f917174a50e7c201e67f6ff7f516adccb5ea0704b71"
    "nl"
  end
  language "pl" do
    sha256 "5d764639fc90a4e0700988881a38d5d9c1cf05e78fd446119ba9898916a1a5b9"
    "pl"
  end
  language "pt" do
    sha256 "954de20769a2e5d4d4db26c4f25b7fa1508df9a239d5430e341c918737716cad"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "17e156b9f2221505a26926229dacf5b6759ab589dff18e95f40edf9266eaa6b1"
    "pt-BR"
  end
  language "ru" do
    sha256 "e7740f08699cc7b744e63fdce968b7b47305e9961bc56a0f91dc0efc09159f2c"
    "ru"
  end
  language "uk" do
    sha256 "1c61fb595d9293eedf5af6cc367bbe29e6dae9527fdf3e7bdbea3db11e996a10"
    "uk"
  end
  language "zh-TW" do
    sha256 "29db4a17fc059fdd8ae7c67624355a9618fee95596a98c37b41f59b8d169231e"
    "zh-TW"
  end
  language "zh" do
    sha256 "8ea389847d477c9416a5c6cdb92c9d59e761e110b3e56b7e3aeed04b7cc492ad"
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
