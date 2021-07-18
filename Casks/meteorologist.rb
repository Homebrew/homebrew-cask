cask "meteorologist" do
  version "3.4.5"
  sha256 "c7214754a7d8bbd74b9373a97af7c0abab7cf057dd567742da6d4acef47a03c1"

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg",
      verified: "downloads.sourceforge.net/heat-meteo/"
  name "Meteorologist"
  desc "Adjustable weather viewing application"
  homepage "https://heat-meteo.sourceforge.io/"

  app "Meteorologist.app"
end
