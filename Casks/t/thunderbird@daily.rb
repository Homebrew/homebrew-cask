cask "thunderbird@daily" do
  version "151.0a1,2026-04-12-10-57-47"

  language "cs" do
    sha256 "1cb8c266a2d894a9b9d63d6be831aa5a6ba6356d3c4122aa5f0b3312dc26e38d"
    "cs"
  end
  language "de" do
    sha256 "f9c487f831cd36c5864d4242f4fc5106315d3368c489cce8001d2e4852bbda48"
    "de"
  end
  language "en-GB" do
    sha256 "3f7ac360da49b12a3c5a68b38e48b71b3aa636e7435b44aa2713a7607963d6be"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4f6fc01f4241e8cd4212f4cd097269ea3ae4d7998a17eadde01f18c48a8d3f06"
    "en-US"
  end
  language "fr" do
    sha256 "ab402006273c905f39dfcff3e4302951eba9815c93f34eef56e622ed2b863e3e"
    "fr"
  end
  language "gl" do
    sha256 "e6c59f71d276a41c28b213fe3fc924c42825ba7c59127263332d66c2a5c44873"
    "gl"
  end
  language "it" do
    sha256 "e8eed406bb27a37f59aa06b6181cacaed0b27483e66aef7ebb2cdc1fbc9c4deb"
    "it"
  end
  language "ja" do
    sha256 "d696786d3002a6fb62e15a17939ddc6974d50edeac33e194c6e57d96cde11e5b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "221edaf7bd03af76eb98a793eb4d5d1d9de3dd2933a06f9caa1a5ba2b92f77fb"
    "nl"
  end
  language "pl" do
    sha256 "434d77575319fccd4f006c8b4ed223af30df66091cbcc129dd555cd2b95c0674"
    "pl"
  end
  language "pt" do
    sha256 "c247e906098db4f642297f56f71b807da4cf12799d7356b01113ae2a3145bcf0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8d9bf7395abbc4aa41190963e5275b09097a90fd62cf9a58f4afcf5286fe2357"
    "pt-BR"
  end
  language "ru" do
    sha256 "714c375a3d794ca006e698d810b63187bcbd000c85fd3aad4007c0815019172c"
    "ru"
  end
  language "uk" do
    sha256 "fad29eed88f50885d27add2a837820eaf123bec677b1c19d66386e446ad01111"
    "uk"
  end
  language "zh-TW" do
    sha256 "0b12de528152db1d2d25367b78576140090f4ce8d09a622140a3d43ac2bf7a5b"
    "zh-TW"
  end
  language "zh" do
    sha256 "75c4836261a677357eee05a2c81525d7f78ea337ab5bf6bd65df1fa5278918bd"
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
