cask "tana" do
  version "1.510.1"
  sha256 "2c395dd50cac4115211a3948a781cd7ea0a31e469c72d0ccf6fb9346e1fc4fe1"

  url "https://github.com/tanainc/tana-desktop-releases/releases/download/v#{version}/Tana-#{version}-universal.dmg",
      verified: "github.com/tanainc/tana-desktop-releases/"
  name "Tana"
  desc "Knowledge management workspace with AI-powered outlining"
  homepage "https://tana.inc/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Tana.app"

  uninstall quit: "inc.tana.desktop"

  zap trash: [
    "~/Library/Application Support/tana",
    "~/Library/Caches/inc.tana.desktop",
    "~/Library/Caches/inc.tana.desktop.ShipIt",
    "~/Library/HTTPStorages/inc.tana.desktop",
    "~/Library/Logs/tana",
    "~/Library/Preferences/inc.tana.desktop.plist",
  ]
end
