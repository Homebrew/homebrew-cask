cask "rustdesk" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.6"
  sha256 arm:   "6ce117b199c12e66b2245e13e0d9ce57ccc8cf95d20f13153323f93fcdcc9b1c",
         intel: "ee560ebd5aac8191026f60a313ac7bf7315cc20a634ed41b37df88c16b248625"

  url "https://github.com/rustdesk/rustdesk/releases/download/#{version}/rustdesk-#{version}-#{arch}.dmg",
      verified: "github.com/rustdesk/rustdesk/"
  name "RustDesk"
  desc "Open source virtual/remote desktop application"
  homepage "https://rustdesk.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :github_latest
  end

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
