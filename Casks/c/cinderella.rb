cask "cinderella" do
  version "3.0.2140"
  sha256 "e8b038e47c5c378013b2499f95c28616a1474e1216b3a52127846b4814f16b04"

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
