cask "sidequest" do
  arch arm: "-arm64"

  version "0.10.41"
  sha256 arm:   "e34ac28fac468d9ceff42e079c9e1409338f9cdb10ab0dfa3090dca5d98cf025",
         intel: "67cb3ad93922cfe4ae45b5b5293ec4b8892b2bc846e5735d95ed7034e4574fb6"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
