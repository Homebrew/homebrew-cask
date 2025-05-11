cask "thunderbird@daily" do
  version "140.0a1,2025-05-11-10-13-42"

  language "cs" do
    sha256 "68d82d0e5a12604951ac8fd5158e143ac69e36e3e2fe9e8322bd59739574e11c"
    "cs"
  end
  language "de" do
    sha256 "c59b15daff846f4a2d795f0305088ac9e0cbb4bbee86cc57fcfc399948ac983c"
    "de"
  end
  language "en-GB" do
    sha256 "dedc1e1c3a22a9a3937f8ccd464ae7923949271f074fde6b5a1b84d56e91e009"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ad5dbc42ce1e8d196b3fcc869f2618ff470fa719627ee063607a9c4979af283a"
    "en-US"
  end
  language "fr" do
    sha256 "135fcbc8a51446225de40faad278fcd529fd2ee75899f5af96a61b1eb378e51e"
    "fr"
  end
  language "gl" do
    sha256 "ca11f482dbd4ef0d24f34c95925ac3a78893cb8f8b992530a9702adcd43d18a7"
    "gl"
  end
  language "it" do
    sha256 "27c3c3c3d52de95fefa7c165c2eb7e63fceea669e51c6ceb0922c37297c62e08"
    "it"
  end
  language "ja" do
    sha256 "c8e9223bffa9b8a7009a89fb7d1cd411b3efa3efb3052243c240976f44f6148d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "99ac050d3d30b56c5a8d900f969f1cd3a3a353787b89fdcb762e88e257761007"
    "nl"
  end
  language "pl" do
    sha256 "dc3673b7c6cf32128d029778d9191a7e63567437c428c648bcaf8d70c6686b62"
    "pl"
  end
  language "pt" do
    sha256 "e5908fa74e6e9e53f77dd728003dc491b9b4753664cf316c271f06b62ad8dfe3"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bdbafcb280e6d59e6fdce0d9825391b09ec98454fa549472a720fdfe0de349c9"
    "pt-BR"
  end
  language "ru" do
    sha256 "3388d2610352333e18c472796003702ebdeb92c7d532c3d7560107138160eb18"
    "ru"
  end
  language "uk" do
    sha256 "e3129912cf7c8febf08cdfa21cfc96f11731e0b35688655714b18fa60dd2b774"
    "uk"
  end
  language "zh-TW" do
    sha256 "37e79fcdde791372d5736e9dec33fa6cdc9d7f0044d54082c7eb98b9a7bf4ec2"
    "zh-TW"
  end
  language "zh" do
    sha256 "b74c6fe5c32eafa6cf5d05aa8621d90bde3bdce188433f57ec714ff1bf7dabc3"
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
