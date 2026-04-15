cask "eqmac" do
  version "1.8.13"
  sha256 "0848af5dbaa93d2465eed26933d08239626f5675ac488ef80ee27bd380b3599a"

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
