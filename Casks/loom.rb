cask "loom" do
  version "0.54.5"
  sha256 "b3760e1c90d4ba2700f91e646349b7bb2860ffce5b6c1d571a69b876ea7bd568"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
