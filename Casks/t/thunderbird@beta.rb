cask "thunderbird@beta" do
  version "151.0b4"

  language "cs" do
    sha256 "94a71ae3f9f790ca41856e5dc57d044e86e34edce2780e92b6507cc702a34821"
    "cs"
  end
  language "de" do
    sha256 "12804e1a1e7d69ac52e8055fa0df37b45c427c03db35484b4bb9664056f29519"
    "de"
  end
  language "en-GB" do
    sha256 "4254be8ecd8ba1ddb13a444b5b2e53c6ae2f6ed2ee0f885293a2e61a04812c92"
    "en-GB"
  end
  language "en", default: true do
    sha256 "25e2d3a4f825b21d4defc79f1f4ff918f2b08d59f9d96a0ee77a7e48b6766172"
    "en-US"
  end
  language "fr" do
    sha256 "76b2dd525186eee1cf2e958ea279532db9c9dd8c9363ac206293e4ab6499c9b3"
    "fr"
  end
  language "gl" do
    sha256 "7d32ba0feaf738242a96c00b4bf6d1805edb496c89e89f839987c4118c4ad2c7"
    "gl"
  end
  language "it" do
    sha256 "fbb46463a69313d6364d270b6f0ed3a59b78b87974c66c453d8d3dd2969c610e"
    "it"
  end
  language "ja" do
    sha256 "1de243005f47d4ba4e13edec5cdbeda1a2e98bec5c738a9da0f5e143b7366b2b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3dd473ab3b389c75f504c3ba7f910f0fc212da834900a60c5a3b77477748fb07"
    "nl"
  end
  language "pl" do
    sha256 "bee845bd8685ba212ede9234b208bda8c9ea2e4cec09ae2cae37a52f8e5dc18f"
    "pl"
  end
  language "pt" do
    sha256 "e649a500cde69844048af668c93abeb1a01a8ba80815142a7eb0506cac87abf7"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "be97b02b2623e35525d4747d4a41e081e05817e3a986f8ccad16ceacb7ae8388"
    "pt-BR"
  end
  language "ru" do
    sha256 "6538149b260fea02635ad46539cdeb999908660fc82c46132e21180be615168a"
    "ru"
  end
  language "uk" do
    sha256 "a85656e8fb269676cdcbc47d5eaeee04a658dc21e47415f6a8636e848c49b295"
    "uk"
  end
  language "zh-TW" do
    sha256 "2a4ac6a15993a566e1fb48dcf50e7f3485a6439f62abe260b044efef291c1127"
    "zh-TW"
  end
  language "zh" do
    sha256 "364628808f594ded8ae3a5944a05e1903be2750327cfedd2e549c48ba7a75f75"
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
