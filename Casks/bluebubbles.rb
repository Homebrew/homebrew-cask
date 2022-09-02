cask "bluebubbles" do
  version "1.2.3"
  sha256 "06a8dbb3fc4b5b0065434722c738093018738fd4cd066b4e727453d5b9d93ade"

  url "https://github.com/BlueBubblesApp/bluebubbles-server/releases/download/v#{version}/BlueBubbles-#{version}.dmg",
      verified: "github.com/BlueBubblesApp/bluebubbles-server"
  name "BlueBubbles"
  desc "Server for forwarding iMessages to clients within the BlueBubbles App ecosystem"
  homepage "https://bluebubbles.app/"

  app "BlueBubbles.app"
end
