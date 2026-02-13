cask "tana" do
  version "1.511.0"
  sha256 "ca1bada744cb1d69c2cfe0c5e7ca54eb5d983f8b2c7fe422f8df700f684abcda"

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
