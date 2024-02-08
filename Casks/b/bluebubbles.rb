cask "bluebubbles" do
  version "1.9.5"
  sha256 "df2c70c51a6845b7706ce465aa7e0910c023aba23cf8af891e040a254306f788"

  url "https://github.com/BlueBubblesApp/bluebubbles-server/releases/download/v#{version}/BlueBubbles-#{version}.dmg",
      verified: "github.com/BlueBubblesApp/bluebubbles-server/"
  name "BlueBubbles"
  desc "Server for forwarding iMessages"
  homepage "https://bluebubbles.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "BlueBubbles.app"

  uninstall launchctl:  "com.BlueBubbles.BlueBubbles-Server.ShipIt",
            quit:       [
              "com.BlueBubbles.BlueBubbles-Server",
              "com.BlueBubbles.BlueBubbles-Server.helper",
              "com.BlueBubbles.BlueBubbles-Server.helper.GPU",
              "com.BlueBubbles.BlueBubbles-Server.helper.Plugin",
              "com.BlueBubbles.BlueBubbles-Server.helper.Renderer",
              "com.bluebubbles.messaging",
            ],
            login_item: "BlueBubbles"

  zap trash: [
    "~/Library/Application Support/@bluebubbles",
    "~/Library/Application Support/bluebubbles-server",
    "~/Library/Logs/@bluebubbles",
    "~/Library/Logs/bluebubbles-server",
    "~/Library/Preferences/com.BlueBubbles.BlueBubbles-Server.plist",
    "~/Library/Saved Application State/com.BlueBubbles.BlueBubbles-Server.savedState",
  ]
end
