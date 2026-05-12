cask "thunderbird@beta" do
  version "151.0b3"

  language "cs" do
    sha256 "3d22773393034ba94daadf6c2a6b8ca3ca6ae2b563d9e724e2146fa8b78c2676"
    "cs"
  end
  language "de" do
    sha256 "06f0af7a0320d611d4fb28476187876c4884666e1968dd2df7ed4ce15bc36051"
    "de"
  end
  language "en-GB" do
    sha256 "63045cfc1ae2e09720a8fe15bb0b6aa5fa79a740210fe30705086910cdf574d1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "106007dd705a088350f2509388ba516401ff2d8482b6ee115d5d1dea354043bd"
    "en-US"
  end
  language "fr" do
    sha256 "20aed113bf6699c591aee8aeb6f681c68543d024c8bf827028dc7f5eac31d892"
    "fr"
  end
  language "gl" do
    sha256 "40ec623e91fdd8e959c52841c6f988068086ed935bc076ae70e008860302bb87"
    "gl"
  end
  language "it" do
    sha256 "e9bbb8b97a1d8086b914272ade0f8ab1ea6c083d421203e2cdf73053adbd92c1"
    "it"
  end
  language "ja" do
    sha256 "21cfc2193991df12abcecbff09734a734d4d551960981f3c5cf78ee2a6ef36be"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "82af02854199a6abc8e56127a0b565eb271d4f8cc935096102cfa99aea9567b4"
    "nl"
  end
  language "pl" do
    sha256 "eb1c0c0799568a994bc41b3c76b664a98bdcafc7edfa33c259d08df90378228b"
    "pl"
  end
  language "pt" do
    sha256 "cf479c9743af9d3bb6dd8b8117366ec49b6095317c5c1ee810a66cf4bc85939b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ae861ba26f3f60b37daa465fa868fe8c986a050053445f43098fb8becb414a85"
    "pt-BR"
  end
  language "ru" do
    sha256 "f8ce7cfae27798d627257f6a2a39751c6a67f748adca241b4fa5f39073afd004"
    "ru"
  end
  language "uk" do
    sha256 "41d44a619174d2f673322779bafd03b5bfcd31fd713cb2ad4b15eec8ff165d12"
    "uk"
  end
  language "zh-TW" do
    sha256 "258f255b835929ad2985ee30eed845be34319238ec312dfbe3ec15a55d9be68d"
    "zh-TW"
  end
  language "zh" do
    sha256 "28d703eae432c9379b8b7b44d37106e3240eb2d6cfe93d34d8c5ebb143f547bc"
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
