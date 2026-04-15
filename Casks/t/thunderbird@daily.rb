cask "thunderbird@daily" do
  version "151.0a1,2026-04-15-06-52-04"

  language "cs" do
    sha256 "8c49efee2770c42858f5f47b9f3ed1c54d54acab5abd959e3206f7627adf0f05"
    "cs"
  end
  language "de" do
    sha256 "bb38bc4f1187a735ce638f8176283181fe2e92c84f3746c6a72cf1709fa44d0d"
    "de"
  end
  language "en-GB" do
    sha256 "5df3d3f9fffd0774be8bc88167218b67afe118de069bd1f08389595f59d9ab75"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4a736f1306b7473e6b2e03a580e10f98fccd516a0b847bbe566a0c0895a13a95"
    "en-US"
  end
  language "fr" do
    sha256 "09f5cc9b122400ce6eb4ac25b27a45d40bc17759f6c58fa77d8914a0f90e0087"
    "fr"
  end
  language "gl" do
    sha256 "af13bb12167cee7c77fe636b1438040688e82a1c3eb47b80442887b2a1161605"
    "gl"
  end
  language "it" do
    sha256 "256128661798d6ff8a9fc673fa50f906f3b1acc1c99eda3505a7da1b87c2b7b7"
    "it"
  end
  language "ja" do
    sha256 "a8f6b0a9cf3c01afef00524783d10b8de75b6253f69baf385ed5b59cf84bd370"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9f108656cdd3038492e72751e8c7f55f9e0befe9e669ef5dd397c0eb860b1b1f"
    "nl"
  end
  language "pl" do
    sha256 "d51b8e7b162479e18a1efc60874ab7a90cb293fe82c1a2c7b10d76b0d6bf6c6d"
    "pl"
  end
  language "pt" do
    sha256 "f625be047317f9f547e96260662c5d58388f62a1ec02889feab1fdb683d58fae"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "719d7f89c20cb3df6b477282d067705bfa6edc2b489e400afce179b4a958f71a"
    "pt-BR"
  end
  language "ru" do
    sha256 "5ceae34729eaa10ce26f097f605cef6850f68665d4f16d444727e4933bcedb6f"
    "ru"
  end
  language "uk" do
    sha256 "60f6692d2e1eb296fda0251cfc499de1d8a7309cf805840ec4ceae7870588474"
    "uk"
  end
  language "zh-TW" do
    sha256 "57e6e35c322bf8e497cf62c7cdb0917c777f7f8de4522e647355d285d1026320"
    "zh-TW"
  end
  language "zh" do
    sha256 "792dfb3a562c71d1b7d613d01f42851090db6f0dc4e9c608638063ac4fe72e29"
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
