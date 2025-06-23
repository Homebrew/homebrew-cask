cask "thunderbird@daily" do
  version "141.0a1,2025-06-23-08-16-05"

  language "cs" do
    sha256 "4eb7a77f1e7d0f25d128ccb1abb2b3529ac983fdcc73ccb8411a2772dc9ace3b"
    "cs"
  end
  language "de" do
    sha256 "50e898ac0fbdc9966ff85b1b412c42a0b1e49e050b00188d6379a2ff8ed9cd82"
    "de"
  end
  language "en-GB" do
    sha256 "55aff5448ea5d66a9fd06a2745177080cbb0b07d2acbaa4877673d34c589c925"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a41d6d6c2f09871aa72fdcd60171e92e7b24fdc3b9b3bbd5012da0aa6328f43a"
    "en-US"
  end
  language "fr" do
    sha256 "4720ecfbe6b9a6e34580879ebce1de8cb427d681a37f209731f96155dff20d24"
    "fr"
  end
  language "gl" do
    sha256 "6dd129ef8837e423c993e46d66d6582c3d6b17e301384485533dc51b95751dd2"
    "gl"
  end
  language "it" do
    sha256 "686cc54e561b42aa8bf12f5425ce59b158ac43f0ad2c2ac09f24c4a438f2f067"
    "it"
  end
  language "ja" do
    sha256 "7e08abf95c049270ff942fefc9387808ef279af298393b116acb3b3bc1cc96df"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "046d63730e42cbb991d3807bb1ee47805d1e478a46cd4782d0378cab7276d3cc"
    "nl"
  end
  language "pl" do
    sha256 "c2ad3a45a20e46748c0915d41436f0441ee4175d0b4975ffbabf0a6f89c4cdcb"
    "pl"
  end
  language "pt" do
    sha256 "5da531079edb1602a71cbc8573cae4e811bd12ea25e70fd7ebdf8356a4628a7e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1f13c6498fca02205158a52d4471c777394dc59856dd26c7ece4a0f96b3ea3b7"
    "pt-BR"
  end
  language "ru" do
    sha256 "2f94ee52005da115e3d27480ebdb7c4519f0e7063ef67b9d15d1967f10413155"
    "ru"
  end
  language "uk" do
    sha256 "df8aa61be72e933fa93e20f4d2ff5336865e779e44caa6b925b07578228201a3"
    "uk"
  end
  language "zh-TW" do
    sha256 "1c53c8b6c264a4645871c59fae7e94403d3ca5a28f800a32210ef7536bea3c97"
    "zh-TW"
  end
  language "zh" do
    sha256 "348276ecb730fc115a38927ed3332c69aaaac307283ce074195c857d83642de6"
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
