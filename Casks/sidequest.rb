cask "sidequest" do
  version "0.10.26"
  sha256 "92d7c4eaf165765c210035ce60bc0cfb1d75a93eb646e153ace68b2d52097ec4"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
