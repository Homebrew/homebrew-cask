cask "notesnook" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"
  livecheck_folder = on_system_conditional macos: "darwin", linux: "linux"

  version "3.4.13"
  sha256 arm:          "b3cd3ddf0d272fdd2e200cb8d59e3d9c336c4d5a6fbfd4c6b9eab5c6fcbcf3ca",
         intel:        "9e364d106448492cb7df3d7d50cdd953ff1a27af887edc5885f7deda14894d16",
         arm64_linux:  "ba8e626cf15c20636217784fa9c65b3a4287ae4996dac723e50eb505b9441c2f",
         x86_64_linux: "b6788c39649871385c3a1052244015cd63775ea57fe94a57042fcbd8d52a1b0f"

  on_macos do
    app "Notesnook.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.streetwriters.notesnook.sfl*",
      "~/Library/Application Support/Notesnook",
      "~/Library/Logs/Notesnook",
      "~/Library/Preferences/com.streetwriters.notesnook.plist",
      "~/Library/Preferences/org.streetwriters.notesnook.plist",
    ]
  end
  on_linux do
    app_image "notesnook_linux_#{arch}.AppImage", target: "Notesnook.AppImage"

    zap trash: [
      "~/.cache/@notesnookdesktop-updater",
      "~/.cache/notesnook",
      "~/.config/autostart/notesnook.desktop",
      "~/.config/Notesnook",
    ]
  end

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_#{os}_#{arch}.#{url_end}"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/api/v1/releases/#{livecheck_folder}/latest/latest-#{os}.yml"
    strategy :electron_builder
  end

  auto_updates true
end
