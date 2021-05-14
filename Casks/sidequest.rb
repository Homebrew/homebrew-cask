cask "sidequest" do
  version "0.10.20"
  sha256 "9ebdcf72bf2c361769dfdf6f0141ae0fcad20545d3726babf7d8276aead5974d"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
