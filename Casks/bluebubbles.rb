cask "bluebubbles" do
  version "1.3.0"
  sha256 "8c75146268bc92fea080c7eb8cca4b6e30b3c7e44d1fbdfc6fac2315de41039e"

  url "https://github.com/BlueBubblesApp/bluebubbles-server/releases/download/v#{version}/BlueBubbles-#{version}.dmg",
      verified: "github.com/BlueBubblesApp/bluebubbles-server"
  name "BlueBubbles"
  desc "Server for forwarding iMessages to clients within the BlueBubbles App ecosystem"
  homepage "https://bluebubbles.app/"

  app "BlueBubbles.app"

  zap trash: [
    "~/Library/Application Support/@bluebubbles",
    "~/Library/Application Support/bluebubbles-server",
    "~/Library/Logs/@bluebubbles",
    "~/Library/Logs/bluebubbles-server",
    "~/Library/Preferences/com.BlueBubbles.BlueBubbles-Server.plist",
    "~/Library/Saved Application State/com.BlueBubbles.BlueBubbles-Server.savedState",
  ]
end
