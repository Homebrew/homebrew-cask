cask "doomsday-engine" do
  version "2.3.1"
  sha256 "2966e93058969177005d6acf233c434fee9b82e6e92b34dfdda8ea0a7fcaa136"

  url "https://files.dengine.net/archive/doomsday_#{version}_x86_64.dmg"
  name "Doomsday Engine"
  desc "Enhanced source port of Doom, Heretic, and Hexen"
  homepage "https://dengine.net/"

  livecheck do
    url "https://files.dengine.net/archive/"
    regex(/doomsday_(\d+(?:\.\d+)+)_x86_64\.dmg/i)
  end

  app "Doomsday.app"
  app "Doomsday Shell.app"

  caveats do
    requires_rosetta
  end
end
