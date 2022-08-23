cask "sidequest" do
  arch arm: "-arm64"

  version "0.10.31"
  sha256 arm:   "9d060ae49beb33bb70cbc0253f5ef5b33275ffc146b23d2461b60bf084ae08fa",
         intel: "6639bf7b29b7cdf274c667d4ff490d600b3732d8323cd052703080a4b4ada80f"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
