cask "thunderbird@daily" do
  version "148.0a1,2026-01-03-09-26-34"

  language "cs" do
    sha256 "33c60db01bd2dccf8c9c72b09fa0611c900f2ff032602138f61ebb4bfbe3434d"
    "cs"
  end
  language "de" do
    sha256 "903744c280ef354a4c09cfd2220f7b847784f502b6c06ed0a2b993205b08568f"
    "de"
  end
  language "en-GB" do
    sha256 "178eee974dc79379bf330efe98d12c9678d6f8665691269c8dcb62afb5ed700f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cde974c30ce17f6ee4e79bdf3d1c491dc43314983b34ec770a3bb38578063835"
    "en-US"
  end
  language "fr" do
    sha256 "2c7e098f0ea7444ac56a2babcb7f94bfb6b3a2cbc9fc3b599d0345b4033461c5"
    "fr"
  end
  language "gl" do
    sha256 "bebc87b7ef1eca6b21c36a16722ecd0f5014772cc12c321fb9372a10272059a5"
    "gl"
  end
  language "it" do
    sha256 "5b0affe1de558b9af4a76f945ca320d9e30cdc57477c127ccfb7eed827fb9cc3"
    "it"
  end
  language "ja" do
    sha256 "7a2851d32aabfebeb5cdb9212a9e3663bef399e248cfb670320b4a9731671119"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3d10069d040a5963658fa1c7156cc059b2b96161b5f685f84bc7ec19c3c99291"
    "nl"
  end
  language "pl" do
    sha256 "b6150b237bf207af016fe04622e52676fba30a5fe2ad15d391f026c503529566"
    "pl"
  end
  language "pt" do
    sha256 "25da92a9e1e298f92850e33c8c2f68f2e3408ab4a90db2b21293b2534f6204a9"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "84b4b607da0f9b87c855fc94680af3a6c8ee5e936fa17011e844b09d2aa4e583"
    "pt-BR"
  end
  language "ru" do
    sha256 "aebd4276d1908dd82a78b00f2c2e737c5f3a7ab8c0b25b946fef1694ab27b128"
    "ru"
  end
  language "uk" do
    sha256 "cb62afb8b14ff404cf522a677ae4009ecc64b9daff231d88a3acf6af55b76eee"
    "uk"
  end
  language "zh-TW" do
    sha256 "745a28ad1ea9145b5f7859cfa6ad4d67e444e647498b0be6e67ece4eaeda9a11"
    "zh-TW"
  end
  language "zh" do
    sha256 "28b695ba93bddcbf7aeb03236b169b645ba45f66d02c11fc6498f14a5a131b39"
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
