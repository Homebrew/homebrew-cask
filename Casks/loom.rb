cask "loom" do
  version "0.48.1"
  sha256 "3e1a6f6d05668fd6eb8c33fc72416380b1e68775cdcf54e37b48043aea751a41"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
