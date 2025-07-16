cask "thunderbird@beta" do
  version "141.0b4"

  language "cs" do
    sha256 "2f670427c662e52444ddf13553485acff71d790d1f01e5d2bb5672e3a7fff13d"
    "cs"
  end
  language "de" do
    sha256 "95a0618db91519e7b2e945878b32840c3fbe61bfd4a7aa4e1a144fa4befbbf64"
    "de"
  end
  language "en-GB" do
    sha256 "79dc765fff2b6bb0c300314a678a8dfcdf0b4e43480b4faa11c98586dd2656a9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "db6bab6882a39a2e2dc742832b1fe5c4cf31d22d9b270609118081578de49f7e"
    "en-US"
  end
  language "fr" do
    sha256 "ad4b94e778dceb4a7d1ecd7d63b2ec4c394c80185537d68699f754bcbaeac588"
    "fr"
  end
  language "gl" do
    sha256 "480093fbb1323832629292a9336fea47512d23bd8bc47634cdec6658c14a6407"
    "gl"
  end
  language "it" do
    sha256 "a18aa1ea0d7208a20496692d8ebbb8ef360a366c556db81f75127ea0d4639bb8"
    "it"
  end
  language "ja" do
    sha256 "ccb426f0c937580acab56527d826ba5ac996d3be58bb4bac8c902f2e7fb14854"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "098f8f5195b1d327e1216b2e9c8bfaf732e02f92c100fe898a1fb74642c832b0"
    "nl"
  end
  language "pl" do
    sha256 "8be24895a39ab7712c7ec1b01644bc1ed4f17f56bffeba12f32a89281d32b7cc"
    "pl"
  end
  language "pt" do
    sha256 "5cb73093541816e60055e616e5eb3a04744fbe3b8f630fa697b2dc1c43f783e1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bea41e62c35228181a32b155b6d9585f1391889b57ea09a816e482fe4a183776"
    "pt-BR"
  end
  language "ru" do
    sha256 "662fe0e8dacf26430317be5a08bfa14584a1a64ec5527dd1a8b4d9fc2a3d9c5a"
    "ru"
  end
  language "uk" do
    sha256 "b92f15301ede91e2d7e6ca18276399cbecd98ac859a67b3f94170360152ef44d"
    "uk"
  end
  language "zh-TW" do
    sha256 "2c972a41887a176834e42c54de1eef44ec28b41fc6a52d3166134dacbfc8ca76"
    "zh-TW"
  end
  language "zh" do
    sha256 "c2b32e3605cae18f5d30352a840c0bec5c35651302863c0327a7f271d6556e76"
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
