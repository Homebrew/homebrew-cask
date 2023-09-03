cask "sidequest" do
  arch arm: "-arm64"

  version "0.10.37"
  sha256 arm:   "3c15e2c33c6c9d6764067591402874833a9af8de136f67b50a68af1128a2987b",
         intel: "bb644b66bf87bc72bab5f366748b1886b6ca898445d8bbf854caad7c0ad73641"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
