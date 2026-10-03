cask "deviceshelf" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "dmg", linux: "AppImage"

  version "1.9.70"
  sha256 arm:          "bc0d20bdbbe6dfd0f527939a014ea280471ea1532bc0f3e764a590226eeaa4e2",
         intel:        "bc0d20bdbbe6dfd0f527939a014ea280471ea1532bc0f3e764a590226eeaa4e2",
         arm64_linux:  "13a422e5daed541ae161734ada4d5e1cfd58e883f59b69576e6f6929377835b3",
         x86_64_linux: "27815cf7a32203b35a3b0cb04a110079cbc48781e3722393dc494e25362b755d"

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
