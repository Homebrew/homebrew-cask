cask "thunderbird@beta" do
  version "134.0b2"

  language "cs" do
    sha256 "be502003fe487dca333bcca459343b7160e5e407585b690c979b40047a50b1a8"
    "cs"
  end
  language "de" do
    sha256 "00f9c59d7f9707b6eb4b6aa85219cc6954309e88fd4812b0f91d5b24695c0515"
    "de"
  end
  language "en-GB" do
    sha256 "5c6343776629c79d71ce393687a9a71a900636755659f598d6a2499b0fa32a76"
    "en-GB"
  end
  language "en", default: true do
    sha256 "16e2368668e0e19c24caf4bf471d8f8b64ac6a79a117d947afd27f9fd8dd1859"
    "en-US"
  end
  language "fr" do
    sha256 "04f56e94152dc5878ea0d2172c61e449e9c95a8a93b7cd5aecbbc1b883517486"
    "fr"
  end
  language "gl" do
    sha256 "5b4c54d6acecb5ff836cb649bdba7674e273fdd17697afb7332a9247735c0f47"
    "gl"
  end
  language "it" do
    sha256 "dd0d4cd1ff1432d41c19894ae7c971519c16d48ed63e35db2c0acf0c7f508da3"
    "it"
  end
  language "ja" do
    sha256 "3b283b92358d8002ee4eaccbfc9a0f0c9564c8f9e315153a01f453fbe3e8d05a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cca916021c2c1386f199d7bdb5a3290d534b7395abd0c3fa3149a4b544f69b82"
    "nl"
  end
  language "pl" do
    sha256 "cb6806ca54903ccf59f99cf307d496e7f3e75d1e12d4803ce6d3b2b8b0482116"
    "pl"
  end
  language "pt" do
    sha256 "af7dd76046e782b6bf9477d2533129ca1705a52eebcd2c44ed77ce1d3f33330f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "62e87e67c67140b8e8fbe3d83c1b4a74e061668f3c383dbaaa0b7d04adb5c750"
    "pt-BR"
  end
  language "ru" do
    sha256 "fcab729c56293179750a3828dd480de8fbc19fb9af2d1aaf3b9e6850589f19ea"
    "ru"
  end
  language "uk" do
    sha256 "419db85abba4d6b7c6ad39efaa217a07878be790b4db28c692c39634dff496e0"
    "uk"
  end
  language "zh-TW" do
    sha256 "1cd857aabd3f4f443b12abfe6d9cdf48d7a671d9157efd7b153324860ee3f0fc"
    "zh-TW"
  end
  language "zh" do
    sha256 "e95016dc47692bbf1da3654c6fb884e02da19aab3d2b936570800377d5b398f6"
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
