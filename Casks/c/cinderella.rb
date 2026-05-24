cask "cinderella" do
  version "3.0.2128"
  sha256 "666c8c8117f386f358726d3e8ed36f98261ca0f0e2d66e04b2e1ceb9f26b1f48"

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
  ]
end
