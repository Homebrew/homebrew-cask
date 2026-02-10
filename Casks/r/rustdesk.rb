cask "rustdesk" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.4.5"
  sha256 arm:   "e548e194d80ad44f66f7ae33b3d2879a6300201adaa0dbdf6dd2bd3594e3e912",
         intel: "91fe86bed9a0607906ead4d38bcf5297c83c404643342456738b036f9a6c58d4"

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

  depends_on macos: ">= :monterey"

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
