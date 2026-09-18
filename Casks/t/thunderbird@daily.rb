cask "thunderbird@daily" do
  version "158.0a1,2026-09-18-10-35-20"

  language "cs" do
    sha256 "398f8ea80098c1b0bf0ecafc12012599c1ebfc903ffc0308555e46b4e366f86a"
    "cs"
  end
  language "de" do
    sha256 "1901fe1b5a97bcab7b46ae1282ee604ac37fd820c5f8bdddd5169ecf5ebb3d15"
    "de"
  end
  language "en-GB" do
    sha256 "e8c8074d65a8d9ba932ac27fe438abb077ea436a0d18495fe26a4e054a149ef8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3b9c01172ebf7c92c354b4f23b39aa3a44cc1373a9f2ad1425e262eceec4a52e"
    "en-US"
  end
  language "fr" do
    sha256 "edf5595e746be5e103a3df51ca206f3f9117f5f83e018a38b01d92b9af099b04"
    "fr"
  end
  language "gl" do
    sha256 "465e45194b545a2faef85c77c4d86c084dc19f2143421b30e1f340fd8756315b"
    "gl"
  end
  language "it" do
    sha256 "ec507a91d0de06a7e5c7116c5f7544818363440fa8e6e40241ea331c195e5599"
    "it"
  end
  language "ja" do
    sha256 "4ed08c3f365f6e46b86ae9f87c18fecb99aaa0aa340e3196923a10196ad15307"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6057270889849123f571b3428773930de80b25f9df24f37c8ad408f3ed5777be"
    "nl"
  end
  language "pl" do
    sha256 "affcf626e20f05a9914d1c8b7e8696f58b74462d7c653a6ece197eee1691504d"
    "pl"
  end
  language "pt" do
    sha256 "69e6e82fd47e2ce763b598f1a8bc16802b053ee5ceb61d2fe8e3c7abd1e4c43b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "08812335ab18c2ee37ef1130243e5c4d6503260cb8e2bc3a90b670c2673f920e"
    "pt-BR"
  end
  language "ru" do
    sha256 "333930c2dc6672ffa5b285b990b09b02e350fbb2fe4c598638fddfdc29e307dc"
    "ru"
  end
  language "uk" do
    sha256 "7b106cd83e40f78c3e0d58484df937660388f1e0ba06cee0a8b52684ba074d93"
    "uk"
  end
  language "zh-TW" do
    sha256 "f58207ac3320ec3ccd7136d906dc69f8ac9c871e11e0016e9f1896ae904c768a"
    "zh-TW"
  end
  language "zh" do
    sha256 "90ea3fd69a32f1b7de369aac7488bcd1147cb124e0e8863174fffd37b06f8ee8"
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
