cask "thunderbird@daily" do
  version "147.0a1,2025-12-03-09-35-26"

  language "cs" do
    sha256 "a9c07d8ad106b67dc2f56f569a7dc74060d1a9230d920aac379d4f25188062ac"
    "cs"
  end
  language "de" do
    sha256 "3385ac556e85cf17f1fc3a3eb60660d5d45756cbf6045dc33a479cd1649de89b"
    "de"
  end
  language "en-GB" do
    sha256 "55a6b14da125d0ca6a4129170841813caefd5276ce4679b518a63b4f7d7a9d6c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0097aa5c309ba7a4b02504262494baa8d084ab9cc9bac07f6660a2d7da77c29c"
    "en-US"
  end
  language "fr" do
    sha256 "2b4bcecbe903835cbd2678b93dce410ef6d2b106a26ee111bf0cc3ff8609ba24"
    "fr"
  end
  language "gl" do
    sha256 "ab01db2f7f54ce7fdd44a74ba17965bb8d0e2352212bb1c4ef131e08f422525f"
    "gl"
  end
  language "it" do
    sha256 "355913fb33aeda99436001bf86d70e8e50b302d5c167a1f7db157a3fb004338e"
    "it"
  end
  language "ja" do
    sha256 "aeb7dea80a1c3810c7ce1edacb5cc8742c626d93cabbff0b7ecde8458218e4d6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7eb4cdd478e6c8e6c579b4c29eed632665171d510b10acb219c4a5f532e7f4c9"
    "nl"
  end
  language "pl" do
    sha256 "6a81036bba94d890fcb862a013f05e35eacea82c66946b72c1ecc3a00c070764"
    "pl"
  end
  language "pt" do
    sha256 "85cee21d6a985b4f9d97fed6ef44e8b92451afbab48f2e0512169b0de98e9037"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "259b572235744a777ab9feaeef37f027b085b48199d706e00a12860f3c6f7b68"
    "pt-BR"
  end
  language "ru" do
    sha256 "2305de05dba0591581abda69ac1c9a254f6165ca2dfe0037bc143f9484350a7b"
    "ru"
  end
  language "uk" do
    sha256 "08872125eb876ef9d429703fc3e5691365d122f6cb41f598834ce2dfbf936997"
    "uk"
  end
  language "zh-TW" do
    sha256 "c669af180e45146330963165422b42446c5e19b70037d54ee25be40e3dc2f172"
    "zh-TW"
  end
  language "zh" do
    sha256 "3b03293b96439b85591681c71460657cf392912967cc6ad1b8170a0a56054362"
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
