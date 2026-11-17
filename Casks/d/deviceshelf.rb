cask "deviceshelf" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "dmg", linux: "AppImage"

  version "1.9.91"
  sha256 arm:          "6b09098f2da416e92ab2ba897ce4ba318295fca6cf244228f86636077f58bc3c",
         intel:        "6b09098f2da416e92ab2ba897ce4ba318295fca6cf244228f86636077f58bc3c",
         arm64_linux:  "c84cd5d9c236a62fc52e35f22c134309dd56a743a8b7676b88f59ebf2477386b",
         x86_64_linux: "5b9d47105d5a33f71bfeab58f27c76881a081cff7e72e9ac0331b420d152c3d5"

  on_macos do
    app "DeviceShelf.app"

    uninstall launchctl: "app.deviceshelf.ChmodBPF",
              quit:      "com.wails.DeviceShelf",
              delete:    [
                "/Library/Application Support/DeviceShelf/ChmodBPF",
                "/Library/LaunchDaemons/app.deviceshelf.ChmodBPF.plist",
              ]

    zap trash: [
      "/Library/Application Support/DeviceShelf",
      "~/Library/Application Support/DeviceShelf",
      "~/Library/Caches/com.wails.DeviceShelf",
      "~/Library/Preferences/com.wails.DeviceShelf.plist",
      "~/Library/Saved Application State/com.wails.DeviceShelf.savedState",
      "~/Library/WebKit/com.wails.DeviceShelf",
    ]
  end
  on_linux do
    app_image "DeviceShelf-#{version}#{arch}.AppImage", target: "DeviceShelf.AppImage"

    zap trash: "~/.config/DeviceShelf"
  end

  url "https://downloads.deviceshelf.app/DeviceShelf-#{version}#{arch}.#{os}"
  name "DeviceShelf"
  desc "Scanner for devices, open ports and security risks on the local network"
  homepage "https://deviceshelf.app/"

  livecheck do
    url "https://deviceshelf.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end
end
