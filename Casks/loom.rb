cask "loom" do
  version "0.50.2"
  sha256 "5bb1bc3a286d2bf3978fd090b26d79c06c69c0de1dde10f1a10bcd89d7630a84"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
