cask "esphome-device-builder" do
  os macos: "dmg", linux: "AppImage"

  version "1.2.0"
  sha256 arm:          "13bb3f1ef8bda001f0459bf57c42bbf4227474865b19182e0c2150242b22c408",
         intel:        "7fde815eef63ad6f3f5452aad0c93fdcfb2dbf7dcce4a2dba3c3f55f593382ad",
         arm64_linux:  "8e69c1597703bf7471d706c93f7e21f658e6a0abfdd4bba8e9911b0d5ed7433c",
         x86_64_linux: "7b3b90736dc8d25387d2e5eeb63e842da8377c73b1621c2ddd31f3f7d18e3f85"

  on_macos do
    arch arm: "aarch64", intel: "x64"

    auto_updates true

    app "ESPHome Device Builder.app"
    binary "#{appdir}/ESPHome Device Builder.app/Contents/MacOS/esphome-desktop"

    uninstall quit:  "io.esphome.builder",
              trash: "~/Library/LaunchAgents/ESPHome Device Builder.plist"

    zap trash: "~/Library/Application Support/io.esphome.builder"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"

    app_image "ESPHome.Device.Builder_#{version}_#{arch}.AppImage", target: "ESPHome Device Builder.AppImage"

    zap trash: "~/.local/share/io.esphome.builder"
  end

  url "https://github.com/esphome/esphome-desktop/releases/download/v#{version}/ESPHome.Device.Builder_#{version}_#{arch}.#{os}"
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
