cask "angband" do
  version "4.2.4"
  sha256 "a0260cbd00807f0d495a3743dca9cc94938978cd90bd6872394ac4bb11cce880"

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
end
