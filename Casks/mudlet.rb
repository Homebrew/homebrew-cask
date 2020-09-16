cask "mudlet" do
  version "4.9.1"
  sha256 "e7105e93cd7dd12b920856ae3cc9a0b1fc4538970768a316921eb6f657cf883d"

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast "https://github.com/Mudlet/Mudlet/releases.atom"
  name "Mudlet"
  desc "Cross-platform and open-source MUD client with scripting in Lua"
  homepage "https://www.mudlet.org/"

  depends_on macos: ">= :high_sierra"

  app "Mudlet.app"
end
