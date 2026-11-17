cask "rclone-ui" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "3.7.6"
  sha256 arm:          "f7f1dc8195708cb1371eb23e4962f66c2dea5dd01ad80d047e5997fc2691bcc1",
         intel:        "d864fddd4a2a6ef02fac49940ff31b1973c5aa567d84bf70d9d633acf2697bc5",
         arm64_linux:  "2ccb9db087353f0d29db5e28eb0ca3934bb971e1e15b31622c38522292997312",
         x86_64_linux: "4d66440f1bcd790ecb19625cef580992613f022cbad3743c3bfd2600e4dd1e99"

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
