cask "esphome-device-builder" do
  os macos: "dmg", linux: "AppImage"

  version "1.1.2"
  sha256 arm:          "bc0a3da75fd642de4ad7289b170abd44b76c59961a5b1cb8670373fd3a5006bf",
         intel:        "7789c1e18606bcc9219a009444a3caae8c61412ac0887d3d052059b1d5144bfc",
         arm64_linux:  "79d557e2173a126ed03cc2c87686d1ec696d6833b1c89b1329d3be8f0b5f8013",
         x86_64_linux: "8af5515181b3c4e63e24ddee7e27b4c465b5eb997e202739ef1ac949acf67c1c"

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
