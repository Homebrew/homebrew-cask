cask "cinderella" do
  version "3.0b.2036"
  sha256 "73fbc901db7b0b3039e24e5625311b2ae813ee026074b51140358da1adfb7ce1"

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
