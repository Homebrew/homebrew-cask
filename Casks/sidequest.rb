cask "sidequest" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.10.26"

  if Hardware::CPU.intel?
    sha256 "92d7c4eaf165765c210035ce60bc0cfb1d75a93eb646e153ace68b2d52097ec4"
  else
    sha256 "d3fcb61d32883cebd115c4108958e8b66e1e9759abb912902a44ad46a2bc6eaa"
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
