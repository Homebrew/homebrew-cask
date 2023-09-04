cask "sidequest" do
  arch arm: "-arm64"

  version "0.10.38"
  sha256 arm:   "b523d1941759058b332820dac5724eaa4eb3a2f21dd3af3d03d3b712fe0d3e60",
         intel: "d203d0eb04ac12ec9a80a42dc3cea283f1958115376dc62fe4cdc18df5554751"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
