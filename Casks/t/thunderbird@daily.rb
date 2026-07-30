cask "thunderbird@daily" do
  version "155.0a1,2026-07-30-10-00-47"

  language "cs" do
    sha256 "4a138a1ebfa85156bd96753efc821295ea61ac224b9ed443248104a28398dbd7"
    "cs"
  end
  language "de" do
    sha256 "7a78ac303ffd528ef819e15030c06c638fc12c32d415443e5486a45ad6334897"
    "de"
  end
  language "en-GB" do
    sha256 "89483f0fbddc42fea79e8679b91b7dc3702f84c7dd87bfc94b0253b1e5b0b785"
    "en-GB"
  end
  language "en", default: true do
    sha256 "434c2b5044af4c778b5ef5691b37707825a2eeef460a61aff9e6693dc04c83ba"
    "en-US"
  end
  language "fr" do
    sha256 "7af96e65eba41a1fbb0e09e6087af5c654f513951aa99ab9a7380a01aa90efae"
    "fr"
  end
  language "gl" do
    sha256 "281e28460554147e48f7bffc535e01c92abfba8746b812bc8d91e58b9b60d978"
    "gl"
  end
  language "it" do
    sha256 "a2c3eb4eb8a305e0d49f9494355955d326dfe0352051d390d35eb08bff480d1b"
    "it"
  end
  language "ja" do
    sha256 "7fa3477e026bf91d37af654d69ad77c495c33a7713a9426fd2c6e6592414a69d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "434f9ffe1652dde424a55d0745731582422ac360442aa02ee24b4307b311b9c9"
    "nl"
  end
  language "pl" do
    sha256 "c02cc618de1e3f891d566c9193b0b9702a79f8d47cd6ff36212e51225bc21c87"
    "pl"
  end
  language "pt" do
    sha256 "4f9ba54dfb1dafecc1997d55e7deb0f6c3ee331db1957ec8f09ccb5f49c4f95e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1158add80e8328f3aa9f473dd41fef157a90411df8b57ddea7495c6d0487dbb4"
    "pt-BR"
  end
  language "ru" do
    sha256 "707aaa35e8514f4111c966e203cbdbe9919d9bd7a976379d860edf8d2357eb26"
    "ru"
  end
  language "uk" do
    sha256 "438e218270998164932698d3b3cea755d3596732fa2b424cd1e887baee80b571"
    "uk"
  end
  language "zh-TW" do
    sha256 "25d2cad0a5828b8877f318c52f4d34bc9f3cb7eabab0fa2f54fe940fabc755ae"
    "zh-TW"
  end
  language "zh" do
    sha256 "74f7e1dad8fe2061e0705bc988cc9cad8c2927376e32ecaa391677d137b87f0e"
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
