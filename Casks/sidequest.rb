cask "sidequest" do
  version "0.10.18"
  sha256 "a04aac781b7426234a5891f93e4fdf141a7d1fe9e6f2253572b0601f1d8e356a"

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
