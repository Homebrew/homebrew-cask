cask "brickstore" do
  os macos: "macOS", linux: "Linux-AppImage"
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "2026.9.1"
  sha256 arm:          "f581288a7a20accc28e180377a499d7475e2ed4d9293233d4efe5637935ccb91",
         intel:        "f581288a7a20accc28e180377a499d7475e2ed4d9293233d4efe5637935ccb91",
         x86_64_linux: "156c2e863e79bc7b37ddc329129bb4bf403936659b5a5b84bc17f6fea648ac69"

  on_macos do
    depends_on macos: :ventura

    app "BrickStore.app"

    uninstall quit: "de.brickforge.brickstore"

    zap trash: [
      "~/Library/Preferences/de.brickforge.brickstore.plist",
      "~/Library/Preferences/org.brickstore.BrickStore.plist",
      "~/Library/Saved Application State/de.brickforge.brickstore.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Linux-AppImage-BrickStore-#{version}-x86_64.AppImage", target: "BrickStore.AppImage"
  end

  url "https://github.com/rgriebl/brickstore/releases/download/v#{version}/#{os}-BrickStore-#{version}#{url_end}"
  name "BrickStore"
  desc "BrickLink offline management tool"
  homepage "https://www.brickstore.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
