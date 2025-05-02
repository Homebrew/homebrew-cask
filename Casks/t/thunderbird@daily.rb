cask "thunderbird@daily" do
  version "140.0a1,2025-05-02-10-28-24"

  language "cs" do
    sha256 "6425fee247ed76cdeda0c179ac9400af909cf9f4dab701868542f0bb2ebe2c7e"
    "cs"
  end
  language "de" do
    sha256 "711dae5f93d590e7e645fe84afe9ef64c0009e656e8c6f7a68ca288b842edf2c"
    "de"
  end
  language "en-GB" do
    sha256 "2bb1b3ae9a216dca6e9b14cf579363480e460ad23fea256a5e5057414bcfe434"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ee520f5bc108513232053a1486786b7b937d3be7129b5bde339186959823ea38"
    "en-US"
  end
  language "fr" do
    sha256 "26f6ede4354dd4ac18838ac75adac223f9256fefb58faed155f7086fe1de081c"
    "fr"
  end
  language "gl" do
    sha256 "b1569508a2d430d752142125b9244d6fc801fd23378665e9d723c66d789deeaf"
    "gl"
  end
  language "it" do
    sha256 "683cea288e3cc1b1c1ca7d16734dc67876a493251d9d56ae5ea841d8e677de96"
    "it"
  end
  language "ja" do
    sha256 "7d9dd63344c12b003e5ef90e7a4366bbd44cb347554b0df6da88a38337a7df94"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2b7d6790ad8d6f33adb4f71fa0f67106ecdc0690fae5c02d1bb56ca81fe79f00"
    "nl"
  end
  language "pl" do
    sha256 "b05029340e25fa182d84fedcfd50ad63ff67ff9ac251751b3b52c7f6d37f6d15"
    "pl"
  end
  language "pt" do
    sha256 "d51e45f293cdaa49a804f9031faacec24efe8202fbeda784d7fe8cb38d54f9c0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "10be78151742c56a1f483d4514731811f131e1bf55f3bf8228dd9cbc17271d15"
    "pt-BR"
  end
  language "ru" do
    sha256 "c8f06e8b30b178b82e9a5ce2bc649da0071507799ce6ad36435e239646dd8e7f"
    "ru"
  end
  language "uk" do
    sha256 "b63220941a085e502a0d0afb29c69f22642453787ad2e67b52184eb0c2502cbe"
    "uk"
  end
  language "zh-TW" do
    sha256 "d85c52648ae8838a3b83d5b81e8df18ba5113631d812a853fe429622c65cc065"
    "zh-TW"
  end
  language "zh" do
    sha256 "8cea33413e6b4a8cbb2fe9e0ddc4edafdf54f605e66d05b342dc1466c76d576a"
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
