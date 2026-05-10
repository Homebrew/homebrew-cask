cask "thunderbird@daily" do
  version "152.0a1,2026-05-10-10-12-41"

  language "cs" do
    sha256 "a108829d7b7827dadaed72582d791eee66f8082f7c83e7e646872abb2176e6ac"
    "cs"
  end
  language "de" do
    sha256 "2039d3adbe27c2cc8c41cb8a27be561456f63eaa34f440b869899c6adf6508f0"
    "de"
  end
  language "en-GB" do
    sha256 "929311fc6502c312fd863e80f1df0442004f70bac81b71247d8e5b3b46485b44"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9787f8561023558bb7e74556c267011df46780df6123c01880b8f428677017b9"
    "en-US"
  end
  language "fr" do
    sha256 "6f3664c9c8e06b1a456653be3806d2d5af038a2d9db79c03965c6694dca4c77d"
    "fr"
  end
  language "gl" do
    sha256 "76d39375e3a995a8ddde8e792ee875ccdfd191810f72762d32e0b6262ae149c5"
    "gl"
  end
  language "it" do
    sha256 "ec3334fee15956eb95e2550bcea69df3efdeb8778e9ac8c58ea535bb7286b32f"
    "it"
  end
  language "ja" do
    sha256 "581600da95a1b194cf7ea2ee0926e81d3544da24de682fee85390d676c45e21d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "09adddd268297a5efa7423ae7f53eb88e9a85b6732891b625abcefd1197ba5bc"
    "nl"
  end
  language "pl" do
    sha256 "4ea5e5c1b5aa8722c5028bf21bfc77e294868b8293d912ae76f4b542f6b4b17e"
    "pl"
  end
  language "pt" do
    sha256 "42c3050f3e4dd6ccb4ead4b83e54d29844a8d79f3d912ba3f9a8f241cb44cc6b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "78f53261326540fdbfa46520ce47843c13bcbb97ed057a973807e2f88b213532"
    "pt-BR"
  end
  language "ru" do
    sha256 "40b03cd36d9705e46529db1f05211dc67be403097aa87550099e0a7ab6757da5"
    "ru"
  end
  language "uk" do
    sha256 "34f0d318e97f6e169a41e8f8efdf0536e2a020a99f04ad30b509487ad841977a"
    "uk"
  end
  language "zh-TW" do
    sha256 "88d1de1801b10aa929dda60cf76121e788499090e3eb268fbffcd518af96c389"
    "zh-TW"
  end
  language "zh" do
    sha256 "962baef0dc660ee01c18bde06461a3296b8d655977a91061ac85c937e1d1c90e"
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
