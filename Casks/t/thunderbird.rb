cask "thunderbird" do
  version "115.3.3"

  language "cs" do
    sha256 "4e809e975b43f966430327f52088133f78d108938e4a1bddc4053c2ab3151b1f"
    "cs"
  end
  language "de" do
    sha256 "1a1d865e7416d026805e8a017ede12bcc698d4dc362525cc6e18350e7a93b4ef"
    "de"
  end
  language "en-GB" do
    sha256 "1163b3d61ea23aafa1937cc5c2856787e05ce9f2a533216e5d6ddbe9901ab932"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7b942f01946a9534268950979b6a761c5af854ba282aab9f3524b062ef586b70"
    "en-US"
  end
  language "fr" do
    sha256 "39404ea04cc02a8aefcbf09388ce8c6d64d263b1aa60537ffadb729adae89f9e"
    "fr"
  end
  language "gl" do
    sha256 "f31f07098ad49b16f20991e8fe108abbb33d7297515853344381eb1e6a3d0c64"
    "gl"
  end
  language "it" do
    sha256 "d2d205949fdde7dc93f6c14f7e8a7bcc82b6060a4bbb2168e78f64892681ed55"
    "it"
  end
  language "ja" do
    sha256 "0b3406537ba444f6bbc78058e24b73987f183a874a08186ffb505d97fd291bc2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f818fc92de2be9129a4807e0690ff2e1a40d3a1cac2b30a7a352c98c0796c90f"
    "nl"
  end
  language "pl" do
    sha256 "353d42f5cb42b608cbcce5b37eac3fd3df6d38ae283fa4faef9bd68b14b7d5a5"
    "pl"
  end
  language "pt" do
    sha256 "1de78d09d9ca331362e0b9ad9750187eba1d1ae377e565d9c1a003552d51b055"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "604aa1817f44d37713601c6c8e1715ea1e65f0af36767231f55599163a81e98a"
    "pt-BR"
  end
  language "ru" do
    sha256 "c35677c656d5d029570412c7434edc35a5b9d05c4774c7d4764609dee6d5dd96"
    "ru"
  end
  language "uk" do
    sha256 "4ccfaa6f03819dbf322a7081a479380f864f8af8800374c45f0f3f2a6ad692b1"
    "uk"
  end
  language "zh-TW" do
    sha256 "531a155ad32e153976de92949fafeffef7be4c1c70dc352411be2bbf48ead3b5"
    "zh-TW"
  end
  language "zh" do
    sha256 "aeb7e38d898e71babceb7198897168824aae4fdcb0108255e47d1c1af56a461a"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url :homepage
    regex(/href=.*?thunderbird[._-]v?(\d+(?:\.\d+)+)[._-]SSL/i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"
  depends_on macos: ">= :sierra"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
