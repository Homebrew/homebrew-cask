cask "mudlet" do
  version "4.10.1"
  sha256 "b2beba2bce9dc7c3bd47bd24925155ab279ecaf1a3c10bd2370d524fd3100a15"

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast "https://github.com/Mudlet/Mudlet/releases.atom"
  name "Mudlet"
  desc "Multi-User Dungeon client"
  homepage "https://www.mudlet.org/"

  depends_on macos: ">= :high_sierra"

  app "Mudlet.app"
end
