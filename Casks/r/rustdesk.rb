cask "rustdesk" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.3.0"
  sha256 arm:   "6a183f775ab53a26ca6af49818201a56771f35d9648ad82cfe85460b49606a73",
         intel: "d3ce403b8f98e5d6bce33bdc48a1d9b264d06edec89a7bf3237fb3e3b76fd93b"

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
