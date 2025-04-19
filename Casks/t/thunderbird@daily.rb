cask "thunderbird@daily" do
  version "139.0a1,2025-04-19-06-54-29"

  language "cs" do
    sha256 "3f148fd1d4f379a58c1903479cde27f8f08bd0ed9259112531e1cce9fd61c70c"
    "cs"
  end
  language "de" do
    sha256 "abdfb4ca2d57ee5597bae10a3d305b79548183e25f7f29b331c1a59bb6e02301"
    "de"
  end
  language "en-GB" do
    sha256 "23e873bbfa34bccabea99ad9171f470bdede6896db797d9e916629029111e3bc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "72c5108f9e9eba218f43d4ead5134d5795d6e7b94bc6a8b392ca5b6292fc1986"
    "en-US"
  end
  language "fr" do
    sha256 "8a20eeebb37fd0c9017bcc62e75c5ecd67e449e16e0abdd28a58c5307d4381b8"
    "fr"
  end
  language "gl" do
    sha256 "79d97736e4793b865a4d3d4cc8fd39b487ccfabd15c0affbf4a93c5ae3c037e9"
    "gl"
  end
  language "it" do
    sha256 "176566f8f3d1e81b51a58a3501d0d0aa4205340db2d83883bf3cb4aa0a3800d5"
    "it"
  end
  language "ja" do
    sha256 "e58af3faa76e8db72ad23ebbd27a70a5647f558ded249e00b0ad4862f7ba1356"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7fa7d61649d52d6120558fddaa6d497505c808b524df4991e98beae0cb34d49d"
    "nl"
  end
  language "pl" do
    sha256 "947ea3c7cde6d4f8e7ba3f8b1ce44208e4bd25dacc385bda39be68ed9963f6b1"
    "pl"
  end
  language "pt" do
    sha256 "df12ebfbe87d1701006aafcdfa2aba9f89b844a438aebfe9745c5ef85d83b746"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "54f82943690e97b1389940616db5251c032b09f5883be4bd8a7b937865e61e2f"
    "pt-BR"
  end
  language "ru" do
    sha256 "f74932c8c60efc51db0e582eea375919490866ed41db9e84542d41adab624fdd"
    "ru"
  end
  language "uk" do
    sha256 "e45c9fe58bc474ae3dd1bdd3bd523b82371100c7e7ab3be245b8a9ced594c9eb"
    "uk"
  end
  language "zh-TW" do
    sha256 "925669d00935c714f5dde666e71f02fa06ea1b18edff05c22c7a21ca9585b3b2"
    "zh-TW"
  end
  language "zh" do
    sha256 "6d705fe92f75a9ded5f4f0490bb5b4d12bc1ceef7467d709f691b2ff6435ea91"
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
