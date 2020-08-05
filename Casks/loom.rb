cask "loom" do
  version "0.46.3"
  sha256 "5f1355f73639d01cf8f14a4f90ce74d9a954dc8e4f77e745bbd11cc4bd2125c0"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
