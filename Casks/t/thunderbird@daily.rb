cask "thunderbird@daily" do
  version "147.0a1,2025-12-08-10-39-37"

  language "cs" do
    sha256 "82a00a57c1d3d52b441a9b9e83d29e253a0a6524908ee821afaf2e021806f24a"
    "cs"
  end
  language "de" do
    sha256 "47eecc5fe9a2af0195673abcee19e5bee4cf1949c6921087df51f04ba9ff8bdc"
    "de"
  end
  language "en-GB" do
    sha256 "f39e2b0c9d4b48f9f5d427c2b642831408485d5590ccb22ecff1f2444ee0c0c9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "133e43162d742045848ba7cdfd1af73690c2fc4cbc153d22e53fd6bfcf508664"
    "en-US"
  end
  language "fr" do
    sha256 "cc3668e9adda04b67056d9ed67d731da87d58fac043d88198b09da4308d4993a"
    "fr"
  end
  language "gl" do
    sha256 "d5b9275d7a6b2033a3b8843199d71ec1216396de90bde4b79ca2460110e6b695"
    "gl"
  end
  language "it" do
    sha256 "ed68755f60ddf71b9262b2b05f4f766bb2428653da5ba277658d4c39a459752a"
    "it"
  end
  language "ja" do
    sha256 "e61f496a5dde5c07f4329483068cdaffc50fbdbf404fa8887fdf4986b7ebd4ae"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5b73b95f7dcbe55f6310e399b2e8779618ce7202acf93d457fbfacc90bd87b49"
    "nl"
  end
  language "pl" do
    sha256 "eaf9991c96c338c0ed64178b68e8aaebb45b60d1a5185fed0fc9f8f234d4ed14"
    "pl"
  end
  language "pt" do
    sha256 "6227a125db146fa4b988f4ee5ae9aa832475a876234b7f303848fabbadacac2b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5cf59f5895ce39060979487415d4ce51a27856fa78b1eed5cb57fecf4cda9b37"
    "pt-BR"
  end
  language "ru" do
    sha256 "41df66605725e0e96c5273ff824542aaff84ac79a62ae2fcd5537f8db2b45cdc"
    "ru"
  end
  language "uk" do
    sha256 "57d680b90860142ea546994b9ac2f9b9d2550c5bbbc1c3c19f68c4c9d595b4a2"
    "uk"
  end
  language "zh-TW" do
    sha256 "24bd7d9ad53ecb9e7f3398ed191943d7625dce2e2b61810bdf0121d5797c9406"
    "zh-TW"
  end
  language "zh" do
    sha256 "a3eac81ba26f8944ad0c0f393d44895f78b3a89e536d2af8158ca94611d0fef4"
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
