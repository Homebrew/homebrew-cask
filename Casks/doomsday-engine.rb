cask "doomsday-engine" do
  version "2.2.2"
  sha256 "da2d59a5f548bfa686a55e418c1b342997aded307e3f60bfcc20ca39344b529a"

  url "https://files.dengine.net/archive/doomsday_#{version}_x86_64.dmg"
  appcast "http://api.dengine.net/1/builds/feed"
  name "Doomsday Engine"
  homepage "https://dengine.net/"

  app "Doomsday.app"
  app "Doomsday Shell.app"
end
