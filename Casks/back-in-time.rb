cask "back-in-time" do
  version "5.1.3"
  sha256 "866bcdb214dd3d4d51a9ca89f12a6ce42e3fd506984c067a9f3b243922afe976"

  url "https://www.tri-edre.com/pub/files/backintime#{version.major}.dmg"
  appcast "https://www.tri-edre.com/news/backintimeen.html"
  name "Back-In-Time"
  homepage "https://www.tri-edre.com/english/backintime.html"

  app "Back-In-Time #{version.major}.app"
end
