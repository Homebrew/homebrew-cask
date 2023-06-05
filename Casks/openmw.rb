cask "openmw" do
  version "0.47.0"
  sha256 "71ca39df05ade384d982bbe66475b29cccd2ccee1e2d2a878e1b4d3cb9d811c4"

  url "https://github.com/OpenMW/openmw/releases/download/openmw-#{version}/OpenMW-#{version}.dmg",
      verified: "github.com/OpenMW/openmw/"
  name "OpenMW"
  desc "Open-source open-world RPG game engine that supports playing Morrowind"
  homepage "https://openmw.org/"

  livecheck do
    url :url
    regex(/openmw[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  app "OpenMW.app"
  app "OpenMW-CS.app"
end
