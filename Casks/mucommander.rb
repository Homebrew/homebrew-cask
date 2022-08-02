cask "mucommander" do
  version "1.0.1-1"
  sha256 "708c18d9cec676191996d4e58c296d31bd91ee62ce311926b2478ee2e8c6b947"

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
