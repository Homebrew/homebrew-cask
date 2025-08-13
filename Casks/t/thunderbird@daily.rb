cask "thunderbird@daily" do
  version "143.0a1,2025-08-13-10-21-44"

  language "cs" do
    sha256 "d61c3f4a29ef6f4c602bc79d48efdb09363e2ee844fb50626fe2ca889583022c"
    "cs"
  end
  language "de" do
    sha256 "36f791ca71ce1ea82d76a49785fb0106d7a005f17d970be076132543f9150bc4"
    "de"
  end
  language "en-GB" do
    sha256 "b5ea6726024e5a4b83facde979b91e4e1dcd5395e940ea2808e9230ce15188e4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e95186f8eabce60bbb15f0fafcef457e9c214bce09f3ecb5be60f901c35352f8"
    "en-US"
  end
  language "fr" do
    sha256 "3e03206cb3ad8f34c687cb9736785441374992d17968e94276ed4bd42c6958f3"
    "fr"
  end
  language "gl" do
    sha256 "15e4db68d781d97aa57557272dd7be5f06273179dbfb16ff13e7650ab1f799f8"
    "gl"
  end
  language "it" do
    sha256 "80851e9e326899e6d221de464792d753b37e99c3fe616441b70fb7286fc6c7cc"
    "it"
  end
  language "ja" do
    sha256 "05dcd316ab8ca5090e61bd7e170804b5d41a532809850fe5c70a0c4312faf491"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a4dde42932229e9002d4e8e583c237ca1cafdc7804e314b05280952fc296a63e"
    "nl"
  end
  language "pl" do
    sha256 "560a2cd282d69462e3c1f24124b88395dbfa3144b7013150ecf5bb7b7ebc86e2"
    "pl"
  end
  language "pt" do
    sha256 "1c4e4aec8e601e7e4cc002586192c467f938c39bba6a6d68c0e02adb4190e206"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0282fde6a98e7eb37552dbd50d80d4253a85094cae5111fb4495577786a9ad13"
    "pt-BR"
  end
  language "ru" do
    sha256 "2217243e334aba6cbdfd1b41847e31c6fce06423b7f1fb843e454ffafcf40603"
    "ru"
  end
  language "uk" do
    sha256 "e68fc79d069d9877b8d3ce4a64302b6289430bf1a1f55614ed476037834c8349"
    "uk"
  end
  language "zh-TW" do
    sha256 "5895c5e8c52a50e9d883c1acd3f40cbd2e8605112a7f03acaae2cf1e96a513dd"
    "zh-TW"
  end
  language "zh" do
    sha256 "aa4ff989bc279659b6d193da6270b583bf0174f5dcc833f727e7ed6e6987fdae"
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
