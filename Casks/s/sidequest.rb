cask "sidequest" do
  arch arm: "-arm64"

  version "1.0.2"
  sha256 arm:   "aa4a201d2482aa144385d6b1cd18933b6cc955b6b8b14365c34d7593317d56e6",
         intel: "05f1659d8f4408208312e346822f87d186ced14f54a6c3967d5b6b018565adaa"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: :monterey

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
