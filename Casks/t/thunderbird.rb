cask "thunderbird" do
  version "115.4.1"

  language "cs" do
    sha256 "f1d9a64dbe7d6b99d0d36dc1225532032182bf99fd51d9487a9e40eedb910c58"
    "cs"
  end
  language "de" do
    sha256 "375ff67bf181fba49887a9f84f8ca47aa9f009c225b7154e594f466122b56dfb"
    "de"
  end
  language "en-GB" do
    sha256 "1e8e125c2905cfa5911c0ccbcbe991282c017d93c6896780ec6e4222ebba902d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ad2ce79746aa9e21014ae6de075c7f0dfbb44472c33f4a004a36161e5ba95dec"
    "en-US"
  end
  language "fr" do
    sha256 "d95fc083b0f662bc2de126a5150956728d23309f2204a11905c82062f6b0fcb9"
    "fr"
  end
  language "gl" do
    sha256 "25ab92b109691516e97b5edbb7546c0a72831e42c92075e12c78425c1b6fa750"
    "gl"
  end
  language "it" do
    sha256 "a0ca181d2a652863bcadf40aa8dc3c8d4b5998e94c8941e76b1cadba80e9aa40"
    "it"
  end
  language "ja" do
    sha256 "7ab635023b8e86981bd0b04ff75192969a6013373c34c4ec81b48ebc747ffc3b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4ec579d289625db96040c1405e0a5e1bed6134ec3051653efad2c3357dc91dd1"
    "nl"
  end
  language "pl" do
    sha256 "0555834edd917b248d708c5874617e926ed1481d0b9554f42a584bdaeb68dfc6"
    "pl"
  end
  language "pt" do
    sha256 "e528177f17eb6814f1b477d96e5656a57713b2a11b9cb5501665200d15fe94bc"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e9f2fab4cf0f1237f91ea0dc19c6e5e0e240a2d9897058c6cc52b72cac591039"
    "pt-BR"
  end
  language "ru" do
    sha256 "4650abd3f0e83d76e7facd8a74b8c00a6ee357c3ae3a0626beda6324c493e2a0"
    "ru"
  end
  language "uk" do
    sha256 "566d9c34db564af07d8db4e539c189e21fb4f3d56576ab186b7e8cb5a5107cdf"
    "uk"
  end
  language "zh-TW" do
    sha256 "c7b2de69b3d5849a9916e8833e31ee9b0e51bbff9ca980c72e9927de4146570e"
    "zh-TW"
  end
  language "zh" do
    sha256 "f1159ae1be508d0f1e90f01253e78fafe3371f9b90ffe74459cbddd3a90f7d70"
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
