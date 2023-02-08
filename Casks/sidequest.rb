cask "sidequest" do
  arch arm: "-arm64"

  version "0.10.33"
  sha256 arm:   "a4276c9b9b7f939f0f0e7104cacfb3a27c3aa48174277d4b3d86318bf938367f",
         intel: "2dd11bb6edd4bb041d0b7357d317d2b5825b3675b63954c5edb38508ed3bc85b"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
