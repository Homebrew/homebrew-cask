cask "thunderbird@daily" do
  version "144.0a1,2025-09-01-10-37-56"

  language "cs" do
    sha256 "d0970568aa1adc696d04b6490bdb6f531df84ba1453e202b206f51e67008cb41"
    "cs"
  end
  language "de" do
    sha256 "4d7f13614af22eda7dfa0a626bd57ccd1a8b9c09e884eab006f9acc7d1efa533"
    "de"
  end
  language "en-GB" do
    sha256 "bcee5ac6f25e58765d97c2f0abd7f32a559b14f7a6aceca3e4384773eed017c4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "19c004749d8a5270adde2659dbadcb113b5f80a9854bd9891f55b53a775cf1a3"
    "en-US"
  end
  language "fr" do
    sha256 "023c96d12ad09f79ad3524c814b0461ac3fe39c42d7b41bc7caf1e26d645b76d"
    "fr"
  end
  language "gl" do
    sha256 "bc53edd31fddee51b6bbc03682a4cc56bb07226627979d1b243884d152976138"
    "gl"
  end
  language "it" do
    sha256 "6be753988f94412ec997778beb258700b40649d474d047dd38883779a6b9a755"
    "it"
  end
  language "ja" do
    sha256 "2a21e8e0315a75fd8d70d8229bb9932ed7b649157264af0d973cc9f656949ff6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7c76e15b54a09c85466081b4dde81f5e77ee3facc6549c4e879e62d45155dee6"
    "nl"
  end
  language "pl" do
    sha256 "67fa5a41a6c7b72535cad2244617919750efb0dbd86cd415698e30ad51888938"
    "pl"
  end
  language "pt" do
    sha256 "e1b8a30b3fc9398c99df7f912428c1ab941456ec755ba88c9a4d279810f79447"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1530d6efaf5eb9107139a7ada8ab4f94045d5a8b40c1aaacc400a270a69b9751"
    "pt-BR"
  end
  language "ru" do
    sha256 "5b837d51ce0e975adfe156dcd004eceb597d3c4c189872da07c99889ce884d43"
    "ru"
  end
  language "uk" do
    sha256 "01a3415b6a1b948dd76c7e890421ed52eb66f77e95c399f50014149eb80f1507"
    "uk"
  end
  language "zh-TW" do
    sha256 "92792fa8b3544c98384280fa6bd238f14ab8c76545c89e5da3d3011d2362971d"
    "zh-TW"
  end
  language "zh" do
    sha256 "5875e1c73f47c2c6f45a4f217ed8be96452b25c479d9ebc437131b3ba7176704"
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
