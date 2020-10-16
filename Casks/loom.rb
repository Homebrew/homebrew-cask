cask "loom" do
  version "0.53.0"
  sha256 "c94320fcdc296b59110e0ef1beec3316e371f0028a14d84f910527af3b55dc49"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
