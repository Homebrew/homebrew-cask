cask "eqmac" do
  version "1.8.15"
  sha256 "20bd0ab255655dd1e22cbec90117c8a5095f8e774f32f0a4669a475513c7f08d"

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
