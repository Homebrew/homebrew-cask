cask "notesnook" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"
  livecheck_folder = on_system_conditional macos: "darwin", linux: "linux"

  version "3.4.8"
  sha256 arm:          "94f23dc0423303f0e48c148a03f12793745d1be9f0f7011b632ce6a7bc900f2d",
         intel:        "5f1a2de29fc5e01f68c98335be34541b7dc2478a09272d1f35917915fa9e177c",
         arm64_linux:  "6ea076415b1ea4ccb30ce435a4e65793aa77470aa498df0f9e1caf94c1898592",
         x86_64_linux: "980b4685800f5cf19e99a45429f363bd8d8b466d10ba965e9c10dc941bf4ddb3"

  on_macos do
    app "Notesnook.app"

    zap trash: [
      "~/Library/Application Support/Notesnook",
      "~/Library/Logs/Notesnook",
      "~/Library/Preferences/com.streetwriters.notesnook.plist",
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
