cask "ppduck" do
  version "3.9.1"
  sha256 "27a1493d8e6f9c6e8d843249bab6bca6f016e14afa428628cc65ac89e5ee2ba9"

  url "http://download.ppduck.com/PPDuck#{version.major}_#{version}.dmg"
  name "PPDuck"
  homepage "https://www.ppduck.com/"

  app "PPDuck#{version.major}.app"
end
