cask "thunderbird@daily" do
  version "142.0a1,2025-07-07-09-48-38"

  language "cs" do
    sha256 "ab3c44af064fc77cb4c647a6415ed7e3b07c6b2ef1f4491cdc301aee1fe437bb"
    "cs"
  end
  language "de" do
    sha256 "47ae48267753dcc840ab78c3a8442762f442a82a5ee7e4d398e17ea9284fec6a"
    "de"
  end
  language "en-GB" do
    sha256 "b06714bc812647ce311a37d88dcdb59912e130beee4a1d620470a67f58620469"
    "en-GB"
  end
  language "en", default: true do
    sha256 "534d8afd208b4d2bb97802a25ad4cb002e1db2447b183c86c88ea745c6b1fe1a"
    "en-US"
  end
  language "fr" do
    sha256 "83623d0c8585f9c42c48a2a441a35b027f7b800dc9ec87b197346724ed975833"
    "fr"
  end
  language "gl" do
    sha256 "32b4f11e40deb5c05fa19cdf4c48ca8ca941e49c09c659ab2e4446273b1bbccf"
    "gl"
  end
  language "it" do
    sha256 "0a9dbd039d11d1de277789a7bda4078f39aedd2728f30dad0317dccdb96dc9da"
    "it"
  end
  language "ja" do
    sha256 "c2a04f7fa141dab811cd89ec7cca132ae37640f268275742779107ebc3306fd0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ec9fc1d5717cbc59bc8c9b0c51c4b57d4d25bba7d66228310c9725ccd0553bee"
    "nl"
  end
  language "pl" do
    sha256 "2f0ce0e134777c4b34a97c2da9fb1a37d1f2b049a660ce4c4e19f5936c4393de"
    "pl"
  end
  language "pt" do
    sha256 "7fa3cebcf615e844eef3ee3205223fbeae2dad2ba51cd192a9662bbadf1e1a3a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8c0d9d6af7723b83f8351a19ec2d94f5558181771e70e18c133054f97d14f724"
    "pt-BR"
  end
  language "ru" do
    sha256 "f89f481d641aa6b89625b9a0ca0a22a39d7032e3129d64236244a506310f4dd3"
    "ru"
  end
  language "uk" do
    sha256 "8b1ace80b1f32e4d4c094d92eaee322e1b581f75b7132cbe39d45b5a50cec7c4"
    "uk"
  end
  language "zh-TW" do
    sha256 "f99476aaf13b1c8e1dbc1b075e4130da8486eddb9ae296bc667ff39823bd8b32"
    "zh-TW"
  end
  language "zh" do
    sha256 "214334dc427e7cfce43f161032eb635c32da10a52050ddb4f33f4e7e5fa05342"
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
