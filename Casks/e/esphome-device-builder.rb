cask "esphome-device-builder" do
  os macos: "dmg", linux: "AppImage"

  version "1.0.2"
  sha256 arm:          "646fb8d4ee5e2573dbadc2759b67e0ddfaad9c9a72bc1d7f83a90e526c49df50",
         intel:        "d3dc20ba9648fde36d2e3aef33c3fc95c710d902b10590371f98b19e2be6cf98",
         arm64_linux:  "8447208521c7169a0a8f0ed08d7ee715fa14141488e771365c3824f10d58bb55",
         x86_64_linux: "a059d59d76b833b7708187f2e067cf0924d77272625f3b36014aa66c03c3c0e8"

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
