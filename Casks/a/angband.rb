cask "angband" do
  version "4.2.5"
  sha256 "ea04557f8ad46d7e446fd4e76324774743bb6b073f6fe9b803256776707bbc66"

  url "https://github.com/angband/angband/releases/download/#{version}/Angband-#{version}-osx.dmg",
      verified: "github.com/angband/angband/"
  name "Angband"
  desc "Dungeon exploration game"
  homepage "https://angband.github.io/angband/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Angband.app"

  zap trash: [
    "~/Documents/Angband",
    "~/Library/Preferences/org.rephial.angband.plist",
    "~/Library/Saved Application State/org.rephial.angband.savedState",
  ]
end
