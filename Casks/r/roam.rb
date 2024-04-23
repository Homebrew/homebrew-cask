cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "105.0.1-beta001"
  sha256 arm:   "d5e92948d46784b012328111642fb172e8bc441d37f7f0971ea8995e30b0708c",
         intel: "c9f5ddc577f5ae236a7c8518f6323a6ef78550141072eab16fd39fd14e595adf"

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
