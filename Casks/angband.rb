cask "angband" do
  version "4.2.3-49-gf9e9ce5d7"
  sha256 "6c0ae9989ae423674d8dfe22acc1815edc9825d21a68abbc08f826e963f7374d"

  url "https://github.com/angband/angband/releases/download/#{version}/Angband-#{version}-osx.dmg",
      verified: "github.com/angband/angband/"
  name "Angband"
  desc "Dungeon exploration game"
  homepage "https://angband.github.io/angband/"

  depends_on macos: ">= :sierra"

  app "Angband.app"
end
