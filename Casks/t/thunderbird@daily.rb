cask "thunderbird@daily" do
  version "158.0a1,2026-09-24-10-20-34"

  language "cs" do
    sha256 "f73648e7074bfb44391212335f765b35167c4cbea0f1fd810fef91e1f51ee4d1"
    "cs"
  end
  language "de" do
    sha256 "a50f30969a8879f7ee86336256d7c5f1f42b4ea213a0a8cca12dc94849b143e5"
    "de"
  end
  language "en-GB" do
    sha256 "ff97e130d845338b275ad5bf9e5f095ac8b67bba790e8cbd7b4f6cedb22f22f4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3f2ac837962bbeb1545eb9839f8c49ef11c89274b2cfa6233ce4f557e7b951bd"
    "en-US"
  end
  language "fr" do
    sha256 "5f946a83a398246dcc7549933d40d901905273a19c9534ff26d327efd7197e3d"
    "fr"
  end
  language "gl" do
    sha256 "271e91928aea2c565e95059ea9bdd1cbbb337ead45af8bb96fa4194da7964203"
    "gl"
  end
  language "it" do
    sha256 "bfd150009da04ebec36294a80619dace80dc28f9db2507f9b8bab8bf8be660b8"
    "it"
  end
  language "ja" do
    sha256 "4bcbe482d7457c0b11c297a10bbd11929a80b3426d621069ac692b8ef0947fa6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4bddf3bf595d8f921875d9d09b477ddd1eb350ac03e2a9461986f659711132a5"
    "nl"
  end
  language "pl" do
    sha256 "051e22aa1da845a8da2254674c8726e758bbe38aad449dc32ba2c2226d6c7a43"
    "pl"
  end
  language "pt" do
    sha256 "cc82f427ec8f442802f49fcbf6da9d0da55dcca1327899a54eab1a770f8ad090"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7a8b8d658a3fc2e2c6961749d38d5543922cecf6d46af3477572af546430cd8b"
    "pt-BR"
  end
  language "ru" do
    sha256 "96772f3f86b4017cab881498326845a8b96b0f55cf0a3d93dc8a6f5555ffd0c4"
    "ru"
  end
  language "uk" do
    sha256 "907efed71338b699da38f86494f6d79bd2301f76d3d68d841a1272684cf04a25"
    "uk"
  end
  language "zh-TW" do
    sha256 "03506e0003f8726ca31b72114531955423f4def15ed747a88be00178833a648f"
    "zh-TW"
  end
  language "zh" do
    sha256 "c7200b8b90589b6cc4a275e1e330bbfe9f3843fd970cebd4fc437d9a0d0b323b"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
  depends_on :macos

  app "Thunderbird Daily.app"

  uninstall quit: "org.mozilla.thunderbird-daily"

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
