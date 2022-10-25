cask "bluebubbles" do
  version "1.4.0"
  sha256 "189c32e1003f7492ffd0a8228441e7de1d4f60bfd43e3f3114f291588d11fb68"

  url "https://github.com/BlueBubblesApp/bluebubbles-server/releases/download/v#{version}/BlueBubbles-#{version}.dmg",
      verified: "github.com/BlueBubblesApp/bluebubbles-server"
  name "BlueBubbles"
  desc "Server for forwarding iMessages to clients within the BlueBubbles App ecosystem"
  homepage "https://bluebubbles.app/"

  app "BlueBubbles.app"

  uninstall launchctl:  "com.BlueBubbles.BlueBubbles-Server.ShipIt",
            login_item: "BlueBubbles",
            quit:       [
              "com.BlueBubbles.BlueBubbles-Server",
              "com.BlueBubbles.BlueBubbles-Server.helper",
              "com.BlueBubbles.BlueBubbles-Server.helper.GPU",
              "com.BlueBubbles.BlueBubbles-Server.helper.Plugin",
              "com.BlueBubbles.BlueBubbles-Server.helper.Renderer",
              "com.bluebubbles.messaging",
            ]

  zap trash: [
    "~/Library/Application Support/@bluebubbles",
    "~/Library/Application Support/bluebubbles-server",
    "~/Library/Logs/@bluebubbles",
    "~/Library/Logs/bluebubbles-server",
    "~/Library/Preferences/com.BlueBubbles.BlueBubbles-Server.plist",
    "~/Library/Saved Application State/com.BlueBubbles.BlueBubbles-Server.savedState",
  ]
end
