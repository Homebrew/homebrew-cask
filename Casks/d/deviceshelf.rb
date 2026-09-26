cask "deviceshelf" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "dmg", linux: "AppImage"

  version "1.9.62"
  sha256 arm:          "ff625b7fcc90f6a04b8b2d9fbf8d05f157e33113c75549586e0d2bdc9e79d8dc",
         intel:        "ff625b7fcc90f6a04b8b2d9fbf8d05f157e33113c75549586e0d2bdc9e79d8dc",
         arm64_linux:  "6cf3003320b57ec0118fe5aa3b7f291aaceaadf06baa22362bff5fbf74e1f792",
         x86_64_linux: "8bab3fbec2e4719d0d6660deb7c12008b90de42e96e243a6dd197dddec4726cf"

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
