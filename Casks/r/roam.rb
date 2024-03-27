cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "102.2.0-beta001"
  sha256 arm:   "e5056d94b40919dfe88c0ed29aec0f0d482bd8d804495cbb4f2544c6fc0356ee",
         intel: "a253de46a8b7dd7c9dbaad5ce355c30f8e587385658eef6eca14965b73396019"

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
