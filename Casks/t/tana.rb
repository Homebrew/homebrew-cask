cask "tana" do
  version "1.515.0"
  sha256 "fc102d44d02d4ebde349f58bcb9c117042d4a35ae117188db67f6cedc2c90a5b"

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
