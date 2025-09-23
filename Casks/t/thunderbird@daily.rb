cask "thunderbird@daily" do
  version "145.0a1,2025-09-23-09-44-30"

  language "cs" do
    sha256 "624782c4e6df7ec3c39d63cf88acc3da8e40887337669baf4463826b6e3441db"
    "cs"
  end
  language "de" do
    sha256 "b0c3e121a55c51ebc513bed77a510bc770683c279a23236bc23e9c67d3751f21"
    "de"
  end
  language "en-GB" do
    sha256 "f8856d03224634745305e08dfe8679a3e838e5baa3d0ab0bc9c3556f646ad9e1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "29d5ec8181d73669464b126f1e69fe2594eef12c57cdb36b51f21eaf249c2602"
    "en-US"
  end
  language "fr" do
    sha256 "53fef4eb5f2d1de58c6faee5969c78899dc5373bb2247a2eec01468cc48ca3f5"
    "fr"
  end
  language "gl" do
    sha256 "20afd3b24edc9d989f68aa6511a056a4a08330aab53a8d8406c0ae1c65d40a66"
    "gl"
  end
  language "it" do
    sha256 "f7cedc5d2d56f4033474d635f76991986da46a5c173a6e4d91c84fd187b3a0a1"
    "it"
  end
  language "ja" do
    sha256 "d4a1f9eea6d80a9625c1358379b95ed7f7e14abfe0d1105cd091bf11de088287"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1726881e84ca62ab6d985dfee6ff3e2ef81cb36884788a35cf17f47ca756cd1e"
    "nl"
  end
  language "pl" do
    sha256 "12fe3922b65487db704ba6ca50b7a0c617d7c20510a4b0c801f0e94a79ff28a0"
    "pl"
  end
  language "pt" do
    sha256 "757391c2b269420727576ba8bf45c9d921666c1a5523a141b8e64b706a0acb45"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "de987e1dfa7638641527e9e55dd174b19d2fe2f36d6ac0b0d512772239e83531"
    "pt-BR"
  end
  language "ru" do
    sha256 "008a84aa9e68d129e72a4d1bf636ddecb96de6c54fff3a9d79b39b3a00ecfd3b"
    "ru"
  end
  language "uk" do
    sha256 "b37a6601f86fd15fe1c6b044c76fcc97f2c4296172e1758b387b8bedd55e0336"
    "uk"
  end
  language "zh-TW" do
    sha256 "73837a1577661c2fea5597479be70ae0f4b923a5f62b06864aec05ebfa02c928"
    "zh-TW"
  end
  language "zh" do
    sha256 "79d2c18b8d2291105d2f639666d9b77f9ff68c7ebf7a2a07538fdb836863d6fd"
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
