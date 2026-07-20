cask "tana" do
  version "1.523.0"
  sha256 "0ca9deac0f7be593b4a22777a8786ffea82eddf79de628c1ba12967da167fe03"

  url "https://github.com/tanainc/tana-desktop-releases/releases/download/v#{version}/Tana.Outliner-#{version}-universal.dmg",
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
