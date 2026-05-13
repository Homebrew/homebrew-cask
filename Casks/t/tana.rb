cask "tana" do
  version "1.520.0"
  sha256 "b9aef86b9dca26176c2c1553e5ddf0d4db1e3f450c9d7661fed1356d5f84cc50"

  url "https://github.com/tanainc/tana-desktop-releases/releases/download/v#{version}/Tana-#{version}-universal.dmg",
      verified: "github.com/tanainc/tana-desktop-releases/"
  name "Tana"
  desc "Knowledge management workspace with AI-powered outlining"
  homepage "https://tana.inc/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

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
