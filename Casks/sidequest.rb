cask "sidequest" do
  version "0.10.14"
  sha256 "3f6f398e56f3b2ca4dc7107f5a77ecc188de9dc5629fbc9faea3a9383d7b0b28"

  # github.com/SideQuestVR/SideQuest/ was verified as official when first introduced to the cask
  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg"
  appcast "https://github.com/SideQuestVR/SideQuest/releases.atom"
  name "SideQuest"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
