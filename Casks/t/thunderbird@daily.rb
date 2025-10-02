cask "thunderbird@daily" do
  version "145.0a1,2025-10-02-10-48-01"

  language "cs" do
    sha256 "a8cf778827b2159f9e21f1e74bb89443f05f176aa11f996bbeeec8c3733cb72e"
    "cs"
  end
  language "de" do
    sha256 "6f408f4f03b7c85dcfea7ac3d45c72afd943a0e1965127857276f0899179c6fe"
    "de"
  end
  language "en-GB" do
    sha256 "2920bd83fa0ee2f7b9df072a834c57252ef9742d18ca0061b3cf182ab416ae9a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6eddf123ff4bad423a2b982cc56ec7b4a6af5b4e15943f05045013200836c7e2"
    "en-US"
  end
  language "fr" do
    sha256 "ff0c17ab1c5a04b11c8acc7efc25bde4e836eadb398c7bb4779c783244c5670c"
    "fr"
  end
  language "gl" do
    sha256 "ec7ae2f3f46cc6e07fa5d5385a4a7198a0f03c669a41a228392e008158526336"
    "gl"
  end
  language "it" do
    sha256 "34ffbba3122b8d726766f75198daeec5f71f6c047eb2f2bad691c01087079ec3"
    "it"
  end
  language "ja" do
    sha256 "8a4d6456b108d1408c58d001c3e44dc11e9a7dbeaf3bbf5be219f5761ffc8d14"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ca49b5ed9e3fba0f1ac685b634492499bcbda414607ebc626a171732f47bcd5f"
    "nl"
  end
  language "pl" do
    sha256 "8e7d15a2af946538fab76fcd77dbb6556316ba8bd7bf10147d50674393cc4411"
    "pl"
  end
  language "pt" do
    sha256 "5aade05330384584c0011963471f72fdbff36478f8e6fb9ede8b99818aff51c5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a65a21debba5c7c146ed204a13e57255832e3333c856f18a8599aa697809d064"
    "pt-BR"
  end
  language "ru" do
    sha256 "1c641a251dd464afc02854179be1f73b162ae15e3cac9553d78adc436dd3273b"
    "ru"
  end
  language "uk" do
    sha256 "b7ea7da973e0ad7e6de4a5219c60b67e3f39e3882eb8320a13058ca456416d70"
    "uk"
  end
  language "zh-TW" do
    sha256 "0c1c5f9abe9b2ee94694e2902b7b49a977c1b29a91440bce31d6543262b7394b"
    "zh-TW"
  end
  language "zh" do
    sha256 "b4e944beb6ea00ff5b8ddb8a5834f53fdd8d60b27fe4b23cb58b0cd7a912e47b"
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
