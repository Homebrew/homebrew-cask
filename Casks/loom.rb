cask "loom" do
  version "0.43.1"
  sha256 "7ddcffe4ec27981827fdc0f74da0d46520c5de94c1d437c4157c133ff590abac"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
  name "Loom"
  homepage "https://www.loom.com/"

  auto_updates true

  app "Loom.app"
end
