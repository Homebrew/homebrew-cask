cask "cinderella" do
  version "3.0.2138"
  sha256 "2dbf8caf2b44b1ddbec94b4ff08e9d6eb4c14fc3f9b64e851ee2e9920174bb04"

  url "https://beta.cinderella.de/Cinderella-#{version}.dmg"
  name "Cinderella"
  desc "Interactive Geometry Software"
  homepage "https://cinderella.de/"

  livecheck do
    url "https://beta.cinderella.de/"
    regex(/href=.*?Cinderella[._-](\d+(?:\.[\db]+)*)\.dmg/i)
  end

  depends_on :macos

  app "Cinderella.app"

  zap trash: [
    "~/Library/Preferences/cinderella2-global.properties",
    "~/Library/Preferences/cinderella2-user.properties",
    "~/Library/Preferences/de.cinderella.Cindy*.plist",
  ]
end
