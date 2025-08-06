cask "sidequest" do
  arch arm: "-arm64"

  version "0.10.42"
  sha256 arm:   "2fd14eb70dafbbe245b6b8f81ac30eb7a6699a8993ec6efcdcadc5a9cde9b9b0",
         intel: "cdb9d983dd608487989d7a0116ee07549742ccc206989cb261edd22eed1050a8"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :catalina"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
