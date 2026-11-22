cask "thunderbird@daily" do
  version "163.0a1,2026-11-22-06-49-32"

  language "cs" do
    sha256 "2de61baa82eb84d168ff8d7d54b43c1b4a59c8c7ee94cbf659c284f92729d021"
    "cs"
  end
  language "de" do
    sha256 "e9fbb84c4d8e1e3027a9ba66d74427b9654d9c6166fa795dd212801771e1869a"
    "de"
  end
  language "en-GB" do
    sha256 "e8ca49254ee3af6ff55a476f8debfd3ff2e16012b4f5ebe422dc91395822a873"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1dfd4f0def5db895b65b6b76dfb962e41b871aaf9b18e91a4fee9b0cb902b53c"
    "en-US"
  end
  language "fr" do
    sha256 "54fc6f0c8fb98512e957f30ea97db7b5eae9e378153d602d61ca2ac9f0c48c83"
    "fr"
  end
  language "gl" do
    sha256 "ec483475e08f2e446feda60daa1fcac8a6b4d1e0c0914ae870a28a13aa00a8f0"
    "gl"
  end
  language "it" do
    sha256 "add1c72d5e654b14225785a45ae540b9c0e628c15b8d142b153739bcf2df9e5e"
    "it"
  end
  language "ja" do
    sha256 "239373a66a7baf4f1a1d7988c96da19ccde5a044b3898c79f4a0f2dfa2b897a2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7433a795fec1a538cf7299b6aba3649477ee7429f229517568fb8124d13f7bc6"
    "nl"
  end
  language "pl" do
    sha256 "4e4c842ed942ae437cd49985782bb0ed9e1144c858165406dc7ab0c6d194e1e0"
    "pl"
  end
  language "pt" do
    sha256 "f0a2a2bbd1bacad45f5b3296dc6cf3409e026336d079279561afc399857d2fbb"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e64ae28cc0575818020c3b1c2d23a383f7c29e61e95a96aa3c3821f77ddf68c8"
    "pt-BR"
  end
  language "ru" do
    sha256 "87245133b74919b6ae0666c8b8c99eb1b4a915334e5893d85df3eb93cca7993b"
    "ru"
  end
  language "uk" do
    sha256 "309696aa70dd9e7f431e6469e0f30890943dafc8918637effe1e6bb2f57c4590"
    "uk"
  end
  language "zh-TW" do
    sha256 "196e806ccabc7f1c92507d893ccafb4a48428145481c0814f4303727072eec63"
    "zh-TW"
  end
  language "zh" do
    sha256 "fe5f137aa9d23ab2a46a9f2a10d2b400b11ea264e6638748f2a84e9e3a78eae8"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{year}/#{month}/#{version.csv.second}-comm-central#{locale_suffix}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
