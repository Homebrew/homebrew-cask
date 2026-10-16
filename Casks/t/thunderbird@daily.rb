cask "thunderbird@daily" do
  version "160.0a1,2026-10-16-10-44-33"

  language "cs" do
    sha256 "29675118156d61b00ed4bda5bb830be738bf4b8bb2e06c35231807e499c410bf"
    "cs"
  end
  language "de" do
    sha256 "d551de51c73287d6a8b4550fae67c59a5aa60aac3bdb438d915afb4a3e66a2ea"
    "de"
  end
  language "en-GB" do
    sha256 "a9a4c899c5700e83956323b80306539b18542032b1702a7c41698a660dc11827"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3db64732a015b7c06ed4bb965f3cef09082e8a3921f80b276e14ea345d064545"
    "en-US"
  end
  language "fr" do
    sha256 "f7916e5b177bbc683132e202fb7f4be8001eb03c4e382e9feb3d905d27144851"
    "fr"
  end
  language "gl" do
    sha256 "d17edac3f1d43cf449c607e239c6814b69fd9a61774f13bf14ff8bbe13a8f4b0"
    "gl"
  end
  language "it" do
    sha256 "0bbe731403fe8b9e61032220a08a49af17e07d6b02b2eb73efee9f33ecd1ea9f"
    "it"
  end
  language "ja" do
    sha256 "ed084c3be70966d0a6f197ff1eeea875e091bfcff6b5733f320629ffeb21085f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "68f863616393a990334569fa7ba67fc0ac85e389af5175d84d987c975dcc0341"
    "nl"
  end
  language "pl" do
    sha256 "8333ee1f323eb565ed55f69ed4ee31c86df234edad32ef7aafce3d4b7e3176ab"
    "pl"
  end
  language "pt" do
    sha256 "b6a4740f54e5c88acd8ea2f8d23191b12af2b60848760dae6a6ccb6881e8ae99"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f7804e025ee481fe9a8fd94e7bb86d5468add00f59859c897a2d5dcd00c10ec0"
    "pt-BR"
  end
  language "ru" do
    sha256 "d034c48e06d06a326a7ae7bea89ba220115f6bef191b2ed074f9ef8a9bdb92ea"
    "ru"
  end
  language "uk" do
    sha256 "4ebf0c578128ebaa6a2d89c99c093b85f217f16860dfa68a2e702b2840dea212"
    "uk"
  end
  language "zh-TW" do
    sha256 "389908c35ac28aa6077b197e51c3149033e5ab811b12700c5018cecea3370d9b"
    "zh-TW"
  end
  language "zh" do
    sha256 "cbce2bd3f87bc954135d9f7577e2ece815cf902fc945e4183a6fad1ce1ae9ba2"
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
