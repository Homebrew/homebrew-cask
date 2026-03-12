cask "ableset" do
  arch arm: "-arm64"

  version "3.0.7"
  sha256 arm:   "ce1ba66e45c37d4f3cb2cd5f6b7466bc35d15c61faeb3bb1644e5bbb1df377d3",
         intel: "09facb38b031af3ebbcbf6e35fc3dd078278d33bded4528d227219f9aec3c6a1"

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
