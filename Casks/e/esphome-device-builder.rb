cask "esphome-device-builder" do
  os macos: "dmg", linux: "AppImage"

  version "1.1.1"
  sha256 arm:          "82dee55fc1729e9205571c4c35d0e3ffdfff10608d07d0065efbddf979a88560",
         intel:        "d6f431b50ca0728a8ff709f391e717bd2594195ff251b619e79595efd5aaf98f",
         arm64_linux:  "9d5cbbd012eb684651557449cf0da41c481b5a3364168e40353059e271c37455",
         x86_64_linux: "7a1869fb0a42ec9c2db89a2ce8b1dccdde37e157da7d2b870cedd9119385590e"

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
