cask "thunderbird@beta" do
  version "138.0b2"

  language "cs" do
    sha256 "420266acb1a555d5cb22b97f74b3a50fe1524ca7c3bf4a3dd543374e7caf1f65"
    "cs"
  end
  language "de" do
    sha256 "481d392b672e845cbf514bdc7fc5ff12afd0c6140b60fbb7f9af610e2f6d0f7f"
    "de"
  end
  language "en-GB" do
    sha256 "8874bd882078d122e6c61084ac1a9ff4c2115b28677657ed17a6d106d040f44d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "86c6f1c6f810a37757756c3d82864afa1cb2059a8af06d45c2a4408cfff159a1"
    "en-US"
  end
  language "fr" do
    sha256 "c57ad845f4f34750a30f1158387817e69db69c09dff8907de006c9ee5979320d"
    "fr"
  end
  language "gl" do
    sha256 "ff672217339316c21dafaa8eeb60f1309afc03d67e6de6b206f9c77097fbabd4"
    "gl"
  end
  language "it" do
    sha256 "98b1d2b4950483c049c33a65ada3d8a0f940549e85f19f471f739d671072db8d"
    "it"
  end
  language "ja" do
    sha256 "c7b93150d033fae89b76ae9cd6f0016c3490e7487cb1971e194e75025f80ea76"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c1d04cee513a21dbdc77a2f2c6ddc0edb8c9492d0f6beea6eb7dc31abce1582f"
    "nl"
  end
  language "pl" do
    sha256 "927676f11a42b4226397538d81296221f783154194032128d2f1fffb40f76cb6"
    "pl"
  end
  language "pt" do
    sha256 "44cbd3f4a8e78c2d548a9180a418d5ddb9b3691317537fc4621853f9be7972dd"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7d82a00d52eee4cca88fc799c57355d250b39a36d5b00bad410821a821871a55"
    "pt-BR"
  end
  language "ru" do
    sha256 "7be07d115c996d128f0281778c792b9648beb3b3b83e53050d831494ea88ffb6"
    "ru"
  end
  language "uk" do
    sha256 "ccbaa06e1c18d41d5ccf51e316c33a57f5af267088171b756a7604e7ccc34f75"
    "uk"
  end
  language "zh-TW" do
    sha256 "547b178faa19afcb2a6184e753f77987152d5b023965321de19f9d0df461a5a5"
    "zh-TW"
  end
  language "zh" do
    sha256 "b1b48a69438c19f6d29069a8cc98d91dd3b14df66a0ce6fb27d17e548f9b1167"
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
  depends_on macos: ">= :catalina"

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
