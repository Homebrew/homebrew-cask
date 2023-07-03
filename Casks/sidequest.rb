cask "sidequest" do
  arch arm: "-arm64"

  version "0.10.36"
  sha256 arm:   "e8a3d9762b6e403a3ddccf21909d67444a03134bd6a45d7850dc00d03a3ab080",
         intel: "c88275513fc6805e8b049fe3ec1647c1bbe1d30a58d56414e96df31b27cc7da6"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
