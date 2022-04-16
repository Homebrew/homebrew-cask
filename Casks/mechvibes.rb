cask "mechvibes" do
  version "2.3.0"
  sha256 "83c70ac29de277024567f94f1e0a2aa2679e20ce7cdc027b02f06577442dfcf8"

  url "https://github.com/hainguyents13/mechvibes/releases/download/v#{version}/Mechvibes-#{version}.dmg",
      verified: "github.com/hainguyents13/mechvibes/"
  name "Mechvibes"
  desc "Play mechanical keyboard sounds as you type"
  homepage "https://mechvibes.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Mechvibes.app"

  zap trash: [
    "~/Library/Application Support/Mechvibes",
    "~/Library/Preferences/com.electron.mechvibes.plist",
    "~/Library/Saved Application State/com.electron.mechvibes.savedState",
  ],
      rmdir: "~/mechvibes_custom"
end
