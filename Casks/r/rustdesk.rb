cask "rustdesk" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "dmg", linux: "AppImage"

  version "1.5.1"
  sha256 arm:          "1b94182cba2375ea29a196f2c8183f7feaa00588474ecd76c92c2303ffd70d7b",
         intel:        "457e45a26d3f0919221e6db3dfb8c6a12ca65190307b53a907c3c51b762eb008",
         arm64_linux:  "47c1be6f26ee261101ed155bcd1923ab682ebfc5bc546e5b4399cb1a5b4097ed",
         x86_64_linux: "bb8b7ccb3f50a201dccdc89b46385cff90f33e60b4730faeda9fa5504ac4dce6"

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
