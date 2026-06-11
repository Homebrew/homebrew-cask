cask "thunderbird@daily" do
  version "153.0a1,2026-06-11-09-35-15"

  language "cs" do
    sha256 "59bd91d2c307e88532e2359fc613fd60774eeb400b24559054dac6ddc93568b6"
    "cs"
  end
  language "de" do
    sha256 "23ac659cb5edf25b42dbb08863a2475eb4a8eaa7ef8f05b177b79ce5aa905827"
    "de"
  end
  language "en-GB" do
    sha256 "06bf2ae397a839609a1e776f2e7156c55e1da02a022b5f45f5df833a1a7bda3c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c78902cccfefbd65708d31eaa348459a94e616fb6e3136d8c9d180e977f2213b"
    "en-US"
  end
  language "fr" do
    sha256 "61631896b3da05483d049f306861970a85c5adabfb91717634db75cac1d2ca4c"
    "fr"
  end
  language "gl" do
    sha256 "cd7e15cd3162d613215479d43bae124aa395ac687887a78aac88196a87e4b6ad"
    "gl"
  end
  language "it" do
    sha256 "aae25acaf00506957c6053c5f4ab948c8033f0723e71a67ca7f3b1676c09ca5a"
    "it"
  end
  language "ja" do
    sha256 "12ea860c198e648dd6efc3f470a8a50c6052873ff8d1efe7e0873ffc5bb63227"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f42bace7dbad41d9ec04ba0276625370d47a2047b0360e8d556574757312d8ab"
    "nl"
  end
  language "pl" do
    sha256 "dda1f01687844171d036785984a3f19e44ac7e9a27c415cbecd8ffec3ce4b63b"
    "pl"
  end
  language "pt" do
    sha256 "fa491548ee49b6929ad23c7489021e7e400aa360630c5729f8206cd5f704f19a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "31847d8a88ac4de8bd0697642a798a6a676eaced2d96634921141c10a16dd6f5"
    "pt-BR"
  end
  language "ru" do
    sha256 "ee145636ddd24c73b17352be6bac94908e0c8df8daae0ed7a20dd9159fe09132"
    "ru"
  end
  language "uk" do
    sha256 "435f4d6d242c6733126346df8ab6513f7c6ddf37a2c1b97c4c8b84de3268ce6d"
    "uk"
  end
  language "zh-TW" do
    sha256 "212d99b4c8267ec1690d8f59640da7436aeea7574aa776ad5f327a1c82ae45bf"
    "zh-TW"
  end
  language "zh" do
    sha256 "fcc77c9e903237f40bb2a8ee4bca17dc7a989957783b7e4b7738e002356d14f7"
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
  depends_on :macos

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
