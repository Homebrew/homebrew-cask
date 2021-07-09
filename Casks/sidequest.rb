cask "sidequest" do
  version "0.10.21"
  sha256 "54cd04da607b5d87a671be9525010b6715ce2f52809fc4aad4f923351f24f53a"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
