cask "notesnook" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"
  livecheck_folder = on_system_conditional macos: "darwin", linux: "linux"

  version "3.4.9"
  sha256 arm:          "be12769bbd74eceac121a9eb92414c2264b85c2b1ca8ea218b0703b8a25663e1",
         intel:        "6945971633d8bce923a145e166b35473c56abab75b6f0f1ccfcedd970a38c5c3",
         arm64_linux:  "3b60969aec90f482e3b4346cf43aa77aa1066f20fd0d6317db516c1bf5b5a8da",
         x86_64_linux: "2bb6e42d97240156099cba498e4e17a4635c8e2981b50fb03d84ea46e0fbaafe"

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
