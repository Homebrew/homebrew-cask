cask "deviceshelf" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "dmg", linux: "AppImage"

  version "1.9.89"
  sha256 arm:          "ada9511458c45d2c1159feaae5913e6c8bdf002b8bd53f6e4ecc02f9e126c431",
         intel:        "ada9511458c45d2c1159feaae5913e6c8bdf002b8bd53f6e4ecc02f9e126c431",
         arm64_linux:  "702876e6c1a17a4166aa104fe1d58ed7739667727860c2b65bf5539b99894114",
         x86_64_linux: "82b30b94af7c0a7783efe78fb712b74a48b75dc7f2ed9d7dfec3e38a7b3edf88"

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
