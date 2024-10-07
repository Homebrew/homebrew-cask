cask "rippling" do
  version "3.6.35"
  sha256 "fb690bf756e002f8be9bd1010e225c1b4efc9639652738455f4053860dd0df16"

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
