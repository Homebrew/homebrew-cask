cask "cinderella" do
  version "3.0.2137"
  sha256 "34c6e85032e2f0135bee52d83aa930539c0bfeb99cbc03971fe28d6fe26b7a16"

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
