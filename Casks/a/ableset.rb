cask "ableset" do
  arch arm: "-arm64"

  version "2.7.3"
  sha256 arm:   "108e01ea895167cb166bb31d10dd305db8fedab56e2de4be28e0b7445bd440b4",
         intel: "a7eefc8d0cbdfb9558c23f9d3400f34b995f5e98ba7b69837ced84c8f6cc3515"

  url "https://s3.amazonaws.com/download.ableset.app/mac#{arch}/AbleSet-#{version}#{arch}.dmg",
      verified: "s3.amazonaws.com/download.ableset.app/"
  name "AbleSet"
  desc "Ableton setlist manager"
  homepage "https://ableset.app/"

  livecheck do
    url "https://s3.amazonaws.com/download.ableset.app/mac#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "AbleSet.app"

  zap trash: [
    "~/Library/Application Support/ableset",
    "~/Library/Caches/ableset-updater",
    "~/Library/Caches/ableset_controller",
    "~/Library/Caches/org.leolabs.ableset",
    "~/Library/Caches/org.leolabs.ableset.Shipit",
    "~/Library/HTTPStorages/org.leolabs.ableset",
    "~/Library/Preferences/org.leolabs.ableset.plist",
    "~/Library/Saved Application State/org.leolabs.ableset.savedState",
  ]
end
