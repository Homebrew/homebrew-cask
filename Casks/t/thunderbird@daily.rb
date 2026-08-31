cask "thunderbird@daily" do
  version "157.0a1,2026-08-31-09-28-32"

  language "cs" do
    sha256 "94de884bb0a5971d316545136705a209125bc766d568b05fefb3dc518713495c"
    "cs"
  end
  language "de" do
    sha256 "8b305942926d2026fa916b25d8da1fda89b605d217e5610169d0a1ddecc69fa6"
    "de"
  end
  language "en-GB" do
    sha256 "fa6e565c04955f39ceda3f7909e67349c0d6244386d3f4a0fa3c1ebbe33439e4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "725b05aa991b03350ad5630450bea32fadea38a096f10e7255f433bab8217615"
    "en-US"
  end
  language "fr" do
    sha256 "0c9acee22891f7a12520bc0ccf1090fc0e1ee729c8ffcc3c78c39e4c25dcd918"
    "fr"
  end
  language "gl" do
    sha256 "9eedf707db5654659f3f9d64f31a60e6630818b69657f3655f49f730e7d8a693"
    "gl"
  end
  language "it" do
    sha256 "5beb226d32bf9526c82f26f15f8f278d5c008568c58ec2e67d9574d5358a3c3c"
    "it"
  end
  language "ja" do
    sha256 "b7898dd6fec0a4372eb41d0bd81440462a3697ee4636d93e5e4fbc1434002213"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e5c24106a94cec2f3435a5b0010631bde73c22617b24409c0c6d0e3aec0dfb3f"
    "nl"
  end
  language "pl" do
    sha256 "45bfc9e565b99a7a86fe1f31376764b71113722a90d3011939768d3f586af4af"
    "pl"
  end
  language "pt" do
    sha256 "9ab2e07f4c0fd61314652bd3061e8b41970be4c6a726d217dbbe66d05f3ef1e6"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "26e7a273c449e226124c4ab1b7f71f2a0371a855480d1f3fb36a9713a52a9024"
    "pt-BR"
  end
  language "ru" do
    sha256 "d6ecc35fba594a9e2f49a2df50a80b2d3ce7b09ef3fda39e4e9234055a497219"
    "ru"
  end
  language "uk" do
    sha256 "743047b50e31fc17ba8af2764c55fabb90b4b86fdaec8ae59d57be6f9b4d37b1"
    "uk"
  end
  language "zh-TW" do
    sha256 "a9717231063658137ea9dd01d8c7579a81d8e331bd59d631673eba042c9a586b"
    "zh-TW"
  end
  language "zh" do
    sha256 "a1346ab2e7558303118c3db7d1307084286eaa3f81088fab95ba2d8670ac9ed0"
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
