cask "thunderbird@daily" do
  version "146.0a1,2025-11-06-10-47-22"

  language "cs" do
    sha256 "25700040ed119ca5e478176941c75dc301ef2ef30692f9bdd257f375c7ec2e02"
    "cs"
  end
  language "de" do
    sha256 "09d621b262997fe07e39b1f5a217b12b0cc76eb7190d6985af61e80b946764e0"
    "de"
  end
  language "en-GB" do
    sha256 "280581650decf2bd2933de04e0b22d7c197a2b14dfd38e422b64c934b1799763"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ad3c250c970ad4cbe76221f16d3cbfaeef79468fc93314016beec83a65810630"
    "en-US"
  end
  language "fr" do
    sha256 "ddbedb199fe66fb85e8c3c612a661bd728bfa3889c086ebb3133231a618b4772"
    "fr"
  end
  language "gl" do
    sha256 "2dedd47cca6111623adb5e079b9d601bbd8acc92f220ada65a2342076832476d"
    "gl"
  end
  language "it" do
    sha256 "bce27df57388b30de29d3141a3d008ca07ba675460101f39da6b62a5c18ba0bc"
    "it"
  end
  language "ja" do
    sha256 "9b362ef8ad86190727a97e5bf5a386058ff620fc931bc037a703c68953b4e929"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "afa7a5c47c10ee2ef2870abb094128176887f79740a9272b571708dfb9f6e70e"
    "nl"
  end
  language "pl" do
    sha256 "d94c7f148a9491927054915f1dcb14c723fafa783453e6bbf3f10e8af255494f"
    "pl"
  end
  language "pt" do
    sha256 "d2fc51f48ac2385708e40f716643a5914ba7fe0bf6c04773b3421e2822204775"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "597a8c8a2c29d386e7f5995c76f28972135e28e7527cb779a9d5273d8b79be28"
    "pt-BR"
  end
  language "ru" do
    sha256 "490bb482d481139b5d91b0a524034806bc2df1dbbcfb95908d2491e0ffba8efb"
    "ru"
  end
  language "uk" do
    sha256 "fcc06a070538cbc1a08cd941091251e6be445a684fe491319fe0747075e1626c"
    "uk"
  end
  language "zh-TW" do
    sha256 "a60113d49d14b3887204bac563bce37580799f96a7877e6dd85f61340be5d27f"
    "zh-TW"
  end
  language "zh" do
    sha256 "85e8e1f4dbc97e70bc7cf4ee28d18c3e93affe351de8d2608f5da91ab8f573ef"
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
