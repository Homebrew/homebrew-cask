cask "back-in-time" do
  version "5.1.5"
  sha256 "bb40f56be8b7ba4d69cae140ff9fdd365609543e73fb52812b1cb3163c580a3e"

  url "https://www.tri-edre.com/pub/files/backintime#{version.major}.dmg"
  appcast "https://www.tri-edre.com/news/backintimeen.html"
  name "Back-In-Time"
  homepage "https://www.tri-edre.com/english/backintime.html"

  app "Back-In-Time #{version.major}.app"
end
