cask "particle-dev" do
  version "1.18.0"
  sha256 "34f4643a39d3668a6d36dc38240bfea3fcf6e190f25c4aff0060c1cdcd85933a"

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
