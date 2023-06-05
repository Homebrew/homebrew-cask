cask "sidequest" do
  arch arm: "-arm64"

  version "0.10.35"
  sha256 arm:   "70a92078c220700c2f50387beb6bcbbdaef5a854c36643e28ce2074a27c74538",
         intel: "927f4141307d6a5680ea40e91027982556c69b22a238696ec88c146bb2b0850c"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
