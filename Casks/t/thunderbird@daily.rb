cask "thunderbird@daily" do
  version "144.0a1,2025-08-23-10-47-26"

  language "cs" do
    sha256 "5efdf2e6ede52f5315239812d33bc9ec0ca43cae7cfb933afd8219aa8a7b3dac"
    "cs"
  end
  language "de" do
    sha256 "6b149a8b2edc9b7e779f46b233ff68a653c02b6dc33661b9dd5cab921dac3962"
    "de"
  end
  language "en-GB" do
    sha256 "49e81d2cce43618100da9b13d4eca52688c6ad34af9e9755b6c30856a4e307fc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2b51b8c205432b4fc97a7610fc538a8cf9561a0fbb70eb27db74208b6880a1dd"
    "en-US"
  end
  language "fr" do
    sha256 "70f6c15616bae9e6cfbc1baddf14be5631b797d8d21b0ef6a8e4309ee32ac5b8"
    "fr"
  end
  language "gl" do
    sha256 "207a3a5430574c011bb3ecaf3744f1b4a3b22151cf00ddd819dd308a0f7d6a23"
    "gl"
  end
  language "it" do
    sha256 "4b504e37ef7b18abb198d088e264952689f82feda4584d079e437d11d22fc6d1"
    "it"
  end
  language "ja" do
    sha256 "5cff661841ac0c848cf8d21bddba3ae5b98e57eda086d2bf53efd181ac2b25df"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fc94f6af6aa329b3195d9a1210d310788a65d731e8179b5d3f9d098fe7394cc1"
    "nl"
  end
  language "pl" do
    sha256 "c645aeca20b0f27de28048c6350e769d1db020dfad6f82e60678ad97e51e4fc9"
    "pl"
  end
  language "pt" do
    sha256 "9f6298b2dd74830a7d015d7a96bf9c4d0764d7b786b397106bc042207d23dc69"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9f12aad4bc791675c5ed513652c4505918d69e3c11c72634d14d8f24722be9c8"
    "pt-BR"
  end
  language "ru" do
    sha256 "9c7a378cc6ea8b62a3ea9cd52a76c884a459a53078b3aff3466101b2ab2163e3"
    "ru"
  end
  language "uk" do
    sha256 "2d11e31d5ab48aba8f0ba85014778faa1795f94feb1953613bde67b0e415fbba"
    "uk"
  end
  language "zh-TW" do
    sha256 "e2142b28af4b9ea96920cf14c211c112de87d8642bca52f06ce8720b5491c663"
    "zh-TW"
  end
  language "zh" do
    sha256 "7250cd98bbbec4fd19943426c623ddfd8b5d2bb5eb7bbe75215bff2a16f6f7e1"
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
