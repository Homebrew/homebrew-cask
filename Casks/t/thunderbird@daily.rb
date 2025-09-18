cask "thunderbird@daily" do
  version "145.0a1,2025-09-18-10-51-24"

  language "cs" do
    sha256 "b6490daaaa879808f0e04a9ee9f0293025275c854520eab177b47748e2d08a97"
    "cs"
  end
  language "de" do
    sha256 "1115fc24207cca7967f563abc2df2747787f09ff9e572af198a41292954b66bd"
    "de"
  end
  language "en-GB" do
    sha256 "72c89719ff63446928ecde52d3ae0b6e7da6ca4ffe0c06c183c073eea27269f0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "687ae55748f5383d0ddd20ea061c1e6fa6d876593d576c601cac3db4c9e47c6c"
    "en-US"
  end
  language "fr" do
    sha256 "43d8e5c6db1a4dced1f9df2b3e6b6dda7901804765405d802fee777cb7d4c755"
    "fr"
  end
  language "gl" do
    sha256 "e919d1d5bd586541c1511e58d2ee2f633cf674efaf76b8a87901eeaa0e561eac"
    "gl"
  end
  language "it" do
    sha256 "32c71181cea766d66f70c7d46299bc23bb85250ff6ec2161b7b21cffcd929068"
    "it"
  end
  language "ja" do
    sha256 "26c1f3660543169d5be0a653baf97220f124fce0cca50f77f10fa2da444cfe6b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "980b53ce09058d797ec7142178fa90798e5397214adae0f7de23224cc51631de"
    "nl"
  end
  language "pl" do
    sha256 "2c827827a1ddda5492bb95d16ed0613f2984ca3e7d35b29bfbec7416f3114fa7"
    "pl"
  end
  language "pt" do
    sha256 "02472b1ff3157b4bbf57a90cf86f5f98ed2f16e413957efc1eda4c1e21a24420"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6cb200b7aca8eced70958b0a170da852a27be79e2269e5bb97a80fd9747467b6"
    "pt-BR"
  end
  language "ru" do
    sha256 "9d8921021a8193ddd9318d0f4018f4104cbf5bf90dc93f12e2e0e630e297486d"
    "ru"
  end
  language "uk" do
    sha256 "dc0ebcb0bbddd94cd0c7961dd764e2cbf5d9c7071f9de26901681fa101f6ca24"
    "uk"
  end
  language "zh-TW" do
    sha256 "585860b9913d8c4ec344f6f1cb49e387ebe56a36eaca6eeaff6806a0b6a2a203"
    "zh-TW"
  end
  language "zh" do
    sha256 "34c137648a9fab72c65624b30abb73eb1c80734be9117a930f0bc8ce4353fb6a"
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
