cask "thunderbird@daily" do
  version "144.0a1,2025-09-06-10-48-11"

  language "cs" do
    sha256 "b87e487d0828aab3add812f1a5324c80f1de8c0c5f082f09c163a731b0417062"
    "cs"
  end
  language "de" do
    sha256 "08fb7ef92d55c7186907f8f907176ec7f1016fba3b685fa4d12e663c66599a76"
    "de"
  end
  language "en-GB" do
    sha256 "7a91575c6f7a52eee340f4f884130972b26ee66978244a9793182280cbfd17c4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2008461e6e75a1732b5fbf854fb93c5c9114b8fbcf6f912bf4b6b804eb903cab"
    "en-US"
  end
  language "fr" do
    sha256 "e1eec8f05a8c63a28abc0728461c827f3d46e4ec745794e13661dd9f236b2a51"
    "fr"
  end
  language "gl" do
    sha256 "92e8a3270d4c4c314ecd8227f384d60a6dbfe0702552476a8ca40d3da10f6931"
    "gl"
  end
  language "it" do
    sha256 "1bc160ec04630a84072a7b7a4b2c05ebaef7c85affff9d4fdf45783ae3116a99"
    "it"
  end
  language "ja" do
    sha256 "ce4c76b7c5e85a9865d82749df996d70c7a6cc311d11de82a96fb8b7d8cbe0ba"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "348e4a16fbdf8ffd88d31ef2edaa1eab54a11ee5d6d819d44b1d829439aa920e"
    "nl"
  end
  language "pl" do
    sha256 "0d6c952d0ba214c814c7cb521f77f9b7257c8a59af2859a4a882338b22cc158b"
    "pl"
  end
  language "pt" do
    sha256 "0150b2405745245122500d80dc6cabbde9da320824b626a1b02c903c6b2a714a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "90611486a404dd523de00e687325af82069ba246e526d15cb439a465dd91497c"
    "pt-BR"
  end
  language "ru" do
    sha256 "2acb6420ef0433e6f61766ea1bcc0b17d2937d4e5f92b7f8c01231e72372e1e2"
    "ru"
  end
  language "uk" do
    sha256 "8e0200d1e143287d5bae4caf0ea6e81f34258b2d94f39c5ba60b9b5512c3fd05"
    "uk"
  end
  language "zh-TW" do
    sha256 "81babc792a753643b75fbeb247f1aa30c4fa14d41d206eb59f490cef15d4193b"
    "zh-TW"
  end
  language "zh" do
    sha256 "e424b12c2cc39b85a28d79313088a92a1fb763138e6d944fe80f6693756425fd"
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
