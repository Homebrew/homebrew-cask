cask "meteorologist" do
  version "3.5.0"
  sha256 "2cdee87f9a9ff7c1a1bab471c0fb8a5bfd05cf449951141489b754976761ddcd"

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg",
      verified: "downloads.sourceforge.net/heat-meteo/"
  name "Meteorologist"
  desc "Adjustable weather viewing application"
  homepage "https://heat-meteo.sourceforge.io/"

  app "Meteorologist.app"
end
