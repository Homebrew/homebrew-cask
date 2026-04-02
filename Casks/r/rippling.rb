cask "rippling" do
  version "3.6.51"
  sha256 "b8a754c7be2476c622f870c3134be6a373c8c4d8c7318fca626e8caeb655e33c"

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
