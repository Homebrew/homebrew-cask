cask "eqmac" do
  version "1.8.14"
  sha256 "994eec89cc9b172d32212885a5aeb8bfdc919d482fb71e9dd3de577f2a236c6b"

  url "https://github.com/bitgapp/eqMac/releases/download/v#{version}/eqMac.dmg",
      verified: "github.com/bitgapp/eqMac/"
  name "eqMac"
  desc "System-wide audio equaliser"
  homepage "https://eqmac.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "eqMac.app"

  uninstall delete: [
    "/Library/Audio/Plug-Ins/HAL/eqMac.driver",
    "/Library/LaunchDaemons/com.bitgapp.eqmac.helper.plist",
    "/Library/PrivilegedHelperTools/com.bitgapp.eqmac.helper",
  ]

  zap trash: [
    "~/Library/Caches/com.bitgapp.eqmac",
    "~/Library/Preferences/com.bitgapp.eqmac.plist",
    "~/Library/WebKit/com.bitgapp.eqmac",
  ]
end
