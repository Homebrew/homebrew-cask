cask "loom" do
  version "0.46.4"
  sha256 "d83eb57ee102aa06feb8b80d64caf8a15f15c1e5d8904592713031437203162c"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
