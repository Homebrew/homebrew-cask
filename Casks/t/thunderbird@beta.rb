cask "thunderbird@beta" do
  version "132.0b6"

  language "cs" do
    sha256 "062f7d530ad3c8bc3d5352b51266cb515e719a9eab3e78bf0414ea18cb7afda4"
    "cs"
  end
  language "de" do
    sha256 "8b0d9237a5363d1a44e7ee07ab3c809c52507497dd0ca772be435e381572882d"
    "de"
  end
  language "en-GB" do
    sha256 "4cef4990c7651187cfc8bec989f4e53c80ba199ee098532092b7ae79afac40f7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b2d924a0a9c43ed6ab943b9aad5cc4a9abea8d174394cc6763b13d04b285a7cf"
    "en-US"
  end
  language "fr" do
    sha256 "6746c5546c78aeedac618144ca54f6af269ce25fdd9c563ab9ceb01e41b72a75"
    "fr"
  end
  language "gl" do
    sha256 "76bac97661eaca16d19d4ecbf951d9869d1ff7ce6b70ba827319b97b72123c50"
    "gl"
  end
  language "it" do
    sha256 "a23d19ed4d9392274880af329d5c6b826ea8eeb2127730cbd6a949f70e5d1a24"
    "it"
  end
  language "ja" do
    sha256 "13d30699f598245789ddd394662ef548c2f596ee3aec111f43dde9863331b2a2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "77cf69daad1f6efe92148ad68be5b56708d16b2f90036b323c1d368379548ff9"
    "nl"
  end
  language "pl" do
    sha256 "d41dc1a67bd14f8e6a238c237df4d00cb98c8738e1a2d8c5d1aa28eca97b5177"
    "pl"
  end
  language "pt" do
    sha256 "56a55792a5609e2a100fce9aeee195decfea99443bc43644fd686d177ce72431"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c486e1acbaf834151330039d9c2bf1fecbef0f56a9ba6ccc3ea69c6541feff2c"
    "pt-BR"
  end
  language "ru" do
    sha256 "5092f72ec7b398c0e63a0e1775e77bcadd161cbf90a01e807f9b630a6f145f54"
    "ru"
  end
  language "uk" do
    sha256 "2b6d91ef4037b9c972d7b43f5458815d799f9323c86b301991b4a3359d63351e"
    "uk"
  end
  language "zh-TW" do
    sha256 "f13ca55637b081fb014aac794ce8721d9653d3c1e0625e29c0f4bd5fedc28b80"
    "zh-TW"
  end
  language "zh" do
    sha256 "cbb4cb2b3366496dd27cf9649f6f803941a2b9a0da334b2d4e36252b252d482b"
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
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird*.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
    "~/Library/Thunderbird",
  ]
end
