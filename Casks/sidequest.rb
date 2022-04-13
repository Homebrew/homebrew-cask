cask "sidequest" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.10.27"

  if Hardware::CPU.intel?
    sha256 "76885203565cc80c711e9fb9d0c3d75f659dffc1aaa43cc7f4693b89a321b16c"
  else
    sha256 "5323ab6f2165017c90ca166916f352ebb25d98e1cce25e11a3f4b5ae427e2c04"
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
