cask "rippling" do
  version "3.6.44"
  sha256 "93451ada32e1c71ab701b09acd07a7fa5dad2e70c5d8ed889aaf5731d0eefc21"

  url "https://hardware-cdn.rippling.com/device_release/electron-installer/#{version}/macos/Rippling.dmg"
  name "Rippling"
  desc "MDM for Rippling"
  homepage "https://www.rippling.com/device-management"

  livecheck do
    url "https://app.rippling.com/api/hardware/general_installer/?os=mac"
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  app "Rippling.app"

  zap trash: [
    "~/Library/Application Support/Rippling",
    "~/Library/Preferences/com.rippling.client.plist",
    "~/Library/Saved Application State/com.rippling.client.savedState",
  ]
end
