cask "tana" do
  version "1.529.0"
  sha256 "afd3b4e8fb08c12f63e9e1906c60a1d72974cd8b5db46aec645c4fef74ad4c43"

  url "https://github.com/tanainc/tana-desktop-releases/releases/download/v#{version}/Tana.Outliner-#{version}-universal.dmg"
  name "Tana"
  desc "Knowledge management workspace with AI-powered outlining"
  homepage "https://tana.inc/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Tana Outliner.app"

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
