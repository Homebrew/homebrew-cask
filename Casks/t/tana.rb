cask "tana" do
  version "1.531.0"
  sha256 "720a97f1a8131557e6fdbf85e3bfc38003fb41b63ae2ce5c6c741e417706db67"

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
