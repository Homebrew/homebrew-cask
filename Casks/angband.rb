cask "angband" do
  version "4.2.2"
  sha256 "5b5966e4ab0d1fce7067261cff7a209b0d617a7e1130f408dc62e78466c79b92"

  url "https://github.com/angband/angband/releases/download/#{version}/Angband-#{version}-osx.dmg"
  name "Angband"
  desc "Dungeon exploration game"
  homepage "https://github.com/angband/angband"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Angband.app"
end
