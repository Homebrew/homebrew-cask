cask "mucommander" do
  version "1.1.0-1"
  sha256 "026de5992853d1bc28d8989ffec14fd9c3007ff2768ed8c6a5f96f912e8e62ed"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/muCommander-#{version}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  app "muCommander.app"
end
