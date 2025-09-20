cask "thunderbird@daily" do
  version "145.0a1,2025-09-20-10-36-00"

  language "cs" do
    sha256 "faf7360e44284e40dddbb40a0acbc4b0abadca95857c24d5dc59d42ee89fb23d"
    "cs"
  end
  language "de" do
    sha256 "66e2b91bee69109c2ac9004f7006ed04d7625e70759dfe35a17a6a6656049cb8"
    "de"
  end
  language "en-GB" do
    sha256 "0d477137a3f5d8d4331d00ec7b62a826ef68ab9882a2760c645643a47d2fb12d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "01b226f3da28cc9e7dce470781c4ff1a63288984e580fd71f053f7144362bed3"
    "en-US"
  end
  language "fr" do
    sha256 "b03d5288a839a61ef30eee087573968b5511588d247199c6296798f5ae4e4378"
    "fr"
  end
  language "gl" do
    sha256 "55f6ecc46500bc22e82efc990b156a8d5817d8129f739af6b070b9e160669dcb"
    "gl"
  end
  language "it" do
    sha256 "ac822ac69af6d12e3114db5f8ab7225efcf4a8833788328bd8b23a53c5193f50"
    "it"
  end
  language "ja" do
    sha256 "6c95acb37c0d19189c37ca9ec9c3c51af4bb048208c8443a2cbc5aeb80004fd9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "25b7886e9c1f03608e7f0523f4e5560498b49b951fc61ff198f3d41baed9c8de"
    "nl"
  end
  language "pl" do
    sha256 "7db97976e2cf67b5b4fc26e1e341a46cf165e3bbf24075ff600b276b8c062850"
    "pl"
  end
  language "pt" do
    sha256 "df9373481aa5a5db7647e4f93b6cdfb7de910d61299c3e946c2775daa9363574"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c1804b98b77b8d57bc6fd5799ad569137a7464a26d9d38d28a4196090d98f7c8"
    "pt-BR"
  end
  language "ru" do
    sha256 "9dd2269d1e3d288ed49861723ef1cd56179df66543e65c4adac6a86369a09fd8"
    "ru"
  end
  language "uk" do
    sha256 "1db98f2a3a5d8d723e6f01dad348f2586d5fb7c9cde7bae3888588381e1bfe24"
    "uk"
  end
  language "zh-TW" do
    sha256 "0efd0f40829cc21493ba3058774b7549f26272bb70979d6cbf205512439cd1f9"
    "zh-TW"
  end
  language "zh" do
    sha256 "b2eb474f74792c990048738a72b27ef568d37da873dd67e46e3017135f3d669d"
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
