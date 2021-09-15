cask "mucommander" do
  version "0.9.7-1"
  sha256 "ee3598069ba9081a8ad7ffd81714bc7aef78bdaef55cd64f03ebe910f9fc9a33"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/mucommander-#{version}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  app "muCommander.app"
end
