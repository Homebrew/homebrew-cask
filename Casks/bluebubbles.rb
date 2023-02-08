cask "bluebubbles" do
  version "1.5.2"
  sha256 "b09e76ca87bebb0a2f5e239e730b79c34ff832100acb0f420fc2809de32b99b1"

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
