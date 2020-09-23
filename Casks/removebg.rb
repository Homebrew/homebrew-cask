cask "removebg" do
  version "1.4.0"
  sha256 "5f63ed5881e147b05be59036aa8bdfcccd7a8d1953449db3d44df10277c8c760"

  url "https://static.remove.bg/download/removebg-for-mac-#{version}.dmg"
  appcast "https://www.remove.bg/windows-mac-linux/download"
  name "remove.bg"
  homepage "https://www.remove.bg/"

  app "remove.bg.app"
end
