cask "sidequest" do
  version "0.10.16"
  sha256 "8c8923c8f118990e7283999b37e5199219076cad68acceb4549bc38474ccf5c7"

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
