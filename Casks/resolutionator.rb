cask "resolutionator" do
  version "1.1.2"
  sha256 "c0098c95e6aa8d828e14342393f51800a19c6807d25d36dc232a6f3d75f56216"

  url "https://manytricks.com/download/_do_not_hotlink_/resolutionator#{version.no_dots}.dmg"
  appcast "https://manytricks.com/resolutionator/appcast"
  name "Resolutionator"
  homepage "https://manytricks.com/resolutionator/"

  auto_updates true

  app "Resolutionator.app"
end
