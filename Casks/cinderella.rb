cask "cinderella" do
  version "3.0b.2065"
  sha256 "e0db769f9c4b0415fa0eb762d41163f5f5e15f2c3ec3fb03a98f855f2d0cead5"

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
