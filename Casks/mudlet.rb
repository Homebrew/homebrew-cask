cask "mudlet" do
  version "4.11.2"
  sha256 "5a4721b01983593da62cf370fdeb8862fd58ac14901b829268485b515e7c3796"

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast "https://github.com/Mudlet/Mudlet/releases.atom"
  name "Mudlet"
  desc "Multi-User Dungeon client"
  homepage "https://www.mudlet.org/"

  depends_on macos: ">= :high_sierra"

  app "Mudlet.app"
end
