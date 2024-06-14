cask "rippling" do
  version "3.6.28"
  sha256 "7e76a036c1b695239f5f1f9ce0095c087a9d1c8b37bfe366e226336bf945c7b5"

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
