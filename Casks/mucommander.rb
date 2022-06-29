cask "mucommander" do
  version "1.0.0-1"
  sha256 "7af739c4807202ce56dac95ab980ae0f3ca6abf06393b6ab68382cc67301bae9"

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
