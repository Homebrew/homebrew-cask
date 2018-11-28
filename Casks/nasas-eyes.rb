cask 'nasas-eyes' do
  version :latest
  sha256 'cb5c7a506895f5ff585252e4d6e0d9722aacfda91db90b15865a172425e4e925'

  url 'https://eyes.jpl.nasa.gov/eyesproduct/EYES/os/osx'
  name "NASA's Eyes"
  homepage 'https://eyes.jpl.nasa.gov/eyes-on-exoplanets.html'

  app "NASA's Eyes.app"
end
