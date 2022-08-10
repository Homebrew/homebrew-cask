cask "sidequest" do
  arch arm: "-arm64"

  version "0.10.30"

  if Hardware::CPU.intel?
    sha256 "80c17aa903281d9f118b0d2f36b8fc1772fd6407a7b1dfb36bb1ec9009df8149"
  else
    sha256 "c2ee70020593f072a5229033c045d3b17dec6ef6921996c667dd2c6a2a8eb546"
  end

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg",
      verified: "github.com/SideQuestVR/SideQuest/"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: ">= :sierra"

  app "SideQuest.app"

  zap trash: "~/Library/Application Support/SideQuest"
end
