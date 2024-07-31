cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "120.0.0-beta001"
  sha256 arm:   "3c4ed16f837f2203cc5bfd563a3e00e5eb250d07bcfcbefd38abbbb1c1eb4860",
         intel: "1d8b2729fa0c5ec90fc92a32f9004fa30187a3a34cc2e66818654402b74e1e28"

  url "https://download.ro.am/Roam/8a86d88cfc9da3551063102e9a4e2a83/latest/darwin/#{arch}/Roam.dmg"
  name "Roam"
  desc "Virtual office"
  homepage "https://ro.am/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Roam.app"

  uninstall quit: "inc.wonder.roam"

  zap trash: [
    "~/Library/Caches/inc.wonder.roam",
    "~/Library/Caches/inc.wonder.roam.ShipIt",
    "~/Library/Preferences/inc.wonder.roam.plist",
    "~/Library/Saved Application State/inc.wonder.roam.savedState",
  ]
end
