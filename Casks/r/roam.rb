cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "94.0.0-beta001"
  sha256 arm:   "41e1924874a26c18018c5414fa06878b615b1991db695ac8935c2b0adb0e4654",
         intel: "aaaebf5e85e18b91d0ca4f06a636e783b0029bd8c2c1e8afd2bba351de9bd338"

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
