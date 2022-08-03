cask "cinderella" do
  version "3.0b.2051"
  sha256 "758a880f3c0d9f05f06a653c517defe1883ddefd1d63a4e5930fb872eebbe5f5"

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
