cask "eqmac" do
  version "1.9.2"
  sha256 "b70af007a66efb5e25d368ae51f8510a23e1fc0e016a0891f3d1692caed226c2"

  url "https://github.com/bitgapp/eqMac/releases/download/v#{version}/eqMac.dmg"
  name "eqMac"
  desc "System-wide audio equaliser"
  homepage "https://eqmac.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

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
