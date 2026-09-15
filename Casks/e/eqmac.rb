cask "eqmac" do
  version "1.9.1"
  sha256 "655feb6578cdd5cd0fc7a2b9c0955bbddb7bd6bb23b29ea7f982ae35b8ba5e26"

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
