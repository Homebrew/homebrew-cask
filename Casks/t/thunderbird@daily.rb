cask "thunderbird@daily" do
  version "143.0a1,2025-07-25-09-52-19"

  language "cs" do
    sha256 "d725669087e367d0805e5cf51f8f560be9ed4b9ccab36087ff3c4f9d6663c11c"
    "cs"
  end
  language "de" do
    sha256 "eea81595a4ec3ad98b56b9d845fc528cd5c26963f3c353fb17ebc611d10f136f"
    "de"
  end
  language "en-GB" do
    sha256 "7c3fc606f999d157f83e88c4ca4c40995d173cee7a21e66552f1bedce661a22b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f36b043a868fadaf89b313946998956d500e69df26c10cac33f4453bf008714b"
    "en-US"
  end
  language "fr" do
    sha256 "139af823bfd8081c9c0231ac99dc84dbd493600d8c59fba3859f4441168c62e4"
    "fr"
  end
  language "gl" do
    sha256 "039bf9b09e60fd3527ded967bb020796d090e5d30d4978ae23dad13c7a09a9e4"
    "gl"
  end
  language "it" do
    sha256 "61897223054226f83ab887f0c4f0765e83092cb401b298686b08998604ec22f2"
    "it"
  end
  language "ja" do
    sha256 "eaa65222fea72a20d91d00137ae98bfe7d09f403203bc96f40dd1d7f68451818"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b2fc62d796a50e8f2f24165220e8b3106dd40b0a93e8b5376a922b3ae4a731f5"
    "nl"
  end
  language "pl" do
    sha256 "9ee973dd83912f4d5efcf19044d09c21142149533d493d51ad0b3cdbde5b48ff"
    "pl"
  end
  language "pt" do
    sha256 "75d931a374c37dcd8bf00f21d0e0d4b2f29b04ba3383bf6e0f02d11355c94562"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a49964ca31fd3469952694731838212d03602327d3ac33163fb127fcbb99a872"
    "pt-BR"
  end
  language "ru" do
    sha256 "95355266f1ec4f5eafae8f28bd6a59b2caaad6b552fa18f0d73299441f6dadcf"
    "ru"
  end
  language "uk" do
    sha256 "d01b7a6afeb5398ed2441c6c577a3709ac82557cf9cb05b1b49d3e2fbc5ed06b"
    "uk"
  end
  language "zh-TW" do
    sha256 "d7f230df3609422abc1eee1efa90fd6ed9b4a2a29d5c8b2aeb9b4bfe63352f15"
    "zh-TW"
  end
  language "zh" do
    sha256 "3936dd561ca42540d93c6cb44a61d2e1bbd8c00632e618818a9afc77bdabe139"
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
