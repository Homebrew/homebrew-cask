cask "notesnook" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"
  livecheck_folder = on_system_conditional macos: "darwin", linux: "linux"

  version "3.4.14"
  sha256 arm:          "fe1223184ed5cef97386bd26c9e7ffea018257862ff82b53d72838aed3100dfd",
         intel:        "173abfc8098bb84f8b9d4a8ced2a6246d674ceae9f263efa4272244179059822",
         arm64_linux:  "fb6c0acfc88f6e691e6b488faa7b94322e1ef6cc26db4e049cba7e30885b70d2",
         x86_64_linux: "ee67a8ee98778ac52626ce85c57c01f0c3f8ef5ed328f06206087d6f7f5f2128"

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
