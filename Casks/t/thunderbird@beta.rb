cask "thunderbird@beta" do
  version "148.0b1"

  language "cs" do
    sha256 "3fbb5d397ce11099023f2a3b16708ee3db1881fdb34a8c9d2ca76e2a9bba9e4f"
    "cs"
  end
  language "de" do
    sha256 "182bfe72385648f4ad9411135ec4e5f6184cf8da817ea4e5634dec2b32c54090"
    "de"
  end
  language "en-GB" do
    sha256 "7824bc553bfa2bdfba61017f623306a21eb25233f8ced27abd1dbdfc7adfe397"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c5351eae3d105fa4b2aedbec44d974a2fe695805b0593c8bf2cc7712c71f94a3"
    "en-US"
  end
  language "fr" do
    sha256 "998309a24613ba92643c1e646f5e1d28f536f2fb05232dd4d1367b270710a2bd"
    "fr"
  end
  language "gl" do
    sha256 "05290e6b8c7039efdd7fa68beda212ddeb9e3a04c390e5696680cd215749962f"
    "gl"
  end
  language "it" do
    sha256 "8e6292325f3553db6555c8f2ed2ae36dacfd18ffdcfb75c9ca5d88998f457636"
    "it"
  end
  language "ja" do
    sha256 "54d5334f6874f682546253075976a77be20111303a1798c5cdb6007a63de4cf0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7b46f83cc7c26764bf7b057deedb4148bf41a3a2daa07b568d353fc0dfc45034"
    "nl"
  end
  language "pl" do
    sha256 "adb9d17f3646554808be41dfd3dec5fb7357ab69440f7118baf3738b318aca56"
    "pl"
  end
  language "pt" do
    sha256 "b701236898362ebf1d51d1524d02593a531ec552c21cd9351f724e3e6165de32"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2b8d5603bf129ea6c896290d40aad29bd8a6c2e510b84e0757e04b483312ac85"
    "pt-BR"
  end
  language "ru" do
    sha256 "29e0fb36ce64ea30919615e6e5001bef5f1f5c2204371fb623943f7b22d67612"
    "ru"
  end
  language "uk" do
    sha256 "55b98ce54241b62be291a261c1110be349ae75570f9e679bb63bb047186e463c"
    "uk"
  end
  language "zh-TW" do
    sha256 "7bb444f65fdafabb751f876eab1ae254010f8bcc7e64a1a8bb7cb097522dd537"
    "zh-TW"
  end
  language "zh" do
    sha256 "76be8e85c633f17287b4caac60748b7e3f86fd17d7e8975c9de3d472986e1bff"
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
