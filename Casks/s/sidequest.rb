cask "sidequest" do
  arch arm: "-arm64"

  version "0.10.39"
  sha256 arm:   "b95057d72da4c7ad6b33cb4a1cc845cacd8fce6483afec9ef3c417e2397651eb",
         intel: "db6742722381ee25ab216cdcbad6a5ffaadd20ea4e7b3b8394907a97dca349bf"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
