cask "deviceshelf" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "dmg", linux: "AppImage"

  version "1.9.53"
  sha256 arm:          "bd7fd7d3ddbbd4b362fe2c76130f72932b6501f343a62bc88ee0925b1931d5fb",
         intel:        "bd7fd7d3ddbbd4b362fe2c76130f72932b6501f343a62bc88ee0925b1931d5fb",
         arm64_linux:  "4c1b2c96fed065b553e81e8a0d7bc41a6f9fb8da31baef61294a0aef71111980",
         x86_64_linux: "81c492cfc37dc59f8711c0a27fbab4cefc9e7a1abee9674d1cf8980a2b98b668"

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
