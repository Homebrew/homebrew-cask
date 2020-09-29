cask "publii" do
  version "0.37.1"
  sha256 "1b3398cdaf15aefa2fd0f8db47d3aaf61a1e2037b7d7994ed95a43a3d680689f"

  url "https://cdn.getpublii.com/Publii-#{version}.dmg"
  appcast "https://getpublii.com/download/"
  name "Publii"
  homepage "https://getpublii.com/"

  app "Publii.app"

  zap trash: [
    "~/Documents/Publii",
    "~/Library/Application Support/Publii",
    "~/Library/Logs/Publii",
    "~/Library/Preferences/com.tidycustoms.publii.plist",
  ]
end
