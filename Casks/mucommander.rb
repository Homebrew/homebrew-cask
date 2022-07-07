cask "mucommander" do
  version "1.0.1-1"
  sha256 "1a2df75b5defa1b69ec2e4a2f9d50d3b8b9c9bcfc312d96dd807fefe807fa38f"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/muCommander-#{version}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  livecheck do
    url "https://github.com/mucommander/mucommander/releases"
    strategy :page_match
    regex(/href=.*?mucommander[._-]v?(\d+(?:\.\d+)+-?\d?)\.dmg/i)
  end

  app "muCommander.app"
end
