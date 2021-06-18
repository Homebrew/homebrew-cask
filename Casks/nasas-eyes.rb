cask "nasas-eyes" do
  version :latest
  sha256 :no_check

  url "https://eyes.jpl.nasa.gov/eyesproduct/EYES/os/osx"
  name "NASA's Eyes"
  homepage "https://eyes.jpl.nasa.gov/eyes-on-exoplanets.html"

  app "NASA's Eyes.app"
end
