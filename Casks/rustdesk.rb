cask "rustdesk" do
  version "1.1.9"
  sha256 "3b9662a8d5d8a6cc994f6edee132f116f35dee4a8a17c3612b784376f7da931f"

  url "https://github.com/rustdesk/rustdesk/releases/download/#{version}/rustdesk-#{version}.dmg",
      verified: "github.com/rustdesk/rustdesk/"
  name "RustDesk"
  desc "Open source virtual / remote desktop infrastructure for everyone"
  homepage "https://rustdesk.com/"

  depends_on macos: ">= :mojave"

  app "RustDesk.app"

  uninstall quit: "com.carriez.rustdesk"

  zap trash: [
    "/Library/LaunchAgents/com.carriez.RustDesk_server.plist",
    "/Library/LaunchDaemons/com.carriez.RustDesk_service.plist",
    "~/Library/Logs/RustDesk",
    "~/Library/Preferences/com.carriez.RustDesk",
    "~/Library/Saved Application State/com.carriez.rustdesk.savedState",
  ]
end
