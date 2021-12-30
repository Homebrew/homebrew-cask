cask "angband" do
  version "4.2.3"
  sha256 "e18f04821e96193a10dd83241715233885bde22b0c818637865fa13330244f67"

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
