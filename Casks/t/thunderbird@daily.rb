cask "thunderbird@daily" do
  version "156.0a1,2026-08-24-10-00-12"

  language "cs" do
    sha256 "cbc40cfc7b1184383c6206070e9af88bce1b14bed9e9e34d060ff85fd8ffb11e"
    "cs"
  end
  language "de" do
    sha256 "0fe06d04812bf06ebf8d1d75ff45962661e6bb152c31e89295bc1fb91459dee3"
    "de"
  end
  language "en-GB" do
    sha256 "7bd8222d789ec9b66d5fc15c551041973a74c47dbba51c4d9c31a9c674d2327b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d8dee0965867940aaeb418f05ee9ee33f3b1f3753d051e98c330ea7b9adf8836"
    "en-US"
  end
  language "fr" do
    sha256 "dde025e9d0ddafc64aff0321298d129bd88befbeae63b215e6024594153899df"
    "fr"
  end
  language "gl" do
    sha256 "f5b6fbc8a1574960712bbbf7e91e2eff1fd2382059893f6cd99bc4a03ca6dbab"
    "gl"
  end
  language "it" do
    sha256 "d24734434915fab3c600cf3ddd2e8c974bdb71bdd779c5fc327d06424dc8fe07"
    "it"
  end
  language "ja" do
    sha256 "0aa94405f22d30714a68cd5f498a9920c0c7efab57dd95579e1c9903e25355dc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2973370040cfe500cb7d9d7bf3e4a61f16ca4525b2d0c6f06854b65e36796b93"
    "nl"
  end
  language "pl" do
    sha256 "686cd31a60f2510eee385c9db321a526576eecf8015705041e2667b925fc713b"
    "pl"
  end
  language "pt" do
    sha256 "da2bb5dc8d45d0422ab4719083e057e29b18f47d0a97cfc99ea297ca17272444"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7f40376ef2f56855a729b2cbee76dbb8fa52a3c0eceaa183cd39f593f1e53cf6"
    "pt-BR"
  end
  language "ru" do
    sha256 "3f403cc5d9606fde3768ee059843da11b6880cde2e3a644c6c190ea6a4b1a6ba"
    "ru"
  end
  language "uk" do
    sha256 "d1fd610a733796d0c01adc4f07440e965a9684f1e83f6ca43dac11e20dde59d3"
    "uk"
  end
  language "zh-TW" do
    sha256 "c84a008466a9f60ee8916511951d0fa95b13c3d9876ef090e106fa56bf3d4c8b"
    "zh-TW"
  end
  language "zh" do
    sha256 "0d87503c6a2e25feb055fb2e96ed9f909a138e56b4ff8f16e32793346047f96d"
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
