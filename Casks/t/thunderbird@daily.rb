cask "thunderbird@daily" do
  version "153.0a1,2026-06-01-09-31-08"

  language "cs" do
    sha256 "1e20910071d4ca71c1833113070ce61aceb6821874d77f306d0a5b92a3a31d4c"
    "cs"
  end
  language "de" do
    sha256 "64f36a90b338d5edfc49af275781dabfbce24ea0e3369ba571c2bcd889775601"
    "de"
  end
  language "en-GB" do
    sha256 "2b52a763f469295e9b29981480aa7150d6b876dc7b5cab0a3c89ad3f18111a53"
    "en-GB"
  end
  language "en", default: true do
    sha256 "85bcf3fecc59cc8bc1b8c215980797931e95ddb25a7ffc2def4b683eee8c6746"
    "en-US"
  end
  language "fr" do
    sha256 "2b76ab82b22e19b2c3d0559f3982a7de6ac76f3df792d0d6eff9260113e0cc7b"
    "fr"
  end
  language "gl" do
    sha256 "f1b1bdcf7497f2e081cd9c9391a94211b8f8b3b62a9a6c979f1976513492cd22"
    "gl"
  end
  language "it" do
    sha256 "24dd36fb8f40c9bad97359fd7ce29bc30fde2772c3baa4bf016643ff44de4b2a"
    "it"
  end
  language "ja" do
    sha256 "be130a70fa12203065450921a79704c5a892114ca2aeb85b3a6ae25f865c448e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "684d181e4fb54a242d75e6ad71fa9ed318fcb98d5c1b49c845ed283adfb0e399"
    "nl"
  end
  language "pl" do
    sha256 "07186212fc524e5f23f28e9e9b381a485bcad4de699077dc8d9759708b32da1e"
    "pl"
  end
  language "pt" do
    sha256 "f116a603eb46af8a9b40ae85a826252ed6d0fd051f92aa4caca623f45d7a92d8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e0c636b12307217cf2eaa1e0f71b2e9e1540b3593b0b0b7760fec708c43bb270"
    "pt-BR"
  end
  language "ru" do
    sha256 "03b31c65fa839bf5436a1630e3e83492f1b26c50246a731a7eab3a156a596b08"
    "ru"
  end
  language "uk" do
    sha256 "0c64da5c0c47eb73606ad2060c7a59e0626fa5b15dc24fc337f433b570110855"
    "uk"
  end
  language "zh-TW" do
    sha256 "554dde5b4fb1f560042963c8cf298d1fa8e55b2d02821ccc7f05f55c0da441dc"
    "zh-TW"
  end
  language "zh" do
    sha256 "3fa803e18c535095a60fdd23b4596828d83c8d34c5bb7bca2d0218e368220c63"
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
