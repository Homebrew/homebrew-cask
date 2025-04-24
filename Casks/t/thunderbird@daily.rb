cask "thunderbird@daily" do
  version "139.0a1,2025-04-24-10-05-16"

  language "cs" do
    sha256 "1e245285db411ca9f2809236fab5b7f3b8704da7e517ad1e45ff4edd835a6263"
    "cs"
  end
  language "de" do
    sha256 "84847d8085026eeae8ff599e318b78efceeb31f3e13831894b615941d2939715"
    "de"
  end
  language "en-GB" do
    sha256 "a5b17dd54f10611945f2141e70bce03c5e5439db48810e47f9f11dca455ecbc9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f1cfa42124b66ec90d1114dd7e56c8232336f46a0399f066147090c1179529c2"
    "en-US"
  end
  language "fr" do
    sha256 "9d37762f7ec39dbb4bb17a28e32fb7461f615f3801aff1539b393cf36bfe2a6e"
    "fr"
  end
  language "gl" do
    sha256 "bc1580efe41b670463dc207197eb5cb474460d62d2d2974f50bf3f96e3597609"
    "gl"
  end
  language "it" do
    sha256 "076563263b347ceb01c9e8cedfd4ffbb44d21b7e93f04ff827ca74c5f2e6ca45"
    "it"
  end
  language "ja" do
    sha256 "c420cc377ff4a36b588d62ee444b45c087de314d3a7e8bdaba1f4b1c8867ff1c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1171817d6484f511e3686c3ac48eff0cb99992df749924fb3a8eb2fe5d310efa"
    "nl"
  end
  language "pl" do
    sha256 "becd31c571d474a2a39dd4a248c9951d98ea7273df445502fa96d35be0493adb"
    "pl"
  end
  language "pt" do
    sha256 "1ee98596e4f198f4ae2cbd29192c5cd54621b57aea1fe7ccd35961db7c778ce6"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6ebbc96520f0bb6418add6af5c2ff3121824210b9bbe3fdf142fdcc68943e153"
    "pt-BR"
  end
  language "ru" do
    sha256 "181cc66bafa2e8474145560dbeb741140f5a907667a0cce0e41164092518f6c5"
    "ru"
  end
  language "uk" do
    sha256 "789ecc33aa6f289422b0e8e519ffcd06a86fc85507ee5305531583c0c4d27b10"
    "uk"
  end
  language "zh-TW" do
    sha256 "b5f6400b784867e683957e3e00ff4a0bdf1f830f49c4f07059f13376028a7c78"
    "zh-TW"
  end
  language "zh" do
    sha256 "4f661acf5621eb16398dfa27d2f6cfd340c6949f5f9b45518c5cef8076801ffa"
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
