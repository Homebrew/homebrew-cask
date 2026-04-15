cask "thunderbird@daily" do
  version "151.0a1,2026-04-14-09-42-12"

  language "cs" do
    sha256 "06dbc465d6a99d5f6bad404c8a694c8e07d40cd2a9e0556e2199840989da2cab"
    "cs"
  end
  language "de" do
    sha256 "c6f79729d79ee7775f407b88bd9b78c0e5c6c01a8a4c14fdecae10e3cc298b19"
    "de"
  end
  language "en-GB" do
    sha256 "7f7b5a4b5a89a2fb501f12e4de1ad4aae1d8231eaebb202e701a3042999f4da2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8ecfb9c325fdc4e4cc530e18d6e5ba8e28cfd0a699f73f5ad1c2861dc3421fa9"
    "en-US"
  end
  language "fr" do
    sha256 "266429f169fa3aae1aeb376c93b6e962ff02b94f4ea7602eab56b201a9228866"
    "fr"
  end
  language "gl" do
    sha256 "670d19bbfed2133f9215108a5d53a90ac57ce9dadf62e79ddac5df567365c13b"
    "gl"
  end
  language "it" do
    sha256 "f05b40cb27ef21afa17b764550bb2286f2c9997762070068d12cee99bfc9d407"
    "it"
  end
  language "ja" do
    sha256 "c4d046ecb4ef4212e519095faf8aa47bf89f21ff66623f9c26875425e2343d7d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2cdb25880712e5b1d0eae8c52dde81432a5309370d5341dc1231c78d7e061a4d"
    "nl"
  end
  language "pl" do
    sha256 "e9625f5c7e23cf48f052fd87f32c3f76f64aac7cae531c7a58271a3f6134cb0a"
    "pl"
  end
  language "pt" do
    sha256 "2a51836d128e1273cff532acd3694c2e1e5bedb181d26595fd8a38486d706dda"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c1fb011de59ca3521b19dcccfb549df1c96e0e5677b7d47085641d3ac08dab12"
    "pt-BR"
  end
  language "ru" do
    sha256 "dc0aa87036726fefdc5e03f9ea1ea75ce9110c59392c440925e0f0a2b6a73d2f"
    "ru"
  end
  language "uk" do
    sha256 "7a2741d43518aac1faba6e83a21c2085acab86f1bee927efad9629faac966295"
    "uk"
  end
  language "zh-TW" do
    sha256 "edf4dd95b99be9a40e53d23b14e3b91eb4f3bc7a2b26f991819b321c2b38008f"
    "zh-TW"
  end
  language "zh" do
    sha256 "ea14faa04c3890a6bbb310f0d6cebf2ec905894d06e83962d6e2ac2314d24914"
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
