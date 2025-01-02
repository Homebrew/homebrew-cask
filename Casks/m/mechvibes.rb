cask "mechvibes" do
  version "2.3.6"
  sha256 "ad3a0a6679a9995274b2bb0a207dbbdeb93583e914b6a83c56d73e5bf4b9fce6"

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

  caveats do
    requires_rosetta
  end
end
