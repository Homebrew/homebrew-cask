cask "rclone-ui" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "3.7.5"
  sha256 arm:          "0fe8367034b14a9ed28a4fedfd1cda17c75c3a531ac159ef6eb0ea92f9ae500b",
         intel:        "3322e9dc7c0d704cd7234ddf43b8ffcc631250e57110d067f15d591fb925989d",
         arm64_linux:  "b4279112d32178693ffa01fec3a25618923ab0b28f0da43e2678173bcd81db20",
         x86_64_linux: "0f781240c6cbaa142e9b534957a920d661e842439ecc19df6acaa50692b09417"

  on_macos do
    depends_on macos: :ventura

    app "Rclone UI.app"

    uninstall quit: "com.rclone.ui"

    zap trash: [
      "~/Library/Application Support/com.rclone.ui",
      "~/Library/Caches/com.rclone.ui",
      "~/Library/HTTPStorages/com.rclone.ui.binarycookies",
      "~/Library/Logs/com.rclone.ui",
      "~/Library/Preferences/com.rclone.ui.plist",
      "~/Library/Saved Application State/com.rclone.ui.savedState",
      "~/Library/WebKit/com.rclone.ui",
    ]
  end
  on_linux do
    app_image "Rclone.UI_#{arch}.AppImage", target: "Rclone UI.AppImage"

    zap trash: [
      "~/.cache/com.rclone.ui",
      "~/.config/com.rclone.ui",
      "~/.local/share/com.rclone.ui",
    ]
  end

  url "https://github.com/rclone-ui/rclone-ui/releases/download/v#{version}/Rclone.UI_#{arch}.#{os}"
  name "Rclone UI"
  desc "GUI for Rclone"
  homepage "https://github.com/rclone-ui/rclone-ui"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
