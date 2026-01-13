cask "cinderella" do
  version "3.0.2119"
  sha256 "db297e00bea8e85f8a32a7247ab07cf401f74ca7e9b2bdef3428709fad1b4f29"

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
