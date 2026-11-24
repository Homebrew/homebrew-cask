cask "tana" do
  version "1.540.6"
  sha256 "ca9d1083758edc834328c13676c676118336661fd6ff030625e3caecc7b5898d"

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
