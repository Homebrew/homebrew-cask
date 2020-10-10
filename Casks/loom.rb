cask "loom" do
  version "0.51.1"
  sha256 "4911f91add3368e816696f452e2e31d0511d64581a3e65f38767fa0d53b11ae8"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
