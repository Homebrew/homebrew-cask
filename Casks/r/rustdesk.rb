cask "rustdesk" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "dmg", linux: "AppImage"

  version "1.4.9"
  sha256 arm:          "f7935597b247d42c8f2a2ed71176a9f5868018cd9e1a33b8096418a668c8caf0",
         intel:        "fa1129a0635019f9c5841937942cc2b08be028a192f47c009edde7e53812904e",
         arm64_linux:  "a955a100d9c83ec7265a14ed74cf84368fce70fa9f3943b3996dab05599cc844",
         x86_64_linux: "7902cd60a4f29817eebe2668a15c9a1952ac690e8f7b07bfe7620fedd4e28217"

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
