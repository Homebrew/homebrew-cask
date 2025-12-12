cask "thunderbird@beta" do
  version "147.0b2"

  language "cs" do
    sha256 "5051a6c09c172f510f9156e4713afc70087438bccfc63a308168b50696226f55"
    "cs"
  end
  language "de" do
    sha256 "8a7958d3895322762d2ab426872e8d3aad8cd42e251f0d9672d6fbf06f066897"
    "de"
  end
  language "en-GB" do
    sha256 "8ad2f4c8a0b1d9dff1096493ffd18c739636d7f0a7744cf300d8dd9a35f7a951"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5c30262d978b62a587b48a4ea1227c1de092f3910e93d20211ba7a4e81f0293a"
    "en-US"
  end
  language "fr" do
    sha256 "e9fcb634d12dde5727c5f9799d3f0e0779ac10ee9c17b8a4622a30ea7db4dc78"
    "fr"
  end
  language "gl" do
    sha256 "548e9f95c77fb305170c5e2700e13ff431bdd8ec03e5921d5cc22d2f6fc222c4"
    "gl"
  end
  language "it" do
    sha256 "3114ad2e06d830a1f34c1803aef18d3b6a87f7694cb9f4409939927c43a85120"
    "it"
  end
  language "ja" do
    sha256 "49890bcd8f9bc8bbd200693ec3a463bc9eb9cd7829bd5913e96fe0163ae125d7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6e6f09760a76a3dad78574562692f96656b7402581e9e42f344a5888d3793aa1"
    "nl"
  end
  language "pl" do
    sha256 "0a2fd9fe3a3099368096ace886251ad90b7c4b5915dbfdfc1dfa709918c3a460"
    "pl"
  end
  language "pt" do
    sha256 "7e76aa6332be9d8a4528e9caf7fd08d65e08c110777eb7813846b29cfbf66c3f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "86f3486603cdd52bdecfa886846c2701314a3b41b361cb1f86e07f372bb504ec"
    "pt-BR"
  end
  language "ru" do
    sha256 "3f36a5cca3f9e6d21a811cb3e72ee01ca8e112760568ab63005ceb0d6aae4b94"
    "ru"
  end
  language "uk" do
    sha256 "351ba8b4c3ce7cce55bc21ca3e0053f6ddec984d5f32dbeb04c4687ef95db80b"
    "uk"
  end
  language "zh-TW" do
    sha256 "2022492e56df4bc7f93689e8d7b41de8a9f162bac45e602d3072c05569fc0c6d"
    "zh-TW"
  end
  language "zh" do
    sha256 "080ba157482467caedfd2a1b1cf9ed15391f4e64e2129001bda944a46f08067d"
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
