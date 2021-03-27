cask "openmw" do
  version "0.46.0"
  sha256 "9a123492f3017bff35e6a5bfe27ca55e3a4af406301d41ef255b53c4ded4cd63"

  url "https://github.com/OpenMW/openmw/releases/download/openmw-#{version}/OpenMW-#{version}.dmg",
      verified: "github.com/"
  name "OpenMW"
  desc "Open-source open-world RPG game engine that supports playing Morrowind"
  homepage "https://openmw.org/"

  app "OpenMW.app"
  app "OpenMW-CS.app"
end
