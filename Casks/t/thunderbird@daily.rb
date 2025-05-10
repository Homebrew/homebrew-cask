cask "thunderbird@daily" do
  version "140.0a1,2025-05-10-10-43-14"

  language "cs" do
    sha256 "b5e614804427c36ff6f310103d84a5beb3fa21abfd42bab2da12f7d2f6f2206c"
    "cs"
  end
  language "de" do
    sha256 "405b34364026dc07bb701e55b535801b6e9fb3a87524b5bc726ac63705911d37"
    "de"
  end
  language "en-GB" do
    sha256 "2486c680e03bcc34a25a932f52c45c5aa2686709ad1ff06a54f94f851bb9fe74"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b867890c68d23415abad3836f95e0ba1e24ca1040566cae29a2df0ca1458874e"
    "en-US"
  end
  language "fr" do
    sha256 "f65f2ef1f7fee4f5b5dfd13ebaa64f7efdc2f36eb22af73531c215544aeb5558"
    "fr"
  end
  language "gl" do
    sha256 "e0689aa4d771be3f4189d3650061c6effd194e5190aab0faa3335ed275a15002"
    "gl"
  end
  language "it" do
    sha256 "39553c3eef09522e8f7ccb09f8f2f5b14839d5d7c6c57b8bdff0184984eca726"
    "it"
  end
  language "ja" do
    sha256 "f553eb6845b316c5ffb4ceafa76ea74bacc5b09f190cd53c607aa54241679ede"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d765a649e3a08ee79d5e2e14e5fe286e45eefef1393f330d0c85299a57a53d3c"
    "nl"
  end
  language "pl" do
    sha256 "79fa94e42ca0eab9963907523575696b13e9e12d4a2d38563bd1a229484311be"
    "pl"
  end
  language "pt" do
    sha256 "ab1c6332230c63b1ff5cefb3a9cb5aa6242a33f3b3b37d191e49854940554847"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "81dd8326115b7da499d760bacd7f386ea2d83a64d8f3e4d0afc56b9c57dd7e16"
    "pt-BR"
  end
  language "ru" do
    sha256 "b60ba83d52ca5de84231cf941cdc8f0ee162ce4e2c68b195ea162ff1a1f290b5"
    "ru"
  end
  language "uk" do
    sha256 "9f912c98474ecb57eeb31ff5ccf59692dd07a0add27a2b39b1337faa659ff45b"
    "uk"
  end
  language "zh-TW" do
    sha256 "46d2baebf697c6982b47439629a3997e63ee77594681a1898eaa82f4624570a4"
    "zh-TW"
  end
  language "zh" do
    sha256 "fb87a0c3ba8dc46a23f1cf402866c6ff5f643198fc8e5f6d05b6e2b756c20def"
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
