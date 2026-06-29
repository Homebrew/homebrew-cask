cask "thunderbird@daily" do
  version "154.0a1,2026-06-29-10-33-37"

  language "cs" do
    sha256 "28e4fc04c3ef125d10ec61f46725f83a180eec7d6bd6a138a24d65bf8904074e"
    "cs"
  end
  language "de" do
    sha256 "8c312fb4efb84c98374c61af1c15713fc3e0ef3ae32dcdcf26f2abd311d4ec80"
    "de"
  end
  language "en-GB" do
    sha256 "1b425aaf4fe88fec26812e5f67b0c52d4bed28d3534eee547bcf5adf0dd9d12f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ca9a2aafb01f3f2f108b3c3a668be28a400fe4a073429674f13d5cc87c579d7a"
    "en-US"
  end
  language "fr" do
    sha256 "5fb1499e318b47b2cd8b778b7fbb49f5dabbe46cee7fa366eb6260e0b0d7cb85"
    "fr"
  end
  language "gl" do
    sha256 "4da4f8121b72103c7ebda49b3a2937a6c13ae773a8cc8b848e0d85c0fb74b388"
    "gl"
  end
  language "it" do
    sha256 "fb01d53340bd5a162cf16ae20ff17cbd90850cb98e911786d8551d117a91acdf"
    "it"
  end
  language "ja" do
    sha256 "65200ac4a343e28f7d4e37def5c2b6c35223177541a96318f1a5a4f692b3d7f3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9ec49bee2115f16d3b877c7ff69a88784d316b152403d3fab6e255c2b34ba255"
    "nl"
  end
  language "pl" do
    sha256 "9555812e5d75d42efeaf19db7c0454b55aec34d387e895979fb4f38c77520d5a"
    "pl"
  end
  language "pt" do
    sha256 "48dbea8083d9d0d8682d65791c185f8239bd80a65d9560b7d8e7d343c169381d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f8460b02452eb9b26b5b31b8c08135ea88c489616a667fc8658fdc08d3054129"
    "pt-BR"
  end
  language "ru" do
    sha256 "2e07c6f158ca823abafef46f3947f39afc8086c6fbb8341290427c596a9a500b"
    "ru"
  end
  language "uk" do
    sha256 "3774110e006b5d8d190132017b90d9f260c9dc1362c147db20551e37ae45552c"
    "uk"
  end
  language "zh-TW" do
    sha256 "a508dfa5bbd1915e26e8478e4ac87e2d5a9a1a12a139cc1d1e77eddd03fa4e5a"
    "zh-TW"
  end
  language "zh" do
    sha256 "3cfd9420cdd31d1e39be085548a9b7b2e37251c2e8413006217840c4eb119cd0"
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
