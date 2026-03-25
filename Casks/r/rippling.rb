cask "rippling" do
  version "3.6.50"
  sha256 "e424324b63bacc3dfab782acc2fd8f9e44fa48b5b10678e3b351765c54e2f554"

  url "https://public-assets.ripplingcdn.com/global/hardware-public/device_release/electron-installer/#{version}/macos/Rippling.dmg",
      verified: "public-assets.ripplingcdn.com/"
  name "Rippling"
  desc "MDM for Rippling"
  homepage "https://www.rippling.com/device-management"

  livecheck do
    url "https://app.rippling.com/api/hardware/general_installer/?os=mac"
    strategy :header_match
  end

  depends_on macos: ">= :monterey"

  app "Rippling.app"

  zap trash: [
    "~/Library/Application Support/Rippling",
    "~/Library/Preferences/com.rippling.client.plist",
    "~/Library/Saved Application State/com.rippling.client.savedState",
  ]
end
