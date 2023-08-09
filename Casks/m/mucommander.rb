cask "mucommander" do
  version "1.3.0-1"
  sha256 "55c8fbc57ab646d6a6683a6f42a79513e9251189e385097496b1cce9445482d0"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/muCommander-#{version}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  app "muCommander.app"

  zap trash: "~/Library/Preferences/muCommander"
end
