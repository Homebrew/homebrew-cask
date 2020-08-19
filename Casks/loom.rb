cask "loom" do
  version "0.48.0"
  sha256 "c69b71cf3e968afc6d41b78aecb7fb1119473e0baa487ead923063f7875f5739"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
