cask "sidequest" do
  arch arm: "-arm64"

  version "1.0.0"
  sha256 arm:   "0fdf37fcba8b5ad3c1141abe45286c7adfc99c4932ac1c41a96af34f18fa65df",
         intel: "5b2d0c2ca61aa073a9ec8756bf507eb748597c23a1b2f95adb1eca023e79002a"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on :macos

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
