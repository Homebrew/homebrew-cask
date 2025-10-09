cask "thunderbird@daily" do
  version "145.0a1,2025-10-09-10-32-31"

  language "cs" do
    sha256 "dcf6d01fb31408af821626b44b3418b7666a919bc061bf8fe2e451c8e9800f4a"
    "cs"
  end
  language "de" do
    sha256 "49268228c36508ceb991327e57e3113afbb76d8c63a7182e8dfc3b35d3389ee0"
    "de"
  end
  language "en-GB" do
    sha256 "727f051eab258120d5d63267fdc2128781a7120d590d595421debecc4f452a17"
    "en-GB"
  end
  language "en", default: true do
    sha256 "60b5f4649e47943aec29325ad9f4445fbe2538b7fa9d1241af26dc8f5758ba40"
    "en-US"
  end
  language "fr" do
    sha256 "7118c486708ef7892616ac7878733f5b1fa7266297996f0cb4b53462a85a627b"
    "fr"
  end
  language "gl" do
    sha256 "5ea0d7be22772e2992e06f97d155b9390caf2bf7595bc2d330dce71cc3eb1abf"
    "gl"
  end
  language "it" do
    sha256 "564ee354e57a802149914c0f78f0fbe7eeed31fe7d8857b2f95cd50dcbd95fdc"
    "it"
  end
  language "ja" do
    sha256 "3eafd727dc03cbd5c880ea934131fc7791ac9d8f2803f995926dc2dbc18ca6c9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7ebc7d46e9b9e83985e4196d6e4fca1ab9aafd2281ad5bb3293825e8e5aae826"
    "nl"
  end
  language "pl" do
    sha256 "d45abc118a42a1e2ed3938cc02be6e3afcf7bf1900849bbdaf046eb57552d730"
    "pl"
  end
  language "pt" do
    sha256 "79177d359c26a5fa31095cfbc3e6e47e2daf3a8fd3642954de4a096b84d06b81"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c1d380236e021d4e05fef62decd1b96e9d167c2ba33c74d4fe578e3fd673cea9"
    "pt-BR"
  end
  language "ru" do
    sha256 "cfe2b6f58db4a293d70c42e4a6372e5553857aa8f4982d852d3844f50ed22c45"
    "ru"
  end
  language "uk" do
    sha256 "401745a0a524814816a91328cf1d3adcb9d45d6f483d83a183d7346b657be245"
    "uk"
  end
  language "zh-TW" do
    sha256 "ef1da5f88938d67e225801746d6b6a0391d9f92428633b30f1d50c8e045d1c41"
    "zh-TW"
  end
  language "zh" do
    sha256 "789a72b138d81b2ec0e1e3a8de099958ca8bf33d25e4561d5f1ee4130b5dac8b"
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
