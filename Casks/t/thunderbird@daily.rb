cask "thunderbird@daily" do
  version "162.0a1,2026-11-17-10-02-44"

  language "cs" do
    sha256 "54e906bafeaca68cb2026ba933b8a511ec55c7c8d54ca0ba7734dc57da2dd495"
    "cs"
  end
  language "de" do
    sha256 "a027b3a5f8ee9060c38189bf74d3a0dfd7d1990add7d40ad3bca7c1ab95d5e85"
    "de"
  end
  language "en-GB" do
    sha256 "2070f8cd97a83bf3a046815dd45b7c338a40225aa1c2c56d0492e95ef7fb8831"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fba669fa6545259fe7fdedb1dbe361ed396cb862d98c3b785d87adb7e154814a"
    "en-US"
  end
  language "fr" do
    sha256 "8f7dd7349e3fe38ce3c6d4a90d712356a4b1e8e44a86d6fad4500faf7f5589f1"
    "fr"
  end
  language "gl" do
    sha256 "1551cf736f6d15c12a6fbb055dbf8e42fb2204e5ce1ceea08122cfa7b0da0296"
    "gl"
  end
  language "it" do
    sha256 "f0c852f77febe137145442ab431882abc1b9c886443d65e592ede1fa2c826535"
    "it"
  end
  language "ja" do
    sha256 "aa61ac3cd864c506d062feb40afad5bb16f23d2d78efb1c7cb7c61a225b9f08a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "02efd600e8a563f85863c5c06a5c2178171c7ce45369f84b4e928a2b6998dceb"
    "nl"
  end
  language "pl" do
    sha256 "aeaa62f974f837e602d93d08dada76ef6a9e73e5a8e3465d174e3c00060ea3e4"
    "pl"
  end
  language "pt" do
    sha256 "4fc08637050608faca6496f424a64ba4caf095d94a5582a5445d715809eb005a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0500256566038b4173529cac8a187f211f5315a053595ae8b56e9c67c830900d"
    "pt-BR"
  end
  language "ru" do
    sha256 "aa541b1735e5c45ba0052b0d0657378a787825c1df36d3cd402fcb950db11453"
    "ru"
  end
  language "uk" do
    sha256 "158e8a6ff564c295e5b110e4cde9a5fd8fdbfb898a273cf71b97dbcb980b8f1c"
    "uk"
  end
  language "zh-TW" do
    sha256 "76e56d1719118a465f0b0ac3fcf4bc40bb626e899b93c74fbcc3f3e9755b1a00"
    "zh-TW"
  end
  language "zh" do
    sha256 "6b1b80ea92f5c4267ee3db913d3455678ef220dac91b26cd84b3013a54a5207f"
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
