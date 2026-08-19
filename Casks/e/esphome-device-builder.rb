cask "esphome-device-builder" do
  os macos: "dmg", linux: "AppImage"

  version "1.1.0"
  sha256 arm:          "c27559428dc0197736e7041610a5ca8615e0aa6dee0ed128fa9bb25044724638",
         intel:        "dded71756f6929b3889ad4756ec365e892bb3f4d9a54cbe36e55a08b3faf3124",
         arm64_linux:  "c9f9350c515d55426c5bb48ff1af4e482e97b8cdd6759478fc392021dd78ee56",
         x86_64_linux: "bdc64c5f3b509c743bb2d27aea5a23b7bd8f011cddf0c4340887492f04120497"

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
