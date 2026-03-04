cask "cinderella" do
  version "3.0.2125"
  sha256 "69f6ee845522f6bc4b7b8c3a50230e892f78190a728cf4afa782a94bf4056777"

  url "https://beta.cinderella.de/Cinderella-#{version}.dmg"
  name "Cinderella"
  desc "Interactive Geometry Software"
  homepage "https://cinderella.de/"

  livecheck do
    url "https://beta.cinderella.de/"
    regex(/href=.*?Cinderella[._-](\d+(?:\.[\db]+)*)\.dmg/i)
  end

  app "Cinderella.app"

  zap trash: [
    "~/Library/Preferences/cinderella2-global.properties",
    "~/Library/Preferences/cinderella2-user.properties",
  ]
end
