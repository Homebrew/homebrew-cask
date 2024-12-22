cask "rustdesk" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.3.6"
  sha256 arm:   "616a944ba9ba7c7dcdf7787f5dff78b73281f1c9fe55dce0e71ec4fa509c4ca3",
         intel: "0dfd40a2bb542468efe2257f7d93bff02b82572b445407ced3f619b16e32d0aa"

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
