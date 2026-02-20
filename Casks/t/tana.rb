cask "tana" do
  version "1.511.5"
  sha256 "39249d3fad2a7c8820f89a52d3d388e3e8298cb60d3a09f0c1b8ccd0358739e7"

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
