cask "esphome-device-builder" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.14.1"
  sha256 arm:          "85735ea0f8daee796732e5753f26b98fdb3ceb489ab65e27bd037a61d82cbc39",
         intel:        "e02536d66d0fd267b59496144f1e869c1285a3dff80d5ba1f6ec051f7e1fc5c9",
         arm64_linux:  "67c6f678a1229247842fe8da302be319fad199947a735816b4f26a84b5bc4b52",
         x86_64_linux: "6404649240766feee45782d3317f85e165667bf85cdf70bd3c6a4cbdd761f912"

  artifact = on_system_conditional macos: "ESPHome.Device.Builder_#{version}_#{arch}.dmg",
                                   linux: "ESPHome.Device.Builder_#{version}_#{arch}.AppImage"

  url "https://github.com/esphome/esphome-desktop/releases/download/v#{version}/#{artifact}",
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

  on_macos do
    auto_updates true
    depends_on macos: :catalina

    app "ESPHome Device Builder.app"
    binary "#{appdir}/ESPHome Device Builder.app/Contents/MacOS/esphome-desktop"

    zap quit:  "io.esphome.builder",
        trash: [
          "~/esphome",
          "~/Library/Application Support/io.esphome.builder",
          "~/Library/LaunchAgents/ESPHome Device Builder.plist",
        ]
  end

  on_linux do
    app_image artifact, target: "ESPHome Device Builder.AppImage"
  end
end
