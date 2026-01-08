cask "thunderbird@daily" do
  version "148.0a1,2026-01-08-06-53-15"

  language "cs" do
    sha256 "53fd07b8d5e26a89f0cc6880cb7dca0f0956ac629c505516f681d431e6f4f3cf"
    "cs"
  end
  language "de" do
    sha256 "6c337b3c800784b83a8de1631240e68f6a8ba83a1fa8fc18a31cb426303c22e8"
    "de"
  end
  language "en-GB" do
    sha256 "aec5a37a19624c02b28c0bc274010ddee4353e5afe7b6667bd2455f7f8eeb9d1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3dcf1240dbf74993aa9cdf1e130909d24acf905967e8dcd0969500ea026f0c5e"
    "en-US"
  end
  language "fr" do
    sha256 "a3df28ddbb6b9ea536c3b8f9e1a5e970613230a411c986aded0f422987874bff"
    "fr"
  end
  language "gl" do
    sha256 "c81550c2450d16264b0ba00d274fe836cc2e31c3f277964e872d7569113789ce"
    "gl"
  end
  language "it" do
    sha256 "ff4853ab1e9e73e58b9fdd3bf453fbf205f23f0c40c6246c418a3be8af2379d7"
    "it"
  end
  language "ja" do
    sha256 "7da43dcba28da6f60c0d87342dcf71dd89d33e7261e0d4d6bb81daf9989305c4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0632de13c33d32b6ac0f834c9e6a17d332bdccbdb46752418f4cd1a35fa4e1e1"
    "nl"
  end
  language "pl" do
    sha256 "a39e1c63d6ddaa9562d9bf7314c1043fa74092efd36f246204eb5c604844fd79"
    "pl"
  end
  language "pt" do
    sha256 "2e373806033a15ca28301474a9edcfe966d9206e59a0067c252765b1829b88d8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1ecd69826ac8a995493a7f8e9b83a4dfd644d62f4e2531467ca1d61c84e17d5d"
    "pt-BR"
  end
  language "ru" do
    sha256 "70d947e3e4a483390514cac2d6b560a26c53df67a6545c47cf9fb05f0ce37039"
    "ru"
  end
  language "uk" do
    sha256 "d05d2d782a8b7a4985f8d21ab8e06d48a72567443e115154fab540d35742998f"
    "uk"
  end
  language "zh-TW" do
    sha256 "df4b036692b5c9d9dbd73fd991f9f66931a6d42d5b93cafadcc37064627ab42b"
    "zh-TW"
  end
  language "zh" do
    sha256 "a29ce26dcf3dba0e953faea47d670237913da526c3c362b186098796c7933615"
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
