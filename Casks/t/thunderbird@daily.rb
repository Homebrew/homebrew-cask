cask "thunderbird@daily" do
  version "154.0a1,2026-06-20-06-50-03"

  language "cs" do
    sha256 "5968e75bce7d344064c90e6ad1250ee8eaa506df4f341d710ec5bfca648a894c"
    "cs"
  end
  language "de" do
    sha256 "80558a381005218d07d6e07db2514cf0be9244a581970ac4bef4cc048b514e02"
    "de"
  end
  language "en-GB" do
    sha256 "450d34d4664b8fae0977831a24e7f0170c8c095e7c68bd2d106f3f78a39ad87c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b1f2c8d7d1e53a80befcb19936a47179df22da3b3cdbc3cb42308ad7f1be985f"
    "en-US"
  end
  language "fr" do
    sha256 "0b9cfac439986b13ada8fe71654b3f1e822072d455b751e7937d9bed3ed0f692"
    "fr"
  end
  language "gl" do
    sha256 "82b9d93e72160501a8ecca8d962c052170ddfefce84366a37978c642d1e643eb"
    "gl"
  end
  language "it" do
    sha256 "a6e69d88207105b8509def52e8664529bb20849881dcb17209a1d56d9b08b64c"
    "it"
  end
  language "ja" do
    sha256 "7f914bb6220a2ba71bafaeb0219fa0d90c645b95da35f88561a419a97a981f34"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "baec434f7f01161fc1c29fc16784a897e569ff3822f010cb457f2409bfcdc440"
    "nl"
  end
  language "pl" do
    sha256 "05cfdc3156570819ad71e4c42acd399f44c62c7d1fd5ce67914bf47d9ae34d52"
    "pl"
  end
  language "pt" do
    sha256 "6a22ec5931b005108d5f4cd5fabcc4c16752945c0066665652eb5f8dc136ce8a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "60a3e036faf69b0079fd99c8ed45433525dc7a776229eb42b2dd30a629ce09e5"
    "pt-BR"
  end
  language "ru" do
    sha256 "1d33d979e185aeae91d993640182a8a9c7ab9129c46556cd36d5347d262db725"
    "ru"
  end
  language "uk" do
    sha256 "428ce2c86e2bdde0fe38c0ff46550e64bcfa533dfabff9d9e81563079d4bf8c1"
    "uk"
  end
  language "zh-TW" do
    sha256 "3335eb43722d3767669488bcd1820c85424d1679bfa902663092e1dd7f8c9292"
    "zh-TW"
  end
  language "zh" do
    sha256 "ecce6305c455d63e4dd68a1e00cb0864150500efd1a34242bee349ab59d163ac"
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
