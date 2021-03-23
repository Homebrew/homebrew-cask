cask "cinderella" do
  version "3.0b.1999"
  sha256 "e33990ccedbee56806ccd189dea01167f443d18c7baf00be61f08921dcad5215"

  url "https://beta.cinderella.de/Cinderella-#{version}.dmg"
  name "Cinderella"
  desc "Interactive Geometry Software"
  homepage "https://cinderella.de/"

  app "Cinderella.app"

  zap trash: [
    "~/Library/Preferences/cinderella2-user.properties",
    "~/Library/Preferences/cinderella2-global.properties",
  ]
end
