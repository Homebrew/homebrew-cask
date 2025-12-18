cask "thunderbird@daily" do
  version "148.0a1,2025-12-18-10-02-53"

  language "cs" do
    sha256 "59f40c09f7a116d7c5676d619e05ad5952fed2e9fe0a494c0c9659e0d902b1d8"
    "cs"
  end
  language "de" do
    sha256 "de83d02282edbe8ef86f2097739505b0e3123a6b45e13925ea991fc699cc4cfa"
    "de"
  end
  language "en-GB" do
    sha256 "c7408f8418667d1e10547eb30440396b82ac4fbb639a3989b87aeabc62866497"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6fe4cd0fea61b9e92b40c95181572c259d4f9c2926991d8891273de3277d0c85"
    "en-US"
  end
  language "fr" do
    sha256 "f2770123c33a0545090b9a9fb29effde53cc2663b407bd78b766844a5faf3c67"
    "fr"
  end
  language "gl" do
    sha256 "afd36a3dd0d11a2c5322223e14e7ba2b3a764de8e6d0305f1295577eed305c4b"
    "gl"
  end
  language "it" do
    sha256 "2d025450be9cb724eed5f29c14e5fb98718291a7747201faa6917159451ed949"
    "it"
  end
  language "ja" do
    sha256 "d6515fecf2df701b055d1b7883ec3248a2f5a8cdeaefb8e1075b2d25d1db20e5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e977a9990710665ebad56e5763088ebc69877065642f3bf879ad961efc84cf16"
    "nl"
  end
  language "pl" do
    sha256 "7aaad04603959cb2078fea0765ba4ecaeb8356b85f47a7f32f9cf43196e156a6"
    "pl"
  end
  language "pt" do
    sha256 "1bdec917a39ef7f76c6cd11febd58e9693891a121a7a1adc2a159e359b9bd12f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b5f0a381139f5b53da00e44eaaf672ea56d4284070cd3702727f952607c99b39"
    "pt-BR"
  end
  language "ru" do
    sha256 "de1bb729ef61c9eea9951d44188eae89b8899ac319a671d4471afe286080b783"
    "ru"
  end
  language "uk" do
    sha256 "ba5bd55d7d56942af649482b3debc41107a9d30a7f8b95db5e0a1ff97fe8c687"
    "uk"
  end
  language "zh-TW" do
    sha256 "36aa14d3dd664d7936c1dc734782b2c493e709ac617e71fe4464e3d932e89279"
    "zh-TW"
  end
  language "zh" do
    sha256 "457c88a4a6994d60fd2aedf0d4e188a590cf264954b21081521f52a83c595adc"
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
