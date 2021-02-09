cask "polar-bookshelf" do
  version "2.0.103"
  sha256 "0c28399b2aa071d396f4fee3abcd50a839df8f0a33954ab8de096d6558c2ad72"

  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/Polar-#{version}.dmg",
      verified: "github.com/burtonator/polar-bookshelf/"
  name "Polar Bookshelf"
  desc "Integrated reading environment"
  homepage "https://getpolarized.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Polar.app"
end
