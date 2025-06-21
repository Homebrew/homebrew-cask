cask "space-capsule" do
  version "1.22"
  sha256 "0181166032823d57630629fce27fb75970f9abee0f72d96c069b6ed1bc4380fc"

  url "https://spacecapsule.app/downloads/Space%20Capsule%20#{version}.dmg"
  name "Space Capsule"
  desc "Spaces management tool"
  homepage "https://spacecapsule.app/"

  livecheck do
    url "https://spacecapsule.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Space Capsule.app"

  uninstall quit: "com.knollsoft.Space-Capsule"

  zap trash: [
    "~/Library/Application Support/Space Capsule",
    "~/Library/Caches/com.knollsoft.Space-Capsule",
    "~/Library/Cookies/com.knollsoft.Space-Capsule.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.Space-Capsule",
    "~/Library/HTTPStorages/com.knollsoft.Space-Capsule.binarycookies",
    "~/Library/Preferences/com.knollsoft.Space-Capsule.plist",
    "~/Library/Saved Application State/com.knollsoft.Space-Capsule.savedState",
  ]
end
