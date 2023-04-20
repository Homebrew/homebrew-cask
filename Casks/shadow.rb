cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10059"
  sha256 arm:   "2f9b8a06716d27aabb3583c60898b91ad3df34c441ccb3be7147aee6c7fb09b9",
         intel: "d9b8a67c71d7fafc933f2c3fa76664bdbb5ef88f8f323e40521cdd9dd9f0b8ce"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/Shadow-#{version}.dmg"
  name "Shadow"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
