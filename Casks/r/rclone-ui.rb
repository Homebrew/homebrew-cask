cask "rclone-ui" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "3.7.5"
  sha256 arm:          "f2f315d82671e122da7182a62e4abbac2d04bbfce8a0460fc0b6b6e23b1f481d",
         intel:        "db376085a15265d1a9133a7f9b08850ff961b44a4645597fbba7002dba0b8c81",
         arm64_linux:  "4466fb1b24131323e4518492fbc4c5e672b7c98131b801e74061df80f9301502",
         x86_64_linux: "68a8b0c9f5fa9510f9093a9b60c6674715953a49bbec84f0cc31c4d524c609db"

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
