cask "thunderbird@beta" do
  version "138.0b4"

  language "cs" do
    sha256 "e717e5eab40a3917404870b206fe64f60f4512b7f125523867cacc611165558b"
    "cs"
  end
  language "de" do
    sha256 "3fb8b872fb8a35d546eb9b86a9b15a1c8289c835682e194327a1cdcc63a73843"
    "de"
  end
  language "en-GB" do
    sha256 "6896cd87a92a98ef36b12cb4eb0db946f537c2a701e7b0b061aa3e60738a5892"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b6e9a6aa524250de45f0c755d2ac6b066802614f83bc3977bd7020a7c4d7568f"
    "en-US"
  end
  language "fr" do
    sha256 "041c2f01c9c559769c966f00bb569c5c177b4bfc2cd4ad53bf17bf502b1f8919"
    "fr"
  end
  language "gl" do
    sha256 "cf7c8eb34c31dec65716158d9919e3a8d2c7703d23e41606b68ff7e0ec942ed5"
    "gl"
  end
  language "it" do
    sha256 "87ba3aa91d0af1014c5790a6593a07d5da5395f6321d1a4571630510a29c5991"
    "it"
  end
  language "ja" do
    sha256 "e3076b6764ad34ea0688ff99e0d1c52f830b065b667c391a58dcea8534d49d87"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8b47349ad4b211151a476dd7fa6c8e4f2cb21fe4f026a143aa04f5ea4a544a28"
    "nl"
  end
  language "pl" do
    sha256 "707d3f06582a620c9786d100101d463cff2798dfcd6b4de644e868806ccb886e"
    "pl"
  end
  language "pt" do
    sha256 "e591d21a4fc315539821ca073749379e0d97dfd455fa82b0b5058d5902568ece"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "15c5f5bc51bc356e99395766a85ae76aec19967e9e6c4d384762b5da78bc8433"
    "pt-BR"
  end
  language "ru" do
    sha256 "91a7fbf41eb0f9e45c6bc91ca8aa3a4876f9b664293fe8bedeb17f1a147be346"
    "ru"
  end
  language "uk" do
    sha256 "830f80830473bd76ab9c70c012b3a81704187f80bb9b5c89bc38d9ca2b7bdf5f"
    "uk"
  end
  language "zh-TW" do
    sha256 "5b3aa845a4e7ae8503c04e7896b8014b2928c3c137cabef187ade7c87cd5f6ce"
    "zh-TW"
  end
  language "zh" do
    sha256 "3f67d3d3c8851d431c9490bd4eca25cde4aa05fcb47e1f15c88000afc569b8e1"
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
  depends_on macos: ">= :catalina"

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
