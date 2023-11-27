cask "mechvibes" do
  version "2.3.2"
  sha256 "81fd04ba553f267152587a834f17f14fa91c9a99861b3a859029db7a53123bce"

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
