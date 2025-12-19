cask "thunderbird@beta" do
  version "147.0b3"

  language "cs" do
    sha256 "d8b5ac0cdaca5e9863294cc473554204539ec34bf923e3ad6f65d5119b84440d"
    "cs"
  end
  language "de" do
    sha256 "88aa329a414fac61bc0844af59ac8d987e75878498938833756ddbf34a22803e"
    "de"
  end
  language "en-GB" do
    sha256 "15b9fd34cc5d8477b75c79221a66179ff46417bd428120c7ab896c76fb6acfb7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "da055253cd58fc2f24f6f4d75311f7d05214d31f629cfa26b478aa4207097eb3"
    "en-US"
  end
  language "fr" do
    sha256 "961529cdc1b36770e5a1fc9b689574d8f0575a39f0c83c3e7167b78baecfd564"
    "fr"
  end
  language "gl" do
    sha256 "386c9ceabee376ab376b1b5a8c05205d316994f676eb495c2797454b18a23b47"
    "gl"
  end
  language "it" do
    sha256 "d094140ff4647ad967089a003ceeb8056561edf06f9936ff51d278e7b608634b"
    "it"
  end
  language "ja" do
    sha256 "6178e34865fe5df64b35655737ba33bf0223d2b52355d24a2e1534813c236d8b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "20e06aca9fe805542ff2096ad25a1e0aa27039c0e300fd4c90958b76c98891f3"
    "nl"
  end
  language "pl" do
    sha256 "12c04512cd746e088cec3937b9ec105aa6f052e91587db73d6d409475946378f"
    "pl"
  end
  language "pt" do
    sha256 "1a9aedc71d66d706a0875d65988fdf481a5b5746b1bc66cc45f45e1bee83722c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d50fe9b0b8ff77be63bc7ed67d59915c5c2266b4775b3b8f87fc88c67938d7ac"
    "pt-BR"
  end
  language "ru" do
    sha256 "2fbb8a78a9ad7f8b9bbc13a56d98e2e7fb12f186a0151b6ca593fb6b10d34b82"
    "ru"
  end
  language "uk" do
    sha256 "76a099c0deec5a0ca8fdfcffa2df2733f2343cf08f1225914d1f3482444023da"
    "uk"
  end
  language "zh-TW" do
    sha256 "24e08396bd8033e5a5e06e8bb30a09f99ea131d39d6c1eeb465296893c1a01c8"
    "zh-TW"
  end
  language "zh" do
    sha256 "1c60f0af4819dfb7bee42f660f82c22e5edcde651cfe5b16ce209530252aa9f5"
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
