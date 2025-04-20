cask "thunderbird@daily" do
  version "139.0a1,2025-04-19-13-10-48"

  language "cs" do
    sha256 "a5fd8bf9ed100855d0a8b6ab9be792d2a67f122076eb1d99877a1342da60ce90"
    "cs"
  end
  language "de" do
    sha256 "3c61b6b51c9fc1c6e1ffbd4892b5f2454d118880d5fd31293fc4db7a6544e89f"
    "de"
  end
  language "en-GB" do
    sha256 "97b9a8a23ceab85b4f5085c2315b8e8399c8439487621ad5e447bd7d3531d11b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0b4886fc3e467eebc7747253d552d1df29365a2ac6273aea8d5f0b7cb4f87420"
    "en-US"
  end
  language "fr" do
    sha256 "03cbdf392efa3017c5436c245fb34e6f876ccc1a6717bc1e988a0f3e87d51aaf"
    "fr"
  end
  language "gl" do
    sha256 "5fd86265aaf676db7fb53b17872d6fdc5e864b9aac48de50ac50e9195c12ef90"
    "gl"
  end
  language "it" do
    sha256 "d028e45baf4c54d102107ed8d29568a19c7f4501f318bd663bfbd48a20ffb659"
    "it"
  end
  language "ja" do
    sha256 "d6384b6e81a07c3da5e1dde16f5daa4f4ff3c21c71d7acba137d4903aeb3e28e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5461718b135884f09713e778e74db6ccc19290a62c0a476daf4fdda7fa15c19b"
    "nl"
  end
  language "pl" do
    sha256 "f62ea02f4f1761637851b9d7603d2b61ac51a62fd4946aab56992308cc572cc3"
    "pl"
  end
  language "pt" do
    sha256 "ac4db112c06fecf6284b8819b3c073d37c9d969e029ba67bd2f5e021aa5b34d5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a70a3292fffa06b5d97a7ab2eff53290a3b180a9bff4abd05ed6f7ceb2b6ad3f"
    "pt-BR"
  end
  language "ru" do
    sha256 "ad5a202d566cd8679c591678993772b69cf8357ff2eeb681f70b86a227a5c60d"
    "ru"
  end
  language "uk" do
    sha256 "6f225d5b07b8551a547c5b88b3cf9168de23a1765bb38f006f1271d1085702bc"
    "uk"
  end
  language "zh-TW" do
    sha256 "99e3bc8b2d765cb3b748eb572906b2a1697bb8421cc631e46f2dd09b2e662f45"
    "zh-TW"
  end
  language "zh" do
    sha256 "682c3f52cc539003b4008002876716a18f8658a820215c0db97a8a9cc67df46c"
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
