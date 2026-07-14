cask "thunderbird@beta" do
  version "153.0b8"

  language "cs" do
    sha256 "8ae79ab2227849dc80b45df3f7006c321a6dd0cfff234d6335ec8078c376a6ba"
    "cs"
  end
  language "de" do
    sha256 "325675e15264c9e88061a220b741a2089835f9b61a3bc2baa3c6d292f3c35ea0"
    "de"
  end
  language "en-GB" do
    sha256 "750ee7684bc7eba04ef42dfd7b2264b31c25ee9bd686584e8f42ee648c288d63"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0b98957bf5cc6647537cb8bca7bc5e6435b46c71eefc60749ac11003c86fc2b3"
    "en-US"
  end
  language "fr" do
    sha256 "647e301959327fbd280c4c994618bcaebdcbc40cb1a207b18f86354961192bac"
    "fr"
  end
  language "gl" do
    sha256 "837a67252187515618d5c9598c6b4bfe1aa6f4f6f135ba500ae0084101793b39"
    "gl"
  end
  language "it" do
    sha256 "9e14c5486ed8a078e8bd539a1a8e599ad82c391ce617d5aaf617dbce7e40a464"
    "it"
  end
  language "ja" do
    sha256 "7d1bc7bdcdef33ad4e22eb94dd573d44339695cb147ef66f59464efbdde4ce00"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "91f095f02f2f597652ca696723a9e861f7cbd7f142acaadd96d98499cb66dca0"
    "nl"
  end
  language "pl" do
    sha256 "7131e97653a61b14a31c284985f650a0af0c2091069bb005c094002870e9a2ac"
    "pl"
  end
  language "pt" do
    sha256 "177ff0ad8ba1e87cca012ed8e8052d9964dab723c2f4925a191709dca97ebad8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ab4bdc9598be34f4c02c47d4eb1efdefeb6936bbfd673b4b4098b86c4c3fd089"
    "pt-BR"
  end
  language "ru" do
    sha256 "9559c3444754e5ddc19a6427656b0c1461869774706ddb2e3cba605a19e53332"
    "ru"
  end
  language "uk" do
    sha256 "4559fe8e693fddde2c8d7210b9f9fa27b1bb2f2c16f5fc5a197244b193eac5ee"
    "uk"
  end
  language "zh-TW" do
    sha256 "aabf69a6793cc44373520a1aa1ebd397aa3a4224fce05b3e677eb469c9bf0e0a"
    "zh-TW"
  end
  language "zh" do
    sha256 "8df39003681926ff0e53e076ea22e28e1d35c447fa402967c4c7e4045fb35025"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird Beta"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    strategy :json do |json|
      json["LATEST_THUNDERBIRD_DEVEL_VERSION"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Thunderbird Beta.app"

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
