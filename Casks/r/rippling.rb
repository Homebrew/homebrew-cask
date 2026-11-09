cask "rippling" do
  version "3.6.62"
  sha256 "35b6e81dc4696ff4a26c873c78c387b8bfe25f240c94bd3787060c976e03d04c"

  url "https://public-assets.ripplingcdn.com/global/hardware-public/device_release/electron-installer/#{version}/macos/Rippling.dmg"
  name "Rippling"
  desc "MDM for Rippling"
  homepage "https://www.rippling.com/device-management"

  livecheck do
    url "https://app.rippling.com/api/hardware/general_installer/?os=mac"
    strategy :header_match
  end

  depends_on macos: :monterey

  app "Rippling.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rippling.client.sfl*",
    "~/Library/Application Support/Rippling",
    "~/Library/Preferences/com.rippling.client.plist",
    "~/Library/Saved Application State/com.rippling.client.savedState",
  ]
end
