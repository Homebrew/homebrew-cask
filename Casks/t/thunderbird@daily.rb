cask "thunderbird@daily" do
  version "162.0a1,2026-11-19-09-59-03"

  language "cs" do
    sha256 "4aa09b205052632a348644889749e470678706dfab17b8f25fb99f21f4aee405"
    "cs"
  end
  language "de" do
    sha256 "6b17a5cd234cd2a2f90679e59b5e0c24817784abc5f3b9137921ecbbf71763d0"
    "de"
  end
  language "en-GB" do
    sha256 "d3e347c08808977f1704cb9ae77ba03fac550d0683f4b99cb1f7e39cb6ddd572"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2ce7b3be099ed86379ff659f9dd61fdfe4f148582882861efb328f4e3a50b63d"
    "en-US"
  end
  language "fr" do
    sha256 "104078514056865bd6413ed8237144dd6472db753ae834dc38e390c3f8bf953b"
    "fr"
  end
  language "gl" do
    sha256 "fb4ea80efa54110984402b0953521a69d1d19b7e674e1aea2bfbabc4ef5f3e86"
    "gl"
  end
  language "it" do
    sha256 "6f2052cc13d2e7f7226922165006c394f86af707aa35cb36bc0f2275acd72e3d"
    "it"
  end
  language "ja" do
    sha256 "2a2a56b2b8e32996379c5a8eb8ae6bf47c2a9734f138a336b84ebe2cdc578b52"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e922b3d7e6955b9dce5bbd91e37a5cc7f967a45cf219cb28d295e9357c2f93fd"
    "nl"
  end
  language "pl" do
    sha256 "a863b8894e128e9e94c519275b101bd5b9726f49a99c52f02a221beafe45ae0e"
    "pl"
  end
  language "pt" do
    sha256 "2521646033f5d1032ebdc6962f3f346367edb97c04c12a21e8a2eb450d8d158e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f4511077d0e23308309f103dcaf35ad36b4f9edb483c18870f9881c732041810"
    "pt-BR"
  end
  language "ru" do
    sha256 "175bfe138bfdf0bb9c233b0b84ee70e06ffb922cc431519b0ad1e70261ced271"
    "ru"
  end
  language "uk" do
    sha256 "f2a2627387e6028773580b6391dfa113e01c74322f9e8d9c9b95e5309f348be3"
    "uk"
  end
  language "zh-TW" do
    sha256 "cd282c7a4ad77432a75b05a21d1b0bf37f3b1dc00ddd95bf56e9ce5e46848a52"
    "zh-TW"
  end
  language "zh" do
    sha256 "690901c49199349b3ffaa8ee8fca23119a5a13c7d5f163766047ed473fe9bf2d"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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

  uninstall quit: "org.mozilla.thunderbird-daily"

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
