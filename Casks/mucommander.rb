cask "mucommander" do
  version "1.2.0-2"
  sha256 "d5e386d62b01ed7614b15a3fb807b21f8c3e650ddbd2b5b8d08c6949ffcd779d"

  url "https://github.com/mucommander/mucommander/releases/download/1.2.0-1/muCommander-#{version}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  app "muCommander.app"
end
