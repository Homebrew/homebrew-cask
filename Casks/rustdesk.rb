cask "rustdesk" do
  version "1.2.0"
  sha256 "6a7b7e54bde69dc8bf40b928edb47bebceded8ba04f4a77f9ea49dd45389fcba"

  url "https://github.com/rustdesk/rustdesk/releases/download/#{version}/rustdesk-#{version}-x86_64.dmg",
      verified: "github.com/rustdesk/rustdesk/"
  name "RustDesk"
  desc "Open source virtual/remote desktop application"
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
