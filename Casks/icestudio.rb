cask "icestudio" do
  version "0.6.0"
  sha256 "eb49fce67ce86558d37fd383efa75c5af5e88a10eacf1ef2bbdf408d3114e16d"

  url "https://github.com/FPGAwars/icestudio/releases/download/v#{version}/icestudio-#{version}-osx64.dmg",
      verified: "github.com/FPGAwars/icestudio/"
  name "icestudio"
  homepage "https://icestudio.io/"

  app "icestudio.app"
end
