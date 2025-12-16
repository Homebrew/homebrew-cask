cask "thunderbird@daily" do
  version "148.0a1,2025-12-16-10-57-06"

  language "cs" do
    sha256 "d611850f4cd37660d711de831b0f6d982bbd526f0507185c71522e8ce9263143"
    "cs"
  end
  language "de" do
    sha256 "5d458d1428f088e2a66b10b66f3bcfd4f934ef8994b52e91e438367cdf97e48f"
    "de"
  end
  language "en-GB" do
    sha256 "34e2f10eb804c0db7ad14875ed31f89c8557011f5e4c530d043286ee3be9cf1f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8f68f9931b087dd1ebec9ffc5aaf619b913511574ff6e37849a95a37a1207b62"
    "en-US"
  end
  language "fr" do
    sha256 "9d456492d55364fa8668a450c6d2383981eece7295091d82452e9ec42e5824e9"
    "fr"
  end
  language "gl" do
    sha256 "cac077ff6d5b823724ba6fd7b6053d5504554cb1248bc025cb5c777ca76584de"
    "gl"
  end
  language "it" do
    sha256 "1f52a9926d80a62d0ff26fb072e9f833bd8db9cc51c75dadce9db7c561cc9ce1"
    "it"
  end
  language "ja" do
    sha256 "63fa40c67a5c8fa689b1d1d29db6cda1f6baa97980b4d971ac5b6798e50fadc4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6c19abba57f3f9faf319a911496d4b6424c09f6ff10c9eac56ad957d52939afa"
    "nl"
  end
  language "pl" do
    sha256 "5df2cfed32f4e157680cc5378b7bfe85b9e22e594a066bd01a091b5575c5b044"
    "pl"
  end
  language "pt" do
    sha256 "0e3f1e5d2433528ad94085d598d4218faf970b9f4df9cbb155624f63a33e9eb6"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4822b43768dbb892ec103079dcdfdb6095419271e8b4d7d3e5a89b1cb96652d3"
    "pt-BR"
  end
  language "ru" do
    sha256 "48e3e6c163c517cc6371b1ee640907ccf943ea0c203c52e2d1f5e5c465ddaba0"
    "ru"
  end
  language "uk" do
    sha256 "10af48c40cc1ab69024ea2dbe8f8adb51a2a5f32077e5310787ae4b8de7f68a9"
    "uk"
  end
  language "zh-TW" do
    sha256 "0f47668e2bfe7f5176b5c478efb00c4d8144a20b3f4a40c0e7c6c433146eca22"
    "zh-TW"
  end
  language "zh" do
    sha256 "379e7963fe167999cf9b28606ebee6b8bf8cbd8756bc934f8abbcf319757ee96"
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
