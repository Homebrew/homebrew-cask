cask "geany" do
  version "1.37"
  sha256 "dc8ed9352f0b433503e4d8eef3e6da3e4e2e5d5d1b1b2d63a3e3c85518a74cc5"

  url "https://download.geany.org/geany-#{version}_osx-3.dmg"
  appcast "https://github.com/geany/geany/releases.atom"
  name "Geany"
  desc "Fast and lightweight IDE"
  homepage "https://www.geany.org/"

  app "Geany.app"
end
