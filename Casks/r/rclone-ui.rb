cask "rclone-ui" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "3.7.7"
  sha256 arm:          "5713f66e75e38c63dc10768f33f9b9ff76b01b766d418a20dc8a9affe5c593cf",
         intel:        "72308d74b8f17e61265364eeae74794bb691cb9fe4947cd81c0f2a514b871d72",
         arm64_linux:  "3bc0dc4a2b025834212ee7e0cc2b6dc63b54c4c2c893d134bea8230702ad40d2",
         x86_64_linux: "11b26fdcc456586e02eaa8ba1c0f2d448b9fffc4ed0c7bbc9b43e6c8cd580f27"

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
