cask "esphome-device-builder" do
  os macos: "dmg", linux: "AppImage"

  version "1.1.3"
  sha256 arm:          "48e7e7aecf6c0d7617eb7bd9a05a930448434b2648e0d62fbec39966dbbb9f3b",
         intel:        "d142e7991af9e1ece7edff2b504d827debacc925023eb32e4efd3088b5aa0df7",
         arm64_linux:  "ad85fc67a8ae4b341c4d27526949582780c30dc0df292e555ce6a16c94b05ec7",
         x86_64_linux: "a9d876d6ca6d1e075d2a80881c3de28abe5920acff10711854a649bdafdceae1"

  on_macos do
    arch arm: "aarch64", intel: "x64"

    auto_updates true
    depends_on macos: :catalina

    app "ESPHome Device Builder.app"
    binary "#{appdir}/ESPHome Device Builder.app/Contents/MacOS/esphome-desktop"

    uninstall quit:  "io.esphome.builder",
              trash: "~/Library/LaunchAgents/ESPHome Device Builder.plist"

    zap trash: "~/Library/Application Support/io.esphome.builder"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"

    app_image "ESPHome.Device.Builder_#{version}_#{arch}.AppImage", target: "ESPHome Device Builder.AppImage"
  end

  url "https://github.com/esphome/esphome-desktop/releases/download/v#{version}/ESPHome.Device.Builder_#{version}_#{arch}.#{os}",
      verified: "github.com/esphome/esphome-desktop/"
  name "ESPHome Device Builder"
  desc "Desktop app to create, edit and install your ESPHome device configurations"
  homepage "https://desktop.esphome.io/"

  livecheck do
    url "https://github.com/esphome/esphome-desktop/releases/latest/download/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end
end
