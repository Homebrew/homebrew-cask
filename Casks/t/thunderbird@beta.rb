cask "thunderbird@beta" do
  version "153.0b7"

  language "cs" do
    sha256 "00d51fa62affa8397bec7f6858392d96720c7f081f04f1bb3d1b03c28ddae501"
    "cs"
  end
  language "de" do
    sha256 "717a2dbd90e8e73dfc19848389c4856e0ac7a62439a7b2f12a915ca722ff0da3"
    "de"
  end
  language "en-GB" do
    sha256 "640ed4415c7b3ea346db5fb4c89b7153fe64414c248caaa7878e8831efb92dfa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1f12c4c248cb6ce457dbbde78e45a0e5287b84a7ee4aa06bdbdf7ff52085ba34"
    "en-US"
  end
  language "fr" do
    sha256 "f2b01c59792b80607d8ed421812cf9e6b42d7ecdee5bb8585826ed825d433ca3"
    "fr"
  end
  language "gl" do
    sha256 "b870e9a24756172fdcbb73e3b8dff4430622936ade6601c2f598b9ca77042b96"
    "gl"
  end
  language "it" do
    sha256 "34806802d7c8e698b131d60b5a0112a4df19edda16af45279e44dd9e203f7ce4"
    "it"
  end
  language "ja" do
    sha256 "7dc55844d491ac57987ad6964179301b158819b1ee86ca6cbbdb09f3fd2a161e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a45dcb279e06c2cf9bc173087baaa86d0b78e73ab358198f85dba57005faaa4e"
    "nl"
  end
  language "pl" do
    sha256 "0c8b47e670871d60d6d2c4cf4a6dc4f6260f0efb0ed9c6a6b89fdc0e0a4d3ab8"
    "pl"
  end
  language "pt" do
    sha256 "11ef70e9c894f037f76f594167cb32690bba0dac015a7ae7c13b87d370ef0a44"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "dbfbc0090863521466e025cd08f60ae89b5df3b8e244be645a7fd32b3f0b76ca"
    "pt-BR"
  end
  language "ru" do
    sha256 "3708a07eeb33d3b607b589bed06132870cb32e06d9ec87031df1298daed91b4b"
    "ru"
  end
  language "uk" do
    sha256 "0e43ee3d99fbf7fe9b16d523e5627d4c28c1deafd241a500f8735a5e1a740593"
    "uk"
  end
  language "zh-TW" do
    sha256 "5a214dd4217d0e0809d3e5069085f03b714059e8ae95318629fb4730aada5617"
    "zh-TW"
  end
  language "zh" do
    sha256 "e569b67265991b7ee57199e6cb632c483518d634c90cc78751eff46e153ec578"
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
