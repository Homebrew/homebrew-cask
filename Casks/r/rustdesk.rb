cask "rustdesk" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "dmg", linux: "AppImage"

  version "1.5.3"
  sha256 arm:          "e6d30fa1633d772c48935907c208ca4e555a856fb2038af3aaa87a327c29360b",
         intel:        "74d06e6b2e273a128e8d36313e30d47db2063f453a4235ed4d9e5cdfdf9be538",
         arm64_linux:  "924c8dee36cbd7873ba222979ea1e3274c5537c382321504edf1be824e7cde37",
         x86_64_linux: "ff7fff208fed218fc9f895457a36cc2dd31fefbfae0461a27b54f3d391204506"

  on_macos do
    depends_on macos: :monterey

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
  on_linux do
    app_image "rustdesk-#{version}-#{arch}.AppImage", target: "RustDesk.AppImage"

    zap trash: [
      "~/.config/rustdesk",
      "~/.local/share/logs/RustDesk",
    ]
  end

  url "https://github.com/rustdesk/rustdesk/releases/download/#{version}/rustdesk-#{version}-#{arch}.#{os}"
  name "RustDesk"
  desc "Open source virtual/remote desktop application"
  homepage "https://rustdesk.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :github_latest
  end
end
