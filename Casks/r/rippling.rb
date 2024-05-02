cask "rippling" do
  version "3.6.21"
  sha256 "2495fea3ca96be9478b62cc594a094ba110e4307b1e6eed76a5b7eb2c7e78ff8"

  url "https://hardware-cdn.rippling.com/device_release/electron-installer/#{version}/macos/Rippling.dmg"
  name "Rippling"
  desc "MDM for Rippling"
  homepage "https://www.rippling.com/device-management"

  livecheck do
    url "https://app.rippling.com/api/hardware/general_installer/?os=mac"
    strategy :header_match
  end

  app "Rippling.app"

  zap trash: [
    "~/Library/Application Support/Rippling",
    "~/Library/Preferences/com.rippling.client.plist",
    "~/Library/Saved Application State/com.rippling.client.savedState",
  ]
end
