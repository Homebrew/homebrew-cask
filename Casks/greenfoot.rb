cask "greenfoot" do
  version "3.6.1"
  sha256 "9afbc077f6454d83749224cc62b5192eae96edf4d7d6beaee880712bb17e8646"

  url "https://www.greenfoot.org/download/files/Greenfoot-mac-#{version.no_dots}.zip"
  appcast "https://www.greenfoot.org/download"
  name "Greenfoot"
  homepage "https://www.greenfoot.org/home"

  app "Greenfoot #{version}/Greenfoot.app"
end
