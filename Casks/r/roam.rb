cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "95.0.0-beta001"
  sha256 arm:   "51e2a452f31c72a66c1ced46c7ecb4480c76dd88c75562022eb19dd7df7cd1fe",
         intel: "9cbb6d7b0846388321eb25d51202d6b170bf70cfd14517817273fc6e2897a5a2"

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
