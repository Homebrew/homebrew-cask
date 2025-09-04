cask "thunderbird@daily" do
  version "144.0a1,2025-09-04-09-31-43"

  language "cs" do
    sha256 "b9d9d3ff3f9dac05616c57385b6ab07cac7f10f544e2136074c4213b820be702"
    "cs"
  end
  language "de" do
    sha256 "445c9d18c1e3d01f628df0b18ddfb5d0d245f83aa30e99cc91bc1386a2031587"
    "de"
  end
  language "en-GB" do
    sha256 "2292755da7d53c0487d6e8100d9d36768ca00859c267d05a3bbd97a1f7de78c4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4ca6bee9c3a0a2b1964b89cc19c06445ce134e75fead10e09b56f3041086e97c"
    "en-US"
  end
  language "fr" do
    sha256 "ece2d872d3f433fae304bf93eca37227a36346783ca51dd122354664d3982a84"
    "fr"
  end
  language "gl" do
    sha256 "3fc32343f33f6b3c9594ce44beb63680e7974eaeedf5fb5bc07b08b6ee7835f0"
    "gl"
  end
  language "it" do
    sha256 "87222cfffc12d19c11ce88492c746cb65b0d605e769dece44f0f467786858593"
    "it"
  end
  language "ja" do
    sha256 "87f6045bbcae3bf6e08fec43df5e03bdcd254c9997e86c5b2e33725ec839b589"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "56bc79ab5bce5a87ec9c3a1a2743f8ce194dc171e7001f6b9a14b7c2e6d698d7"
    "nl"
  end
  language "pl" do
    sha256 "8ed9d45fa33e3260f4edb70db89f44f22a05fdb45ed8c43fe391bfce194a0a53"
    "pl"
  end
  language "pt" do
    sha256 "e2bf44f567bc19b85961bd6f6ec7ad51c13d0fcecbcbc5b1fd0fb02989416959"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "074f240f6e93797d98815c57f6498dea4cd07659ac9a8058999750fbe922f213"
    "pt-BR"
  end
  language "ru" do
    sha256 "24f8dd93b13c365210877d9b8d5d4980bd824ced870adda79c8589b304fbeee8"
    "ru"
  end
  language "uk" do
    sha256 "04fee198750931f8fe5701140353e470e3499a7da1a0f72f1e611bbbed82affe"
    "uk"
  end
  language "zh-TW" do
    sha256 "52d42228b08100ebf34159ca10a6e9e228afa31bac83e2b50589dc550d41fbeb"
    "zh-TW"
  end
  language "zh" do
    sha256 "905d3867c715e1693f6ad0523ff733d2afcf52be56221694d77f51332939d29a"
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
