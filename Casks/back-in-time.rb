cask "back-in-time" do
  version "5.1.4"
  sha256 "22686cea118698e86a6a6b9929e540e37d20e9321eed54f7b22dcfaa815cd3bf"

  url "https://www.tri-edre.com/pub/files/backintime#{version.major}.dmg"
  appcast "https://www.tri-edre.com/news/backintimeen.html"
  name "Back-In-Time"
  homepage "https://www.tri-edre.com/english/backintime.html"

  app "Back-In-Time #{version.major}.app"
end
