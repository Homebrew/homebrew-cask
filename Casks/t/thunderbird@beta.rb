cask "thunderbird@beta" do
  version "145.0b1"

  language "cs" do
    sha256 "7c5986aa3b7383c2e1532bef08cf216e0b521e88dba0c0d25810d733684f7262"
    "cs"
  end
  language "de" do
    sha256 "1ab3339e0817152163b236d674212fa643fba31b52312a70850960de11a8bd2c"
    "de"
  end
  language "en-GB" do
    sha256 "d1348680a56ae15903eeba66d9b4956ac8279320812c3592591ea11e187ab074"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f23716556d3a99b0e5329a80bab9629e5f5963c20fa31dbf9c4983d078c5a9ed"
    "en-US"
  end
  language "fr" do
    sha256 "ca34b6a0780d24fb5b88478e86c82fb192343ba6f1767af27e7f2fd649a8aec9"
    "fr"
  end
  language "gl" do
    sha256 "a9686a6ce8fc2e93aa7f63147a2b5fa0e3412a6bf00e6527b4696848f2ff2a03"
    "gl"
  end
  language "it" do
    sha256 "1aa7af4b82dba51dbfbf38dd28c46a5b3d14dfb0c8959008425fbf8d6e2d9be8"
    "it"
  end
  language "ja" do
    sha256 "f48ecf0605279caa59963fed5e35decf25733e0f00e6e9eb57cb9fbe77115308"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "764c2f960f61d7e781ccb190d1f23d35b8806f7ffd3123ee72c3eb421d1fb0b6"
    "nl"
  end
  language "pl" do
    sha256 "f39ffec00eb75447ce96361f24e983c3505d98e8f88644393febd644c14760fe"
    "pl"
  end
  language "pt" do
    sha256 "1d1b7ffdb4a08e24a0e9ccf7a8f95a031143933dedb240b0002cbcce281c03d3"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f3b323eef39ab87cbbb955ef4637e1e20032f04c0d3214ec6975e1bc3d9f101f"
    "pt-BR"
  end
  language "ru" do
    sha256 "348b39a85c866f7dc1cb9a0679a9eea35e7ca3f609561fe3eccd0cc8ca781321"
    "ru"
  end
  language "uk" do
    sha256 "eea97acda5870f68a4ad4eeb70108444bf9eaa88ea66be165f9ea5f69dd3b104"
    "uk"
  end
  language "zh-TW" do
    sha256 "5638e00074373b1a6156ba1a0a7fd6f32d44b45500255404f7d5421393821946"
    "zh-TW"
  end
  language "zh" do
    sha256 "d54797e90e100e5114daab3e82641bfa3327f03df27e29a731cca8f56ccf899b"
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
