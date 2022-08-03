cask "sidequest" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.10.28"

  if Hardware::CPU.intel?
    sha256 "0d063dd765f9409d587406a097ad236b6fd048844154c750ebd61cb8be366e28"
  else
    sha256 "1e6405857c4ff7f0f0d9e299f3a4fc87456d2a96a7e10d0ad1c635ef85a38ddb"
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
