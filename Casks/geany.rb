cask "geany" do
  version "1.37"
  sha256 "223edf07ef5eb3404a953a1c93af9737fe097668160327a94e41133e3ded4dcc"

  url "https://download.geany.org/geany-#{version}_osx-2.dmg"
  appcast "https://github.com/geany/geany/releases.atom"
  name "Geany"
  desc "Fast and lightweight IDE"
  homepage "https://www.geany.org/"

  app "Geany.app"
end
