cask "cinderella" do
  version "3.0b.2074"
  sha256 "795da0fc13af1693a2b001d2a37b6a2fe804955d712d8155b622c13051da4cb0"

  url "https://beta.cinderella.de/Cinderella-#{version}.dmg"
  name "Cinderella"
  desc "Interactive Geometry Software"
  homepage "https://cinderella.de/"

  livecheck do
    url "https://beta.cinderella.de/"
    regex(/href="Cinderella-(\d+.\d+b?.+)\.dmg"/i)
  end

  app "Cinderella.app"

  zap trash: [
    "~/Library/Preferences/cinderella2-user.properties",
    "~/Library/Preferences/cinderella2-global.properties",
  ]
end
