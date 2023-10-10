cask "thunderbird" do
  version "115.3.2"

  language "cs" do
    sha256 "787c4b7f9f62ec9a54f7dfd9a244a1f32b900b3fb8db8499b623f794336ef270"
    "cs"
  end
  language "de" do
    sha256 "cc088de7e91aeecf2b64b21e738463c27b953bc512c5bba858340dea510e318d"
    "de"
  end
  language "en-GB" do
    sha256 "33a2cc7194d499f04620caf4c0a1b6a50fafdae120bc779a3a3d90c7f4338938"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f9c733d957a6a322febf4dded61fc072a6685aaa74c490664e6bc04cdba86161"
    "en-US"
  end
  language "fr" do
    sha256 "6e247f2db628aebb128d6893a32988be46465e61d6d22064c7e18d7dcdd02575"
    "fr"
  end
  language "gl" do
    sha256 "ca5b819f60a2292744931f76e7a9539863ee901dc2cd17f83b6272bcfedfa298"
    "gl"
  end
  language "it" do
    sha256 "45a2375f5729cf6298f7e8a8074a3037176c0cdd2dd1641fc2d08d3058773225"
    "it"
  end
  language "ja" do
    sha256 "4d6fc21f0fc18d7626652aebdce99e52d9e2546eb066ca932c51a0c3719a0394"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cd7c5526bd8fd54d51e13c8b66b3fd658a37ce07aa4689b2d03817f7ca277990"
    "nl"
  end
  language "pl" do
    sha256 "b4fa6b6cc48db03ad63ac4c24318e76b79de66062ed43aea7517f3b601bb13fd"
    "pl"
  end
  language "pt" do
    sha256 "9419c74d06740dc32cac7e297f71ce06f0f97c96c861bc7ab6e58ba31e8de096"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2e90b50275215854b6794fd549573075330750d013095068524fea1e4880be85"
    "pt-BR"
  end
  language "ru" do
    sha256 "626bb683315776bc3bbd5012b23b24a2163f518874647952bbc2ca3548c68bba"
    "ru"
  end
  language "uk" do
    sha256 "bd3e8e60e3f4360f75b2c419f1e484cd3c66d182b46a30373e735588acd35ed7"
    "uk"
  end
  language "zh-TW" do
    sha256 "fe1316f8a32c77b5d86b4b8e2389e3844fc0b3d5757154c5aebf9d03463cf71e"
    "zh-TW"
  end
  language "zh" do
    sha256 "2062e9e3732fbca0f89d5297cfdf37a6dcb51ae3b3b4122ccb337f21e0735e4d"
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
