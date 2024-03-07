cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "99.2.0-beta001"
  sha256 arm:   "1dc8f9237567b256644d467fadd90cdeae4499d7ab863ecbc91bcc7ca0d9429f",
         intel: "8e9447088afcb3a97f650c2b623d81a6bb30c452adbdf2ac62b5bbb65f4279b7"

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
