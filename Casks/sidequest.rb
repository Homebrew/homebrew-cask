cask "sidequest" do
  version "0.10.15"
  sha256 "9cf39a748c8456bc2f533f697de693907bdc76d0369aa97385fe3637899976ce"

  # github.com/SideQuestVR/SideQuest/ was verified as official when first introduced to the cask
  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg"
  appcast "https://github.com/SideQuestVR/SideQuest/releases.atom"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
