cask "mega" do
  version "7.0.26"
  sha256 "c736d74ab744e204a39be492c1bb08849e6fd406f8668cfb4393ddf47953aebc"

  url "https://megasoftware.net/releases/MEGA#{version}_mac32_setup.dmg"
  name "MEGA"
  name "Molecular Evolutionary Genetics Analysis"
  homepage "https://megasoftware.net/"

  app "MEGA#{version.major}.app"
end
