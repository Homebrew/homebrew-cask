cask "rustdesk" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "dmg", linux: "AppImage"

  version "1.5.0"
  sha256 arm:          "3929b0a4321e7d0f561a317059798be882d65decc59681eb77061f8efe56fbf4",
         intel:        "1ca3cbfbe7f2bd28b50c93fcd50d4a0b671dc76d18be27cea99d3a65767eb526",
         arm64_linux:  "7a5d56ffb9f90650d298b39f682b33f5ee55e8acd7360033c7027f37e69c069f",
         x86_64_linux: "422ebb915b4c709f3511cfa2941abcefdcb1d3d60f673f5a20cf88a4ab2c9aa5"

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
