cask "doomsday-engine" do
  version "2.3.0"
  sha256 "83b5d3f13e97119ca347a4f463adbb4a96a4b10f5f4f8367da2856ad18305be5"

  url "https://files.dengine.net/archive/doomsday_#{version}_x86_64.dmg"
  name "Doomsday Engine"
  desc "Enhanced source port of Doom, Heretic, and Hexen"
  homepage "https://dengine.net/"

  livecheck do
    url "https://github.com/skyjake/Doomsday-Engine"
    strategy :github_latest
  end

  app "Doomsday.app"
  app "Doomsday Shell.app"
end
