cask "sidequest" do
  arch arm: "-arm64"

  version "0.10.32"
  sha256 arm:   "76e77a38972ddda0a79ae6cd7fdd4ccc3e9d1faf657d7d0480ac91b387781a97",
         intel: "fd8b8e6ca7a07af501c1660edff52d3e1d888527c57425e42ba9f38ea1c7f75f"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
