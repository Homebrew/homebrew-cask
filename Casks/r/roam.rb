cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "90.0.0-beta001"
  sha256 arm:   "c19b8dd58fde8d299e4954dcc00cd8bbe13cae9c1b83643759a4fb789951c239",
         intel: "629687ca7a9621943f100c4939141e8a777bfc575ae3ac45d5b99b37ce012edd"

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
