cask "thunderbird@daily" do
  version "142.0a1,2025-07-14-09-37-12"

  language "cs" do
    sha256 "a016042cb38197c77596c37c3bbc464fb5fc169464f458f32ea737ea5faf28ac"
    "cs"
  end
  language "de" do
    sha256 "3170ec190c78c187efcecffa092fe73259b6ca12d9e80d042fdf9058dd8a48d7"
    "de"
  end
  language "en-GB" do
    sha256 "5b15b55948159902e6db753fc6a174b853f1a291fb8fe565a0450ec19bd640b2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "295308ead9bdf9833391915ff18f67a3559f0cbad7977f3542ac5fc0c69d2eea"
    "en-US"
  end
  language "fr" do
    sha256 "b8ece06a0f9659ea3cc3b567f91f386db52a6601c3ed91d64b1ecfa8002f371d"
    "fr"
  end
  language "gl" do
    sha256 "9f8bf352c4550212bc27ace1291c2d4aebc9d50a673847c9583b7c71eff1e4ff"
    "gl"
  end
  language "it" do
    sha256 "a63ef82f97ed2d9d698658386c5691ae8348c5db9272988b8772e3ceb8d3a964"
    "it"
  end
  language "ja" do
    sha256 "19c66c5320a9841903132a30aab4cf75cf45aadcfe798a88f14947f230df43be"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "08c45b992868824d8e01ad2c263d44856729136f93e9df8fc8482d85d5243074"
    "nl"
  end
  language "pl" do
    sha256 "42d3a8b26214e4281f99dcee937dc58234b7801089e06f0f914e56d25d53672d"
    "pl"
  end
  language "pt" do
    sha256 "ea3a8e5594677224914642c96fc11eea2f4f4da769e881db14791b6d217cab17"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e3fcc74b7c8ceb0a217b9bc8162c0e1fbc09a2d3a10115ef5abe8984d19d800d"
    "pt-BR"
  end
  language "ru" do
    sha256 "2e5c6fe5364efd118186cc40ecd12474b249e937809ef7f4d2aa763e3aaa067e"
    "ru"
  end
  language "uk" do
    sha256 "6c8bd8c93a63d35b0b9d15fecbd5f620077d6190a3e916ecff1c765a45ab16f7"
    "uk"
  end
  language "zh-TW" do
    sha256 "22a8ebbaf74ae475e679dff5bdd85838fdafc9b4cd2298bf1239cc24742ddb94"
    "zh-TW"
  end
  language "zh" do
    sha256 "aaadaca1e910a2f2c384c858c169ac537d6a322fd939169e90e32b8d2c9128e0"
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
