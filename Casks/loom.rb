cask "loom" do
  version "0.51.0"
  sha256 "0929059395685cee581e309245bff18f2d3e3ca6350d4cf6d8739a9882d8487e"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
