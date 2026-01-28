cask "thunderbird@daily" do
  version "149.0a1,2026-01-28-10-07-00"

  language "cs" do
    sha256 "ff6a9734f35231fb3c4f933a37b81ac580853e5fb2a7c8116b4ced6add211786"
    "cs"
  end
  language "de" do
    sha256 "c2e5cb2ef3848a337a6f667371276d395c658b2537baee7bb5333521e1508a8e"
    "de"
  end
  language "en-GB" do
    sha256 "f084fc0bd761f18db8110a66078d880dbe387f5e18f7f09ea4d0ced07c37c3fb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f613a34cd24dd7594056e079aa60470907cfb711382e6013463a06928d0f5b27"
    "en-US"
  end
  language "fr" do
    sha256 "925e7ad164d9bf8a153eb09c19bad0b070aa0e416897fbf0aa9ccc129f79afeb"
    "fr"
  end
  language "gl" do
    sha256 "5d2194073cb31aa044d0d9def5f8d10be9d0dd0ae883292fd7defd606442d5fe"
    "gl"
  end
  language "it" do
    sha256 "b11391a3983bcd588c9c01d32dad6d2e39e3b13c8bf127de896df17d596353cc"
    "it"
  end
  language "ja" do
    sha256 "5880f443aed002c15d96ed866b43f3a6084a979c932dc729a3d4616366f966bd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9dda2072b33c00801ea3c6b4e88431e4cf65aa19ecb43914346d441db0b94221"
    "nl"
  end
  language "pl" do
    sha256 "782ea128cb1b50886669570b5986c855d7fd8d2f73a9248786a4905aed667d5c"
    "pl"
  end
  language "pt" do
    sha256 "e39a73827b710c8719128dee6e6de2ae84981f47f07dbc95c0909ab6132d0c1d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e94dfcdb6488d422d388b54d7b914e4214e58809040a3c9a2f25c3ec791b73af"
    "pt-BR"
  end
  language "ru" do
    sha256 "99ba97e7e69096ae5f73737b2c5ba99434565d260f9825b4ffc8293847e8289c"
    "ru"
  end
  language "uk" do
    sha256 "f4f207ef34408d0c25ad2c9f129ba2aab9ce524f0e95543eb4ab6a148f4c73e4"
    "uk"
  end
  language "zh-TW" do
    sha256 "971f45f29ca0abcb491a7269b959d8ba4f86e42c8f89b3d698514e95c6fe1348"
    "zh-TW"
  end
  language "zh" do
    sha256 "9fc0bd8311cda253d5f01b591bb782dc77f7bfaa3958de858a19949f7337f267"
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
