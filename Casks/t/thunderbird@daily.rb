cask "thunderbird@daily" do
  version "153.0a1,2026-05-21-09-54-47"

  language "cs" do
    sha256 "38d73d92c29f353345c511ddfe214d40c5a2c10588eb6ca89f7c7a43830eb124"
    "cs"
  end
  language "de" do
    sha256 "acc976c2c0f2502d07f40b21300913ca4e2df246fd944a34710aa39f6fb28df2"
    "de"
  end
  language "en-GB" do
    sha256 "fdcc0c7809f142bc2ceb121e2f4630b10d88eaebaecd7e784d9cad3b270407c6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "980112d35cbed28df0fae15f5ef671bb57a885aa56a336e41e87796d14ecd064"
    "en-US"
  end
  language "fr" do
    sha256 "0279eb13222aa95233face92ba01266d348c4839615311d410ede73b7ee808e5"
    "fr"
  end
  language "gl" do
    sha256 "84fd0c4f7d14a65e6e649287b5061e8c634c1a0492b9c18c0bfc520e4d30ba94"
    "gl"
  end
  language "it" do
    sha256 "9bb8a46b114543f0b84e8969f832d8005384f78d31c584fadd615c08f94d5d64"
    "it"
  end
  language "ja" do
    sha256 "27792736b2dbeca1f2a4648a5a7c08a7cda464e2d4a2357a73b0706cc08a0efb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "13ae5ccb2728ef0a8c2c9515caccab4134dd6c126ae2f28aaf4482e1cd2c3261"
    "nl"
  end
  language "pl" do
    sha256 "51ad29472297bdabe758f0719a5601e46f439cd25c45236e71aaa7c0f0b36b20"
    "pl"
  end
  language "pt" do
    sha256 "e051db1878a3c87f9bebfaa4e64e36bdcb7abc9468476b3a7a7fb49967ab79d4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "57702f5ef0ecd5879cf1dfac4dbad20f6a10fcccee5a0df92e12d6d58a3b2ee6"
    "pt-BR"
  end
  language "ru" do
    sha256 "8cf5a639c1457f5a26f05cc44c326b8e6b06aeba0f670dcc9943eb9a560c0090"
    "ru"
  end
  language "uk" do
    sha256 "271aa0e019fab7822207dc8faedaa72b9a31cf607b6a588096bcb1ed35b56714"
    "uk"
  end
  language "zh-TW" do
    sha256 "5da61da1260a2a48f4610b32e6c9a6358e32e4432fd1adc226674b71828b5385"
    "zh-TW"
  end
  language "zh" do
    sha256 "68ec7449d9d1f8f9396174387b7e7e8dc8d078e949f664b862bb8dcc58f123b8"
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
