cask "ableset" do
  arch arm: "-arm64"

  version "3.0.3"
  sha256 arm:   "49f551dcf65c819704694c5c74ceeddb8182f0acb17a6bf73fabdb320b951b9e",
         intel: "c3887283501e0a46c4b347c2e475741008ff35aad13cb840d319c0313cd08d89"

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
  depends_on macos: ">= :monterey"

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
