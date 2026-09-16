cask "thunderbird@daily" do
  version "158.0a1,2026-09-16-10-02-38"

  language "cs" do
    sha256 "a15521a9c91359815e8643b5e37f0aabab293d7e2d4c5627fe95575d5848459f"
    "cs"
  end
  language "de" do
    sha256 "153918455d40056b17a41832e23f0d81e0905415debe07ce8643568d6165eec0"
    "de"
  end
  language "en-GB" do
    sha256 "3beb937439c114e8f308dac2f0895de545082a09ddce3ea806ec958110ce6b87"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a06bc44f124657af4c85ae903b33b1b7bb1926bbcc50e7cb8ccb2a9784a08971"
    "en-US"
  end
  language "fr" do
    sha256 "490d1977ce13c4a83fadc47b000b6b87698ac6d13f8b7d6f4bda008a3aa3aff4"
    "fr"
  end
  language "gl" do
    sha256 "62235aeb56cbf051a5117bd43897ede8f88c6c77ebe5ae398eec52e4409e1f4e"
    "gl"
  end
  language "it" do
    sha256 "2e947607587c58f347de1a3386f367c7b5bd52b071372f51b5b24cbf68cd60a0"
    "it"
  end
  language "ja" do
    sha256 "dc0879811c037e96dbabaf0ea08522c882b44ada7575dcb5b29f68d014aa2c46"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a03ee235df01ef43c1ae127561381560f6e1ab99b839cbeb5ecc6179677ba7fc"
    "nl"
  end
  language "pl" do
    sha256 "2e59a448e65a33ec799d0a91605b2e022c5a3f8ddffd014b1c89096ddd260489"
    "pl"
  end
  language "pt" do
    sha256 "f9c2b5812d807373dc90347cbac0231bfe50d46500fae2045a3b42719823ac0f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b233dec678efe9f87e3b3415928a515e17aaeb7f2041e9d12901f519ef0802d2"
    "pt-BR"
  end
  language "ru" do
    sha256 "fd192a8ad25973859603d0c434de575b25dc3300915f874dd402923561b92885"
    "ru"
  end
  language "uk" do
    sha256 "0ad8695aaa6478694334acd9cbd51999fd81d45a01a9559bf7f7d187bef1e0c8"
    "uk"
  end
  language "zh-TW" do
    sha256 "157b9f7ecd7829b6d866d9ce4274f73c193e8cb50770b886facb23d11b67934d"
    "zh-TW"
  end
  language "zh" do
    sha256 "4cb4c967b64629edc51cee7cb1d106de14328adcfe919409605aeb193c8b78c7"
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
