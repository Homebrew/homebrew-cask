cask "sidequest" do
  version "0.10.17"
  sha256 "2ff5f23083af9084c2072c52aa11b2a3634eddd0b7da943363bc793be47d45ab"

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
