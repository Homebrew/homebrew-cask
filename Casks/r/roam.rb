cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "95.4.0-beta001"
  sha256 arm:   "7191509599d361c59d74a9a611372c8e9c31386aa3dfca2f343f36f34bc4d3b8",
         intel: "7721e16d9f5265972a983152875b8d28d8d8b7dec30b3118ed5ff734bc2c08fa"

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
