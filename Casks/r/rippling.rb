cask "rippling" do
  version "3.6.48"
  sha256 "58958dd911c53eddf4778186d1c736dbbfacf6381a571b24a7ee0c6c3bbfd672"

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
