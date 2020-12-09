cask "particle-dev" do
  version "1.18.0"
  sha256 :no_check

  # spark-website.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://spark-website.s3.amazonaws.com/particle-dev-mac.zip"
  name "Particle Dev"
  homepage "https://www.particle.io/products/development-tools/particle-desktop-ide"

  app "Particle Dev.app"

  zap trash: [
    "~/.particle",
    "~/.particledev",
  ]
end
