cask "ableset" do
  arch arm: "-arm64"

  version "3.0.0"
  sha256 arm:   "4bdb4e68e15516a7c70044ff16b2cd5b917711037eb05e71c9d9f5dfe9ae53dd",
         intel: "ac562ecc7e84d055f9aaad087fcd0fc368ade1924582eae951c75b578833467b"

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
