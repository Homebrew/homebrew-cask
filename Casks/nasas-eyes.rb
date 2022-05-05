cask "nasas-eyes" do
  version :latest
  sha256 :no_check

  url "https://eyes.jpl.nasa.gov/server/engine/osx/NASA's%20Eyes.dmg"
  name "NASA's Eyes"
  desc "Learn about the earth, solar system, universe and the spacecraft exploring them"
  homepage "https://eyes.jpl.nasa.gov/eyes-on-exoplanets.html"

  app "NASA's Eyes.app"
end
