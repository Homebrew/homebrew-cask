cask "thunderbird@daily" do
  version "152.0a1,2026-05-17-09-59-15"

  language "cs" do
    sha256 "6e2c5e2b58b7ad5433d45fbbb963056b7bd45975f3f18266860e00580e6c33ea"
    "cs"
  end
  language "de" do
    sha256 "67a41517d520d2555ebf711a40dbedfa52dce7e8024b1b2bbda3289aa291c7a9"
    "de"
  end
  language "en-GB" do
    sha256 "b69301bde371dc89455dfab2074c372a662f14a76d8097077a4d3e91ed3d1b27"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e15d17debc6235069178361fddc307337e2dedbab351503b00cdf6e4f4a2a992"
    "en-US"
  end
  language "fr" do
    sha256 "55b16e00cd78572f8146e5333042dcaf9c711560d70538ae10d7198f0214434f"
    "fr"
  end
  language "gl" do
    sha256 "258d08522842ea62e7cbb685741210b621297fa3d6a9981c42830f6f9d77ef46"
    "gl"
  end
  language "it" do
    sha256 "211b4100a20552aa4567aa801429cb56bee0263ce81a63dffb9aaa48a6861408"
    "it"
  end
  language "ja" do
    sha256 "cbcd58ac4100aedbca0be0d8a98941c10c69ba25f47f0e095bc499a23adce06e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c51d67210ec9f353c620554bd54bc3a0a94291afaf2f7b30cb53350c7bc1134e"
    "nl"
  end
  language "pl" do
    sha256 "2860e0548de264ad2e65897811dbbc35a49b69eaf60ac123cb3ae6d7a4397acb"
    "pl"
  end
  language "pt" do
    sha256 "e7a89cc9b19f01b6f4bf7c12cd4ea9493e3e7e44ab6764c962205ff883c8cf22"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e0235b311e6806c276975ab39e59ab8a6d00356d588f4ce748de74228d36d36c"
    "pt-BR"
  end
  language "ru" do
    sha256 "16afa73c7ebdfbaeef1909053b86563bc6600200f721dd226bf179613f241c21"
    "ru"
  end
  language "uk" do
    sha256 "ec1bab32b76eb071f95a3ab99f337cc93dee5c5b46f107f29725ffbf0b593be8"
    "uk"
  end
  language "zh-TW" do
    sha256 "3d33b82fa30693dcaee14c7c8a5f82941b2809e35d0bf02e20ac4c7496e95eca"
    "zh-TW"
  end
  language "zh" do
    sha256 "0882e542bd0981623a21c2fa3d577e5a50a5b3cd51ab2624c58738d6c22aec79"
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
