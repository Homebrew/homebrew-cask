cask "thunderbird@beta" do
  version "157.0b3"

  language "cs" do
    sha256 "50139ab7d6f6f58c7ce18dd240ee25e21967b83c56f310fdf44bae953685e4bc"
    "cs"
  end
  language "de" do
    sha256 "7a13047c496366c07cde98b4568ee683550a7161623a7a7e9dfb06f2606b5377"
    "de"
  end
  language "en-GB" do
    sha256 "c6df2118376214a8bf6f6c575b01194c62010e8c3b1e2cdf0907500825045eee"
    "en-GB"
  end
  language "en", default: true do
    sha256 "14629846091ac33b08a128658aef4c403c61432654fb447908d1fad10abb36be"
    "en-US"
  end
  language "fr" do
    sha256 "a5e55411c74ba80cd40e7f6abe68cc435a47362beafaf6d451c736c00a1783fa"
    "fr"
  end
  language "gl" do
    sha256 "a0304693c2f0fd2e443100f7d7d9e15b3055ca31879195dd98e7b484fc10713c"
    "gl"
  end
  language "it" do
    sha256 "7e3045af9bb4db5aa829ca72326c722c0816a3ff034552a184dd1a7431780653"
    "it"
  end
  language "ja" do
    sha256 "db4b77291d1092a0f69e87869f3f949a031798ec37748f17d7e9716147d29c94"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cf7f9b3ddce0fe2bea88699519d43018f9d2742e9e0a89fc2ab31ccf8ca07f8a"
    "nl"
  end
  language "pl" do
    sha256 "9b302bfd40b65ace2e19077c306f81605702d2264b0764a19daa05b2ba9f53b8"
    "pl"
  end
  language "pt" do
    sha256 "a5b58fca18a563e291cb9c5b430c1a31c0c84c1d45a7a6ce3b25aec393ac3462"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a3eb1509d699133d8ed62cfde40598a4d9e886a926f889d21a60f000f790ce98"
    "pt-BR"
  end
  language "ru" do
    sha256 "5985248c819249e3a4a5e80eb72f399c6d75f067b47d5d380686fb7e9240793a"
    "ru"
  end
  language "uk" do
    sha256 "7a82fd48551352ac9eb20b4e14aeaa08a06847116ccf0716cbffee65b90fd3eb"
    "uk"
  end
  language "zh-TW" do
    sha256 "a3d4160a2ab53efcebaa6f06d532e02128edcfb65bf8f82cbba7cde77cf32f86"
    "zh-TW"
  end
  language "zh" do
    sha256 "57708bb9df1a7cff2e7f8bf85fff1dc7606997eba44b9f936cba64ddae09c107"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
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

  # Sometimes different languages can serve the latest beta version as Thunderbird Daily.app
  rename "Thunderbird*.app", "Thunderbird Beta.app"

  app "Thunderbird Beta.app"

  uninstall quit: "org.mozilla.thunderbirdbeta"

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
