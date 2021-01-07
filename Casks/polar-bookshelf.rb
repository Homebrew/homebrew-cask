cask "polar-bookshelf" do
  version "2.0.53"
  sha256 "dedca2902093cc273168d1cd00198bafe97395edab457db91aeec3fff73dda7c"

  url "https://github.com/burtonator/polar-bookshelf/releases/download/v#{version}/Polar-#{version}.dmg",
      verified: "github.com/burtonator/polar-bookshelf/"
  name "Polar Bookshelf"
  desc "Integrated reading environment"
  homepage "https://getpolarized.io/"

  livecheck do
    url :url
    strategy :git
  end

  app "Polar.app"
end
