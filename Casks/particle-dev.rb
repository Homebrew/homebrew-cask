cask "particle-dev" do
  version "1.18.0"
  sha256 :no_check

  url "https://spark-website.s3.amazonaws.com/particle-dev-mac.zip",
      verified: "spark-website.s3.amazonaws.com/"
  name "Particle Dev"
  homepage "https://www.particle.io/products/development-tools/particle-desktop-ide"

  app "Particle Dev.app"

  zap trash: [
    "~/.particle",
    "~/.particledev",
  ]
end
