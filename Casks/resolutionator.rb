cask "resolutionator" do
  version "2.0.1,115"
  sha256 "7200f76f043426cf5d03e83465265b1b5ad1906b08b224373b642f978fe61991"

  url "https://manytricks.com/download/_do_not_hotlink_/resolutionator#{version.before_comma.no_dots}.dmg"
  name "Resolutionator"
  homepage "https://manytricks.com/resolutionator/"

  livecheck do
    url "https://manytricks.com/resolutionator/appcast/"
    strategy :sparkle
  end

  auto_updates true

  app "Resolutionator.app"
end
