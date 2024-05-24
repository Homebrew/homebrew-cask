cask "rippling" do
  version "3.6.25"
  sha256 "cfd440ce4f4bfcadffd19aa2d9c61121bb4944773808a5947f186d208e70bd0b"

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
